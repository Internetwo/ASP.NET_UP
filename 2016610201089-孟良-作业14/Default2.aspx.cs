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

public partial class Default2 : System.Web.UI.Page
{
     
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kh"] == null)
        {
            Response.Redirect("Default.aspx");
        }
        else
        {
            if (Application["counter"] == null)
            {
                Application["counter"] = 0;
            }
            Application.Lock();
            Application["counter"] = Convert.ToInt16(Application["counter"]) + 1;
            Application.UnLock();
            Label2.Text = "当前考试人次：" + Application["counter"].ToString() + "次";
            string text = Request.QueryString["text"];
            Response.Write("<font color=red>当前考生号为：</font>" + text);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int fs = 0;
        if (RadioButtonList1.SelectedValue == "B")
        {
            fs = fs + 20;
        }
        if (RadioButtonList2.SelectedValue == "A")
        {
            fs = fs + 20;
        }
        String a = "";
        for (int i = 0; i <= CheckBoxList1.Items.Count - 1; i++)
        {
            if (CheckBoxList1.Items[i].Selected==true)
            {
                a = a + CheckBoxList1.Items[i].Value;
            }
        }
        if (a == "ABCD")
        {
            fs = fs + 30;
        }
        String b = "";
        for (int i = 0; i <= CheckBoxList2.Items.Count - 1; i++)
        {
            if (CheckBoxList2.Items[i].Selected==true)
            {
                b = b + CheckBoxList2.Items[i].Value;
            }
        }
        if (b == "ABC")
        {
            fs = fs + 30;
        }
        Label1.Text = "您的成绩为：" + fs.ToString() + "分";
        Button3.Enabled = true;
        Button2.Enabled = false;
        Button1.Enabled = false;
        if (fs < 60)
        {
            Response.Write("<script>alert('革命尚未成功，同志仍需努力！')</script>");
        }
        else if (fs >= 60)
        {
            Response.Write("<script>alert('恭喜恭喜！成绩合格呢！')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
            RadioButtonList1.SelectedIndex = -1;
            RadioButtonList2.SelectedIndex = -1;
            CheckBoxList1.SelectedIndex = -1;
            CheckBoxList2.SelectedIndex = -1;
            Label1.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("<script>window.open ('Default3.aspx', '参考答案', 'height=150, width=400, top=250, left=500, toolbar=no, menubar=no, scrollbars=no, resizable=no, location=no, status=no')</script>");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Session.Abandon();
    }
}
