-- 목적: 핵심 테이블 컬럼/타입 확인 (JOIN/인덱스/집계 전제 확정)
-- 기대: account_id, client_id, trans_id, date, type, amount, balance 등 확인

SELECT
    table_name,
    column_name,
    data_type
FROM information_schema.columns
WHERE table_schema = 'public'
  AND table_name IN ('account','transactions','client','disp','loan')
ORDER BY table_name, ordinal_position;

