CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    course VARCHAR(100),
    faculty VARCHAR(100),
    department VARCHAR(100)
);

CREATE TABLE directions (
    direction_id INTEGER PRIMARY KEY,
    direction_name VARCHAR(100)
);

CREATE TABLE subjects (
    subject_id INTEGER PRIMARY KEY,
    subject_name VARCHAR(100),
    direction_id INTEGER,
    FOREIGN KEY (direction_id) REFERENCES directions(direction_id)
);

CREATE TABLE grades (
    grade_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    subject_id INTEGER,
    grade DECIMAL(5, 2),
    semester VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);