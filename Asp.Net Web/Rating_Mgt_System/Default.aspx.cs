using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static int val1 = 0;
    static int val2 = 0;
    static int val3 = 0;
    static int val4 = 0;
    static int val5 = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Enabled = false;  
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
        if (val1 == 0)
        {
            img1.ImageUrl = "~/img/FilledStar.gif";
            ImageButton1.Enabled = true;
            val1++;
        }
        else
        {
            img1.ImageUrl = "~/img/Star.gif";
            val1--;
        }
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        Label1.Enabled = true;
        if (val2 == 0)
        {
            ImageButton1.ImageUrl = "~/img/FilledStar.gif";
            ImageButton2.Enabled = true;
            img1.Enabled = false;
            val2++;
            
        }
        else
        {
            ImageButton1.ImageUrl = "~/img/Star.gif";
            img1.Enabled = true;
            val2--;
            
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
        if (val3 == 0)
        {
            ImageButton2.ImageUrl = "~/img/FilledStar.gif";
            ImageButton3.Enabled = true;
            img1.Enabled = false;
            ImageButton1.Enabled = false;
            val3++;
           
        }
        else
        {
            ImageButton2.ImageUrl = "~/img/Star.gif";
            ImageButton1.Enabled = true;
            val3--;
           
        }
    }
   
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        
        if (val4 == 0)
        {
            ImageButton3.ImageUrl = "~/img/FilledStar.gif";
            ImageButton4.Enabled = true;
            img1.Enabled = false;
            ImageButton1.Enabled = false;
            ImageButton2.Enabled = false;
            val4++;
           
        }
        else
        {
            ImageButton3.ImageUrl = "~/img/Star.gif";
            ImageButton2.Enabled = true;
            val4--;
            
        }
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        
        if (val5 == 0)
        {
            ImageButton4.ImageUrl = "~/img/FilledStar.gif";
            img1.Enabled = false;
            ImageButton1.Enabled = false;
            ImageButton2.Enabled = false;
            ImageButton3.Enabled = false;
            val5++;
           
        }
        else
        {
            ImageButton4.ImageUrl = "~/img/Star.gif";
            ImageButton3.Enabled = true;
            val5--;
           
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (val1 == 1)
        {
            Label1.Text = "Thank You !!";
        }
       
    }
}