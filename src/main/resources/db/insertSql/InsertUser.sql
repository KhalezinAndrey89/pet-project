INSERT INTO roles (name) VALUES ('ROLE_ADMIN'), ('ROLE_USER') ON CONFLICT (name) DO NOTHING;

INSERT INTO users (username, firstname, lastname, password, role_id)
VALUES
    ('john.smith@example.com', 'John', 'Smith', 'password123', 1),
    ('jane.doe@example.com', 'Jane', 'Doe', 'password456', 2),
    ('michael.johnson@example.com', 'Michael', 'Johnson', 'password789', 2),
    ('emily.williams@example.com', 'Emily', 'Williams', 'passwordabc', 2),
    ('david.brown@example.com', 'David', 'Brown', 'passworddef', 2),
    ('sarah.davis@example.com', 'Sarah', 'Davis', 'passwordghi', 2),
    ('daniel.miller@example.com', 'Daniel', 'Miller', 'passwordjkl', 2),
    ('olivia.wilson@example.com', 'Olivia', 'Wilson', 'passwordmno', 2),
    ('matthew.moore@example.com', 'Matthew', 'Moore', 'passwordpqr', 2),
    ('sophia.taylor@example.com', 'Sophia', 'Taylor', 'passwordstu', 2);