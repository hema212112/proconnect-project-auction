-- ProConnect database schema
-- Taken from the data dictionary in the project documentation.
-- NOTE: a few JSP pages refer to slightly different column names
-- (e.g. username, des, skill). Align names with the pages before running.
CREATE DATABASE IF NOT EXISTS proconnect;
USE proconnect;

CREATE TABLE employee (
  employee_id   VARCHAR(20)  PRIMARY KEY,
  employee_name VARCHAR(100) NOT NULL,
  password      VARCHAR(100) NOT NULL,
  mobile        VARCHAR(11)  NOT NULL,
  dob           VARCHAR(20)  NOT NULL,
  email         VARCHAR(100) NOT NULL,
  gender        VARCHAR(20)  NOT NULL,
  address       VARCHAR(250) NOT NULL,
  designation   VARCHAR(20)  NOT NULL
);

CREATE TABLE projects (
  id           VARCHAR(20)  PRIMARY KEY,
  project_name VARCHAR(100) NOT NULL,
  description  VARCHAR(250) NOT NULL,
  cat          VARCHAR(50)  NOT NULL,
  sdate        DATE         NOT NULL,
  edate        DATE         NOT NULL,
  skills       VARCHAR(20)  NOT NULL,
  req          VARCHAR(250) NOT NULL
);

CREATE TABLE pro_status (
  id        VARCHAR(20)   NOT NULL,
  user_name VARCHAR(100)  NOT NULL,
  pid       INT           NOT NULL,
  ptitle    VARCHAR(250)  NOT NULL,
  email     VARCHAR(100)  NOT NULL,
  status    VARCHAR(50)   NOT NULL,
  plink     VARCHAR(2048) NULL,
  fname     VARCHAR(250)  NOT NULL,
  bank      VARCHAR(250)  NOT NULL,
  cnumber   VARCHAR(16)   NOT NULL,  -- see README: do not store real card data
  edate     DATE          NOT NULL,
  ccv       VARCHAR(4)    NOT NULL,  -- see README: do not store real card data
  feedback  TEXT          NULL,
  PRIMARY KEY (id, pid)
);

CREATE TABLE bidding (
  ename       VARCHAR(100)  NOT NULL,
  email       VARCHAR(100)  NOT NULL,
  desig       VARCHAR(100)  NOT NULL,
  pid         INT           PRIMARY KEY,
  ptitle      VARCHAR(250)  NOT NULL,
  description VARCHAR(250)  NULL,
  cat         VARCHAR(100)  NOT NULL,
  sdate       DATE          NOT NULL,
  edate       DATE          NULL,
  skill       VARCHAR(20)   NULL,
  req         VARCHAR(250)  NULL,
  bid         DECIMAL(10,2) NOT NULL,
  status      VARCHAR(50)   NOT NULL,
  buy         BOOLEAN       NOT NULL
);
