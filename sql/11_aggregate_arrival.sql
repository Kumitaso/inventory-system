SELECT 
  DATE_FORMAT(入荷日, '%Y-%m') AS 月,
  商品マスタ.商品名,
  SUM(入荷履歴.入荷数) AS 月別入荷数
FROM 入荷履歴
JOIN 商品マスタ ON 入荷履歴.商品ID = 商品マスタ.商品ID
GROUP BY 月, 商品マスタ.商品名
ORDER BY 月;
