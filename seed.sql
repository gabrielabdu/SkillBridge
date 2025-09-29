
-- ==============================
-- SkillBridge Seed Data
-- ==============================

-- Clear existing data
TRUNCATE TABLE sessions RESTART IDENTITY CASCADE;
TRUNCATE TABLE users RESTART IDENTITY CASCADE;

-- Insert Users
INSERT INTO users (name, email, password, role)
VALUES 
('Alice User', 'alice@example.com', '$2b$10$abcdefghijklmnopqrstuv', 'user'), -- password placeholder
('Bob Mentor', 'bob@example.com', '$2b$10$abcdefghijklmnopqrstuv', 'mentor'); -- password placeholder

-- Insert Sessions
INSERT INTO sessions (user_id, mentor_id, topic, scheduled_time, status)
VALUES 
(1, 2, 'Learn Docker Basics', '2025-10-01 14:00:00', 'pending');
