DELETE FROM user_roles;
DELETE FROM users;
DELETE FROM meals;
ALTER SEQUENCE global_seq RESTART WITH 100000;

INSERT INTO users (name, email, password) VALUES
  ('User', 'user@yandex.ru', 'password'),
  ('Admin', 'admin@gmail.com', 'admin');

INSERT INTO user_roles (user_id, role) VALUES
  (100000, 'ROLE_USER'),
  (100001, 'ROLE_ADMIN');

INSERT INTO meals (datetime, description, calories) VALUES
  ('2018-11-02 11:58:01', 'Ужин', 200),
  ('2018-11-02 07:58:01', 'Завтрак', 100);