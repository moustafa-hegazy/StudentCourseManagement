# DEPI Initiative Database Project

This repository contains SQL scripts and queries for managing a simple educational database. The project is part of the DEPI initiative and includes four main tables: `Students`, `Instructors`, `Courses`, and `Enrollments`.

## Table of Contents

1. [Introduction](#introduction)
2. [Installation](#installation)
3. [Project Structure](#project-structure)
4. [Database Schema](#database-schema)
5. [Usage](#usage)

## Introduction

This project demonstrates the creation and manipulation of a relational database designed to manage data for an educational institution. It includes various SQL scripts to create tables, insert data, and execute complex queries along with comments in each query detailing how it may be used in a real world scenario.

## Installation

### Prerequisites

- **Microsoft SQL Server**: Required for running SQL queries and managing the database.
- **SQL Server Management Studio (SSMS)**: A graphical interface tool that allows you to manage SQL Server databases, run SQL queries, and manage database objects.

### Step-by-Step Installation Guide

1. **Download Microsoft SQL Server**:
   - Visit the [Microsoft SQL Server Downloads](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) page.
   - Choose the version (e.g., SQL Server 2019 Developer Edition) and follow the installation instructions.

2. **Install SQL Server**:
   - Run the SQL Server installer and select the "Basic" installation type.
   - Follow the prompts to complete the installation.

3. **Download SQL Server Management Studio (SSMS)**:
   - Visit the [SQL Server Management Studio (SSMS)](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms) download page.
   - Click on the download link and run the installer.

4. **Install SSMS**:
   - Run the SSMS installer and follow the installation instructions.
   - Once installed, launch SSMS and connect to your SQL Server instance.

## Project Structure

The repository is organized into several directories, each containing SQL scripts related to different aspects of the database:

- **AdditionalTasks(Bonus)**: Contains advanced SQL queries for bonus tasks.
- **AdvancedQueries**: SQL scripts for performing advanced SQL queries.
- **AggregateFunctions**: Scripts demonstrating the use of aggregate functions in SQL.
- **BasicQueries**: Basic SQL queries for selecting and manipulating data.
- **StoredProcedures**: SQL scripts for stored procedures used in the database.
- **Subqueries**: Scripts that demonstrate the use of subqueries.
- **Insertions**: Contains scripts with random info to insert data into the tables.
- **JoinQueries**: SQL scripts for join operations between different tables.
- **Table_Creation**: SQL scripts to create database tables.
- **SQL queries and outputs.pdf**: contains the queries listed in the folders and thier output

## Database Schema

The database consists of the following tables:

1. **Students**: Stores student information.

    ```sql
    CREATE TABLE Students (
        student_id INT IDENTITY(1,1) PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        email VARCHAR(100),
        date_of_birth DATE
    );
    ```

2. **Instructors**: Stores instructor details.

    ```sql
    CREATE TABLE Instructors (
        instructor_id INT IDENTITY(1,1) PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        email VARCHAR(100)
    );
    ```

3. **Courses**: Stores course details and links to instructors.

    ```sql
    CREATE TABLE Courses (
        course_id INT IDENTITY(1,1) PRIMARY KEY,
        course_name VARCHAR(100),
        course_description TEXT,
        instructor_id INT,
        FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
    );
    ```

4. **Enrollments**: Links students to courses with enrollment details.

    ```sql
    CREATE TABLE Enrollments (
        enrollment_id INT IDENTITY(1,1) PRIMARY KEY,
        student_id INT,
        course_id INT,
        enrollment_date DATE,
        FOREIGN KEY (student_id) REFERENCES Students(student_id),
        FOREIGN KEY (course_id) REFERENCES Courses(course_id)
    );
    ```

### Creating the Database

1. **Create the Tables in Order**:
   - Start with tables that do not have foreign key dependencies:
     - `Students`
     - `Instructors`
   - Next, create tables with foreign keys:
     - `Courses` (depends on `Instructors`)
     - `Enrollments` (depends on `Students` and `Courses`)
   - Note: For ease of use, all table creation queries are in one `.sql` file.

2. **Run the SQL Scripts**:
   - Use the scripts in the `Table_Creation` folder to create the database schema.
   - Use the scripts in the `Insertions` folder to populate the tables with initial data.
   - Use the other folders to explore various SQL operations like queries, joins, subqueries, and stored procedures.

## Usage

1. **Clone the Repository**:

    ```bash
    git clone https://github.com/moustafa-hegazy/StudentCourseManagement.git
    cd StudentCourseManagement
    ```

2. **Open SSMS** and connect to your SQL Server instance.

3. **Create a New Database**:

    ```sql
    CREATE DATABASE EducationalDatabase;
    USE EducationalDatabase;
    ```

4. **Execute the SQL Scripts**:
   - Start with the scripts in the `Table_Creation` folder to set up the tables.
   - Follow up with the scripts in the `Insertions` folder to insert sample data.

5. **Run Queries and Procedures**:
   - Use the SQL files in the various folders (`BasicQueries`, `JoinQueries`, etc.) to run different SQL operations and learn SQL concepts.
+++
