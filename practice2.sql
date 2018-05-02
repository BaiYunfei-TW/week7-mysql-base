# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name

SELECT
    e.name, 
    c.companyName
FROM
    Employee e
    LEFT JOIN Company c ON e.companyId=c.id
GROUP BY companyId
