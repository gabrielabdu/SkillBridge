
-- ==============================
-- SkillBridge Seed Data (with bcrypt hashes)
-- ==============================

-- Clear existing data
TRUNCATE TABLE sessions RESTART IDENTITY CASCADE;
TRUNCATE TABLE users RESTART IDENTITY CASCADE;

-- Insert Users (password = "password123")
INSERT INTO users (name, email, password, role)
VALUES 
('Alice User', 'alice@example.com', '$2b$12$2n.UFS51Jc1oHtdQpb6eQe9rQVJrP2DQT6d2Flki0i6KVd3PXK1A6', 'user'),
('Bob Mentor', 'bob@example.com', '$2b$12$qJMiv0oUhVBk9QMp0tuN8u9H/FvSlfRpG/Ux62ZtmQaK4aZV3qk12', 'mentor');

-- Insert Sessions
INSERT INTO sessions (user_id, mentor_id, topic, scheduled_time, status)
VALUES 
(1, 2, 'Learn Docker Basics', '2025-10-01 14:00:00', 'pending');
