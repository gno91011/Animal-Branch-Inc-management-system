
-- 1. User Accounts (Employees and Customers)
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    user_role ENUM('staff', 'owner') NOT NULL
);

-- 2. Pet Profiles
CREATE TABLE pets (
    pet_id INT PRIMARY KEY AUTO_INCREMENT,
    owner_id INT,
    pet_name VARCHAR(50) NOT NULL,
    medical_notes TEXT,
    entry_code VARCHAR(20),
    FOREIGN KEY (owner_id) REFERENCES users(user_id)
);

-- 3. Service Schedule (The Employee View)
CREATE TABLE schedules (
    visit_id INT PRIMARY KEY AUTO_INCREMENT,
    pet_id INT,
    assigned_staff_id INT,
    visit_date_time DATETIME,
    visit_status ENUM('Pending', 'In Progress', 'Completed', 'Cancelled') DEFAULT 'Pending',
    FOREIGN KEY (pet_id) REFERENCES pets(pet_id),
    FOREIGN KEY (assigned_staff_id) REFERENCES users(user_id)
);

-- 4. Financial Records (The Billing View)
CREATE TABLE billing (
    invoice_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    visit_id INT,
    amount_due DECIMAL(10,2),
    payment_status ENUM('Unpaid', 'Paid', 'Refunded') DEFAULT 'Unpaid',
    date_invoiced DATE,
    FOREIGN KEY (customer_id) REFERENCES users(user_id),
    FOREIGN KEY (visit_id) REFERENCES schedules(visit_id)
);
