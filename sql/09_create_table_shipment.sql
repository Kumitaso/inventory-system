CREATE TABLE 出荷履歴 (
    出荷ID INT PRIMARY KEY AUTO_INCREMENT,
    商品ID INT,
    出荷数 INT,
    出荷日 DATE,
    FOREIGN KEY (商品ID) REFERENCES 商品マスタ(商品ID)
); 入荷履歴.商品ID = 商品マスタ.商品ID;
