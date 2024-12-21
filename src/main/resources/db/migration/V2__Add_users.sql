-- password: admin
insert into users(id, email, first_name, last_name, city, address, phone_number, post_code, activation_code, active, password, password_reset_code)
values
 (1, 'admin@gmail.com', 'Admin', 'Admin', null, null, null, null, null, true, '$2a$08$eApn9x3qPiwp6cBVRYaDXed3J/usFEkcZbuc3FDa74bKOpUzHR.S.', null),
(2, 'user01@gmail.com', 'Pham', 'Phuoc', 'Bien Hoa', 'Wall Street1', '1234567890', '290000', null, true,
 '$2a$08$eApn9x3qPiwp6cBVRYaDXed3J/usFEkcZbuc3FDa74bKOpUzHR.S.', null),
(3, 'user02@gmail.com', 'Pham', 'Phuoc', 'Bien Hoa', 'Wall Street1', '1234567890', '290000', null, true,
 '$2a$08$eApn9x3qPiwp6cBVRYaDXed3J/usFEkcZbuc3FDa74bKOpUzHR.S.', null);


insert into user_role (user_id, roles)
values
(1, 'ADMIN'),
(2, 'USER'),
(3, 'USER');
