CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TYPE role AS ENUM ('lecturer', 'student', 'admin');

CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    role role NOT NULL DEFAULT 'lecturer',
    create_time TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT CURRENT_TIMESTAMP,
    name TEXT NOT NULL,
    image TEXT
);

CREATE TABLE subjects (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    stage INT NOT NULL DEFAULT 0,
    semester INT NOT NULL DEFAULT 0,
    lecturer_id UUID NOT NULL,
    details TEXT,
    syllabus TEXT
)
