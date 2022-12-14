####  
## 08. 여러 테이블 한 번에 다루기  
#### ► [01_set_join_221019]  
- 쿼리의 동일 값은 제외하고 데이터를 더하는 UNION과 동일 값을 포함해 데이터를 더하는 UNION ALL로 테이블 A / B의 합집합 구현 실습  
- INNER JOIN을 사용해 동일한 데이터를 가졌는지 확인 필요한 컬럼을 JOIN의 기준으로 두고 테이블 A / B를 연결하는 교집합 구현 실습  
- LEFT JOIN을 사용해 A에는 있지만 B에는 없는 데이터를 가져오는 WHERE절 조건으로 테이블 A / B를 연결하는 차집합 구현 실습  
####  
- ✔︎ UNION / UNION ALL - 두 쿼리 결괏값 수가 동일해야 하며, 데이터 중 일부라도 상이할 경우 서로 다른 데이터로 구분
- ✔︎ UNION / UNION ALL - ORDER BY 사용 시, A의 첫 번째 쿼리 SELECT절 컬럼 내에서 선택해야 하며 쿼리 가장 마지막에 작성 필요  
####  
- ✔︎ MySQL은 타 DBMS의 INTERSECT / MINUS 표현이 존재하지 않음 → JOIN을 사용해 교집합 / 차집합 구현 가능  
- ✔︎ 두 테이블을 합치는 JOIN의 경우, 두 테이블에 공통적으로 존재하는 컬럼을 SELECT절에 기재할 시 어떤 테이블의 컬럼인지 위치 기재 필요  
- ✔︎ 교집합 / 차집합의 경우, 단순 INNER / LEFT JOIN과 달리 확인이 필요한 컬럼을 모두 JOIN의 기준으로 두고 합쳐주는 것에 차이가 있음  
##
#### Sum of sets
``` SQL
# UNION을 사용한 합집합 구현
SELECT column_name(s)
FROM table1
UNION
SELECT column_name(s)
FROM table2;
```
``` SQL
# UNION ALL을 사용한 합집합 구현
SELECT column_name(s)
FROM table1
UNION ALL
SELECT column_name(s)
FROM table2;
```
#### Intersection
``` SQL
# INNER JOIN을 사용한 교집합 구현
SELECT alias1.column_name(s)
FROM table1 AS alias1
INNER JOIN table2 AS alias2
ON alias1.column_name = alias2.column_name
AND alias1.column_name(s) = alias2.column_name(s) ... ;
```
#### Difference of sets
``` SQL
# LEFT JOIN을 사용한 교집합 구현
SELECT alias1.column_name(s)
FROM table1 AS alias1
LEFT JOIN table2 AS alias2
ON alias1.column_name = alias2.column_name
AND alias1.column_name(s) = alias2.column_name(s) ...
WHERE alias2.column_name(s) IS NULL;
```
####
