using System;
using System.Collections;
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
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["kh"] == null || Request["sfzh"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            SqlConnection con = new SqlConnection("server=.;uid=sa;pwd=123456;database=Web_test");
            SqlCommand cmd = new SqlCommand("select * from UserInformation where 考号='" + Request["kh"].ToString() + "'and 身份证号='" + Request["sfzh"].ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count != 0)
            {
                Label1.Text = "语文成绩：" + ds.Tables[0].Rows[0]["语文"].ToString();
                Label2.Text = "数学成绩：" + ds.Tables[0].Rows[0]["数学"].ToString();
                Label3.Text = "英语成绩：" + ds.Tables[0].Rows[0]["英语"].ToString();
                Label4.Text = "综合成绩：" + ds.Tables[0].Rows[0]["综合"].ToString();
                Label5.Text = "总    分：" + ds.Tables[0].Rows[0]["总分"].ToString();
            }
            else
            {
                Label1.Text = "考生不存在！";
            }
        }
    }
}
