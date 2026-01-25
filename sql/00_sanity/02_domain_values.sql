-- 목적: 도메인 값 분포 확인 (type, operation 등)
-- 기준 테이블: public.transactions

-- 1) type 분포
SELECT
    type,
    COUNT(*) AS cnt,
    MIN(amount) AS min_amount,
    MAX(amount) AS max_amount
FROM public.transactions
GROUP BY type
ORDER BY cnt DESC;

VYDAJ,634571,0,87400
PRIJEM,405083,0,74812
VYBER,16666,2001,24997


-- 2) operation 분포(상위 30개)
SELECT
    operation,
    COUNT(*) AS cnt
FROM public.transactions
GROUP BY operation
ORDER BY cnt DESC
LIMIT 30;

VYBER,434918
PREVOD NA UCET,208283
,183114
VKLAD,156743
PREVOD Z UCTU,65226
VYBER KARTOU,8036


-- 3) date 범위
SELECT
    MIN(date) AS min_date,
    MAX(date) AS max_date
FROM public.transactions;

1993-01-01,1998-12-31
