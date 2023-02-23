--groups

insert into name_group (id, name)
values ('13da74fc-127b-4da3-b5da-513eb26bd61c', 'CS-21');

insert into name_group (id, name)
values ('885c75f0-7241-4d1d-946f-35fbcb0e86d7', 'IS-25');

insert into name_group (id, name)
values ('00a6cf5b-1c51-4e5a-ace0-ff23d3d0305d', 'IS-21');

insert into name_group (id, name)
values ('1dec8cf8-f843-4eee-ae66-e044d468cfa5', 'CS-25');

--subjects

insert into subject (id, name)
values ('81157f43-a1f0-4391-9ed7-1a27b1b0c2a5', 'Algorithms');

insert into subject (id, name)
values ('35f3ea8a-1d26-457f-aeca-5daecd73d81e', 'Business Process Modeling');

insert into subject (id, name)
values ('ce89ebd1-6906-45d9-a69f-ac78ef4e36e0', 'Network Security Fundamentals');

insert into subject (id, name)
values ('9e53cd31-b069-45e7-a423-04a5678331f1', 'Cryptography');

insert into subject (id, name)
values ('d00cbdaa-37f1-4a85-9638-552899ff1c38', 'Database Management');

insert into subject (id, name)
values ('ae486768-8f30-457b-ab64-870c600a5e6b', 'Machine Learning');

insert into subject (id, name)
values ('5155894d-21e3-4b23-b202-3c7d0db5bc9a', 'Computer Vision');

insert into subject (id, name)
values ('73306b47-947a-4f2f-8069-e2a97001b68d', 'System Administration');

insert into subject (id, name)
values ('12685637-4b9d-40e2-835a-0b783741cf9d', 'Network Administration');

insert into subject (id, name)
values ('1ee02723-b915-442c-862a-f846ab47aa4a', 'Software Development');

--people students

insert into people (id, age, firstname, surname)
values ('9b0944a5-67a2-4b25-a745-2ae2a68dbe40', 18, 'Anna', 'Shevchenko');

insert into people (id, age, firstname, surname)
values ('1c45b73f-61ad-43b7-a89d-94f609ba9299', 17, 'Vlad', 'Bondarenko');

insert into people (id, age, firstname, surname)
values ('98190fd7-18cb-498e-a7ad-4d6dc93bf648', 19, 'Alex', 'Kovalenko');

insert into people (id, age, firstname, surname)
values ('1ae00446-1c3f-4236-b4e7-323103ad0611', 18, 'Dasha', 'Tkachenko');

insert into people (id, age, firstname, surname)
values ('b71020c2-d38e-4444-b8e7-3fc0d79ea336', 20, 'Artem', 'Kravchenko');

insert into people (id, age, firstname, surname)
values ('3fbacd0d-4457-4b02-b2d6-22feb687bec9', 22, 'Alina', 'Kovalchuk');

insert into people (id, age, firstname, surname)
values ('b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', 21, 'Nazar', 'Shevchuk');

insert into people (id, age, firstname, surname)
values ('45b9bb55-948b-418e-8b37-8a0d0561c100', 20, 'Daria', 'Moroz');

insert into people (id, age, firstname, surname)
values ('a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', 19, 'Danil', 'Ponomarenko');

insert into people (id, age, firstname, surname)
values ('20904527-b732-487a-9e15-dafc34d15a20', 17, 'Oksana', 'Mazur');

--students

insert into student (datetime, id, group_id)
values ('2023-08-16 08:47:35', '9b0944a5-67a2-4b25-a745-2ae2a68dbe40', '13da74fc-127b-4da3-b5da-513eb26bd61c');

insert into student (datetime, id, group_id)
values ('2023-08-01 09:01:35', '1c45b73f-61ad-43b7-a89d-94f609ba9299', '885c75f0-7241-4d1d-946f-35fbcb0e86d7');

insert into student (datetime, id, group_id)
values ('2023-07-30 13:45:35', '98190fd7-18cb-498e-a7ad-4d6dc93bf648', '00a6cf5b-1c51-4e5a-ace0-ff23d3d0305d');

insert into student (datetime, id, group_id)
values ('2023-07-10 12:40:35', '1ae00446-1c3f-4236-b4e7-323103ad0611', '1dec8cf8-f843-4eee-ae66-e044d468cfa5');

insert into student (datetime, id, group_id)
values ('2023-08-08 11:25:35', 'b71020c2-d38e-4444-b8e7-3fc0d79ea336', '13da74fc-127b-4da3-b5da-513eb26bd61c');

insert into student (datetime, id, group_id)
values ('2023-08-06 08:41:35', '3fbacd0d-4457-4b02-b2d6-22feb687bec9', '885c75f0-7241-4d1d-946f-35fbcb0e86d7');

insert into student (datetime, id, group_id)
values ('2023-07-26 09:46:35', 'b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', '00a6cf5b-1c51-4e5a-ace0-ff23d3d0305d');

insert into student (datetime, id, group_id)
values ('2023-08-13 09:32:35', '45b9bb55-948b-418e-8b37-8a0d0561c100', '1dec8cf8-f843-4eee-ae66-e044d468cfa5');

insert into student (datetime, id, group_id)
values ('2023-08-06 10:40:35', 'a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', '13da74fc-127b-4da3-b5da-513eb26bd61c');

insert into student (datetime, id, group_id)
values ('2023-07-12 09:40:35', '20904527-b732-487a-9e15-dafc34d15a20', '885c75f0-7241-4d1d-946f-35fbcb0e86d7');

--people teachers

insert into people (id, age, firstname, surname)
values ('73f1dc1c-8101-4087-b806-910b81e5fb7e', 35, 'Stas', 'Nazarenko');

insert into people (id, age, firstname, surname)
values ('4108941e-daf7-40f4-ab22-47e392af7cc5', 47, 'Ira', 'Tkach');

insert into people (id, age, firstname, surname)
values ('90b349cc-4a33-47ba-a679-fbd7db88a93a', 27, 'Ruslan', 'Romanenko');

insert into people (id, age, firstname, surname)
values ('a6614f39-bba9-4019-879c-3d967b8e99a0', 55, 'Viktoria', 'Kozak');

insert into people (id, age, firstname, surname)
values ('45c342d0-2558-4fcd-ab72-1a5bed007648', 48, 'Alexander', 'Fedorenko');

insert into people (id, age, firstname, surname)
values ('c26a7d2c-fc8b-4dab-bc23-bcc816ad03b3', 36, 'Ksenia', 'Vovk');

insert into people (id, age, firstname, surname)
values ('99ce55cf-24cd-4f5b-889b-1057b9da7c9b', 45, 'Mark', 'Babenko');

insert into people (id, age, firstname, surname)
values ('0721883e-b4e5-410a-9c06-ca595ce88758', 63, 'Snizhana', 'Kovaleva');

insert into people (id, age, firstname, surname)
values ('489136a0-3cd0-4bbc-8aaf-02c7b8323506', 30, 'Vadym', 'Vlasenko');

insert into people (id, age, firstname, surname)
values ('47c013fd-68c5-42bb-b158-722e68ccc3a3', 47, 'Kira', 'Yatsenko');

--teachers

insert into teacher (id, subject_id)
values ('73f1dc1c-8101-4087-b806-910b81e5fb7e', '81157f43-a1f0-4391-9ed7-1a27b1b0c2a5');

insert into teacher (id, subject_id)
values ('4108941e-daf7-40f4-ab22-47e392af7cc5', '35f3ea8a-1d26-457f-aeca-5daecd73d81e');

insert into teacher (id, subject_id)
values ('90b349cc-4a33-47ba-a679-fbd7db88a93a', 'ce89ebd1-6906-45d9-a69f-ac78ef4e36e0');

insert into teacher (id, subject_id)
values ('a6614f39-bba9-4019-879c-3d967b8e99a0', '9e53cd31-b069-45e7-a423-04a5678331f1');

insert into teacher (id, subject_id)
values ('45c342d0-2558-4fcd-ab72-1a5bed007648', 'd00cbdaa-37f1-4a85-9638-552899ff1c38');

insert into teacher (id, subject_id)
values ('c26a7d2c-fc8b-4dab-bc23-bcc816ad03b3', 'ae486768-8f30-457b-ab64-870c600a5e6b');

insert into teacher (id, subject_id)
values ('99ce55cf-24cd-4f5b-889b-1057b9da7c9b', '5155894d-21e3-4b23-b202-3c7d0db5bc9a');

insert into teacher (id, subject_id)
values ('0721883e-b4e5-410a-9c06-ca595ce88758', '73306b47-947a-4f2f-8069-e2a97001b68d');

insert into teacher (id, subject_id)
values ('489136a0-3cd0-4bbc-8aaf-02c7b8323506', '12685637-4b9d-40e2-835a-0b783741cf9d');

insert into teacher (id, subject_id)
values ('47c013fd-68c5-42bb-b158-722e68ccc3a3', '1ee02723-b915-442c-862a-f846ab47aa4a');

--assessment

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('0f0321d9-c59e-45f5-bfa5-dd5aa6ecce72', 5, '9b0944a5-67a2-4b25-a745-2ae2a68dbe40', '81157f43-a1f0-4391-9ed7-1a27b1b0c2a5');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('63103566-358b-4815-add5-15a758845bfa', 2, '9b0944a5-67a2-4b25-a745-2ae2a68dbe40', '35f3ea8a-1d26-457f-aeca-5daecd73d81e');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('bae2b0d1-7ea7-4045-9925-3f1804dd27c6', 2, '9b0944a5-67a2-4b25-a745-2ae2a68dbe40', 'ce89ebd1-6906-45d9-a69f-ac78ef4e36e0');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('2eb2f63c-de34-4805-bb26-38d07a0f40f5', 2, '9b0944a5-67a2-4b25-a745-2ae2a68dbe40', '9e53cd31-b069-45e7-a423-04a5678331f1');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('fee10233-7c6d-43d0-9b4c-3096488b4a2d', 7, '9b0944a5-67a2-4b25-a745-2ae2a68dbe40', 'd00cbdaa-37f1-4a85-9638-552899ff1c38');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('afd46900-385a-4138-8c24-c6f5d696291e', 4, '9b0944a5-67a2-4b25-a745-2ae2a68dbe40', 'ae486768-8f30-457b-ab64-870c600a5e6b');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('a6d07416-e6ec-4707-808f-2d773fb4e132', 4, '9b0944a5-67a2-4b25-a745-2ae2a68dbe40', '5155894d-21e3-4b23-b202-3c7d0db5bc9a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('e606325a-6b29-4146-beed-fc6b40a2ac27', 5, '9b0944a5-67a2-4b25-a745-2ae2a68dbe40', '73306b47-947a-4f2f-8069-e2a97001b68d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('4331710f-8422-41cb-a4b6-df42d1dc5645', 6, '9b0944a5-67a2-4b25-a745-2ae2a68dbe40', '12685637-4b9d-40e2-835a-0b783741cf9d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('5d125052-27cc-4d40-ac94-ea8b96023363', 5, '9b0944a5-67a2-4b25-a745-2ae2a68dbe40', '1ee02723-b915-442c-862a-f846ab47aa4a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('491f719f-69e4-4732-9f01-fa924224df6e', 10, '1c45b73f-61ad-43b7-a89d-94f609ba9299', '81157f43-a1f0-4391-9ed7-1a27b1b0c2a5');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('76b5d324-3cef-403d-9e88-9852181e3bf9', 10, '1c45b73f-61ad-43b7-a89d-94f609ba9299', '35f3ea8a-1d26-457f-aeca-5daecd73d81e');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('c742e5c7-b14d-4a1e-8366-04d5ce94a48c', 5, '1c45b73f-61ad-43b7-a89d-94f609ba9299', 'ce89ebd1-6906-45d9-a69f-ac78ef4e36e0');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('5b26bb22-9024-46f1-b837-28c141c907e9', 5, '1c45b73f-61ad-43b7-a89d-94f609ba9299', '9e53cd31-b069-45e7-a423-04a5678331f1');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('e4fced3c-6b2c-4709-894e-b47a13b5b77d', 5, '1c45b73f-61ad-43b7-a89d-94f609ba9299', 'd00cbdaa-37f1-4a85-9638-552899ff1c38');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('4878c738-3f16-47f8-8fea-c38f2cddf118', 4, '1c45b73f-61ad-43b7-a89d-94f609ba9299', 'ae486768-8f30-457b-ab64-870c600a5e6b');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('13ccc31b-fe4b-490d-981c-adb70e7ca434', 5, '1c45b73f-61ad-43b7-a89d-94f609ba9299', '5155894d-21e3-4b23-b202-3c7d0db5bc9a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('114a2e24-84be-4246-ad9b-d1aae84a56eb', 8, '1c45b73f-61ad-43b7-a89d-94f609ba9299', '73306b47-947a-4f2f-8069-e2a97001b68d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('ae5b9660-84e8-4e09-bd1a-5e405922437c', 6, '1c45b73f-61ad-43b7-a89d-94f609ba9299', '12685637-4b9d-40e2-835a-0b783741cf9d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('33ead324-6b8a-47b5-a5ea-ae59462e4495', 5, '1c45b73f-61ad-43b7-a89d-94f609ba9299', '1ee02723-b915-442c-862a-f846ab47aa4a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('9bff55d5-4120-4844-adbb-8a0bf2e31b4f', 10, '98190fd7-18cb-498e-a7ad-4d6dc93bf648', '81157f43-a1f0-4391-9ed7-1a27b1b0c2a5');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('fad1ca0b-6c31-49cc-bdeb-fcdcb56cc3a0', 2, '98190fd7-18cb-498e-a7ad-4d6dc93bf648', '35f3ea8a-1d26-457f-aeca-5daecd73d81e');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('5ba85bf8-4865-44ba-a3da-f161bb9e4f82', 2, '98190fd7-18cb-498e-a7ad-4d6dc93bf648', 'ce89ebd1-6906-45d9-a69f-ac78ef4e36e0');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('21c0554d-91ce-4616-87ea-bfed6b71cd4d', 5, '98190fd7-18cb-498e-a7ad-4d6dc93bf648', '9e53cd31-b069-45e7-a423-04a5678331f1');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('d8ce5c98-2ff1-4922-8143-cae80373182b', 6, '98190fd7-18cb-498e-a7ad-4d6dc93bf648', 'd00cbdaa-37f1-4a85-9638-552899ff1c38');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('4984ed25-9ab3-4467-a8ce-5a761275d25a', 1, '98190fd7-18cb-498e-a7ad-4d6dc93bf648', 'ae486768-8f30-457b-ab64-870c600a5e6b');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('5aea5078-b18c-4891-946d-c71732d0b2f7', 8, '98190fd7-18cb-498e-a7ad-4d6dc93bf648', '5155894d-21e3-4b23-b202-3c7d0db5bc9a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('b76c4cfe-64cb-408f-8e9f-7c1dc477ce29', 5, '98190fd7-18cb-498e-a7ad-4d6dc93bf648', '73306b47-947a-4f2f-8069-e2a97001b68d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('46ad0100-4d38-4911-9955-b9ad861b6896', 10, '98190fd7-18cb-498e-a7ad-4d6dc93bf648', '12685637-4b9d-40e2-835a-0b783741cf9d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('762d415f-5989-46e8-bf2f-79529cd5fcd7', 6, '98190fd7-18cb-498e-a7ad-4d6dc93bf648', '1ee02723-b915-442c-862a-f846ab47aa4a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('c21d927c-ae93-44cb-bc4a-b7f52cc7250a', 2, '1ae00446-1c3f-4236-b4e7-323103ad0611', '81157f43-a1f0-4391-9ed7-1a27b1b0c2a5');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('ca9598a6-e313-43ac-8025-9dbf1ae5c7fe', 10, '1ae00446-1c3f-4236-b4e7-323103ad0611', '35f3ea8a-1d26-457f-aeca-5daecd73d81e');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('7b99286e-27e5-40dd-973d-08eac02f31a3', 10, '1ae00446-1c3f-4236-b4e7-323103ad0611', 'ce89ebd1-6906-45d9-a69f-ac78ef4e36e0');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('c9bd7f9b-d089-4b3b-8ded-1facc743e9ed', 7, '1ae00446-1c3f-4236-b4e7-323103ad0611', '9e53cd31-b069-45e7-a423-04a5678331f1');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('cd66c0fb-db1e-4d70-b61f-dfabca36d34e', 8, '1ae00446-1c3f-4236-b4e7-323103ad0611', 'd00cbdaa-37f1-4a85-9638-552899ff1c38');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('9a26db78-3593-4303-8aa3-a3b1046854fd', 4, '1ae00446-1c3f-4236-b4e7-323103ad0611', 'ae486768-8f30-457b-ab64-870c600a5e6b');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('6f2d772e-fe4e-4fa3-9a2e-5ca3230d50b4', 7, '1ae00446-1c3f-4236-b4e7-323103ad0611', '5155894d-21e3-4b23-b202-3c7d0db5bc9a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('27267ccf-d35b-4e07-97b2-f5d31b0591cd', 9, '1ae00446-1c3f-4236-b4e7-323103ad0611', '73306b47-947a-4f2f-8069-e2a97001b68d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('7ebb46ae-0e69-48c4-b554-75b712ae64be', 9, '1ae00446-1c3f-4236-b4e7-323103ad0611', '12685637-4b9d-40e2-835a-0b783741cf9d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('77f06d93-5451-4cfe-a58a-9dfef95fdec4', 6, '1ae00446-1c3f-4236-b4e7-323103ad0611', '1ee02723-b915-442c-862a-f846ab47aa4a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('a0fda550-2c5e-4c8c-9b49-2ef34acb778f', 1, 'b71020c2-d38e-4444-b8e7-3fc0d79ea336', '81157f43-a1f0-4391-9ed7-1a27b1b0c2a5');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('7cb2b4f0-2b43-4077-bbbc-650414b49f43', 9, 'b71020c2-d38e-4444-b8e7-3fc0d79ea336', '35f3ea8a-1d26-457f-aeca-5daecd73d81e');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('27abd72e-5fd3-417d-ad6d-6dceb286a4cc', 4, 'b71020c2-d38e-4444-b8e7-3fc0d79ea336', 'ce89ebd1-6906-45d9-a69f-ac78ef4e36e0');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('2afe1ba7-665a-4b25-8d89-0f4c8bb4d16f', 5, 'b71020c2-d38e-4444-b8e7-3fc0d79ea336', '9e53cd31-b069-45e7-a423-04a5678331f1');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('979206fa-bcba-4f84-b912-14989fd8bc33', 10, 'b71020c2-d38e-4444-b8e7-3fc0d79ea336', 'd00cbdaa-37f1-4a85-9638-552899ff1c38');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('f5de1ba3-ef42-451c-9fb8-7c45b4e0502f', 8, 'b71020c2-d38e-4444-b8e7-3fc0d79ea336', 'ae486768-8f30-457b-ab64-870c600a5e6b');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('10e6a2f5-4bbf-421e-b0b1-b08e1dbc751b', 1, 'b71020c2-d38e-4444-b8e7-3fc0d79ea336', '5155894d-21e3-4b23-b202-3c7d0db5bc9a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('1a067ee2-f84e-48ca-83a2-cde8d7373c64', 2, 'b71020c2-d38e-4444-b8e7-3fc0d79ea336', '73306b47-947a-4f2f-8069-e2a97001b68d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('b0c5a0fc-8d7f-4d0e-8e01-5d746e4408cd', 5, 'b71020c2-d38e-4444-b8e7-3fc0d79ea336', '12685637-4b9d-40e2-835a-0b783741cf9d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('06692e8a-ebd2-45d6-9795-f13f0831ef8c', 1, 'b71020c2-d38e-4444-b8e7-3fc0d79ea336', '1ee02723-b915-442c-862a-f846ab47aa4a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('d87baa2a-8902-49ea-80e2-68494f88d780', 9, '3fbacd0d-4457-4b02-b2d6-22feb687bec9', '81157f43-a1f0-4391-9ed7-1a27b1b0c2a5');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('11d64bf9-a772-4bf9-acb1-5e2dae8d5afc', 2, '3fbacd0d-4457-4b02-b2d6-22feb687bec9', '35f3ea8a-1d26-457f-aeca-5daecd73d81e');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('42957796-24d5-4af0-99ab-e5f13f020569', 10, '3fbacd0d-4457-4b02-b2d6-22feb687bec9', 'ce89ebd1-6906-45d9-a69f-ac78ef4e36e0');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('b6ae7cbe-b54d-45bd-a857-cb2728475c77', 10, '3fbacd0d-4457-4b02-b2d6-22feb687bec9', '9e53cd31-b069-45e7-a423-04a5678331f1');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('aeb97e5b-e2e5-4cea-8a95-195642aa4b10', 7, '3fbacd0d-4457-4b02-b2d6-22feb687bec9', 'd00cbdaa-37f1-4a85-9638-552899ff1c38');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('da585b1a-e06c-43c7-a245-cd31a3178729', 10, '3fbacd0d-4457-4b02-b2d6-22feb687bec9', 'ae486768-8f30-457b-ab64-870c600a5e6b');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('4aa3dcf8-2469-4fc4-96b8-89585074ab54', 3, '3fbacd0d-4457-4b02-b2d6-22feb687bec9', '5155894d-21e3-4b23-b202-3c7d0db5bc9a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('be9762e7-a9df-481a-a90b-d77963639897', 9, '3fbacd0d-4457-4b02-b2d6-22feb687bec9', '73306b47-947a-4f2f-8069-e2a97001b68d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('092df387-498b-4fc1-8943-b6b7a9a030c4', 6, '3fbacd0d-4457-4b02-b2d6-22feb687bec9', '12685637-4b9d-40e2-835a-0b783741cf9d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('4d459b54-57d8-4431-bd44-d015e4da1430', 2, '3fbacd0d-4457-4b02-b2d6-22feb687bec9', '1ee02723-b915-442c-862a-f846ab47aa4a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('68df0f41-80dc-4f5f-a820-069690b4c4c9', 7, 'b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', '81157f43-a1f0-4391-9ed7-1a27b1b0c2a5');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('b5f2cbfe-8cd8-49fb-adf2-60fc700b7f98', 10, 'b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', '35f3ea8a-1d26-457f-aeca-5daecd73d81e');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('48a505d7-9a9d-4d55-9407-11d5b2bc444a', 5, 'b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', 'ce89ebd1-6906-45d9-a69f-ac78ef4e36e0');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('f9ea3262-ddce-4aa6-a10a-a0f661370bb6', 5, 'b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', '9e53cd31-b069-45e7-a423-04a5678331f1');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('7b856cd8-d62e-4ad8-82e8-faffdffb0230', 2, 'b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', 'd00cbdaa-37f1-4a85-9638-552899ff1c38');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('793b08cc-ffb5-4904-bf1b-732fb72ac154', 1, 'b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', 'ae486768-8f30-457b-ab64-870c600a5e6b');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('c32ec1c8-f142-4ee3-bd93-744b9ed2673d', 2, 'b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', '5155894d-21e3-4b23-b202-3c7d0db5bc9a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('30801eca-ec4b-48d6-983c-596886e5ee1f', 3, 'b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', '73306b47-947a-4f2f-8069-e2a97001b68d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('c6c2846d-def7-4352-93db-1a8b3a247f75', 10, 'b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', '12685637-4b9d-40e2-835a-0b783741cf9d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('d09133d1-fce2-4472-b4ed-503fe3012ae9', 7, 'b8572ac9-1a1f-4d7c-b752-e40c8e43e82f', '1ee02723-b915-442c-862a-f846ab47aa4a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('d800049b-d82a-4458-99fc-c0c868b5afc3', 9, '45b9bb55-948b-418e-8b37-8a0d0561c100', '81157f43-a1f0-4391-9ed7-1a27b1b0c2a5');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('fb439f1f-3ed8-47ff-9178-c341d905c8ae', 2, '45b9bb55-948b-418e-8b37-8a0d0561c100', '35f3ea8a-1d26-457f-aeca-5daecd73d81e');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('c9186137-cfa3-4ade-93ba-73069c4995cb', 9, '45b9bb55-948b-418e-8b37-8a0d0561c100', 'ce89ebd1-6906-45d9-a69f-ac78ef4e36e0');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('710f124d-8dd0-4c41-bce2-6365b47c1666', 6, '45b9bb55-948b-418e-8b37-8a0d0561c100', '9e53cd31-b069-45e7-a423-04a5678331f1');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('14d5199b-f19b-4df1-a90a-41a75494703e', 4, '45b9bb55-948b-418e-8b37-8a0d0561c100', 'd00cbdaa-37f1-4a85-9638-552899ff1c38');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('44576aba-350f-4b09-87d7-a20795f45eac', 9, '45b9bb55-948b-418e-8b37-8a0d0561c100', 'ae486768-8f30-457b-ab64-870c600a5e6b');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('51981757-290d-4e75-997b-49918372cd88', 5, '45b9bb55-948b-418e-8b37-8a0d0561c100', '5155894d-21e3-4b23-b202-3c7d0db5bc9a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('761acd62-d8e4-4645-9888-dd1b37d23a72', 8, '45b9bb55-948b-418e-8b37-8a0d0561c100', '73306b47-947a-4f2f-8069-e2a97001b68d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('f636d455-43c6-4d37-b7c0-01bb7c5befa8', 9, '45b9bb55-948b-418e-8b37-8a0d0561c100', '12685637-4b9d-40e2-835a-0b783741cf9d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('fc0eb827-b8d4-4dfe-a991-9bc66f53e0fe', 7, '45b9bb55-948b-418e-8b37-8a0d0561c100', '1ee02723-b915-442c-862a-f846ab47aa4a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('024458c1-420c-4db0-aa2f-9acf08cc72bf', 9, 'a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', '81157f43-a1f0-4391-9ed7-1a27b1b0c2a5');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('5ac5b783-80b7-4b69-8618-f9ddb16ff0c0', 2, 'a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', '35f3ea8a-1d26-457f-aeca-5daecd73d81e');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('3d7f440e-a94d-4bad-ad06-a05a0df83f8f', 1, 'a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', 'ce89ebd1-6906-45d9-a69f-ac78ef4e36e0');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('ba18da56-8431-4375-93f8-64b6cce86ffe', 1, 'a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', '9e53cd31-b069-45e7-a423-04a5678331f1');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('71aa4d5d-3e0a-48a2-959e-e31c8b08ec60', 3, 'a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', 'd00cbdaa-37f1-4a85-9638-552899ff1c38');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('7fc55d87-679b-4b05-a8cf-5b87cdb38391', 6, 'a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', 'ae486768-8f30-457b-ab64-870c600a5e6b');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('b390faf6-a0a5-45a7-beb9-18a8a30529eb', 5, 'a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', '5155894d-21e3-4b23-b202-3c7d0db5bc9a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('9ac732a8-df6c-4cef-9cc8-c6f9941b1a1b', 6, 'a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', '73306b47-947a-4f2f-8069-e2a97001b68d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('d3d5cc0b-f4b7-42a8-b5a6-4cdc47a1445d', 8, 'a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', '12685637-4b9d-40e2-835a-0b783741cf9d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('1da8a92f-e297-4970-9922-8ea2b813085f', 7, 'a7f6e2a2-4668-4b5f-a4fa-ec91a85ac701', '1ee02723-b915-442c-862a-f846ab47aa4a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('7eb86385-55de-4cbf-832a-d4cfe3b1f06f', 1, '20904527-b732-487a-9e15-dafc34d15a20', '81157f43-a1f0-4391-9ed7-1a27b1b0c2a5');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('62f79626-03af-490c-801c-e837ed8f8f3a', 8, '20904527-b732-487a-9e15-dafc34d15a20', '35f3ea8a-1d26-457f-aeca-5daecd73d81e');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('902d4aca-9868-4a05-9d5a-d9b381d73501', 2, '20904527-b732-487a-9e15-dafc34d15a20', 'ce89ebd1-6906-45d9-a69f-ac78ef4e36e0');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('48e6f79b-693b-41e9-9d25-f04086983f3c', 8, '20904527-b732-487a-9e15-dafc34d15a20', '9e53cd31-b069-45e7-a423-04a5678331f1');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('80ecb537-77c0-48d7-8c3b-d893a222cea2', 9, '20904527-b732-487a-9e15-dafc34d15a20', 'd00cbdaa-37f1-4a85-9638-552899ff1c38');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('0b09c8ab-6a48-4341-a98d-527841ea25ae', 2, '20904527-b732-487a-9e15-dafc34d15a20', 'ae486768-8f30-457b-ab64-870c600a5e6b');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('bff45360-0ec6-4bd9-baf6-25529cc5e518', 10, '20904527-b732-487a-9e15-dafc34d15a20', '5155894d-21e3-4b23-b202-3c7d0db5bc9a');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('04293733-7f9f-461f-9895-d56b383aaa4c', 3, '20904527-b732-487a-9e15-dafc34d15a20', '73306b47-947a-4f2f-8069-e2a97001b68d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('7b584a4b-e69a-42b7-b4ce-c53c8dc026d8', 9, '20904527-b732-487a-9e15-dafc34d15a20', '12685637-4b9d-40e2-835a-0b783741cf9d');

insert into assessment (id, value_of_assessment, student_id, subject_id)
values ('85d60483-3bbf-402a-8486-362a97c33130', 9, '20904527-b732-487a-9e15-dafc34d15a20', '1ee02723-b915-442c-862a-f846ab47aa4a');