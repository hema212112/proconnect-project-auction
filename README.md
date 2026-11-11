# ProConnect - Project Allocation and Auction System

A Java web application where an admin posts projects, users bid for them, and the admin confirms the auction and tracks progress. Built with JSP, HTML/CSS, JavaScript and MySQL.
## Features

Admin / Reviewer
- Secure login and dashboard
- Create projects with title, description, category, dates, skills and requirements
- Manage posted projects
- View bids and confirm the auction
- View project status and feedback
- View, update or delete user details

User
- Register and log in
- Browse projects open for bidding and place a bid
- View assigned projects
- Update project status with a project link and file upload
- Payment step and feedback on completed projects

## Tech Stack

- Front end: HTML, CSS, JavaScript, jQuery
- Back end: Java (JSP / Servlets)
- Database: MySQL
- Server: GlassFish
- IDE: NetBeans

## Project Structure

- database/schema.sql - MySQL tables
- src/main/java/db/DB.java - JDBC connection helper
- src/main/webapp/ - JSP pages
- docs/diagrams/ - DFD, architecture, ER and use case diagrams
- docs/screenshots/ - application screenshots

## Setup

1. Install JDK 8 or later, MySQL, NetBeans and GlassFish.
2. Create the database by running database/schema.sql in MySQL.
3. Set your MySQL username and password in DB.java, or use the DB_URL, DB_USER and DB_PASS environment variables.
4. Add the MySQL Connector/J jar to the project libraries.
5. Open the project in NetBeans, deploy it to GlassFish and open Index.jsp in the browser.

## Known Limitations

- Some queries build SQL by string concatenation, which is open to SQL injection.
- Passwords are stored as plain text.
- The pro_status table stores card number and CVV. Do not use real card data.
- Only the JSP pages from the project documentation are included. The servlets, action pages, and the css, js and images folders are not part of this repository.
## Author

HEMA A

Electronics and Communication Engineering
