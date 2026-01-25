-- 목적: 도메인 값 분포 확인 (type, operation 등)
-- 주의: trans / transactions 중 실제 테이블로 FROM만 맞춰서 실행

-- 1) type 분포
SELECT
    type,
    COUNT(*) AS cnt,
    MIN(amount) AS min_amount,
    MAX(amount) AS max_amount
FROM trans   -- 필요 시 transactions로 변경
GROUP BY type
ORDER BY cnt DESC;

-- 2) operation 분포(상위 30개)
SELECT
    operation,
    COUNT(*) AS cnt
FROM trans   -- 필요 시 transactions로 변경
GROUP BY operation
ORDER BY cnt DESC
    LIMIT 30;

-- 3) date 범위
SELECT
    MIN(date) AS min_date,
    MAX(date) AS max_date
FROM trans;  -- 필요 시 transactions로 변경
