Attribute VB_Name = "商品一覧を取得する"
Sub 商品一覧を取得する()

Dim conn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim sql As String
Dim row As Long

conn.Open "Driver={MySQL ODBC 9.3 Unicode Driver}; SERVER=localhost; DATABASE=****; USER=****; PASSWORD=****;"

' SQLクエリ
sql = "SELECT * FROM 商品マスタ"

' 実行してレコードセットに入れる
rs.Open sql, conn

' 結果をExcelに出力！（A2から）
row = 2
Do Until rs.EOF
    Cells(row, 1).Value = rs.Fields("商品ID")
    Cells(row, 2).Value = rs.Fields("商品名")
    Cells(row, 3).Value = rs.Fields("カテゴリ")
    Cells(row, 4).Value = rs.Fields("仕入単価")
    row = row + 1
    rs.MoveNext
Loop

'ここでSQLを発行します。
rs.Close: Set rs = Nothing
conn.Close
Set conn = Nothing

MsgBox "商品一覧を取得しました！"
    
End Sub
