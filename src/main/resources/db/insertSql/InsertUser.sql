INSERT INTO roles (name) VALUES ('ROLE_ADMIN'), ('ROLE_USER') ON CONFLICT (name) DO NOTHING;

INSERT INTO users (username, firstname, lastname, password, role_id, age, city, salary)
VALUES
    ('john.smith@example.com', 'John', 'Smith', 'password123', 1, 30, 'New York', 50000),
    ('jane.doe@example.com', 'Jane', 'Doe', 'password456', 2, 25, 'Los Angeles', 60000),
    ('michael.johnson@example.com', 'Michael', 'Johnson', 'password789', 2, 35, 'Chicago', 70000),
    ('emily.williams@example.com', 'Emily', 'Williams', 'passwordabc', 2, 28, 'San Francisco', 55000),
    ('david.brown@example.com', 'David', 'Brown', 'passworddef', 2, 32, 'New York', 65000),
    ('sarah.davis@example.com', 'Sarah', 'Davis', 'passwordghi', 2, 27, 'Los Angeles', 60000),
    ('daniel.miller@example.com', 'Daniel', 'Miller', 'passwordjkl', 2, 29, 'Chicago', 55000),
    ('olivia.wilson@example.com', 'Olivia', 'Wilson', 'passwordmno', 2, 31, 'San Francisco', 65000),
    ('matthew.moore@example.com', 'Matthew', 'Moore', 'passwordpqr', 2, 33, 'New York', 70000),
    ('sophia.taylor@example.com', 'Sophia', 'Taylor', 'passwordstu', 2, 26, 'Los Angeles', 55000),
    ('alexander.johnson@example.com', 'Alexander', 'Johnson', 'passwordvwx', 2, 34, 'Chicago', 60000),
    ('oliver.martin@example.com', 'Oliver', 'Martin', 'passwordyz1', 2, 29, 'San Francisco', 65000),
    ('emma.anderson@example.com', 'Emma', 'Anderson', 'password234', 2, 27, 'New York', 55000),
    ('william.thompson@example.com', 'William', 'Thompson', 'password567', 2, 31, 'Los Angeles', 60000),
    ('ava.white@example.com', 'Ava', 'White', 'password890', 2, 28, 'Chicago', 65000),
    ('james.harris@example.com', 'James', 'Harris', 'passwordabc', 2, 32, 'San Francisco', 70000),
    ('mia.miller@example.com', 'Mia', 'Miller', 'passworddef', 2, 30, 'New York', 55000),
    ('benjamin.davis@example.com', 'Benjamin', 'Davis', 'passwordghi', 2, 26, 'Los Angeles', 60000),
    ('amelia.moore@example.com', 'Amelia', 'Moore', 'passwordjkl', 2, 33, 'Chicago', 65000),
    ('henry.wilson@example.com', 'Henry', 'Wilson', 'passwordmno', 2, 29, 'San Francisco', 70000),
    ('charlotte.thompson@example.com', 'Charlotte', 'Thompson', 'passwordpqr', 2, 27, 'New York', 55000);