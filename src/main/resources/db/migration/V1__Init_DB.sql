CREATE TABLE users (
                       id BIGINT PRIMARY KEY,
                       activation_code VARCHAR(255),
                       active BOOLEAN NOT NULL,
                       address VARCHAR(255),
                       city VARCHAR(255),
                       email VARCHAR(255) NOT NULL,
                       first_name VARCHAR(255) NOT NULL,
                       last_name VARCHAR(255),
                       password VARCHAR(255) NOT NULL,
                       password_reset_code VARCHAR(255),
                       phone_number VARCHAR(255),
                       post_code VARCHAR(255)
);


CREATE TABLE user_role (
                           user_id BIGINT NOT NULL,
                           roles VARCHAR(255),
                           FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE perfumes (
                          id BIGINT PRIMARY KEY,
                          country VARCHAR(255) NOT NULL,
                          description VARCHAR(255),
                          filename VARCHAR(255),
                          fragrance_base_notes VARCHAR(255) NOT NULL,
                          fragrance_middle_notes VARCHAR(255) NOT NULL,
                          fragrance_top_notes VARCHAR(255) NOT NULL,
                          perfume_gender VARCHAR(255) NOT NULL,
                          perfume_title VARCHAR(255) NOT NULL,
                          perfumer VARCHAR(255) NOT NULL,
                          price INT NOT NULL,
                          type VARCHAR(255) NOT NULL,
                          volume VARCHAR(255) NOT NULL,
                          year INT NOT NULL
);


CREATE TABLE orders (
                        id BIGINT AUTO_INCREMENT PRIMARY KEY,
                        address VARCHAR(255) NOT NULL,
                        city VARCHAR(255) NOT NULL,
                        date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                        email VARCHAR(255) NOT NULL,
                        first_name VARCHAR(255) NOT NULL,
                        last_name VARCHAR(255) NOT NULL,
                        phone_number VARCHAR(255) NOT NULL,
                        post_code INT NOT NULL,
                        total_price DOUBLE NOT NULL,
                        user_id BIGINT,
                        FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE orders_perfumes (
                                 order_id BIGINT NOT NULL,
                                 perfumes_id BIGINT NOT NULL,
                                 FOREIGN KEY (order_id) REFERENCES orders(id),
                                 FOREIGN KEY (perfumes_id) REFERENCES perfumes(id)
);


CREATE TABLE users_perfume_list (
                                    user_id BIGINT NOT NULL,
                                    perfume_list_id BIGINT NOT NULL,
                                    FOREIGN KEY (user_id) REFERENCES users(id),
                                    FOREIGN KEY (perfume_list_id) REFERENCES perfumes(id)
);

CREATE TABLE perfume_id_seq (
                                next_val BIGINT NOT NULL
);

INSERT INTO perfume_id_seq (next_val) VALUES (109);

CREATE TABLE users_id_seq (
                              next_val BIGINT NOT NULL
);

INSERT INTO users_id_seq (next_val) VALUES (4);

CREATE TABLE order_item_seq (
                                next_val BIGINT NOT NULL
);

INSERT INTO order_item_seq (next_val) VALUES (12);

CREATE TABLE orders_seq (
                            next_val BIGINT NOT NULL
);

INSERT INTO orders_seq (next_val) VALUES (6);