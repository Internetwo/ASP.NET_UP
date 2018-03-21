using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=Web_test");
        SqlCommand cmd = new SqlCommand("select * from UserInformation where 考号='" + TextBox1.Text + "' or 身份证号='" + TextBox2.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count != 0)
        {
            Response.Write("<script>alert('此考生成绩已存在！')</script>");
        }
        else
        { 
        SqlCommand cmd1=new SqlCommand("insert into UserInformation values('"+TextBox1.Text+"','"+TextBox2.Text+"',"+TextBox3.Text+","+TextBox4.Text+","+TextBox5.Text+","+TextBox6.Text+","+TextBox7.Text+")",con);
        con.Open();
        cmd1.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('考生信息添加成功！')</script>");
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        TextBox7.Text = (Convert.ToDecimal(TextBox3.Text) + Convert.ToDecimal(TextBox4.Text) + Convert.ToDecimal(TextBox5.Text) + Convert.ToDecimal(TextBox6.Text)).ToString();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=Web_test");
        SqlCommand cmd = new SqlCommand("select * from Admin where admin='" + Session["username"].ToString()+ "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows[0]["Password"].ToString() != TextBox8.Text)
        {
            Response.Write("<script>alert('原始密码不正确！')</script>");
            TextBox8.Focus();
        }
        else if (TextBox9.Text != TextBox10.Text)
        {
            Response.Write("<script>alert('两次密码输入不一致！')</script>");
            TextBox9.Focus();
        }
        else
        {
            SqlCommand cmd1 = new SqlCommand("update Admin set Password='" + TextBox9.Text + "'where admin='" + Session["username"].ToString() + "'", con);
            con.Open();
            cmd1.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('密码修改成功！')</script>");
        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        TextBox8.Text = "";
        TextBox9.Text = "";
        TextBox10.Text = "";
    }
}