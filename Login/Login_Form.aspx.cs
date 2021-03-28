using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Form : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Login_Click(object sender, EventArgs e)
    {
        if(tb_Username.Text == "a" && tb_Password.Text == "123")
        {
            Response.Write("<script>alert('Successful In Login')</script>");
            Response.Redirect("~/Next_Form.aspx");

        }
        else
        {
            Response.Write("<script>alert('Login Fail..')</script>");
        }
    }
}