SELECT 
  商品マスタ.商品名,
  COALESCE(SUM(入荷履歴.入荷数), 0) AS 入荷合計,
  COALESCE(SUM(出荷履歴.出荷数), 0) AS 出荷合計,
  COALESCE(SUM(入荷履歴.入荷数), 0) - COALESCE(SUM(出荷履歴.出荷数), 0) AS 現在在庫
FROM 商品マスタ
LEFT JOIN 入荷履歴 ON 商品マスタ.商品ID = 入荷履歴.商品ID
LEFT JOIN 出荷履歴 ON 商品マスタ.商品ID = 出荷履歴.商品ID
GROUP BY 商品マスタ.商品名;
