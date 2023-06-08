-- https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_columns
-- 조건 : 가장 많이 주문 받은 회사 직원명과 갯수

SELECT  MAX(total.CNT_Orders), total.NAME
FROM (
SELECT COUNT(*) AS CNT_Orders, T_OD.EmployeeID, T_EP.Lastname AS NAME
FROM Orders AS T_OD
JOIN Employees AS T_EP  --JOIN 사용 및 명칭 지정
ON T_OD.EmployeeID = T_EP.EmployeeID
GROUP BY T_OD.EmployeeID
) AS total

-- Result:
-- Number of Records: 1
-- MAX(total.CNT_Orders)	NAME
-- 40                       Peacock