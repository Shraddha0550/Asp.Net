<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Accept_Details.aspx.cs" Inherits="Accept_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            color: #000099;
            font-family: "Arial Black";
            text-align: center;
        }
        .style2
        {
            width: 100%;
            height: 511px;
        }
        .style5
        {
            width: 293px;
        }
        .style6
        {
            width: 229px;
        }
        .style7
        {
            width: 464px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>Accept Details</strong></div>
  
    <table class="style2">
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Employee ID:</td>
            <td class="style7">
                <asp:TextBox ID="tb_ID" runat="server" Width="275px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Name:</td>
            <td class="style7">
                <asp:TextBox ID="tb_Name" runat="server" Width="272px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Mobile No:</td>
            <td class="style7">
                <asp:TextBox ID="tb_Mob_No" runat="server" Width="273px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Gender:</td>
            <td class="style7">
                <asp:RadioButton ID="rb_Male" runat="server" Text="Male" GroupName="Gender" 
                    />
                <asp:RadioButton ID="rb_Female" runat="server" Text="Female" GroupName="Gender" 
                    />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                Post:</td>
            <td class="style7">
                <asp:DropDownList ID="ddl_Post" runat="server" EnableTheming="True" 
                    Height="24px" Width="275px" style="font-size: large">
                    <asp:ListItem>Cleaner</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Worker</asp:ListItem>
                    <asp:ListItem>Accountant</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5">
                &nbsp;</td>
            <td class="style6">
                &nbsp;</td>
            <td class="style7">
                <asp:Button ID="btn_Save" runat="server" Height="37px" Text="Save" 
                    Width="116px" onclick="btn_Save_Click" />
        <asp:Button ID="btn_View" runat="server" onclick="Button1_Click" Text="View" 
            Width="127px" Height="36px" style="margin-top: 0px" />
        <asp:Button ID="btn_Refresh" runat="server" onclick="Button1_Click" Text="Refresh" 
            Width="127px" Height="36px" style="margin-top: 0px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
  
    <p>
        &nbsp;</p>
  
    </form>
</body>
</html>
