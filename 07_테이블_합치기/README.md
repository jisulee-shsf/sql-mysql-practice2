####  
## 07. 테이블 합치기  
#### ► [01_inner_left_right_outer_cross_self_join_221018]  
- 공통 값을 기준으로 테이블을 합치는 INNER JOIN 실습  
- 왼쪽 또는 오른쪽 테이블을 기준으로 테이블을 합치는 LEFT JOIN / RIGHT JOIN 실습  
- 중복 결과를 제외하고 두 테이블을 합쳐주는 집합 연산자 UNION을 사용해 LEFT + RIGHT JOIN으로 OUTER JOIN 구현 실습  
- 별도 기준 컬럼 없이, 두 테이블의 모든 값을 각각 합치는 CROSS JOIN 실습  
- 동일한 테이블의 INNER JOIN인 SELF JOIN 실습  
####  
- ✔︎ JOIN한 두 테이블의 동일 컬럼을 SELECT절로 가져올 경우, 값을 가져오는 테이블 위치 기재 필요   
- ✔︎ LEFT JOIN / RIGHT JOIN - JOIN 기준에 따라, 누락되는 값은 자동으로 NULL 반환  
- ✔︎ SELF JOIN - SELF JOIN 시, 기준 컬럼의 위치를 명시하기 위해 alias 설정 필요  
##
#### INNER JOIN
``` SQL
# 공통 값 기준 합치기
SELECT column_name(s)
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;
```
#### LEFT & RIGHT JOIN
``` SQL
# 왼쪽 테이블 기준 합치기
SELECT column_name(s)
FROM table1
LEFT JOIN table2 ON table1.column_name = table2.column_name;
```
``` SQL
# 오른쪽 테이블 기준 합치기
SELECT column_name(s)
FROM table1
RIGHT JOIN table2 ON table1.column_name = table2.column_name;
```
#### OUTER JOIN
``` SQL
# 중복 제외, 전체 합치기
LEFT JOIN
UNION
RIGHT JOIN;
``` 
#### CROSS JOIN
``` SQL
# 테이블 내에 모든 값 각각 합치기
SELECT column_name(s)
FROM table1 CROSS JOIN table2;
```
#### SELF JOIN
``` SQL
# 동일 테이블 합치기
SELECT column_name(s) FROM table1 alias_name1, table1 alias_name2 WHERE condition;
```
####
