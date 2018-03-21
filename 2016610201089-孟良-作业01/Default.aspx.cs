using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page 
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox1.Text=="")
        {
        Response.Write("<script>alert('请输入第一个加数！')</script>");
            TextBox1.Focus();
        }
        else if (TextBox2.Text=="")
        {
        Response.Write("<script>alert('请输入第二个加数！')</script>");
            TextBox2.Focus();
        }
        else
        {
        try
        {
        int a=Convert.ToInt16(TextBox1.Text);
            int b=Convert.ToInt16(TextBox2.Text);
            Label2.Text=(a+b).ToString();
        }
        catch(Exception ex)
        {
         Response.Write("<script>alert('输入有误！！！')</script>");
        }
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label2.Text = "";
    }
}
