CREATE TABLE department
  (
     id   INT PRIMARY KEY NOT NULL,
     NAME VARCHAR(30) NOT NULL
  );

CREATE TABLE employee
  (
     id           INT PRIMARY KEY NOT NULL,
     email        VARCHAR(30) NOT NULL,
     NAME         VARCHAR(30) NOT NULL,
     salary       INT NOT NULL,
     departmentid INT NOT NULL,
     FOREIGN KEY (departmentid) REFERENCES department (id)
  );

CREATE TABLE admins
  (
     id         INT PRIMARY KEY NOT NULL,
     email      VARCHAR(30) NOT NULL,
     password   VARCHAR(30) NOT NULL,
     employeeid INT NOT NULL,
     FOREIGN KEY (employeeid) REFERENCES employee(id)
  );

CREATE TABLE customer
  (
     id          INT PRIMARY KEY NOT NULL,
     fullname    VARCHAR(60) NOT NULL,
     address     VARCHAR(60) NOT NULL,
     phonenumber VARCHAR(60) NOT NULL,
     age         VARCHAR(3) NOT NULL,
     gender      VARCHAR(6) NOT NULL,
     password    VARCHAR(20) NOT NULL
  );

CREATE TABLE products
  (
     id       INT PRIMARY KEY NOT NULL,
     NAME     VARCHAR(50) NOT NULL,
     category VARCHAR(30) NOT NULL,
     price    INT NOT NULL
  );

CREATE TABLE orders
  (
     id         INT PRIMARY KEY NOT NULL,
     customerid INT NOT NULL,
     productid  INT NOT NULL,
     date       DATE NOT NULL,
     amount     INT NOT NULL,
     FOREIGN KEY (customerid) REFERENCES customer(id),
     FOREIGN KEY (productid) REFERENCES products(id)
  ); 
