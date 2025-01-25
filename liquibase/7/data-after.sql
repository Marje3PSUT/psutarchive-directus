--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET
statement_timeout = 0;
SET
lock_timeout = 0;
SET
idle_in_transaction_session_timeout = 0;
SET
transaction_timeout = 0;
SET
client_encoding = 'UTF8';
SET
standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET
check_function_bodies = false;
SET
xmloption = content;
SET
client_min_messages = warning;
SET
row_security = off;

INSERT INTO public.directus_settings (id, project_name, project_color, default_language, default_appearance,
                                      public_registration, public_registration_verify_email)
VALUES (1, 'Directus', '#6644FF', 'en-US', 'auto', false, true);
--
-- Data for Name: directus_collections; Type: TABLE DATA; Schema: public; Owner: admin
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.directus_collections DISABLE TRIGGER ALL;



ALTER TABLE public.directus_collections ENABLE TRIGGER ALL;

--
-- Data for Name: directus_dashboards; Type: TABLE DATA; Schema: public; Owner: admin
--

ALTER TABLE public.directus_dashboards DISABLE TRIGGER ALL;



ALTER TABLE public.directus_dashboards ENABLE TRIGGER ALL;

--
-- Data for Name: directus_fields; Type: TABLE DATA; Schema: public; Owner: admin
--

ALTER TABLE public.directus_fields DISABLE TRIGGER ALL;



ALTER TABLE public.directus_fields ENABLE TRIGGER ALL;

--
-- Data for Name: directus_flows; Type: TABLE DATA; Schema: public; Owner: admin
--

ALTER TABLE public.directus_flows DISABLE TRIGGER ALL;



ALTER TABLE public.directus_flows ENABLE TRIGGER ALL;

--
-- Data for Name: directus_migrations; Type: TABLE DATA; Schema: public; Owner: admin
--

ALTER TABLE public.directus_migrations DISABLE TRIGGER ALL;

INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201028A', 'Remove Collection Foreign Keys', '2025-01-24 10:33:17.939073+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201029A', 'Remove System Relations', '2025-01-24 10:33:17.944835+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201029B', 'Remove System Collections', '2025-01-24 10:33:17.949836+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201029C', 'Remove System Fields', '2025-01-24 10:33:17.967348+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201105A', 'Add Cascade System Relations', '2025-01-24 10:33:18.021365+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201105B', 'Change Webhook URL Type', '2025-01-24 10:33:18.027414+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210225A', 'Add Relations Sort Field', '2025-01-24 10:33:18.033175+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210304A', 'Remove Locked Fields', '2025-01-24 10:33:18.037585+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210312A', 'Webhooks Collections Text', '2025-01-24 10:33:18.044731+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210331A', 'Add Refresh Interval', '2025-01-24 10:33:18.048466+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210415A', 'Make Filesize Nullable', '2025-01-24 10:33:18.057232+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210416A', 'Add Collections Accountability', '2025-01-24 10:33:18.063956+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210422A', 'Remove Files Interface', '2025-01-24 10:33:18.067245+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210506A', 'Rename Interfaces', '2025-01-24 10:33:18.101216+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210510A', 'Restructure Relations', '2025-01-24 10:33:18.118853+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210518A', 'Add Foreign Key Constraints', '2025-01-24 10:33:18.130529+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210519A', 'Add System Fk Triggers', '2025-01-24 10:33:18.169127+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210521A', 'Add Collections Icon Color', '2025-01-24 10:33:18.171724+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210525A', 'Add Insights', '2025-01-24 10:33:18.188612+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210608A', 'Add Deep Clone Config', '2025-01-24 10:33:18.191019+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210626A', 'Change Filesize Bigint', '2025-01-24 10:33:18.200086+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210716A', 'Add Conditions to Fields', '2025-01-24 10:33:18.202692+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210721A', 'Add Default Folder', '2025-01-24 10:33:18.209714+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210802A', 'Replace Groups', '2025-01-24 10:33:18.216776+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210803A', 'Add Required to Fields', '2025-01-24 10:33:18.219663+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210805A', 'Update Groups', '2025-01-24 10:33:18.224358+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210805B', 'Change Image Metadata Structure', '2025-01-24 10:33:18.231466+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210811A', 'Add Geometry Config', '2025-01-24 10:33:18.235954+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210831A', 'Remove Limit Column', '2025-01-24 10:33:18.240871+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210903A', 'Add Auth Provider', '2025-01-24 10:33:18.260636+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210907A', 'Webhooks Collections Not Null', '2025-01-24 10:33:18.267542+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210910A', 'Move Module Setup', '2025-01-24 10:33:18.272282+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210920A', 'Webhooks URL Not Null', '2025-01-24 10:33:18.278864+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210924A', 'Add Collection Organization', '2025-01-24 10:33:18.28681+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210927A', 'Replace Fields Group', '2025-01-24 10:33:18.298599+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210927B', 'Replace M2M Interface', '2025-01-24 10:33:18.305979+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210929A', 'Rename Login Action', '2025-01-24 10:33:18.313595+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211007A', 'Update Presets', '2025-01-24 10:33:18.329025+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211009A', 'Add Auth Data', '2025-01-24 10:33:18.334462+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211016A', 'Add Webhook Headers', '2025-01-24 10:33:18.340776+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211103A', 'Set Unique to User Token', '2025-01-24 10:33:18.347815+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211103B', 'Update Special Geometry', '2025-01-24 10:33:18.354186+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211104A', 'Remove Collections Listing', '2025-01-24 10:33:18.36079+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211118A', 'Add Notifications', '2025-01-24 10:33:18.383488+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211211A', 'Add Shares', '2025-01-24 10:33:18.401786+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211230A', 'Add Project Descriptor', '2025-01-24 10:33:18.40631+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220303A', 'Remove Default Project Color', '2025-01-24 10:33:18.417612+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220308A', 'Add Bookmark Icon and Color', '2025-01-24 10:33:18.423036+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220314A', 'Add Translation Strings', '2025-01-24 10:33:18.426809+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220322A', 'Rename Field Typecast Flags', '2025-01-24 10:33:18.434358+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220323A', 'Add Field Validation', '2025-01-24 10:33:18.43922+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220325A', 'Fix Typecast Flags', '2025-01-24 10:33:18.448319+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220325B', 'Add Default Language', '2025-01-24 10:33:18.462514+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220402A', 'Remove Default Value Panel Icon', '2025-01-24 10:33:18.470132+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220429A', 'Add Flows', '2025-01-24 10:33:18.502559+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220429B', 'Add Color to Insights Icon', '2025-01-24 10:33:18.50553+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220429C', 'Drop Non Null From IP of Activity', '2025-01-24 10:33:18.508158+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220429D', 'Drop Non Null From Sender of Notifications', '2025-01-24 10:33:18.510927+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220614A', 'Rename Hook Trigger to Event', '2025-01-24 10:33:18.5149+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220801A', 'Update Notifications Timestamp Column', '2025-01-24 10:33:18.525327+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220802A', 'Add Custom Aspect Ratios', '2025-01-24 10:33:18.529386+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220826A', 'Add Origin to Accountability', '2025-01-24 10:33:18.536114+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230401A', 'Update Material Icons', '2025-01-24 10:33:18.548407+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230525A', 'Add Preview Settings', '2025-01-24 10:33:18.552671+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230526A', 'Migrate Translation Strings', '2025-01-24 10:33:18.570303+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230721A', 'Require Shares Fields', '2025-01-24 10:33:18.58005+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230823A', 'Add Content Versioning', '2025-01-24 10:33:18.599959+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230927A', 'Themes', '2025-01-24 10:33:18.617384+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20231009A', 'Update CSV Fields to Text', '2025-01-24 10:33:18.622173+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20231009B', 'Update Panel Options', '2025-01-24 10:33:18.625123+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20231010A', 'Add Extensions', '2025-01-24 10:33:18.629535+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20231215A', 'Add Focalpoints', '2025-01-24 10:33:18.633538+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20240122A', 'Add Report URL Fields', '2025-01-24 10:33:18.637608+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20240204A', 'Marketplace', '2025-01-24 10:33:18.657664+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20240305A', 'Change Useragent Type', '2025-01-24 10:33:18.663918+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20240311A', 'Deprecate Webhooks', '2025-01-24 10:33:18.681755+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20240422A', 'Public Registration', '2025-01-24 10:33:18.691941+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20240515A', 'Add Session Window', '2025-01-24 10:33:18.694778+00');


ALTER TABLE public.directus_migrations ENABLE TRIGGER ALL;

--
-- Data for Name: directus_operations; Type: TABLE DATA; Schema: public; Owner: admin
--

ALTER TABLE public.directus_operations DISABLE TRIGGER ALL;



ALTER TABLE public.directus_operations ENABLE TRIGGER ALL;

--
-- Data for Name: directus_panels; Type: TABLE DATA; Schema: public; Owner: admin
--

ALTER TABLE public.directus_panels DISABLE TRIGGER ALL;



ALTER TABLE public.directus_panels ENABLE TRIGGER ALL;

--
-- Data for Name: directus_roles; Type: TABLE DATA; Schema: public; Owner: admin
--

ALTER TABLE public.directus_roles DISABLE TRIGGER ALL;

INSERT INTO public.directus_roles (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access)
VALUES ('f2fa37f6-2f12-4884-ac6c-02f78bcb6a56', 'Administrator', 'verified', '$t:admin_description', NULL, false, true,
        true);


ALTER TABLE public.directus_roles ENABLE TRIGGER ALL;

--
-- Data for Name: directus_permissions; Type: TABLE DATA; Schema: public; Owner: admin
--

ALTER TABLE public.directus_permissions DISABLE TRIGGER ALL;



ALTER TABLE public.directus_permissions ENABLE TRIGGER ALL;

--
-- Data for Name: directus_presets; Type: TABLE DATA; Schema: public; Owner: admin
--

ALTER TABLE public.directus_presets DISABLE TRIGGER ALL;



ALTER TABLE public.directus_presets ENABLE TRIGGER ALL;

--
-- Data for Name: directus_relations; Type: TABLE DATA; Schema: public; Owner: admin
--

ALTER TABLE public.directus_relations DISABLE TRIGGER ALL;



ALTER TABLE public.directus_relations ENABLE TRIGGER ALL;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_fields_id_seq', 1, false);


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_permissions_id_seq', 1, false);


--
-- Name: directus_presets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_presets_id_seq', 1, false);


--
-- Name: directus_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.directus_relations_id_seq', 1, false);


--
-- PostgreSQL database dump complete
--
