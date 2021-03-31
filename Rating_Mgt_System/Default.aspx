<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="Rating">
    <div class ="Head">
    <h1> Rating System </h1>
    
    </div>
    <div class ="Body">
     
        <asp:ImageButton ID="img1" runat="server" Height="27px" 
            ImageUrl="~/img/Star.gif" onclick="ImageButton1_Click" 
            Width="24px" />
        <asp:ImageButton ID="ImageButton1" runat="server" Enabled="False" Height="27px" 
            ImageUrl="~/img/Star.gif" onclick="ImageButton1_Click1" Width="24px" />
        <asp:ImageButton ID="ImageButton2" runat="server" Enabled="False" Height="27px" 
            ImageUrl="~/img/Star.gif" onclick="ImageButton2_Click" Width="24px" />
        <asp:ImageButton ID="ImageButton3" runat="server" Enabled="False" Height="27px" 
            ImageUrl="~/img/Star.gif" onclick="ImageButton3_Click" Width="24px" />
        <asp:ImageButton ID="ImageButton4" runat="server" Enabled="False" Height="27px" 
            ImageUrl="~/img/Star.gif" onclick="ImageButton4_Click" Width="24px" />
            
       &nbsp &nbsp &nbsp &nbsp &nbsp
        <asp:Button ID="Button1" runat="server" Text="Submit" Width="102px" 
           Height="31px" onclick="Button1_Click" />

           <br />
           <br />
        <asp:Label ID="Label1" runat="server" Enabled="False"></asp:Label>

            
       
        <br />
     </div>

         </div>
       
       
       
   
    </form>
</body>
</html>
