# 1.创建数据库employee_db
CREATE DATABASE employee_db DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

# 2.在数据库employee_db中创建table：`Employee`
CREATE TABLE Employee(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(6),
    companyId INT,
    salary INT
);

# 3.将`employee-data.csv`文件中的数据导入数据表Employee中
LOAD DATA INFILE 'D:/cloud/ThoughtWorks/2018毕业生训练营/week7/mysql-base/employee-data.csv'
INTO TABLE Employee
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

# 4.在数据库employee_db中创建table：`Company`
CREATE TABLE Company(
    id INT PRIMARY KEY,
    companyName VARCHAR(50),
    employeesNumber INT
);

# 5.将`company-data.csv`文件中的数据导入Company数据表中
LOAD DATA INFILE 'D:/cloud/ThoughtWorks/2018毕业生训练营/week7/mysql-base/company-data.csv'
INTO TABLE Company
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息
SELECT
    *
FROM
    Employee
WHERE
    name LIKE '%n%' AND
    salary > 6000;

# ps:本练习中只需要将6的结果复制到`result.txt`文件中