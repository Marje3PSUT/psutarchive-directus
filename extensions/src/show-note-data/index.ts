// Show note data
//
// This hook removed user_created and user_updated from read queries of exam resources
// for contributors.
//

import { defineHook } from "@directus/extensions-sdk";
import _ from "lodash";
import { CONTRIBUTOR_ROLE_ID } from "../constants";
import { EventContext } from "@directus/types";

export default defineHook(({ filter }, { services }) => {
  filter("resource.items.read", async (payload: Payload, _meta, context) => {
    return await clean(payload, context, services);
  });

  filter("course.items.read", async (payload: Payload, _meta, context) => {
    return await clean(payload, context, services);
  });
});

interface Resource {
  id: string;
  type: string;
}

interface Course {
  resource?: Partial<Resource>[];
}

type Payload = Course[] | Partial<Resource>[];

const clean = async (
  payload: Payload,
  context: EventContext,
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  services: any
) => {
  const { accountability, database, schema } = context;
  const { ItemsService } = services;

  if (!accountability || accountability.role === null)
    return cleanPayload(payload);
  if (accountability.admin) return payload;

  const userItemsService = new ItemsService("directus_users", {
    database,
    schema,
  });

  const userEntity = await userItemsService.readOne(accountability.user, {
    fields: ["role.id"],
  });

  if (userEntity.role.name === CONTRIBUTOR_ROLE_ID)
    return cleanPayload(payload);

  return payload;
};

const cleanResourceEntities = (payload: Partial<Resource>[]) =>
  payload.map((resource) => {
    if (resource.type == "note") return resource;
    return _.omit(resource, ["user_created", "user_updated"]);
  });

const cleanCourseEntities = (payload: Course[]) => {
  return payload.map((course) => {
    if (course.resource)
      course.resource = cleanResourceEntities(course.resource);

    return course;
  });
};

const isCourseArray = (payload: Payload): payload is Course[] => {
  return Array.isArray(payload) && payload.every((item) => "resource" in item);
};

const cleanPayload = (payload: Payload) => {
  if (isCourseArray(payload)) return cleanCourseEntities(payload);
  return cleanResourceEntities(payload);
};
