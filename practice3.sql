#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary

SELECT
    c.companyName, 
    AVG(salary) as 'avgSalary'
FROM
    Employee e
    LEFT JOIN Company c ON e.companyId = c.id
GROUP BY e.companyId