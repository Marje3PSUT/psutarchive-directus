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


INSERT INTO public.directus_settings (id, project_name, project_color, default_language, default_appearance)
VALUES (1, 'Directus', '#6644FF', 'en-US', 'auto');
INSERT INTO public.directus_folders (id, "name", parent)
VALUES ('24bd313a-6aba-4b24-a7f3-c67e4ccc0085'::uuid, 'resource_files', NULL);
--
-- Data for Name: directus_collections; Type: TABLE DATA; Schema: public; Owner: directus
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.directus_collections DISABLE TRIGGER ALL;

INSERT INTO public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations,
                                         archive_field, archive_app_filter, archive_value, unarchive_value, sort_field,
                                         accountability, color, item_duplication_fields, sort, "group", collapse,
                                         preview_url, versioning)
VALUES ('category', 'folder', NULL, '{{name}}', false, false,
        '[{"language":"en-US","translation":"Category","singular":"category","plural":"categories"},{"language":"ar-SA","translation":"قسم","singular":"قسم","plural":"الأقسام"}]',
        NULL, true, NULL, NULL, 'sort', 'all', NULL, NULL, 1, NULL, 'open', NULL, false);
INSERT INTO public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations,
                                         archive_field, archive_app_filter, archive_value, unarchive_value, sort_field,
                                         accountability, color, item_duplication_fields, sort, "group", collapse,
                                         preview_url, versioning)
VALUES ('course', 'menu_book', NULL, '{{name}}', false, false,
        '[{"language":"en-US","translation":"Course","singular":"course","plural":"courses"},{"language":"ar-SA","translation":"مادة","singular":"مادة","plural":"مواد"}]',
        NULL, true, NULL, NULL, NULL, 'all', NULL, NULL, 2, NULL, 'open', NULL, false);
INSERT INTO public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations,
                                         archive_field, archive_app_filter, archive_value, unarchive_value, sort_field,
                                         accountability, color, item_duplication_fields, sort, "group", collapse,
                                         preview_url, versioning)
VALUES ('resource', 'library_books', NULL, NULL, false, false,
        '[{"language":"en-US","translation":"Resource","singular":"resource","plural":"resources"},{"language":"ar-SA","translation":"ورقة","singular":"ورقة","plural":"الأوراق"}]',
        'status', true, NULL, 'unverified', NULL, 'all', NULL, NULL, 3, NULL, 'open', NULL, false);
INSERT INTO public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations,
                                         archive_field, archive_app_filter, archive_value, unarchive_value, sort_field,
                                         accountability, color, item_duplication_fields, sort, "group", collapse,
                                         preview_url, versioning)
VALUES ('report', 'report', NULL, NULL, false, false, NULL, NULL, true, NULL, NULL, NULL, 'all', NULL, NULL, 4, NULL,
        'open', NULL, false);
INSERT INTO public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations,
                                         archive_field, archive_app_filter, archive_value, unarchive_value, sort_field,
                                         accountability, color, item_duplication_fields, sort, "group", collapse,
                                         preview_url, versioning)
VALUES ('exam_data', NULL, NULL, NULL, true, false, NULL, NULL, true, NULL, NULL, NULL, 'all', NULL, NULL, 5, NULL,
        'open', NULL, false);
INSERT INTO public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations,
                                         archive_field, archive_app_filter, archive_value, unarchive_value, sort_field,
                                         accountability, color, item_duplication_fields, sort, "group", collapse,
                                         preview_url, versioning)
VALUES ('note_data', NULL, NULL, NULL, true, false, NULL, NULL, true, NULL, NULL, NULL, 'all', NULL, NULL, 6, NULL,
        'open', NULL, false);
INSERT INTO public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations,
                                         archive_field, archive_app_filter, archive_value, unarchive_value, sort_field,
                                         accountability, color, item_duplication_fields, sort, "group", collapse,
                                         preview_url, versioning)
VALUES ('resource_files', 'import_export', NULL, NULL, true, false, NULL, NULL, true, NULL, NULL, 'sort', 'all', NULL,
        NULL, 7, NULL, 'open', NULL, false);
INSERT INTO public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations,
                                         archive_field, archive_app_filter, archive_value, unarchive_value, sort_field,
                                         accountability, color, item_duplication_fields, sort, "group", collapse,
                                         preview_url, versioning)
VALUES ('about_page', NULL, NULL, NULL, true, true, NULL, NULL, true, NULL, NULL, NULL, 'all', NULL, NULL, 8, NULL,
        'open', NULL, false);
INSERT INTO public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations,
                                         archive_field, archive_app_filter, archive_value, unarchive_value, sort_field,
                                         accountability, color, item_duplication_fields, sort, "group", collapse,
                                         preview_url, versioning)
VALUES ('course_category', 'import_export', NULL, NULL, true, false, NULL, NULL, true, NULL, NULL, NULL, 'all', NULL,
        NULL, 10, NULL, 'open', NULL, false);
INSERT INTO public.directus_collections (collection, icon, note, display_template, hidden, singleton, translations,
                                         archive_field, archive_app_filter, archive_value, unarchive_value, sort_field,
                                         accountability, color, item_duplication_fields, sort, "group", collapse,
                                         preview_url, versioning)
VALUES ('announcement', NULL, NULL, NULL, true, false, NULL, NULL, true, NULL, NULL, NULL, 'all', NULL, NULL, 9, NULL,
        'open', NULL, false);


ALTER TABLE public.directus_collections ENABLE TRIGGER ALL;

--
-- Data for Name: directus_dashboards; Type: TABLE DATA; Schema: public; Owner: directus
--

ALTER TABLE public.directus_dashboards DISABLE TRIGGER ALL;



ALTER TABLE public.directus_dashboards ENABLE TRIGGER ALL;

--
-- Data for Name: directus_fields; Type: TABLE DATA; Schema: public; Owner: directus
--

ALTER TABLE public.directus_fields DISABLE TRIGGER ALL;

INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (39, 'resource_files', 'directus_files_id', NULL, NULL, NULL, NULL, NULL, false, true, 3, 'full', NULL, NULL,
        NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (40, 'resource_files', 'id', NULL, NULL, NULL, NULL, NULL, false, true, 1, 'full', NULL, NULL, NULL, false, NULL,
        NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (41, 'resource_files', 'resource_id', NULL, NULL, NULL, NULL, NULL, false, true, 2, 'full', NULL, NULL, NULL,
        false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (17, 'exam_data', 'type', NULL, 'select-dropdown',
        '{"choices":[{"text":"$t:first","value":"first"},{"text":"$t:second","value":"second"},{"text":"$t:midterm","value":"midterm"},{"text":"$t:final","value":"final"},{"text":"$t:quiz","value":"quiz"},{"text":"$t:quiz1","value":"quiz1"},{"text":"$t:quiz2","value":"quiz2"},{"text":"$t:quiz3","value":"quiz3"},{"text":"$t:quiz4","value":"quiz4"},{"text":"$t:quiz5","value":"quiz5"},{"text":"$t:quiz6","value":"quiz6"}]}',
        'labels', NULL, false, false, 3, 'half', NULL, NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (16, 'exam_data', 'solved', 'cast-boolean', 'boolean', '{"label":null}', 'boolean',
        '{"labelOff":"$t:unsolved","labelOn":"$t:solved"}', false, false, 4, 'half',
        '[{"language":"ar-SA","translation":"مع حل"}]', NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (15, 'exam_data', 'id', NULL, 'input', NULL, NULL, NULL, true, true, 1, 'full', NULL, NULL, NULL, false, NULL,
        NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (48, 'course_category', 'id', NULL, NULL, NULL, NULL, NULL, false, true, 1, 'full', NULL, NULL, NULL, false,
        NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (25, 'resource', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{"relative":true}', true, true,
        14, 'half', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (27, 'resource', 'divider-x5wdnz', 'alias,no-data', 'presentation-divider',
        '{"icon":"edit","inlineTitle":true,"title":"$t:resource_details"}', NULL, NULL, false, false, 4, 'full', NULL,
        NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (32, 'resource', 'note_data', 'm2o', 'select-dropdown-m2o',
        '{"enableSelect":false,"template":"{{type}}, {{title}}"}', 'related-values', NULL, false, true, 7, 'full',
        '[{"language":"ar-SA","translation":"تفاصيل الملاحظة"}]', NULL,
        '[{"name":"Only notes","rule":{"_and":[{"type":{"_eq":"note"}}]},"hidden":false,"options":{"enableCreate":true,"enableSelect":false,"template":"{{type}}, {{title}}"},"required":true}]',
        false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (51, 'resource', 'exam_data', 'm2o', 'select-dropdown-m2o',
        '{"template":"{{type}}, {{solved}}","enableSelect":false}', 'related-values', NULL, false, true, 8, 'full',
        '[{"language":"ar-SA","translation":"تفاصيل الاختبار"}]', NULL,
        '[{"name":"Only exams","hidden":false,"required":true,"options":{"enableCreate":true,"enableSelect":false,"template":"{{type}}, {{solved}}"},"rule":{"_and":[{"type":{"_eq":"exam"}}]}}]',
        false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (35, 'resource', 'user_created', 'user-created', 'select-dropdown-m2o',
        '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, true, true, 13, 'half', NULL,
        NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (26, 'resource', 'date_updated', 'date-updated,date-created', 'datetime', NULL, 'datetime', '{"relative":true}',
        true, true, 16, 'half', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (49, 'course_category', 'course_id', NULL, NULL, NULL, 'related-values', '{"template":"{{name_en}}"}', false,
        true, 2, 'full', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (11, 'course', 'id', NULL, 'input', NULL, NULL, NULL, true, true, 1, 'full', NULL, NULL, NULL, false, NULL, NULL,
        NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (13, 'course', 'name_ar', NULL, 'input', '{"trim":true}', 'formatted-value', NULL, false, false, 5, 'half',
        '[{"language":"en-US","translation":"Name in Arabic"},{"language":"ar-SA","translation":"الأسم بالعربية"}]',
        NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (30, 'resource', 'id', NULL, 'input', NULL, NULL, NULL, true, true, 1, 'full', NULL, NULL, NULL, false, NULL,
        NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (10, 'course', 'course_id', NULL, 'input', NULL, 'formatted-value', NULL, false, false, 2, 'half',
        '[{"language":"en-US","translation":"Course ID"},{"language":"ar-SA","translation":"رقم المادة"}]', NULL, NULL,
        true, NULL, '{"_and":[{"course_id":{"_regex":"^[0-9]{5}$"}}]}', NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (47, 'course', 'category', 'm2m', 'list-m2m', '{"enableCreate":false,"template":"{{category_id.name_en}}"}',
        'related-values', '{"template":"{{category_id.name_en}}"}', false, false, 3, 'half',
        '[{"language":"ar-SA","translation":"القسم"}]', NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (14, 'course', 'name_en', NULL, 'input', '{"trim":true}', 'formatted-value', NULL, false, false, 6, 'half',
        '[{"language":"en-US","translation":"Name in English"},{"language":"ar-SA","translation":"الأسم باالإنجليزية"}]',
        NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (36, 'resource', 'user_updated', 'user-updated,user-created', 'select-dropdown-m2o',
        '{"template":"{{avatar.$thumbnail}} {{first_name}} {{last_name}}"}', 'user', NULL, true, true, 15, 'half', NULL,
        NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (29, 'resource', 'files', 'files', 'files', '{"enableSelect":false,"folder":null}', 'related-values', NULL,
        false, false, 12, 'full', '[{"language":"ar-SA","translation":"الملفات"}]', NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (50, 'course_category', 'category_id', NULL, 'select-dropdown-m2o',
        '{"template":"{{name_en}}","enableSelect":false,"enableCreate":false}', 'related-values',
        '{"template":"{{name_en}}"}', false, true, 3, 'full', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (54, 'exam_data', 'related_resource', 'o2m', 'list-o2m', '{"enableSelect":false,"enableCreate":false}', NULL,
        NULL, false, true, 5, 'full', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (55, 'resource_files', 'sort', NULL, 'input', '{"min":0}', NULL, NULL, false, true, 4, 'full', NULL, NULL, NULL,
        true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (21, 'note_data', 'id', NULL, 'input', NULL, NULL, NULL, true, true, 1, 'full', NULL, NULL, NULL, false, NULL,
        NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (22, 'note_data', 'title', NULL, 'input', '{"clear":true,"softLength":35,"trim":true}', 'formatted-value', NULL,
        false, false, 3, 'half', '[{"language":"ar-SA","translation":"العنوان"}]', '$t:title_note', NULL, false, NULL,
        NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (53, 'note_data', 'related_resource', 'o2m', 'list-o2m', '{"enableSelect":false,"enableCreate":false}', NULL,
        NULL, false, true, 5, 'full', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (12, 'course', 'links', 'cast-json', 'list',
        '{"fields":[{"field":"title","name":"title","type":"string","meta":{"field":"title","width":"half","type":"string","required":false,"interface":"input","options":{"trim":true},"display":"formatted-value"}},{"field":"url","name":"url","type":"string","meta":{"field":"url","width":"full","type":"string","interface":"input","options":{"trim":true},"required":true}}],"template":"{{ title }} - {{ url }}"}',
        'formatted-json-value', '{"format":"{{ title }} - {{ url }}"}', false, false, 7, 'half',
        '[{"language":"ar-SA","translation":"الروابط"}]', NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (1, 'category', 'id', NULL, 'input', NULL, NULL, NULL, true, true, 1, 'full', NULL, NULL, NULL, false, NULL,
        NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (3, 'category', 'sort', NULL, 'input', NULL, NULL, NULL, false, true, 2, 'full', NULL, NULL, NULL, false, NULL,
        NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (42, 'category', 'name_ar', NULL, 'input', '{"trim":true}', 'formatted-value', NULL, false, false, 4, 'half',
        '[{"language":"en-US","translation":"Name in Arabic"},{"language":"ar-SA","translation":"الأسم بالعربية"}]',
        NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (43, 'category', 'name_en', NULL, 'input', '{"trim":true}', 'formatted-value', NULL, false, false, 5, 'half',
        '[{"language":"en-US","translation":"Name in English"},{"language":"ar-SA","translation":"الأسم باالإنجليزية"}]',
        NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (33, 'resource', 'status', NULL, 'select-radio',
        '{"choices":[{"text":"$t:verified","value":"verified"},{"text":"$t:unverified","value":"unverified"}],"color":null}',
        'labels',
        '{"choices":[{"text":"$t:verified","value":"verified","foreground":"#FFFFFF","background":"#26A269"},{"text":"$t:unverified","value":"unverified","foreground":"#18222F","background":"#E5A50A"}],"showAsDot":true}',
        false, false, 2, 'half', '[{"language":"ar-SA","translation":"الحالة"}]', NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (24, 'resource', 'course', 'm2o', 'select-dropdown-m2o', '{"enableCreate":false,"template":"{{name_en}}"}',
        'related-values', '{"template":"{{name_en}}"}', false, false, 5, 'half',
        '[{"language":"ar-SA","translation":"المادة"}]', NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (58, 'course', 'additional_notes', NULL, 'input', '{"trim":true,"clear":true}', 'formatted-value', NULL, false,
        false, 9, 'full',
        '[{"language":"en-US","translation":"Additional Notes"},{"language":"ar-SA","translation":"ملاحظات إضافية"}]',
        NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (59, 'about_page', 'id', NULL, 'input', NULL, NULL, NULL, true, true, 1, 'full', NULL, NULL, NULL, false, NULL,
        NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (52, 'directus_users', 'credits_visible', 'cast-boolean', 'boolean', '{"label":"$t:visible"}', 'boolean',
        '{"labelOn":"$t:visible","labelOff":"$t:not_visible"}', false, false, 2, 'full',
        '[{"language":"en-US","translation":"Credits visible"},{"language":"ar-SA","translation":"معلومات المُقدم معروضة"}]',
        NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (34, 'resource', 'type', NULL, 'select-radio',
        '{"choices":[{"text":"$t:exam","value":"exam"},{"text":"$t:note","value":"note"}]}', 'labels', NULL, false,
        false, 6, 'half', '[{"language":"ar-SA","translation":"نوع الورقة"}]', '$t:delete_assoc',
        '[{"name":"ReadOnly when both data and type are selected","rule":{"_and":[{"_or":[{"_and":[{"type":{"_eq":"exam"}},{"exam_data":{"_nnull":true}}]},{"_and":[{"type":{"_eq":"note"}},{"note_data":{"_nnull":true}}]}]}]},"options":{"iconOn":"radio_button_checked","iconOff":"radio_button_unchecked","allowOther":false},"readonly":true}]',
        true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (62, 'about_page', 'page_en', NULL, 'input-rich-text-html', '{"folder":null}', NULL, NULL, false, false, 4,
        'full', NULL, NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (63, 'about_page', 'page_ar', NULL, 'input-rich-text-html', '{"folder":null}', NULL, NULL, false, false, 5,
        'full', NULL, NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (64, 'announcement', 'id', NULL, 'input', NULL, NULL, NULL, true, true, 1, 'full', NULL, NULL, NULL, false, NULL,
        NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (71, 'announcement', 'icon', NULL, 'select-icon', NULL, 'icon', NULL, false, false, 4, 'full', NULL, NULL, NULL,
        false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (67, 'announcement', 'description_en', NULL, 'input', '{"trim":true,"clear":true}', 'formatted-value', NULL,
        false, false, 5, 'full', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (68, 'announcement', 'description_ar', NULL, 'input', '{"trim":true,"clear":true}', 'formatted-value', NULL,
        false, false, 6, 'full', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (69, 'announcement', 'url', NULL, 'input', '{"trim":true,"clear":true}', 'formatted-value', NULL, false, false,
        7, 'full', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (73, 'directus_files', 'associated_resources', 'o2m', 'list-o2m',
        '{"template":"{{resource_id}}","enableCreate":false,"enableSelect":false}', NULL, NULL, false, true, 1, 'full',
        NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (23, 'note_data', 'type', NULL, 'select-dropdown',
        '{"choices":[{"text":"$t:slides","value":"slides"},{"text":"$t:summary","value":"summary"},{"text":"$t:project","value":"project"},{"text":"$t:assignment","value":"assignment"},{"text":"$t:other","value":"other"}]}',
        'labels', NULL, false, false, 2, 'half', '[{"language":"ar-SA","translation":"نوع الملاحظة"}]', NULL, NULL,
        true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (74, 'note_data', 'original_author', NULL, 'input', '{"trim":true,"clear":true}', 'formatted-value', NULL, false,
        false, 4, 'full',
        '[{"language":"en-US","translation":"Original Author"},{"language":"ar-SA","translation":"المؤلف الأصلي"}]',
        '$t:author_note', NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (78, 'report', 'id', NULL, 'input', NULL, NULL, NULL, true, true, 1, 'full', NULL, NULL, NULL, false, NULL, NULL,
        NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (83, 'category', 'color', NULL, 'select-color', '{}', 'color', NULL, false, false, 3, 'full',
        '[{"language":"ar-SA","translation":"اللون"}]', NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (80, 'report', 'complaint', NULL, 'input-multiline', NULL, 'formatted-value', NULL, true, false, 4, 'full',
        '[{"language":"ar-SA","translation":"الشكوة"}]', NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (38, 'resource', 'year', NULL, 'input', '{"min":2000,"max":5000}', 'formatted-value', NULL, false, false, 9,
        'half', '[{"language":"ar-SA","translation":"السنة"}]', NULL, NULL, true, NULL,
        '{"_and":[{"year":{"_gte":"2010"}}]}', NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (84, 'category', 'slug', NULL, 'input', NULL, NULL, NULL, true, false, 6, 'full', NULL, NULL, NULL, false, NULL,
        NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (85, 'course', 'resource', 'o2m', 'list-o2m', '{"enableCreate":false,"enableSelect":false}', NULL, NULL, true,
        true, 10, 'full', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (65, 'announcement', 'title_en', NULL, 'input', '{"trim":true,"clear":true}', 'formatted-value', NULL, false,
        false, 2, 'half', NULL, NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (66, 'announcement', 'title_ar', NULL, 'input', '{"trim":true,"clear":true}', 'formatted-value', NULL, false,
        false, 3, 'half', NULL, NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (37, 'resource', 'semester', NULL, 'select-dropdown',
        '{"choices":[{"text":"$t:fall","value":"fall"},{"text":"$t:spring","value":"spring"},{"text":"$t:summer","value":"summer"}]}',
        'labels', NULL, false, false, 10, 'half', '[{"language":"ar-SA","translation":"الفصل"}]', NULL, NULL, false,
        NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (81, 'report', 'resource', 'm2o', 'select-dropdown-m2o',
        '{"enableCreate":false,"template":"{{id}}, {{type}}","enableSelect":false}', 'related-values', NULL, false,
        false, 2, 'full',
        '[{"language":"en-US","translation":"Resource in Question"},{"language":"ar-SA","translation":"الورقة تحت الشكوة"}]',
        NULL, NULL, true, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (8, 'course', 'alt_names', 'cast-csv', 'tags', NULL, 'labels', NULL, false, false, 8, 'half',
        '[{"language":"en-US","translation":"Alternative names"},{"language":"ar-SA","translation":"أسماء اخرى"}]',
        '$t:alt_names_hint', NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (89, 'directus_users', 'credits_notice', 'alias,no-data', 'presentation-notice', '{"text":"$t:credits_notice"}',
        NULL, NULL, false, false, 1, 'full', NULL, NULL, NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (86, 'directus_users', 'total_uploaded_day', NULL, 'input', NULL, NULL, NULL, true, true, 3, 'full', NULL, NULL,
        NULL, false, NULL, NULL, NULL);
INSERT INTO public.directus_fields (id, collection, field, special, interface, options, display, display_options,
                                    readonly, hidden, sort, width, translations, note, conditions, required, "group",
                                    validation, validation_message)
VALUES (79, 'report', 'type', NULL, 'select-dropdown',
        '{"choices":[{"text":"$t:unrelated","value":"unrelated"},{"text":"$t:incorrect","value":"incorrect"},{"text":"$t:other","value":"other"}]}',
        'labels',
        '{"choices":[{"text":"$t:unrelated","value":"unrelated"},{"text":"$t:incorrect","value":"incorrect"},{"text":"$t:other","value":"other"}]}',
        true, false, 3, 'full',
        '[{"language":"en-US","translation":"Report Type"},{"language":"ar-SA","translation":"نوع الشكوى"}]', NULL,
        NULL, true, NULL, NULL, NULL);


ALTER TABLE public.directus_fields ENABLE TRIGGER ALL;

--
-- Data for Name: directus_flows; Type: TABLE DATA; Schema: public; Owner: directus
--

ALTER TABLE public.directus_flows DISABLE TRIGGER ALL;



ALTER TABLE public.directus_flows ENABLE TRIGGER ALL;

--
-- Data for Name: directus_migrations; Type: TABLE DATA; Schema: public; Owner: directus
--

ALTER TABLE public.directus_migrations DISABLE TRIGGER ALL;

INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201028A', 'Remove Collection Foreign Keys', '2023-11-05 14:10:46.827486+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201029A', 'Remove System Relations', '2023-11-05 14:10:46.833241+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201029B', 'Remove System Collections', '2023-11-05 14:10:46.837093+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201029C', 'Remove System Fields', '2023-11-05 14:10:46.845766+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201105A', 'Add Cascade System Relations', '2023-11-05 14:10:46.885421+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20201105B', 'Change Webhook URL Type', '2023-11-05 14:10:46.896358+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210225A', 'Add Relations Sort Field', '2023-11-05 14:10:46.904923+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210304A', 'Remove Locked Fields', '2023-11-05 14:10:46.910763+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210312A', 'Webhooks Collections Text', '2023-11-05 14:10:46.919471+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210331A', 'Add Refresh Interval', '2023-11-05 14:10:46.923165+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210415A', 'Make Filesize Nullable', '2023-11-05 14:10:46.930684+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210416A', 'Add Collections Accountability', '2023-11-05 14:10:46.935685+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210422A', 'Remove Files Interface', '2023-11-05 14:10:46.93875+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210506A', 'Rename Interfaces', '2023-11-05 14:10:46.949508+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210510A', 'Restructure Relations', '2023-11-05 14:10:46.976684+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210518A', 'Add Foreign Key Constraints', '2023-11-05 14:10:46.984398+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210519A', 'Add System Fk Triggers', '2023-11-05 14:10:47.024851+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210521A', 'Add Collections Icon Color', '2023-11-05 14:10:47.029187+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210525A', 'Add Insights', '2023-11-05 14:10:47.071692+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210608A', 'Add Deep Clone Config', '2023-11-05 14:10:47.077709+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210626A', 'Change Filesize Bigint', '2023-11-05 14:10:47.10224+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210716A', 'Add Conditions to Fields', '2023-11-05 14:10:47.109136+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210721A', 'Add Default Folder', '2023-11-05 14:10:47.122415+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210802A', 'Replace Groups', '2023-11-05 14:10:47.128206+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210803A', 'Add Required to Fields', '2023-11-05 14:10:47.131923+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210805A', 'Update Groups', '2023-11-05 14:10:47.136672+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210805B', 'Change Image Metadata Structure', '2023-11-05 14:10:47.140417+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210811A', 'Add Geometry Config', '2023-11-05 14:10:47.143491+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210831A', 'Remove Limit Column', '2023-11-05 14:10:47.146066+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210903A', 'Add Auth Provider', '2023-11-05 14:10:47.170406+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210907A', 'Webhooks Collections Not Null', '2023-11-05 14:10:47.178381+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210910A', 'Move Module Setup', '2023-11-05 14:10:47.182972+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210920A', 'Webhooks URL Not Null', '2023-11-05 14:10:47.191626+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210924A', 'Add Collection Organization', '2023-11-05 14:10:47.196003+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210927A', 'Replace Fields Group', '2023-11-05 14:10:47.204904+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210927B', 'Replace M2M Interface', '2023-11-05 14:10:47.207568+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20210929A', 'Rename Login Action', '2023-11-05 14:10:47.21011+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211007A', 'Update Presets', '2023-11-05 14:10:47.217991+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211009A', 'Add Auth Data', '2023-11-05 14:10:47.222071+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211016A', 'Add Webhook Headers', '2023-11-05 14:10:47.225292+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211103A', 'Set Unique to User Token', '2023-11-05 14:10:47.232881+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211103B', 'Update Special Geometry', '2023-11-05 14:10:47.237448+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211104A', 'Remove Collections Listing', '2023-11-05 14:10:47.241464+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211118A', 'Add Notifications', '2023-11-05 14:10:47.264735+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211211A', 'Add Shares', '2023-11-05 14:10:47.29991+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20211230A', 'Add Project Descriptor', '2023-11-05 14:10:47.305417+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220303A', 'Remove Default Project Color', '2023-11-05 14:10:47.314271+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220308A', 'Add Bookmark Icon and Color', '2023-11-05 14:10:47.320447+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220314A', 'Add Translation Strings', '2023-11-05 14:10:47.32449+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220322A', 'Rename Field Typecast Flags', '2023-11-05 14:10:47.328395+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220323A', 'Add Field Validation', '2023-11-05 14:10:47.331618+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220325A', 'Fix Typecast Flags', '2023-11-05 14:10:47.337596+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220325B', 'Add Default Language', '2023-11-05 14:10:47.346869+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220402A', 'Remove Default Value Panel Icon', '2023-11-05 14:10:47.355081+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220429A', 'Add Flows', '2023-11-05 14:10:47.412085+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220429B', 'Add Color to Insights Icon', '2023-11-05 14:10:47.417255+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220429C', 'Drop Non Null From IP of Activity', '2023-11-05 14:10:47.421959+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220429D', 'Drop Non Null From Sender of Notifications', '2023-11-05 14:10:47.42645+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220614A', 'Rename Hook Trigger to Event', '2023-11-05 14:10:47.430078+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220801A', 'Update Notifications Timestamp Column', '2023-11-05 14:10:47.440393+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220802A', 'Add Custom Aspect Ratios', '2023-11-05 14:10:47.443653+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20220826A', 'Add Origin to Accountability', '2023-11-05 14:10:47.447654+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230401A', 'Update Material Icons', '2023-11-05 14:10:47.457389+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230525A', 'Add Preview Settings', '2023-11-05 14:10:47.462101+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230526A', 'Migrate Translation Strings', '2023-11-05 14:10:47.483097+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230721A', 'Require Shares Fields', '2023-11-05 14:10:47.490526+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230823A', 'Add Content Versioning', '2023-11-05 14:10:47.513389+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20230927A', 'Themes', '2023-11-05 14:10:47.532477+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20231009A', 'Update CSV Fields to Text', '2023-11-05 14:10:47.538074+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20231009B', 'Update Panel Options', '2023-11-05 14:10:47.540539+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20231010A', 'Add Extensions', '2023-11-05 14:10:47.548455+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20231215A', 'Add Focalpoints', '2024-02-26 07:34:07.029849+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20240204A', 'Marketplace', '2024-03-12 22:03:07.625935+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20240122A', 'Add Report URL Fields', '2024-04-10 15:37:27.076928+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20240305A', 'Change Useragent Type', '2024-04-10 15:37:27.143868+00');
INSERT INTO public.directus_migrations (version, name, "timestamp")
VALUES ('20240311A', 'Deprecate Webhooks', '2024-04-10 15:37:27.249486+00');


ALTER TABLE public.directus_migrations ENABLE TRIGGER ALL;

--
-- Data for Name: directus_operations; Type: TABLE DATA; Schema: public; Owner: directus
--

ALTER TABLE public.directus_operations DISABLE TRIGGER ALL;



ALTER TABLE public.directus_operations ENABLE TRIGGER ALL;

--
-- Data for Name: directus_panels; Type: TABLE DATA; Schema: public; Owner: directus
--

ALTER TABLE public.directus_panels DISABLE TRIGGER ALL;



ALTER TABLE public.directus_panels ENABLE TRIGGER ALL;

--
-- Data for Name: directus_roles; Type: TABLE DATA; Schema: public; Owner: directus
--

ALTER TABLE public.directus_roles DISABLE TRIGGER ALL;

INSERT INTO public.directus_roles (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access)
VALUES ('c9e50c86-d0f3-462a-850d-8872ea49fa09', 'Administrator', 'verified',
        'Administrative role with unrestricted App/API access. ', NULL, false, true, true);
INSERT INTO public.directus_roles (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access)
VALUES ('c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'Moderator', 'supervised_user_circle',
        'Moderators can review, modify and publish resources.', NULL, false, false, true);
INSERT INTO public.directus_roles (id, name, icon, description, ip_access, enforce_tfa, admin_access, app_access)
VALUES ('46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'Contributor', 'supervised_user_circle',
        'Contributers can add new resources.', NULL, false, false, true);


ALTER TABLE public.directus_roles ENABLE TRIGGER ALL;

--
-- Data for Name: directus_permissions; Type: TABLE DATA; Schema: public; Owner: directus
--

ALTER TABLE public.directus_permissions DISABLE TRIGGER ALL;

INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (3, NULL, 'course', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (128, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'category', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (129, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'course', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (60, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'directus_files', 'read', '{}', NULL, NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (72, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'directus_folders', 'read', '{}', NULL, NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (77, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'directus_roles', 'read', '{}', NULL, NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (82, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'directus_flows', 'read', '{"trigger":{"_eq":"manual"}}', NULL,
        NULL, 'id,status,name,icon,color,options,trigger');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (147, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'announcement', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (148, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'about_page', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (245, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'directus_files', 'create', '{}', '{}',
        '{"folder":"24bd313a-6aba-4b24-a7f3-c67e4ccc0085"}',
        'id,associated_resources,title,description,tags,location,storage,storage_divider,filename_disk,filename_download,metadata,type,filesize,modified_by,modified_on,embed,uploaded_by,uploaded_on,width,height,charset,duration,$thumbnail');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (111, NULL, 'resource_files', 'read', '{"_and":[{"resource_id":{"status":{"_eq":"verified"}}}]}', '{}', NULL,
        'directus_files_id,sort');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (78, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'directus_shares', 'read',
        '{"_and":[{"user_created":{"_eq":"$CURRENT_USER"}}]}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (112, NULL, 'exam_data', 'read', '{"_and":[{"related_resource":{"status":{"_eq":"verified"}}}]}', '{}', NULL,
        'type,solved');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (4, NULL, 'resource', 'read', '{"_and":[{"status":{"_eq":"verified"}}]}', NULL, NULL,
        'id,course,exam_data,year,type,note_data,semester,files,original_author,date_updated,user_created');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (113, NULL, 'note_data', 'read', '{"_and":[{"related_resource":{"status":{"_eq":"verified"}}}]}', '{}', NULL,
        'type,title');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (246, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'directus_files', 'update', '{}', '{}', NULL,
        'id,associated_resources,title,description,tags,location,storage,storage_divider,filename_disk,filename_download,metadata,type,filesize,modified_by,modified_on,embed,uploaded_by,uploaded_on,width,height,charset,duration,$thumbnail');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (133, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'resource', 'read',
        '{"_and":[{"_or":[{"status":{"_eq":"verified"}},{"user_created":{"_eq":"$CURRENT_USER"}}]}]}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (132, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'note_data', 'read',
        '{"_and":[{"_or":[{"related_resource":{"status":{"_eq":"verified"}}},{"related_resource":{"user_created":{"_eq":"$CURRENT_USER"}}}]}]}',
        '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (213, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'about_page', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (214, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'announcement', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (215, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'category', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (216, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'course', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (217, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'course_category', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (218, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'exam_data', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (219, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'note_data', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (138, NULL, 'announcement', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (34, NULL, 'directus_users', 'read', '{"_and":[{"credits_visible":{"_eq":true}}]}', NULL, NULL,
        'first_name,last_name');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (159, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'note_data', 'update',
        '{"_and":[{"_and":[{"related_resource":{"status":{"_eq":"unverified"}}},{"related_resource":{"user_created":{"_eq":"$CURRENT_USER"}}}]}]}',
        NULL, NULL, 'type,title,original_author,related_resource');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (209, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'note_data', 'delete',
        '{"_and":[{"_and":[{"related_resource":{"status":{"_eq":"unverified"}}},{"related_resource":{"user_created":{"_eq":"$CURRENT_USER"}}}]}]}',
        NULL, NULL, NULL);
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (134, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'resource_files', 'read',
        '{"_and":[{"_or":[{"resource_id":{"status":{"_eq":"verified"}}},{"resource_id":{"user_created":{"_eq":"$CURRENT_USER"}}}]}]}',
        '{}', NULL, 'directus_files_id,sort,resource_id,id');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (161, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'resource_files', 'update',
        '{"_and":[{"_and":[{"resource_id":{"status":{"_eq":"unverified"}}},{"resource_id":{"user_created":{"_eq":"$CURRENT_USER"}}}]}]}',
        NULL, NULL, 'directus_files_id,sort,id,resource_id');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (211, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'resource_files', 'delete',
        '{"_and":[{"_and":[{"resource_id":{"status":{"_eq":"unverified"}}},{"resource_id":{"user_created":{"_eq":"$CURRENT_USER"}}}]}]}',
        NULL, NULL, NULL);
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (130, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'course_category', 'read', '{}', '{}', NULL,
        'category_id,id,course_id');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (220, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'resource', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (221, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'resource_files', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (223, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'course', 'create', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (224, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'course_category', 'create', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (225, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'exam_data', 'create', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (226, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'note_data', 'create', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (227, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'resource', 'create', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (228, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'resource_files', 'create', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (229, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'course', 'update', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (230, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'course_category', 'update', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (231, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'exam_data', 'update', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (232, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'note_data', 'update', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (233, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'resource', 'update', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (234, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'resource_files', 'update', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (238, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'course', 'delete', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (239, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'course_category', 'delete', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (240, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'exam_data', 'delete', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (241, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'note_data', 'delete', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (242, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'resource', 'delete', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (243, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'resource_files', 'delete', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (247, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'directus_files', 'delete',
        '{"_and":[{"associated_resources":{"_nnull":true}}]}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (269, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'report', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (270, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'report', 'delete', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (271, NULL, 'report', 'create', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (278, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'directus_panels', 'read', NULL, NULL, NULL, NULL);
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (2, NULL, 'category', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (139, NULL, 'about_page', 'read', '{}', '{}', NULL, '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (156, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'resource', 'create', '{}',
        '{"_and":[{"_or":[{"_and":[{"type":{"_eq":"exam"}},{"note_data":{"_null":true}},{"exam_data":{"_nnull":true}}]},{"_and":[{"type":{"_eq":"note"}},{"note_data":{"_nnull":true}},{"exam_data":{"_null":true}}]}]}]}',
        '{"status":"unverified"}', 'course,type,note_data,exam_data,year,semester,original_author,files');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (131, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'exam_data', 'read',
        '{"_and":[{"_or":[{"related_resource":{"status":{"_eq":"verified"}}},{"related_resource":{"user_created":{"_eq":"$CURRENT_USER"}}}]}]}',
        '{}', NULL, 'id,type,solved,related_resource');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (7, NULL, 'course_category', 'read', '{}', '{}', NULL, 'category_id,course_id,id');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (158, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'exam_data', 'update',
        '{"_and":[{"_and":[{"related_resource":{"status":{"_eq":"unverified"}}},{"related_resource":{"user_created":{"_eq":"$CURRENT_USER"}}}]}]}',
        NULL, NULL, 'type,solved,related_resource');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (208, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'exam_data', 'delete',
        '{"_and":[{"_and":[{"related_resource":{"status":{"_eq":"unverified"}}},{"related_resource":{"user_created":{"_eq":"$CURRENT_USER"}}}]}]}',
        NULL, NULL, NULL);
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (207, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'exam_data', 'create', '{}', '{}', NULL, 'type,solved');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (206, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'note_data', 'create', '{}', '{}', NULL,
        'type,title,original_author');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (205, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'resource_files', 'create', '{}', '{}', NULL,
        'resource_id,directus_files_id,sort');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (160, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'resource', 'update',
        '{"_and":[{"_and":[{"status":{"_eq":"unverified"}},{"user_created":{"_eq":"$CURRENT_USER"}}]}]}',
        '{"_and":[{"_or":[{"_and":[{"type":{"_eq":"note"}},{"exam_data":{"_null":true}},{"note_data":{"_nnull":true}}]},{"_and":[{"type":{"_eq":"exam"}},{"exam_data":{"_nnull":true}},{"note_data":{"_null":true}}]}]}]}',
        NULL, 'needs_review,course,type,note_data,exam_data,year,semester,original_author,files');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (279, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'resource', 'delete',
        '{"_and":[{"_and":[{"status":{"_eq":"unverified"}},{"user_created":{"_eq":"$CURRENT_USER"}}]}]}', '{}', NULL,
        '*');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (157, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'directus_files', 'create', '{}', NULL,
        '{"folder":"24bd313a-6aba-4b24-a7f3-c67e4ccc0085"}',
        'id,associated_resources,title,description,location,storage,storage_divider,filename_disk,filename_download,metadata,type,filesize,modified_by,modified_on,uploaded_by,uploaded_on,width,height,charset,duration,$thumbnail');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (162, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'directus_files', 'update',
        '{"_and":[{"_and":[{"associated_resources":{"resource_id":{"user_created":{"_eq":"$CURRENT_USER"}}}},{"associated_resources":{"resource_id":{"status":{"_eq":"unverified"}}}}]}]}',
        '{}', NULL,
        'id,associated_resources,title,description,location,storage,storage_divider,filename_disk,filename_download,filesize,metadata,type,modified_on,modified_by,uploaded_on,uploaded_by,width,charset,duration,height,$thumbnail');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (75, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'directus_users', 'read', '{"_and":[{"id":{"_nnull":true}}]}', NULL,
        NULL, 'first_name,credits_visible,last_name,language,appearance,status,id');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (290, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'directus_presets', 'update', NULL, NULL, NULL,
        'filter,layout_options,user,id,role,layout_query,collection,refresh_interval,layout,search');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (292, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'directus_presets', 'create', NULL, NULL, NULL,
        'refresh_interval,collection,layout,search,id,user,role,layout_options,filter,layout_query');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (137, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'directus_files', 'read',
        '{"_and":[{"_or":[{"uploaded_by":{"_eq":"$CURRENT_USER"}},{"associated_resources":{"resource_id":{"status":{"_eq":"verified"}}}}]}]}',
        '{}', NULL,
        'id,title,description,storage,filename_disk,filename_download,filesize,storage_divider,metadata,type,modified_by,modified_on,uploaded_by,uploaded_on,width,charset,$thumbnail,duration,height,embed,focal_point_y,focal_point_divider,location,focal_point_x,tags,associated_resources,folder');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (212, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'directus_files', 'delete',
        '{"_and":[{"uploaded_by":{"_eq":"$CURRENT_USER"}},{"_or":[{"associated_resources":{"_null":true}},{"associated_resources":{"resource_id":{"status":{"_eq":"unverified"}}}}]}]}',
        NULL, NULL, NULL);
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (252, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'directus_activity', 'read',
        '{"_and":[{"user":{"role":{"name":{"_in":["Moderator","Contributor"]}}}}]}', NULL, NULL, NULL);
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (136, NULL, 'directus_files', 'read',
        '{"_and":[{"associated_resources":{"resource_id":{"status":{"_eq":"verified"}}}}]}', '{}', NULL,
        'id,filename_disk,filesize,filename_download');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (275, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'directus_users', 'update',
        '{"_and":[{"id":{"_eq":"$CURRENT_USER"}}]}', NULL, NULL,
        'credits_visible,language,appearance,first_name,last_name,theme_light,theme_dark');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (76, 'c26ce4ed-9eea-4b1a-9f74-6496c3f105e4', 'directus_users', 'update',
        '{"_and":[{"_or":[{"role":{"name":{"_eq":"Contributor"}}},{"id":{"_eq":"$CURRENT_USER"}}]}]}', NULL, NULL,
        'first_name,last_name,language,appearance,status,credits_visible,theme_light,theme_dark');
INSERT INTO public.directus_permissions (id, role, collection, action, permissions, validation, presets, fields)
VALUES (276, '46ee07b4-b91a-40cd-be4b-94dcd16af0bd', 'directus_users', 'read',
        '{"_and":[{"_or":[{"id":{"_eq":"$CURRENT_USER"}},{"credits_visible":{"_eq":true}}]},{"id":{"_eq":"$CURRENT_ROLE"}}]}',
        NULL, NULL, 'first_name,last_name,appearance,language,credits_visible');


ALTER TABLE public.directus_permissions ENABLE TRIGGER ALL;

--
-- Data for Name: directus_presets; Type: TABLE DATA; Schema: public; Owner: directus
--

ALTER TABLE public.directus_presets DISABLE TRIGGER ALL;

INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (308, NULL, '801aea5b-0294-4676-afda-951a15072e55', NULL, 'resource', NULL, NULL, '{"tabular":{"page":1}}', NULL,
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (312, '$t:unverified_resource', NULL, NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated", "user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":98,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"unverified"}}]}', 'circle', '#E5A50A');
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (310, NULL, '801aea5b-0294-4676-afda-951a15072e55', NULL, 'course', NULL, NULL, '{"tabular":{"page":1}}', NULL,
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (311, NULL, '801aea5b-0294-4676-afda-951a15072e55', NULL, 'category', NULL, NULL, '{"tabular":{"page":1}}', NULL,
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (309, NULL, '801aea5b-0294-4676-afda-951a15072e55', NULL, 'report', NULL, NULL, '{"tabular":{"page":1}}', NULL,
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (316, NULL, NULL, NULL, 'directus_presets', NULL, 'tabular',
        '{"tabular":{"page":1,"limit":25,"fields":["bookmark","id","role","user","collection","filter","layout_query","layout_options","user.email","icon","color","search","layout","refresh_interval"]}}',
        NULL, NULL, '{"_and":[{"user":{"_null":true}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (321, NULL, 'a8938319-80db-4b95-95c9-32bdda734c6a', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","slug","name_en","name_ar"],"page":1}}', NULL, NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (328, NULL, 'd4b504e1-51f5-4ace-97c1-9c54ffced78c', NULL, 'resource', 'da', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","type","year","semester","date_updated","files","user_updated","user_created"],"page":1,"sort":["-course"]}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101},"align":{"course":"left"}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (314, NULL, NULL, NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"]}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (315, NULL, NULL, NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated", "user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (313, '$t:my_resources', NULL, NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated", "user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":98,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"user_created":{"_eq":"$CURRENT_USER"}}]}', 'sentiment_content', '#9A9996');
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (324, NULL, '09a01a3f-f22b-432c-9d8a-671a98e17eea', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (317, NULL, NULL, NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"]}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (320, NULL, 'a8938319-80db-4b95-95c9-32bdda734c6a', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1,"sort":["course_id"]}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (325, NULL, '1be5f3d3-5783-42d7-8bbe-c1ee69656089', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (329, NULL, 'd4b504e1-51f5-4ace-97c1-9c54ffced78c', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (330, NULL, 'd4b504e1-51f5-4ace-97c1-9c54ffced78c', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (327, NULL, 'd4b504e1-51f5-4ace-97c1-9c54ffced78c', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","type","year","semester","date_updated","files","user_updated","user_created"],"page":1,"sort":["-course"]},"map":{"limit":25,"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101},"align":{"course":"left"},"spacing":"cozy"}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (360, NULL, 'e60868d8-c46f-42a0-9a88-2af9b10eb0b6', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (336, NULL, '5eb96f19-c16e-4c20-9823-36d8a9184134', NULL, 'directus_translations', 'note', NULL,
        '{"tabular":{"page":1}}', NULL, NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (305, NULL, 'b7eb79c3-7e3a-41b3-92d6-9f9f83f1c0e5', NULL, 'directus_users', '', 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (326, NULL, 'b7eb79c3-7e3a-41b3-92d6-9f9f83f1c0e5', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (333, NULL, '5eb96f19-c16e-4c20-9823-36d8a9184134', NULL, 'announcement', NULL, NULL, '{"tabular":{"page":1}}',
        NULL, NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (323, NULL, '0dde93b3-6ee7-4641-a438-85c471b9fde3', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","slug","name_en","name_ar"],"page":1}}', NULL, NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (343, NULL, 'b3e8856e-87a7-4357-a319-a4b53711399e', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (322, NULL, '0dde93b3-6ee7-4641-a438-85c471b9fde3', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":11}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (306, NULL, 'b7eb79c3-7e3a-41b3-92d6-9f9f83f1c0e5', NULL, 'resource', '', NULL,
        '{"tabular":{"page":3,"fields":["course","divider-x5wdnz","status","type","user_created","user_updated","date_updated","date_created"],"sort":["date_updated"]}}',
        NULL, NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (319, NULL, '5eb96f19-c16e-4c20-9823-36d8a9184134', NULL, 'course', 'math', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (332, NULL, '0dde93b3-6ee7-4641-a438-85c471b9fde3', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["email"],"page":1,"limit":25}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (337, NULL, '617ead0d-6fef-4fd4-bd3c-ba677fa56828', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (338, NULL, '617ead0d-6fef-4fd4-bd3c-ba677fa56828', NULL, 'directus_users', '', 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (345, NULL, 'b3e8856e-87a7-4357-a319-a4b53711399e', NULL, 'exam_data', NULL, NULL, '{"tabular":{"page":1}}',
        NULL, NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (340, NULL, '9f695833-0074-4a08-99ac-834e222bd87e', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (351, NULL, 'd019afb1-bfc9-4c80-8451-3328e366b55e', NULL, 'directus_activity', NULL, 'tabular',
        '{"tabular":{"sort":["-timestamp"],"fields":["action","collection","timestamp","user"],"page":1}}',
        '{"tabular":{"widths":{"action":120,"collection":210,"timestamp":240,"user":240}}}', NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (359, NULL, 'e60868d8-c46f-42a0-9a88-2af9b10eb0b6', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (354, NULL, '4746c764-2d6b-440c-b942-76f65dc4eabd', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (349, NULL, 'd019afb1-bfc9-4c80-8451-3328e366b55e', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (353, NULL, '4746c764-2d6b-440c-b942-76f65dc4eabd', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (355, NULL, '4746c764-2d6b-440c-b942-76f65dc4eabd', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (356, NULL, 'cb94beee-3cde-4552-b408-029a86e73d25', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (357, NULL, 'cb94beee-3cde-4552-b408-029a86e73d25', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (358, NULL, 'e60868d8-c46f-42a0-9a88-2af9b10eb0b6', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (365, NULL, '428251d7-3fca-476b-bbfe-d979809d0968', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (386, NULL, '44d07137-9fe1-489e-969b-2617e111242b', NULL, 'course', 'Dist', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (370, NULL, '0dde93b3-6ee7-4641-a438-85c471b9fde3', NULL, 'directus_activity', NULL, 'tabular',
        '{"tabular":{"sort":["-timestamp"],"fields":["action","collection","timestamp","user"],"page":1}}',
        '{"tabular":{"widths":{"action":120,"collection":210,"timestamp":240,"user":240}}}', NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (361, NULL, '2ef723a5-4637-4236-8e35-dbad734ae1b7', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":28}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (339, NULL, '9f695833-0074-4a08-99ac-834e222bd87e', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (368, NULL, '0dde93b3-6ee7-4641-a438-85c471b9fde3', NULL, 'report', NULL, NULL, '{"tabular":{"page":1}}', NULL,
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (363, NULL, '2ef723a5-4637-4236-8e35-dbad734ae1b7', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (344, NULL, 'b3e8856e-87a7-4357-a319-a4b53711399e', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","resource"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (350, NULL, 'd019afb1-bfc9-4c80-8451-3328e366b55e', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (346, NULL, 'b3e8856e-87a7-4357-a319-a4b53711399e', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (348, NULL, '5eb96f19-c16e-4c20-9823-36d8a9184134', NULL, 'report', NULL, NULL, '{"tabular":{"page":1}}', NULL,
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (342, NULL, 'b3e8856e-87a7-4357-a319-a4b53711399e', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1,"sort":["-date_updated"]}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (362, NULL, '2ef723a5-4637-4236-8e35-dbad734ae1b7', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (318, NULL, '5eb96f19-c16e-4c20-9823-36d8a9184134', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1,"sort":["-date_updated"]}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (347, NULL, '5eb96f19-c16e-4c20-9823-36d8a9184134', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (335, NULL, '5eb96f19-c16e-4c20-9823-36d8a9184134', NULL, 'directus_users', '', 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (387, NULL, '44d07137-9fe1-489e-969b-2617e111242b', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":4}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (372, NULL, '78d5e570-03ef-4e31-9609-a28d40a44f9f', NULL, 'course', 'calc', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (381, '$t:my_resources', 'd019afb1-bfc9-4c80-8451-3328e366b55e', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":98,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"user_created":{"_eq":"$CURRENT_USER"}}]}', 'sentiment_content', '#9A9996');
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (383, NULL, '713358e2-b907-4c70-9d0a-d55bcf2eabf5', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (369, NULL, '428251d7-3fca-476b-bbfe-d979809d0968', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1,"sort":["date_updated"]}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (384, NULL, '5b2633df-342d-43d5-8f16-e613a6a66ed4', NULL, 'course', 'theory', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (385, NULL, '5b2633df-342d-43d5-8f16-e613a6a66ed4', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (388, NULL, '44d07137-9fe1-489e-969b-2617e111242b', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (364, NULL, '428251d7-3fca-476b-bbfe-d979809d0968', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (394, NULL, 'de4d6933-55a8-4298-a4d4-af17801141a8', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (374, NULL, '78d5e570-03ef-4e31-9609-a28d40a44f9f', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":7}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (393, NULL, 'de4d6933-55a8-4298-a4d4-af17801141a8', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (396, NULL, 'c854d8dd-2181-4b73-bf80-da1a046d9edf', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (395, NULL, 'c854d8dd-2181-4b73-bf80-da1a046d9edf', NULL, 'course', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (397, NULL, 'c854d8dd-2181-4b73-bf80-da1a046d9edf', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (398, NULL, '061767f2-c3db-4141-8382-343fe8f69d81', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (391, NULL, '58612de4-713f-443f-b28e-44006bf2053b', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (379, NULL, 'f4facb88-fbf6-4f23-91a1-2b389059ca94', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (373, NULL, '78d5e570-03ef-4e31-9609-a28d40a44f9f', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (376, NULL, '752a5372-7427-4daa-9768-b0e4a74dbec0', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["email"],"page":4}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (382, NULL, 'd019afb1-bfc9-4c80-8451-3328e366b55e', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (451, NULL, 'cc1c9628-bc7e-4469-9b13-9d2ec8c2d89b', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (392, NULL, 'de4d6933-55a8-4298-a4d4-af17801141a8', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":3}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (371, NULL, '78d5e570-03ef-4e31-9609-a28d40a44f9f', NULL, 'directus_activity', NULL, 'tabular',
        '{"tabular":{"sort":["-timestamp"],"fields":["action","collection","timestamp","user"],"page":1}}',
        '{"tabular":{"widths":{"action":120,"collection":210,"timestamp":240,"user":240}}}', NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (366, NULL, '752a5372-7427-4daa-9768-b0e4a74dbec0', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (377, NULL, 'f4facb88-fbf6-4f23-91a1-2b389059ca94', NULL, 'report', NULL, NULL, '{"tabular":{"page":1}}', NULL,
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (389, NULL, 'f4facb88-fbf6-4f23-91a1-2b389059ca94', NULL, 'directus_activity', NULL, 'tabular',
        '{"tabular":{"sort":["-timestamp"],"fields":["action","collection","timestamp","user"],"page":1}}',
        '{"tabular":{"widths":{"action":120,"collection":210,"timestamp":240,"user":240}}}', NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (380, NULL, 'f4facb88-fbf6-4f23-91a1-2b389059ca94', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (378, NULL, 'f4facb88-fbf6-4f23-91a1-2b389059ca94', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (399, NULL, '1676bdd7-53ec-49b4-b8f1-5a3f3ae1eeda', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (411, NULL, 'b8b3e1c5-0d33-4abe-be90-92927d05d7ae', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (412, NULL, 'b8b3e1c5-0d33-4abe-be90-92927d05d7ae', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (407, NULL, '532cb90b-fd17-41ab-a18c-22c48dfe027e', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (405, NULL, '532cb90b-fd17-41ab-a18c-22c48dfe027e', NULL, 'course', 'sig', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (413, NULL, '3a909e14-204a-4135-b06d-35e6f06a5b7a', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (414, NULL, '3a909e14-204a-4135-b06d-35e6f06a5b7a', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (402, NULL, '88961aaa-6d73-4402-8e4b-63a8382ac9c3', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["-email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":2}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (409, NULL, '99510ce9-a999-4bb0-93a7-7f9b867e4e6a', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (331, NULL, '0dde93b3-6ee7-4641-a438-85c471b9fde3', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1,"sort":["-date_updated"]}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (403, NULL, '88961aaa-6d73-4402-8e4b-63a8382ac9c3', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar","sort"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (401, NULL, '88961aaa-6d73-4402-8e4b-63a8382ac9c3', NULL, 'course', 'Applied ', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (404, NULL, '88961aaa-6d73-4402-8e4b-63a8382ac9c3', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (408, NULL, '99510ce9-a999-4bb0-93a7-7f9b867e4e6a', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (415, NULL, 'e06e1876-62ba-4468-be85-c259ff3920c0', NULL, 'course', 'appli', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (420, NULL, '22966cbf-cbbc-48e3-8261-51934f03f110', NULL, 'course', 'التحليل', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (416, NULL, 'e06e1876-62ba-4468-be85-c259ff3920c0', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (406, NULL, '532cb90b-fd17-41ab-a18c-22c48dfe027e', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (417, NULL, '67808364-5515-4a69-9121-b0adcb435476', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (419, NULL, '67808364-5515-4a69-9121-b0adcb435476', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (421, NULL, '22966cbf-cbbc-48e3-8261-51934f03f110', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (450, NULL, 'cc1c9628-bc7e-4469-9b13-9d2ec8c2d89b', NULL, 'course', 'data', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (418, NULL, '67808364-5515-4a69-9121-b0adcb435476', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (367, NULL, '752a5372-7427-4daa-9768-b0e4a74dbec0', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (400, NULL, 'f4facb88-fbf6-4f23-91a1-2b389059ca94', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (444, NULL, '469e1a2f-c8a6-4c92-96df-2b761c96bac9', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (422, NULL, '2a588b10-a573-4a4f-9981-c4b3dadd2f32', NULL, 'course', 'human', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (423, NULL, '2a588b10-a573-4a4f-9981-c4b3dadd2f32', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (435, NULL, '2a588b10-a573-4a4f-9981-c4b3dadd2f32', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (424, NULL, '752a5372-7427-4daa-9768-b0e4a74dbec0', NULL, 'report', NULL, NULL, '{"tabular":{"page":1}}', NULL,
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (425, NULL, '58612de4-713f-443f-b28e-44006bf2053b', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (426, NULL, '58612de4-713f-443f-b28e-44006bf2053b', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (427, NULL, '428ebe9f-898d-4d62-86b8-4568c70fa63f', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (428, NULL, '428ebe9f-898d-4d62-86b8-4568c70fa63f', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (437, NULL, 'bf44d801-0ae2-444e-b2b7-438609e56ece', NULL, 'directus_activity', NULL, 'tabular',
        '{"tabular":{"sort":["-timestamp"],"fields":["action","collection","timestamp","user"],"page":1}}',
        '{"tabular":{"widths":{"action":120,"collection":210,"timestamp":240,"user":240}}}', NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (429, NULL, '3716fc54-b8bd-4d63-8904-2b73eafcbb26', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (432, NULL, 'a7956a95-6de4-4e10-99d0-f39f3be1bb57', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (431, NULL, 'a7956a95-6de4-4e10-99d0-f39f3be1bb57', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (433, NULL, '3538c4c0-32ed-485a-9245-ddd818a446c2', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (434, NULL, '3538c4c0-32ed-485a-9245-ddd818a446c2', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (445, NULL, '469e1a2f-c8a6-4c92-96df-2b761c96bac9', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":2}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (438, NULL, 'bf44d801-0ae2-444e-b2b7-438609e56ece', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (439, NULL, 'bf44d801-0ae2-444e-b2b7-438609e56ece', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (440, NULL, 'c5ea4da9-0d14-49b5-b8e0-e8b0a1cf3deb', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (442, NULL, 'c5ea4da9-0d14-49b5-b8e0-e8b0a1cf3deb', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (441, NULL, 'c5ea4da9-0d14-49b5-b8e0-e8b0a1cf3deb', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (443, NULL, '469e1a2f-c8a6-4c92-96df-2b761c96bac9', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (446, NULL, '7ccd5a7d-736e-4023-bb0d-869dd2940aa1', NULL, 'course', 'stru', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","alt_names","links"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (449, NULL, '7ccd5a7d-736e-4023-bb0d-869dd2940aa1', NULL, 'directus_users', '', 'cards',
        '{"cards":{"sort":["first_name"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (375, NULL, '752a5372-7427-4daa-9768-b0e4a74dbec0', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (430, NULL, 'b7eb79c3-7e3a-41b3-92d6-9f9f83f1c0e5', NULL, 'course', 'princ', NULL, '{"tabular":{"page":1}}',
        NULL, NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (459, NULL, '7a169c2b-b815-4f39-b47c-189df85a5d82', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (460, NULL, '7a169c2b-b815-4f39-b47c-189df85a5d82', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (461, NULL, '62b6205b-ff70-4780-a1e0-6b14657cc6c6', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (463, NULL, '43f7b872-17a9-40eb-ac16-64e5d3019220', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (464, NULL, '43f7b872-17a9-40eb-ac16-64e5d3019220', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (462, NULL, '43f7b872-17a9-40eb-ac16-64e5d3019220', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (453, NULL, '66c40353-0ccd-494d-b381-bbc755907cdf', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (452, NULL, '66c40353-0ccd-494d-b381-bbc755907cdf', NULL, 'course', 'nat', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names","id"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (582, NULL, '232d8a15-d37a-4e0c-8f1b-08e6b262b64c', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (455, NULL, 'f5cfafab-1326-4b1f-b111-3967ffc71063', NULL, 'course', 'str', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (456, NULL, 'f5cfafab-1326-4b1f-b111-3967ffc71063', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (458, NULL, '7a169c2b-b815-4f39-b47c-189df85a5d82', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (457, NULL, '7a169c2b-b815-4f39-b47c-189df85a5d82', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":2}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (466, NULL, '13f69836-9616-49e7-b79e-715dea32f7c3', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (465, NULL, '13f69836-9616-49e7-b79e-715dea32f7c3', NULL, 'course', 'arabic', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (468, NULL, '13f69836-9616-49e7-b79e-715dea32f7c3', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (472, NULL, '2d3a0af6-9841-49e8-8e3a-7489e9316d16', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (471, NULL, 'f336b06d-c81c-4fef-98ae-bd5158ce8b39', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (470, NULL, 'f336b06d-c81c-4fef-98ae-bd5158ce8b39', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (475, NULL, '2daa1612-9c6d-4a7b-980d-7ded11c48422', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (474, NULL, '2daa1612-9c6d-4a7b-980d-7ded11c48422', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (476, NULL, '2daa1612-9c6d-4a7b-980d-7ded11c48422', NULL, 'resource', 'Mobile', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (477, NULL, 'd93ca4f9-7668-4b29-982e-c88af02c0bbb', NULL, 'category', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (473, NULL, '2d3a0af6-9841-49e8-8e3a-7489e9316d16', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1,"sort":["user_created"]}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (528, NULL, '14efaf3d-e295-452a-8f9d-9d8680859c99', NULL, 'course', 'calc', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (469, NULL, 'f336b06d-c81c-4fef-98ae-bd5158ce8b39', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1,"sort":["-date_updated"]}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (555, NULL, 'cd21983e-0dd8-4994-99da-76fdc9add615', NULL, 'course', 'obj', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (467, NULL, 'b7eb79c3-7e3a-41b3-92d6-9f9f83f1c0e5', NULL, 'report', NULL, NULL, '{"tabular":{"page":1}}', NULL,
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (478, NULL, 'd93ca4f9-7668-4b29-982e-c88af02c0bbb', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (479, NULL, 'd93ca4f9-7668-4b29-982e-c88af02c0bbb', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (454, NULL, '66c40353-0ccd-494d-b381-bbc755907cdf', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (480, NULL, 'f6754d5d-8444-4c50-8fb5-1552b9a3979b', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (482, NULL, 'f6754d5d-8444-4c50-8fb5-1552b9a3979b', NULL, 'report', NULL, NULL, '{"tabular":{"page":1}}', NULL,
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (483, NULL, '78d5e570-03ef-4e31-9609-a28d40a44f9f', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (484, NULL, '84c010c2-637f-4a0e-b810-789dbcd427e7', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (485, NULL, '84c010c2-637f-4a0e-b810-789dbcd427e7', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (486, NULL, '9f695833-0074-4a08-99ac-834e222bd87e', NULL, 'directus_users', NULL, 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (491, NULL, '76a23796-4e8b-48f1-9ff5-11849f0e6dd7', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":3}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (341, NULL, '9f695833-0074-4a08-99ac-834e222bd87e', NULL, 'course', 'bi', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1,"sort":["name_en"]}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL,
        '{"_and":[{"name_en":{"_contains":null}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (492, NULL, '76a23796-4e8b-48f1-9ff5-11849f0e6dd7', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (493, NULL, '780dcfbc-b750-4343-b2fc-0acbb09defa4', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (494, NULL, 'b3e8856e-87a7-4357-a319-a4b53711399e', NULL, 'directus_activity', NULL, 'tabular',
        '{"tabular":{"sort":["-timestamp"],"fields":["action","collection","timestamp","user"]}}',
        '{"tabular":{"widths":{"action":120,"collection":210,"timestamp":318,"user":240}}}', NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (487, NULL, '7837a51b-303c-4036-8d9f-23c30bd44399', NULL, 'course', 'ca', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (488, NULL, '7837a51b-303c-4036-8d9f-23c30bd44399', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (495, NULL, 'f6754d5d-8444-4c50-8fb5-1552b9a3979b', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (490, NULL, 'f20ad153-5691-48b2-85c1-955a39d670bb', NULL, 'course', 'data', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (496, NULL, 'f6754d5d-8444-4c50-8fb5-1552b9a3979b', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (489, NULL, '7837a51b-303c-4036-8d9f-23c30bd44399', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (499, NULL, '2d3a0af6-9841-49e8-8e3a-7489e9316d16', NULL, 'course', 'accountin', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (500, NULL, '2d3a0af6-9841-49e8-8e3a-7489e9316d16', NULL, 'directus_users', 'no', 'cards',
        '{"cards":{"sort":["email"],"page":1}}',
        '{"cards":{"icon":"account_circle","title":"{{ first_name }} {{ last_name }}","subtitle":"{{ email }}","size":4}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (501, NULL, 'cdd4062e-b4d8-41f4-a361-fc3e4340d4c6', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (502, NULL, '4d43a868-7de6-461b-9be5-0cc4d4d9f87b', NULL, 'course', 'manager', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (497, NULL, '4d43a868-7de6-461b-9be5-0cc4d4d9f87b', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (507, NULL, 'db1f6f1b-260c-475f-b828-2364122acbbf', NULL, 'directus_activity', NULL, 'tabular',
        '{"tabular":{"sort":["-timestamp"],"fields":["action","collection","timestamp","user"],"page":1}}',
        '{"tabular":{"widths":{"action":120,"collection":210,"timestamp":240,"user":240}}}', NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (498, NULL, '4d43a868-7de6-461b-9be5-0cc4d4d9f87b', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":7}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (506, NULL, 'db1f6f1b-260c-475f-b828-2364122acbbf', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (508, '$t:my_resources', '7837a51b-303c-4036-8d9f-23c30bd44399', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":98,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"user_created":{"_eq":"$CURRENT_USER"}}]}', 'sentiment_content', '#9A9996');
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (516, NULL, '3bfc8123-58db-48ce-a217-e1a04ee25e3f', NULL, 'category', 'intro', 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (512, NULL, '7c8f668d-572c-41fd-b538-5c713ca9495b', NULL, 'course', 'struct', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (505, NULL, 'db1f6f1b-260c-475f-b828-2364122acbbf', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (515, NULL, '7c8f668d-572c-41fd-b538-5c713ca9495b', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (517, NULL, '910283b4-95be-471b-8ed4-d50c3589e225', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (510, NULL, '58286161-65cb-460d-b7b8-fc2af640a60d', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (504, NULL, 'db1f6f1b-260c-475f-b828-2364122acbbf', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (518, NULL, '6460f0c7-52ab-429b-a613-f692e651dfa8', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (514, NULL, 'f20ad153-5691-48b2-85c1-955a39d670bb', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (511, NULL, '58286161-65cb-460d-b7b8-fc2af640a60d', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":6}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (509, NULL, '58286161-65cb-460d-b7b8-fc2af640a60d', NULL, 'course', 'Discret', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (520, NULL, '6460f0c7-52ab-429b-a613-f692e651dfa8', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (519, NULL, '6460f0c7-52ab-429b-a613-f692e651dfa8', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (513, NULL, '7c8f668d-572c-41fd-b538-5c713ca9495b', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":31}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (521, NULL, 'd3ee7a7c-1395-4011-9e9e-5710ce111b62', NULL, 'course', 'control', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (522, NULL, '18476e7b-5344-4438-960b-e917d03ed5e3', NULL, 'course', 'arab', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (523, NULL, '18476e7b-5344-4438-960b-e917d03ed5e3', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (524, NULL, '18476e7b-5344-4438-960b-e917d03ed5e3', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (526, NULL, '2900792c-1da7-4dd5-b0a1-93b91b308361', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (527, NULL, '2900792c-1da7-4dd5-b0a1-93b91b308361', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (525, NULL, '2900792c-1da7-4dd5-b0a1-93b91b308361', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":2}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (503, NULL, '7ccd5a7d-736e-4023-bb0d-869dd2940aa1', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (529, NULL, '14efaf3d-e295-452a-8f9d-9d8680859c99', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (530, NULL, '14efaf3d-e295-452a-8f9d-9d8680859c99', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (552, NULL, '57c89101-f3f3-4892-b81e-08a97f218267', NULL, 'course', 'vis', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names","resource"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (544, NULL, 'ff25c8d2-db3a-4fe8-bebf-2b9787b1f5d1', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":4}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (543, NULL, 'ff25c8d2-db3a-4fe8-bebf-2b9787b1f5d1', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (532, NULL, '184aa55f-2cb0-4aac-bb76-86d892138a88', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (531, NULL, '184aa55f-2cb0-4aac-bb76-86d892138a88', NULL, 'course', 'riggin', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (533, NULL, '9cbad909-8986-430b-8a70-c0dc8afdc0c0', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (534, NULL, '9cbad909-8986-430b-8a70-c0dc8afdc0c0', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (535, NULL, '9cbad909-8986-430b-8a70-c0dc8afdc0c0', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (539, NULL, 'f336b06d-c81c-4fef-98ae-bd5158ce8b39', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1,"sort":["course"]}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (536, NULL, '1bda0bfe-1e98-4408-b7d1-0da484dc1d97', NULL, 'course', 'stat', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (540, NULL, 'e9bc0d30-3bb1-42d9-afc8-69e90c3dab6c', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (541, NULL, 'e9bc0d30-3bb1-42d9-afc8-69e90c3dab6c', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (537, NULL, '1bda0bfe-1e98-4408-b7d1-0da484dc1d97', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (538, NULL, 'b7eb79c3-7e3a-41b3-92d6-9f9f83f1c0e5', NULL, 'directus_activity', NULL, 'tabular',
        '{"tabular":{"sort":["timestamp"],"fields":["action","collection","timestamp","user"],"page":1}}',
        '{"tabular":{"widths":{"action":120,"collection":210,"timestamp":240,"user":240}}}', NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (545, NULL, '0c976154-19d0-4905-92de-b7ed537a3b49', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (546, NULL, '0c976154-19d0-4905-92de-b7ed537a3b49', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (547, NULL, '0c976154-19d0-4905-92de-b7ed537a3b49', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (542, NULL, 'ff25c8d2-db3a-4fe8-bebf-2b9787b1f5d1', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":6}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (549, NULL, 'a3585e33-53b8-4725-88db-799d5a9c6eaa', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (550, NULL, 'a5cea533-9a03-4083-bbe5-e9387bac0914', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (548, NULL, 'a5cea533-9a03-4083-bbe5-e9387bac0914', NULL, 'course', 'ara', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (554, NULL, 'cd21983e-0dd8-4994-99da-76fdc9add615', NULL, 'category', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (581, NULL, '232d8a15-d37a-4e0c-8f1b-08e6b262b64c', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (551, NULL, '57c89101-f3f3-4892-b81e-08a97f218267', NULL, 'course', 'vis', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names","resource"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (556, NULL, 'cd21983e-0dd8-4994-99da-76fdc9add615', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (557, NULL, '72b60bbf-fcfb-4d3a-a63d-f9a815fa138b', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (558, NULL, '72b60bbf-fcfb-4d3a-a63d-f9a815fa138b', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (579, NULL, '4e6d324f-b5f2-45d9-911b-f0e151bc662a', NULL, 'course', 'ca', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (559, NULL, 'f2c99458-68e5-471f-a4e0-606c61aba3bb', NULL, 'course', 'Ara', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (560, NULL, 'f2c99458-68e5-471f-a4e0-606c61aba3bb', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (561, NULL, 'f2c99458-68e5-471f-a4e0-606c61aba3bb', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (562, NULL, '47f31323-163a-4864-b1a4-3ec984374e1f', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (564, NULL, '64c68487-2b99-4646-9449-dec6b2b3025c', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (563, NULL, '64c68487-2b99-4646-9449-dec6b2b3025c', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":7}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (566, NULL, 'cdfeec6b-2fcb-4445-a7eb-405b1bbb4e54', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (565, NULL, 'cdfeec6b-2fcb-4445-a7eb-405b1bbb4e54', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (568, NULL, 'f664ca51-ac93-424c-9d26-0282b27e9710', NULL, 'course', 'القد', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (570, NULL, 'f664ca51-ac93-424c-9d26-0282b27e9710', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (571, NULL, 'f664ca51-ac93-424c-9d26-0282b27e9710', NULL, 'directus_activity', NULL, 'tabular',
        '{"tabular":{"sort":["-timestamp"],"fields":["action","collection","timestamp","user"],"page":1}}',
        '{"tabular":{"widths":{"action":120,"collection":210,"timestamp":240,"user":240}}}', NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (577, NULL, 'a6428220-c657-4481-a2ee-f6b1c6468770', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (569, NULL, 'f664ca51-ac93-424c-9d26-0282b27e9710', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (575, NULL, 'b39c48cd-5afc-4226-9995-f3541a022123', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (572, NULL, '0da51fd1-6ebb-4e3a-921b-59996da5a7c1', NULL, 'course', 'cons', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (574, NULL, 'b39c48cd-5afc-4226-9995-f3541a022123', NULL, 'resource', 'acc', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (573, NULL, '0da51fd1-6ebb-4e3a-921b-59996da5a7c1', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (578, NULL, 'a6428220-c657-4481-a2ee-f6b1c6468770', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (576, NULL, 'b39c48cd-5afc-4226-9995-f3541a022123', NULL, 'course', 'acc', 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (567, NULL, 'cdfeec6b-2fcb-4445-a7eb-405b1bbb4e54', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (580, NULL, '4e6d324f-b5f2-45d9-911b-f0e151bc662a', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (583, NULL, '232d8a15-d37a-4e0c-8f1b-08e6b262b64c', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (587, NULL, 'b7eb79c3-7e3a-41b3-92d6-9f9f83f1c0e5', NULL, 'directus_files', NULL, 'cards',
        '{"cards":{"sort":["-uploaded_on"],"page":1}}',
        '{"cards":{"icon":"insert_drive_file","title":"{{ title }}","subtitle":"{{ type }} • {{ filesize }}","size":4,"imageFit":"crop"}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (585, NULL, 'a5707532-7928-4f7e-9599-a6298526b296', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (584, NULL, 'a5707532-7928-4f7e-9599-a6298526b296', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":2}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (588, NULL, 'b7eb79c3-7e3a-41b3-92d6-9f9f83f1c0e5', NULL, 'directus_files', NULL, 'cards',
        '{"cards":{"sort":["-uploaded_on"],"page":1}}',
        '{"cards":{"icon":"insert_drive_file","title":"{{ title }}","subtitle":"{{ type }} • {{ filesize }}","size":4,"imageFit":"crop"}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (586, NULL, '635a2c33-86d8-4e2b-8fa3-11308e13a696', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (307, NULL, 'b7eb79c3-7e3a-41b3-92d6-9f9f83f1c0e5', NULL, 'resource', '', NULL,
        '{"tabular":{"page":1,"fields":["course","divider-x5wdnz","status","type","user_created","user_updated","date_updated","date_created"],"sort":["date_updated"]}}',
        NULL, NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (591, NULL, '713358e2-b907-4c70-9d0a-d55bcf2eabf5', NULL, 'resource', 'In', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":2}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (592, NULL, '71a0119f-08df-4bbe-aae8-8ae45b097a97', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (448, NULL, '5eb96f19-c16e-4c20-9823-36d8a9184134', NULL, 'directus_files',
        'a9e53bef-6f95-4c73-9c29-90341ef68bbb.pdf', 'cards', '{"cards":{"sort":["-uploaded_on"],"page":1}}',
        '{"cards":{"icon":"insert_drive_file","title":"{{ title }}","subtitle":"{{ type }} • {{ filesize }}","size":3,"imageFit":"crop"}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (589, NULL, '7ccd5a7d-736e-4023-bb0d-869dd2940aa1', NULL, 'directus_activity', NULL, 'tabular',
        '{"tabular":{"sort":["-timestamp"],"fields":["action","collection","timestamp","user"],"page":10}}',
        '{"tabular":{"widths":{"action":120,"collection":210,"timestamp":240,"user":240}}}', NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (593, NULL, '71a0119f-08df-4bbe-aae8-8ae45b097a97', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (447, NULL, '7ccd5a7d-736e-4023-bb0d-869dd2940aa1', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":6,"sort":["-date_updated"]}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (334, NULL, '5eb96f19-c16e-4c20-9823-36d8a9184134', NULL, 'directus_activity', NULL, 'tabular',
        '{"tabular":{"sort":["-timestamp"],"fields":["action","collection","timestamp","user"],"page":1}}',
        '{"tabular":{"widths":{"action":336,"collection":210,"timestamp":240,"user":240}}}', NULL, NULL, 'bookmark',
        NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (481, NULL, 'f6754d5d-8444-4c50-8fb5-1552b9a3979b', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":2,"sort":["-type"]}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL,
        '{"_and":[{"status":{"_eq":"verified"}},{"semester":{"_eq":"fall"}},{"year":{"_eq":"2023"}},{"type":{"_eq":"note"}}]}',
        'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (594, NULL, 'e53508e8-17e1-4734-b32d-db156c3d93ce', NULL, 'course', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["course_id","name_en","name_ar","category","links","alt_names"],"page":1}}',
        '{"tabular":{"widths":{"course_id":116,"name_en":332,"name_ar":247}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (553, NULL, '57c89101-f3f3-4892-b81e-08a97f218267', NULL, 'resource', '', 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1,"sort":["course"]}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (590, NULL, '57c89101-f3f3-4892-b81e-08a97f218267', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (595, NULL, 'e53508e8-17e1-4734-b32d-db156c3d93ce', NULL, 'category', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["color","name_en","name_ar"],"page":1}}',
        '{"tabular":{"widths":{"color":32,"name_en":180,"name_ar":232}}}', NULL, NULL, 'bookmark', NULL);
INSERT INTO public.directus_presets (id, bookmark, "user", role, collection, search, layout, layout_query,
                                     layout_options, refresh_interval, filter, icon, color)
VALUES (596, NULL, 'e53508e8-17e1-4734-b32d-db156c3d93ce', NULL, 'resource', NULL, 'tabular',
        '{"tabular":{"limit":25,"fields":["status","id","course","type","year","semester","date_updated","files","user_updated","user_created"],"page":1}}',
        '{"tabular":{"widths":{"status":32,"id":96,"course":347,"type":100,"year":95,"semester":116,"files":101}}}',
        NULL, '{"_and":[{"status":{"_eq":"verified"}}]}', 'bookmark', NULL);


ALTER TABLE public.directus_presets ENABLE TRIGGER ALL;

--
-- Data for Name: directus_relations; Type: TABLE DATA; Schema: public; Owner: directus
--

ALTER TABLE public.directus_relations DISABLE TRIGGER ALL;

INSERT INTO public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field,
                                       one_allowed_collections, junction_field, sort_field, one_deselect_action)
VALUES (7, 'resource', 'user_created', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify');
INSERT INTO public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field,
                                       one_allowed_collections, junction_field, sort_field, one_deselect_action)
VALUES (8, 'resource', 'user_updated', 'directus_users', NULL, NULL, NULL, NULL, NULL, 'nullify');
INSERT INTO public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field,
                                       one_allowed_collections, junction_field, sort_field, one_deselect_action)
VALUES (11, 'course_category', 'category_id', 'category', NULL, NULL, NULL, 'course_id', NULL, 'nullify');
INSERT INTO public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field,
                                       one_allowed_collections, junction_field, sort_field, one_deselect_action)
VALUES (12, 'course_category', 'course_id', 'course', 'category', NULL, NULL, 'category_id', NULL, 'delete');
INSERT INTO public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field,
                                       one_allowed_collections, junction_field, sort_field, one_deselect_action)
VALUES (6, 'resource', 'note_data', 'note_data', 'related_resource', NULL, NULL, NULL, NULL, 'nullify');
INSERT INTO public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field,
                                       one_allowed_collections, junction_field, sort_field, one_deselect_action)
VALUES (13, 'resource', 'exam_data', 'exam_data', 'related_resource', NULL, NULL, NULL, NULL, 'nullify');
INSERT INTO public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field,
                                       one_allowed_collections, junction_field, sort_field, one_deselect_action)
VALUES (9, 'resource_files', 'directus_files_id', 'directus_files', 'associated_resources', NULL, NULL, 'resource_id',
        NULL, 'nullify');
INSERT INTO public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field,
                                       one_allowed_collections, junction_field, sort_field, one_deselect_action)
VALUES (10, 'resource_files', 'resource_id', 'resource', 'files', NULL, NULL, 'directus_files_id', 'sort', 'delete');
INSERT INTO public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field,
                                       one_allowed_collections, junction_field, sort_field, one_deselect_action)
VALUES (15, 'report', 'resource', 'resource', NULL, NULL, NULL, NULL, NULL, 'nullify');
INSERT INTO public.directus_relations (id, many_collection, many_field, one_collection, one_field, one_collection_field,
                                       one_allowed_collections, junction_field, sort_field, one_deselect_action)
VALUES (4, 'resource', 'course', 'course', 'resource', NULL, NULL, NULL, NULL, 'nullify');


ALTER TABLE public.directus_relations ENABLE TRIGGER ALL;

--
-- Name: directus_fields_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_fields_id_seq', 89, true);


--
-- Name: directus_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_permissions_id_seq', 295, true);


--
-- Name: directus_presets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_presets_id_seq', 596, true);


--
-- Name: directus_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: directus
--

SELECT pg_catalog.setval('public.directus_relations_id_seq', 15, true);


--
-- PostgreSQL database dump complete
--
