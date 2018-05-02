# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal

SELECT
    e.id,
    e.name,
    e.age,
    e.gender,
    e.companyId,
    e.salary,
    c.companyName,
    AVG(e.salary)
FROM
    Employee e
    LEFT JOIN Company c ON c.id = e.companyId
GROUP BY e.companyId
HAVING e.salary >= AVG(e.salary);