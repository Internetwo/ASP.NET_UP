using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page 
{

    public string rnd()
    {
        Random rnd = new Random();
        string str = rnd.Next(1000, 9999).ToString();
        return str;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Text = rnd();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=Web_test");
        SqlCommand cmd = new SqlCommand("select * from Admin where admin='" + TextBox1.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count == 0)
        {
            Response.Write("<script>alert('用户名错误！')</script>");
            Label1.Text = rnd();

        }
        else if (ds.Tables[0].Rows[0]["Password"].ToString() != TextBox2.Text)
        {
            Response.Write("<script>alert('密码错误！')</script>");
            Label1.Text = rnd();
        }
        else if (TextBox3.Text != Label1.Text)
        {
            Response.Write("<script>alert('验证码错误！')</script>");
            Label1.Text = rnd();
        }
        else
        {
            Session["username"] = TextBox1.Text;
            Response.Redirect("Default2.aspx");
        }
    }
}