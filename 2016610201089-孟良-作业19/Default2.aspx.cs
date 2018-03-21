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
    private int GetSelDate()
    {
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=Web_test");
        SqlCommand cmd = new SqlCommand("select * from UserInformation where " + DropDownList1.Text + " like '%" + TextBox11.Text + "%'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0].DefaultView;
        GridView1.DataBind();
        int count = ds.Tables[0].Rows.Count;
        return count;
    }
    private void GetData()
    {
            SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=Web_test");
            SqlCommand cmd = new SqlCommand("select * from UserInformation", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0].DefaultView;
            GridView1.DataBind();
    }
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
        GetData();
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
        if (TextBox1.Text != null)
        {
            TextBox7.Text = (Convert.ToDecimal(TextBox3.Text) + Convert.ToDecimal(TextBox4.Text) + Convert.ToDecimal(TextBox5.Text) + Convert.ToDecimal(TextBox6.Text)).ToString(); 
        }
        else
        {
            Response.Write("<script>alert('请输入成绩！')</script>");
        }
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
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        GetData();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex=-1;
        if (Session["check"] == null)
        {
            GetData();
        }
        else
        {
            GetSelDate();
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        if (Session["check"] == null)
        {
            GetData();
        }
        else
        {
            GetSelDate();
        }
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 0)
        {
            Response.Write("<script>alert('请选择字段名称！')</script>");
            DropDownList1.Focus();
        }
        else if (TextBox11.Text == "")
        {
            Response.Write("<script>alert('请输入要查询的值！')</script>");
            TextBox11.Focus();
        }
        else
        {
            if (GetSelDate() == 0)
            {
                Response.Write("<script>alert('无此记录！')</script>");
                GetSelDate();
            }
            else
            {
                GetSelDate();
                Session["check"] = "0";
            }
        }
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        GetData();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string kh = GridView1.DataKeys[e.RowIndex][0].ToString();
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=Web_test");
        SqlCommand cmd = new SqlCommand("delete from UserInformation where 考号='"+ kh +"'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('删除成功！')</script>");
        if (Session["check"] == null)
        {
            GetData();
        }
        else
        {
            GetSelDate();
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string kh = GridView1.DataKeys[e.RowIndex][0].ToString();
        decimal yw = Convert.ToDecimal(((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text);
        decimal sx = Convert.ToDecimal(((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text);
        decimal yy = Convert.ToDecimal(((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text);
        decimal zh = Convert.ToDecimal(((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text);
        decimal zf = yw + sx + yy + zh;
        SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=Web_test");
        SqlCommand cmd = new SqlCommand("update UserInformation set 语文="+ yw.ToString() +",数学="+ sx.ToString() +",英语="+ yy.ToString() +",综合="+ zh.ToString() +",总分="+ zf.ToString() +" where 考号="+ kh +"", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('更新成功！')</script>");
        GridView1.EditIndex = -1;
        if (Session["check"] == null)
        {
            GetData();
        }
        else
        {
            GetSelDate();
        }
    }
}