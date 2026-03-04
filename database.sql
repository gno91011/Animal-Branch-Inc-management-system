CREATE TABLE Users (user_id INT PRIMARY KEY, username VARCHAR(50), password VARCHAR(50), role VARCHAR(20));
CREATE TABLE Pets (pet_id INT PRIMARY KEY, client_id INT, pet_name VARCHAR(50), care_notes TEXT);
CREATE TABLE Visits (visit_id INT PRIMARY KEY, pet_id INT, visit_date DATE, status VARCHAR(20));
