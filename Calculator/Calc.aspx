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
    <div class="d-flex justify-content-center align-items-center" style="height:100vh;">
        <h1 class="position-absolute fw-bold" style="top:20%; color:#6610f2;">Calculator</h1>
        <div class="shadow-lg rounded-4">
        <table class="m-4 ">
            <tr>
                <td colspan="4" class="text-start ms-5">
                    <asp:Label ID="lblTemp" runat="server" Text="00"></asp:Label></td>
            </tr>
            <tr >
                <td colspan="4">
                    <asp:TextBox CssClass="mb-1 rounded-2" ID="tBInput" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btn7" runat="server" Text="7" OnClick="btnNum_Click" /></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btn8" runat="server" Text="8" OnClick="btnNum_Click"/></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btn9" runat="server" Text="9" OnClick="btnNum_Click"/></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btnAdd" runat="server" Text="+" OnClick="btnOp_Click"/></td>                
            </tr>                                    
            <tr>                                     
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btn4" runat="server" Text="4" OnClick="btnNum_Click"/></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btn5" runat="server" Text="5" OnClick="btnNum_Click"/></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btn6" runat="server" Text="6" OnClick="btnNum_Click"/></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btnSub" runat="server" Text="-" OnClick="btnOp_Click"/></td>                
            </tr>                                    
            <tr>                                     
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btn1" runat="server" Text="1" OnClick="btnNum_Click"/></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btn2" runat="server" Text="2" OnClick="btnNum_Click"/></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btn3" runat="server" Text="3" OnClick="btnNum_Click"/></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btnMul" runat="server" Text="*" OnClick="btnOp_Click"/></td>                
            </tr>                                           
            <tr>                                            
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btn0" runat="server" Text="0" OnClick="btnNum_Click"/></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btnC" runat="server" Text="C" OnClick="btnClear_Click"/></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btnEqaul" runat="server" Text="=" OnClick="btnEqual_Click"/></td>                
                <td><asp:Button CssClass="btn btn-primary" Height="40" Width="40"  ID="btnDiv" runat="server" Text="/" OnClick="btnOp_Click"/></td>                
            </tr>
        </table>
            </div>
    </div>
    </form>
</body>
</html>
