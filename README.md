# ProConnect – Project Allocation and Auction System

A Java web application where an admin publishes projects, users bid for them, and the admin confirms the auction and then tracks progress, status and feedback. Built with JSP, HTML/CSS, JavaScript and MySQL.

## Features

**Admin / Reviewer**
- Secure login and dashboard
- Create projects (title, description, category, dates, skills, requirements)
- Manage posted projects
- View bids and confirm the auction
- View project status and feedback
- View, update or delete user details

**User**
- Register and log in
- Browse projects open for bidding and place a bid
- View assigned projects
- Update project status (project link and file upload)
- Payment step and feedback on completed projects

## Tech stack

| Layer | Technology |
|-------|------------|
| Front end | HTML, CSS, JavaScript, jQuery |
| Back end | Java (JSP / Servlets) |
| Database | MySQL |
| Server | GlassFish |
| IDE | NetBeans |

## Project structure

```
proconnect/
├── database/schema.sql          # MySQL tables
├── src/main/java/db/DB.java     # JDBC connection helper
├── src/main/webapp/             # JSP pages
│   ├── Index.jsp, index_simple.html
│   ├── Register.jsp, Employee.jsp, EmployeeHome.jsp, Employee_Details.jsp
│   ├── Review.jsp, ReviewHome.jsp, AdminHomepage.jsp
│   ├── Bidding.jsp, Payment.jsp, Update.jsp
│   ├── Feedback_usre.jsp, Logout.jsp
└── docs/
    ├── diagrams/                # DFD, architecture, ER, use case
    └── screenshots/
```

## Setup

1. Install JDK 8+, MySQL, NetBeans and GlassFish.
2. Create the database: `mysql -u root -p < database/schema.sql`
3. Set your MySQL credentials via the `DB_URL`, `DB_USER` and `DB_PASS` environment variables, or edit `DB.java`.
4. Add the MySQL Connector/J jar to the project libraries.
5. Open the project in NetBeans, deploy to GlassFish and visit `http://localhost:8080/<context-path>/Index.jsp`.

## Screenshots

| | |
|---|---|
| ![Registration](docs/screenshots/01-user-registration.png) | ![User login](docs/screenshots/02-user-login.png) |
| ![Admin login](docs/screenshots/04-admin-login.png) | ![Admin dashboard](docs/screenshots/05-admin-dashboard.png) |
| ![Project creation](docs/screenshots/06-project-creation.png) | ![Manage projects](docs/screenshots/07-manage-projects.png) |
| ![Auction confirmation](docs/screenshots/08-auction-confirmation.png) | ![Project status](docs/screenshots/09-project-status.png) |
| ![Bidding](docs/screenshots/13-bidding-for-projects.png) | ![Feedback](docs/screenshots/10-feedback.png) |

## Design diagrams

Data flow (levels 0 and 1), architecture, ER and use case diagrams are in [`docs/diagrams`](docs/diagrams).

## Known limitations


- Some queries build SQL by string concatenation (SQL injection risk). Use parameterised `PreparedStatement` queries.
- Passwords are stored as plain text. Hash them (e.g. bcrypt).
- The `pro_status` table stores card number and CVV. Never store CVV, and do not use real card data; use a payment gateway.
- Only the JSP pages from the project documentation are included. The servlets (`User`, `Admin`, `Register`, `ProStatus_Update`), `*_Action.jsp` handlers, and the `css/`, `js/` and `images/` folders they reference are not part of this repository.

## Author

HEMA A

Electronics and Communication Engineering
