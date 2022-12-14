-- 1. DCL - GRANT / REVOKE
# 기본 데이터베이스 선택하기
USE mysql;

# 사용자 목록 조회하기
SELECT user, host FROM user;

# 사용자 및 비밀번호 생성하기
CREATE USER test_user@[IP 주소] IDENTIFIED BY 'password';

# 사용자 삭제하기
DROP USER test_user;

# 동일한 IP 주소를 가진 모든 test_user에게 database_name.table_name에 대한 모든 범위 권한 부여하기
GRANT ALL PRIVILEGES ON database_name.table_name TO test_user@[IP 주소];

# 동일한 IP 주소를 가진 모든 test_user에게 모든 데이터베이스와 테이블에 대한 SELECT & INSERT 범위만 권한 부여하기
GRANT SELECT, INSERT ON *.* TO test_user@[IP 주소];

# 동일한 IP 주소를 가진 모든 test_user에게 database_name의 모든 테이블에 대한 SELECT & INSERT 범위만 권한 부여하기
GRANT SELECT, INSERT ON database_name.* TO test_user@[IP 주소];

# 권한 확인하기
SHOW GRANTS FOR test_user@[IP 주소];

# 권한 삭제하기
REVOKE [권한] ON [범위] FROM test_user@[IP 주소];

# 권한 적용하기
FLUSH PRIVILEGES;

-- 2. DCL - COMMIT / ROLLBACK / SAVEPOINT
# 트랜잭션 시작하기
START TRANSACTION;

# 트랜잭션 확정하기
COMMIT;

# 트랜잭션 이전으로 돌아가기
ROLLBACK;

# 트랜잭션 내에 세이브포인트 만들기
SAVEPOINT savepoint_name;

# 세이브포인트로 돌아가기
ROLLBACK TO savepoint_name;
