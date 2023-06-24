-- PART 1
SELECT *
FROM EMP
WHERE SAL = (
  SELECT MAX(SAL) 
  FROM EMP
);

-- PART 2
SELECT *
FROM EMP
WHERE DEPTNO = (
  SELECT DEPTNO
  FROM DEPT
  WHERE DNAME = 'SALES'
);

-- PART 3
SELECT *
FROM EMP
WHERE DEPTNO = (
  SELECT DEPTNO
  FROM DEPT
  WHERE LOC = 'NEW YORK'
);

-- PART 4
SELECT COUNT(EMPNO)
FROM EMP
WHERE DEPTNO = (
  SELECT DEPTNO
  FROM DEPT
  WHERE DNAME = 'SALES'
);

-- PART 5
SELECT *
FROM EMP
WHERE SAL = (
  SELECT MAX(SAL) 
  FROM EMP
);

-- PART 6
-- The sixth part of the statement is missing. Please provide the query or statement.

-- PART 7
SELECT *
FROM DEPT
WHERE DEPTNO NOT IN (
  SELECT DEPTNO
  FROM EMP
  GROUP BY DEPTNO
  HAVING COUNT(*) <> 0
);

-- PART 8
SELECT *
FROM DEPT
WHERE DEPTNO NOT IN (
  SELECT DEPTNO
  FROM EMP
  GROUP BY DEPTNO
  HAVING COUNT(*) <> 0
);

-- PART 9
SELECT NAME, REGION, POPULATION, AREA
FROM BBC 
WHERE AREA IN (
  SELECT MIN(AREA)
  FROM BBC
  GROUP BY REGION
);

-- PART 10
SELECT NAME
FROM BBC 
WHERE GDP > (
  SELECT MAX(GDP)
  FROM BBC
);

-- PART 11
SELECT *
FROM BBC 
WHERE population > (
  SELECT population
  FROM BBC
  WHERE NAME = 'United Kingdom'
)
AND population < (
  SELECT population
  FROM BBC
  WHERE NAME = 'Albania'
);
