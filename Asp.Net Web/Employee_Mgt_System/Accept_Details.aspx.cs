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
    protected void btn_Save_Click(object sender, EventArgs e)
    {
        Con_Open();
        string Gender = "";
        if (rb_Male.Checked)
        {
            Gender = rb_Male.Text;
        }
        else
        {
            Gender = rb_Female.Text;
        }

        if(tb_ID.Text != "")
        {
           
                SqlDataAdapter sda = new SqlDataAdapter("Insert Into Accept_Details Values(" + tb_ID.Text + ",'" + tb_Name.Text + "'," + tb_Mob_No.Text + ",'" + Gender + "','" + ddl_Post.SelectedValue + "')", Con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                Response.Write("<script>alert('Data Saved')</script>");
                clear();
               
        }
        else
        {
            Response.Write("<script>alert('Fill All Fileds')</script>");
        }

        Con_Close();
    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        clear();
    }

    void clear()
    {
        tb_ID.Text = "";
        tb_Mob_No.Text = "";
        tb_Name.Text = "";

        if (rb_Male.Checked)
        {
            rb_Male.Checked = false;
        }
        else
        {
            rb_Female.Checked = false;
        }
    }
}