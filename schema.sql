CREATE TABLE users (
    id  SERIAL PRIMARY KEY,
    username TEXT UNIQUE,
    password TEXT,
    is_admin BOOLEAN
    deleted BOOLEAN DEFAULT FALSE
);

CREATE TABLE courses (
    id  SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE course (
    id  SERIAL PRIMARY KEY,
    course_id INTEGER,
    name TEXT,
    address TEXT,
    lanes INTEGER,
    par INTEGER
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

CREATE TABLE reviews (
    id  SERIAL PRIMARY KEY,
    user_id INTEGER,
    course_id INTEGER,
    grade INTEGER,
    feedback TEXT,
    FOREIGN KEY (course_id) REFERENCES courses(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

