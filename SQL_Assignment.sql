#Create a database
CREATE DATABASE Linkedin;

#To use the created Database
USE Linkedin;

#Create a table for the ecommerce website
CREATE TABLE product_info(
id INT,
product_name VARCHAR(25),
PRIMARY KEY (id)
);

#Create the second table that has product likes
CREATE TABLE product_info_like(
user_id INT,
prod_id INT,
liked_date DATETIME,
FOREIGN KEY (prod_id) REFERENCES product_info(id)
);

#Inserting values into the different tables
INSERT INTO product_info VALUES(1001, "Blog"), (1002, "Youtube"), (1003, "Education");
SELECT * FROM product_info; #This is to check and confirm the created table 

INSERT INTO product_info_like VALUES(1, 1001, "2024-07-23 14:30:00"), (1, 1003, "2024-08-23 11:15:00");
SELECT * FROM product_info_like; #This is to check and confirm the product info like table 

#The Question 
#1. write Query that returns IDs of the product info that has no (0) likes

SELECT id FROM product_info
WHERE id NOT IN (SELECT DISTINCT prod_id FROM product_info_like);