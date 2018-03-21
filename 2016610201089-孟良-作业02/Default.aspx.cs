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
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text == "")
        {
            Response.Write("<script>alert('不能为空呦~')</script>");
            TextBox2.Focus();
        }
        else 
        {
            Label3.Text = TextBox2.Text.ToLower();
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Response.Write("<script>alert('不能为空呦~')</script>");
            TextBox1.Focus();
        }
        else 
        {
            Label2.Text = TextBox1.Text.ToUpper();
        }
    }
}
