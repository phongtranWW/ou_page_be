CREATE TYPE faculty_enum AS ENUM (
  'BT', 'IT', 'SE', 'PG', 'BS', 'AA', 'EPM', 'L', 'FL', 'BA', 'BF', 'C', 'SSW'
);
CREATE TYPE unit_enum AS ENUM (
  'TD', 'C2', 'C3', 'C5', 'SA', 'YD', 'QA', 'IC', 'AM', 'SMC', 'E', 'TM', 'FA', 'HR',
  'IL', 'SJ', 'FLIT', 'OT', 'DL', 'LR', 'RD', 'ISM', 'L', 'MS', 'PCO'
);
CREATE TYPE stage_enum AS ENUM ('1990 - 1993', '1993 - 2006', '2006 - 2014', '2015 - Đến nay'); 

CREATE TABLE histories (
    id SERIAL PRIMARY KEY,
    stage stage_enum NOT NULL,
    image_url TEXT NOT NULL,
    title VARCHAR,
    priority INTEGER DEFAULT 5,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE faculty_presidents (
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    degree VARCHAR,
    image_url TEXT NOT NULL,
    positions VARCHAR,
    priority INTEGER DEFAULT 5,
    faculty faculty_enum NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE faculty_organizations (
    id SERIAL PRIMARY KEY,
    name VARCHAR NULL,
    degree VARCHAR NULL,
    priority INTEGER DEFAULT 5,
    image_url TEXT NOT NULL,
    start_year INTEGER NULL,
    faculty faculty_enum NOT NULL,
    start_year_current_faculty INTEGER NULL,
    previous_faculties JSON NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE unit_presidents (
    id SERIAL PRIMARY KEY,
    name VARCHAR NULL,
    degree VARCHAR NULL,
    image_url TEXT NOT NULL,
    positions VARCHAR NULL,
    priority INTEGER DEFAULT 5,
    unit unit_enum NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE unit_organizations (
    id SERIAL PRIMARY KEY,
    name VARCHAR NULL,
    degree VARCHAR NULL,
    priority INTEGER DEFAULT 5,
    image_url TEXT NOT NULL,
    start_year INTEGER NULL,
    unit unit_enum NOT NULL,
    start_year_current_unit INTEGER NULL,
    previous_units JSON NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE top_students (
    id VARCHAR PRIMARY KEY,
    name VARCHAR NOT NULL,
    course VARCHAR NULL,
    image_url TEXT NOT NULL,
    year INTEGER NULL,
    subject VARCHAR NULL,
    priority INTEGER DEFAULT 5,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);