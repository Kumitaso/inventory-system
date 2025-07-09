CREATE TABLE 入荷履歴 (
    入荷ID INT PRIMARY KEY AUTO_INCREMENT,
    商品ID INT,
    入荷数 INT,
    入荷日 DATE,
    FOREIGN KEY (商品ID) REFERENCES 商品マスタ(商品ID)
);
