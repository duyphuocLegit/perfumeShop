-- password: admin
insert into users(id, email, first_name, last_name, city, address, phone_number, post_index, activation_code, active, password, password_reset_code)
values(1, 'admin@gmail.com', 'Admin', 'Admin', null, null, null, null, null, true, '$2a$08$eApn9x3qPiwp6cBVRYaDXed3J/usFEkcZbuc3FDa74bKOpUzHR.S.', null);

-- password: admin
insert into users(id, email, first_name, last_name, city, address, phone_number, post_index, activation_code, active, password, password_reset_code)
values(2, 'duyyphuoc2@gmail.com', 'Pham', 'Phuoc', 'Bien Hoa', 'Wall Street1', '1234567890', '290000', null, true,
       '$2a$08$eApn9x3qPiwp6cBVRYaDXed3J/usFEkcZbuc3FDa74bKOpUzHR.S.', null);


insert into user_role (user_id, roles) values (1, 'ADMIN');
insert into user_role (user_id, roles) values (2, 'USER');
