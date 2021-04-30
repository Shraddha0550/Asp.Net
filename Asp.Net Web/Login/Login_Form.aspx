<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_Form.aspx.cs" Inherits="Login_Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #800000;
            text-align: center;
            font-size: xx-large;
        }
        .style2
        {
            width: 100%;
            height: 281px;
        }
        .style3
        {
            width: 421px;
            font-size: large;
        }
        #form1
        {
            height: 341px;
        }
        .style4
        {
            width: 421px;
            height: 48px;
        }
        .style5
        {
            height: 48px;
        }
    </style>
</head>
<body style="height: 358px">
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>Login </strong>
    
    </div>
    <table class="style2">
        <tr>
            <td class="style3">
                Username</td>
            <td>
                <asp:TextBox ID="tb_Username" runat="server" style="font-size: large" 
                    Width="325px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Password</td>
            <td>
                <asp:TextBox ID="tb_Password" runat="server" style="font-size: large" 
                    Width="320px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style5">
                <asp:Button ID="btn_Login" runat="server" onclick="btn_Login_Click" 
                    style="font-size: large" Text="Login" Width="217px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
