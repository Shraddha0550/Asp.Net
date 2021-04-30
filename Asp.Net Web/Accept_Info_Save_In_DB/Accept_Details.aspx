<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Accept_Details.aspx.cs" Inherits="Accept_Details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
            color: #FF66FF;
            text-align: center;
        }
        .style2
        {
            width: 100%;
            height: 478px;
        }
        .style3
        {
            width: 316px;
            text-align: center;
        }
        .style4
        {
            font-size: large;
        }
        .style6
        {
            width: 316px;
            text-align: center;
            height: 82px;
        }
        .style7
        {
            width: 326px;
            height: 82px;
            text-align: center;
        }
        .style8
        {
            height: 82px;
        }
        .style9
        {
            width: 326px;
        }
        .style10
        {
            width: 503px;
            text-align: center;
        }
        .style11
        {
            width: 378px;
        }
        .style12
        {
            height: 82px;
            width: 378px;
        }
        .style13
        {
            width: 326px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>Accept Student Information</strong></div>
    <asp:Panel ID="Panel1" runat="server" Height="632px" 
        style="margin-left: 3px; margin-top: 66px" Width="1369px" 
        BackColor="#3399FF">
        <table class="style2">
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style13">
                    <asp:Label ID="lb_ID" runat="server" CssClass="style4" Text="ID       "></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="tb_ID" runat="server" CssClass="style4" Width="289px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style13">
                    <asp:Label ID="lb_Name" runat="server" CssClass="style4" Text="Name"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="tb_Name" runat="server" CssClass="style4" Width="289px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style13">
                    <asp:Label ID="lb_Address" runat="server" CssClass="style4" Text="Address"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="tb_Address" runat="server" CssClass="style4" Width="288px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td class="style7">
                    <asp:Label ID="lb_Mob_No" runat="server" CssClass="style4" Text="Mob No"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="tb_Mob_No" runat="server" CssClass="style4" Width="293px"></asp:TextBox>
                </td>
                <td class="style8">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style11">
                    <asp:Button ID="btn_Add" runat="server" Height="51px" onclick="btn_Add_Click" 
                        Text="ADD" Width="135px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </form>
</body>
</html>
