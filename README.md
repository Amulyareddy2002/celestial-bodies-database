# celestial-bodies-database
A relational database project modeling a detailed universe of galaxies, stars, planets, and moons using PostgreSQL. Includes well-structured tables, primary and foreign key relationships, constraints, and realistic astronomical data entries.


# 🌌 Celestial Bodies Database  

A comprehensive PostgreSQL database that models galaxies, stars, planets, and moons within our universe.  
This project demonstrates database design, normalization, and SQL querying skills — essential for **data analysis and data engineering** roles.  

---

## 🚀 Project Overview  
The **Celestial Bodies Database** simulates a structured dataset representing astronomical objects and their relationships.  
It was developed using **PostgreSQL** and includes multiple tables connected through foreign keys to reflect **one-to-many** and **many-to-one** relationships.  

This project focuses on:  
- Relational database design  
- Primary and foreign key relationships  
- SQL data types (`INT`, `NUMERIC`, `TEXT`, `BOOLEAN`, `VARCHAR`)  
- Data integrity through constraints (`NOT NULL`, `UNIQUE`)  
- Hands-on SQL querying and data manipulation  

---

## 🪐 Database Structure  

### Tables Created  
| Table Name | Description |
|-------------|--------------|
| **galaxy** | Contains information about galaxies such as type, distance, and presence of life. |
| **star** | Represents stars belonging to galaxies, with attributes like mass, temperature, and description. |
| **planet** | Contains planet details, including type, age, distance from the sun, and habitability indicators. |
| **moon** | Lists moons orbiting planets, with properties like radius, age, and presence of life. |
| **(Optional)** Extra table | Can store metadata, galaxy types, or exploration missions. |

---

## 🔑 Key Features  
- ✅ Each table has a **primary key** that auto-increments  
- ✅ Foreign key relationships connect all celestial bodies logically  
- ✅ Includes **boolean** columns for life and shape properties  
- ✅ At least **five columns per table** with mixed data types  
- ✅ Populated with realistic astronomical data for SQL query practice  

---

## 🧠 Skills Demonstrated  
- Database Schema Design  
- SQL Joins, Subqueries, and Constraints  
- Data Normalization  
- Data Modeling for Analytical Use  
- PostgreSQL Administration  

---

## 🧩 Technologies Used  
- **PostgreSQL**  
- **psql CLI**  
- **SQL**  
- **Linux/Bash Environment**

---

## 💡 How to Use  
1. Clone this repository:  
   ```bash
   git clone https://github.com/yourusername/celestial-bodies-database.git
2.Import the database dump file:

psql -U postgres < universe.sql


3.Connect to PostgreSQL:

psql --username=freecodecamp --dbname=universe


4.Explore and query the tables.
