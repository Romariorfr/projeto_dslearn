INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');


INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course ( name,img_Uri,img_Gray_Uri) VALUES ('Bootcamp HTML','https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!','https://upload.wikimedia.org/wikipedia/commons/1/1f/Switch-course-book-grey.svg');

INSERT INTO tb_offer (edition,start_Moment,end_Moment,course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-14T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-11-14T03:00:00Z',1);
INSERT INTO tb_offer (edition,start_Moment,end_Moment,course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-14T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-12-14T03:00:00Z',1);

INSERT INTO tb_resource (title,description,position,img_Uri,type,offer_id) VALUES ('Trilha HTML','Trilha principal do curso',1,'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!',1,1);
INSERT INTO tb_resource (title,description,position,img_Uri,type,offer_id) VALUES ('Forum','Tire suas duvidas',2,'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!',2,1);
INSERT INTO tb_resource (title,description,position,img_Uri,type,offer_id) VALUES ('Lives','Lives exclusivas para a turma',3,'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!',0,1);