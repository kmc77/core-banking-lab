-- 목적: Czech Bank 스키마에서 핵심 테이블 존재 여부와 행 수 대략 확인
-- 확인 결과: 거래 테이블은 public.transactions (trans 테이블은 없음)

-- 1) 테이블 존재 여부
SELECT table_schema, table_name
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_name IN ('account','transactions','client','disp','loan')
ORDER BY table_name;

-- 2) 테이블별 rowcount 대략 확인 (통계 기반이라 빠름)
SELECT
    relname AS table_name,
    n_live_tup AS approx_rows
FROM pg_stat_user_tables
WHERE relname IN ('account','transactions','client','disp','loan')
ORDER BY approx_rows DESC;
