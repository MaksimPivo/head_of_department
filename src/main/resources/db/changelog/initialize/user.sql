INSERT INTO users(u_id, u_email, u_password, r_id, u_activated)
VALUES (uuid_generate_v4(), 'admin@gmail.com', '$2a$10$FjQEc.BnNg413yN/oQuMK.SiMWztfc8ypILw6215GE4/vZFm1vO8O', (SELECT r_id FROM role WHERE r_name = 'ADMIN'), TRUE)