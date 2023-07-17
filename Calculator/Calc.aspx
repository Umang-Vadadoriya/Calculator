<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calc.aspx.cs" Inherits="Calculator.Calc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Assets/bootstrap.min.css" rel="stylesheet" />
    <script src="Assets/bootstrap.bundle.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table cellspacing="2" class="text-center">
            <tr>
                <td colspan="2" class="text-start ms-5">
                    <asp:Label ID="lblTemp" runat="server" Text="00"></asp:Label></td>
            </tr>
            <tr >
                <td colspan="4">
                    <asp:TextBox ID="tBInput" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Button ID="btn7" runat="server" Text="7" OnClick="btnNum_Click" /></td>                
                <td><asp:Button ID="btn8" runat="server" Text="8" OnClick="btnNum_Click"/></td>                
                <td><asp:Button ID="btn9" runat="server" Text="9" OnClick="btnNum_Click"/></td>                
                <td><asp:Button ID="btnAdd" runat="server" Text="+" OnClick="btnOp_Click"/></td>                
            </tr>
            <tr>
                <td><asp:Button ID="btn4" runat="server" Text="4" OnClick="btnNum_Click"/></td>                
                <td><asp:Button ID="btn5" runat="server" Text="5" OnClick="btnNum_Click"/></td>                
                <td><asp:Button ID="btn6" runat="server" Text="6" OnClick="btnNum_Click"/></td>                
                <td><asp:Button ID="btnSub" runat="server" Text="-" OnClick="btnOp_Click"/></td>                
            </tr>
            <tr>
                <td><asp:Button ID="btn1" runat="server" Text="1" OnClick="btnNum_Click"/></td>                
                <td><asp:Button ID="btn2" runat="server" Text="2" OnClick="btnNum_Click"/></td>                
                <td><asp:Button ID="btn3" runat="server" Text="3" OnClick="btnNum_Click"/></td>                
                <td><asp:Button ID="btnMul" runat="server" Text="*" OnClick="btnOp_Click"/></td>                
            </tr>            
            <tr>
                <td><asp:Button ID="btn0" runat="server" Text="0" OnClick="btnNum_Click"/></td>                
                <td><asp:Button ID="btnC" runat="server" Text="C" OnClick="btnClear_Click"/></td>                
                <td><asp:Button ID="btnEqaul" runat="server" Text="=" OnClick="btnEqual_Click"/></td>                
                <td><asp:Button ID="btnDiv" runat="server" Text="/" OnClick="btnOp_Click"/></td>                
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
