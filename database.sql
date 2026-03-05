<!DOCTYPE html>
<html>
<head>
    <title>Database Schema | Animal Branch</title>
    <style>
        body { font-family: 'Courier New', monospace; background: #222; color: #0f0; padding: 40px; line-height: 1.6; }
        .schema-box { border: 1px solid #0f0; padding: 20px; background: #000; }
        h1 { color: #fff; border-bottom: 1px solid #fff; padding-bottom: 10px; }
        .comment { color: #666; }
    </style>
</head>
<body>
    <h1>Back-End Architecture (SQL)</h1>
    <div class="schema-box">
        <p class="comment">-- Users Table: Authentication & Roles</p>
        <p>CREATE TABLE users ( id INT PRIMARY KEY, name VARCHAR(100), email VARCHAR(100), role ENUM('staff','owner') );</p>
        
        <br>
        <p class="comment">-- Pets Table: Client Information</p>
        <p>CREATE TABLE pets ( id INT PRIMARY KEY, owner_id INT, name VARCHAR(50), notes TEXT, entry_code VARCHAR(20) );</p>
        
        <br>
        <p class="comment">-- Schedules Table: Operational Logic</p>
        <p>CREATE TABLE schedules ( visit_id INT PRIMARY KEY, pet_id INT, staff_id INT, time DATETIME, status VARCHAR(20) );</p>
    </div>
</body>
</html>
