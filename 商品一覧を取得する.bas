Attribute VB_Name = "���i�ꗗ���擾����"
Sub ���i�ꗗ���擾����()

Dim conn As New ADODB.Connection
Dim rs As New ADODB.Recordset
Dim sql As String
Dim row As Long

conn.Open "Driver={MySQL ODBC 9.3 Unicode Driver}; SERVER=localhost; DATABASE=kumiko_inventory; USER=root; PASSWORD=9350;"

' SQL�N�G��
sql = "SELECT * FROM ���i�}�X�^"

' ���s���ă��R�[�h�Z�b�g�ɓ����
rs.Open sql, conn

' ���ʂ�Excel�ɏo�́I�iA2����j
row = 2
Do Until rs.EOF
    Cells(row, 1).Value = rs.Fields("���iID")
    Cells(row, 2).Value = rs.Fields("���i��")
    Cells(row, 3).Value = rs.Fields("�J�e�S��")
    Cells(row, 4).Value = rs.Fields("�d���P��")
    row = row + 1
    rs.MoveNext
Loop

'������SQL�𔭍s���܂��B
rs.Close: Set rs = Nothing
conn.Close
Set conn = Nothing

MsgBox "���i�ꗗ���擾���܂����I"
    
End Sub
