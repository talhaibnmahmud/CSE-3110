-- Craete
CREATE TABLE test(
    id NUMBER(3),
    name VARCHAR(20),
    mark NUMBER(3, 2)
);

-- Describe Schema
DESCRIBE test;

-- Insert
INSERT INTO test (id, name, mark) VALUES (1, '1707001', 8.5);
SELECT * FROM test;
