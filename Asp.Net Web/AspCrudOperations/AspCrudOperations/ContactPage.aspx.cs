using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCrudOperations
{
    public partial class ContactPage : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["Dbconnection"].ConnectionString;
        public string I;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblErrorMsg.Visible = false;
            lblSuccessMsg.Visible = false;

            //getData();


        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            tbName.Text = "";
            tbAddress.Text = "";
            tbMobile.Text = "";
            lblSuccessMsg.Visible = false;
            lblErrorMsg.Visible = false;

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if(tbName.Text != "" && tbAddress.Text != "" && tbMobile.Text != "")
            {
                SqlDataAdapter sda = new SqlDataAdapter("insert into Contact(Name,Address,Mobile) Values('" + tbName.Text + "' , '" + tbAddress.Text + "' , " + tbMobile.Text + ")", con);

                DataTable dt = new DataTable();

                sda.Fill(dt);
                lblSuccessMsg.Visible = true;

                lblSuccessMsg.Text = "Record Saved Successfully";
                GridView1.DataBind();
               // getData();

            }
            else
            {
                lblErrorMsg.Visible = true;
                lblErrorMsg.Text = "Fill The Fields";
            }

           // getData();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ////SqlDataAdapter sda = new SqlDataAdapter("Delete into Contact Where )", con);

            //DataTable dt = new DataTable();

            //sda.Fill(dt);

            //Response.Write("Record Deleted");
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            //getData();
        }

        public void getData()
        {

            SqlDataAdapter sda = new SqlDataAdapter("Select * From Contact", con);

            DataTable dt = new DataTable();

            sda.Fill(dt);

            GridView1.DataSource = dt;
            //GridView1.DataBind();
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (tbName.Text != "")
            {
                SqlDataAdapter sda = new SqlDataAdapter("Select * From Contact where Name = '" + tbName.Text + "' ", con);

                DataTable dt = new DataTable();

                sda.Fill(dt);

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                lblErrorMsg.Visible = true;
                lblErrorMsg.Text = "Fill The Name";
            }
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            GridViewRow gd = GridView1.SelectedRow;
            I = gd.Cells[1].Text;
            tbName.Text =gd.Cells[2].Text;
            tbAddress.Text =gd.Cells[3].Text;
            tbMobile.Text =gd.Cells[4].Text;
            

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            GridViewRow gd = GridView1.SelectedRow;
            I = gd.Cells[1].Text;
            SqlDataAdapter sda = new SqlDataAdapter("Update Contact set Name = '"+tbName.Text+"' , Address = '"+tbAddress.Text+"' , Mobile = "+tbMobile.Text+" where Id = '"+ I + "' ", con);

            DataTable dt = new DataTable();

            sda.Fill(dt);

            lblSuccessMsg.Visible = true;
            lblSuccessMsg.Text = "Record Updated Successfully";

           
           GridView1.DataBind();
        }
    }
}