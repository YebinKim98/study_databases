-- https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_having
-- 조건 : CategoryID 가 10개 이상

SELECT count(T_CG.CategoryID) as CNT_CategoryID, T_CG.CategoryID
FROM Products as T_CG
GROUP BY T_CG.CategoryID
HAVING COUNT(T_CG.CategoryID) >= 10;