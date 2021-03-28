using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Accept_Details : System.Web.UI.Page
{
    SqlConnection Con = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Asp.Net.DB;Integrated Security=True");
    void Con_Open()
    {
        if (Con.State == ConnectionState.Closed)
        {
            Con.Open();
        }
    }

    void Con_Close()
    {
        if (Con.State == ConnectionState.Open)
        {
            Con.Close();
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Add_Click(object sender, EventArgs e)
    {
        Con_Open();

        if (tb_ID.Text != "" && tb_Name.Text != "" && tb_Mob_No.Text != "" && tb_Address.Text != "")
        {
            SqlDataAdapter sda = new SqlDataAdapter("insert into Accept_Student_Info Values(" + tb_ID.Text + ",'" + tb_Name.Text + "','" + tb_Address.Text + "'," + tb_Mob_No.Text + ")", Con);

            DataTable dt = new DataTable();

            sda.Fill(dt);

            Response.Write("<script>alert('Saved Data')</script>");
            tb_Address.Text = "";
            tb_ID.Text = "";
            tb_Mob_No.Text = "";
            tb_Name.Text = "";
        }
        else
        {
            Response.Write("<script>alert('Fill All Fields')</script>");
        }

      

        Con_Close();
    }
}