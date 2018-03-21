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
        if (this.TextBox2.Text != "")
        {
            this.TextBox2.Attributes["value"] = this.TextBox2.Text;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "后台数据：";
        Label2.Text = "用户名：" + TextBox1.Text + "，" + "密码:" + TextBox2.Text + "；" + "密码提示问题：" + ListBox1.SelectedItem.Text + "，" + "问题答案：" + TextBox4.Text + "；" + "性别：" + RadioButtonList1.SelectedItem.Text + "；" + "用户角色：" + RadioButtonList2.SelectedItem.Text;
        Label3.Text = "兴趣爱好：";
        for (int i = 0; i <= CheckBoxList1.Items.Count - 1; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                Label4.Text = Label4.Text + CheckBoxList1.Items[i].Text+"；";
            }
        }
        Label5.Text = "用户所在地：" + DropDownList4.SelectedItem.Text + "，" + DropDownList2.SelectedItem.Text + "；" + "出生时间：" + TextBox8.Text + "；" + "移动电话：" + TextBox5.Text + "；" + "身份证号：" + TextBox6.Text + "；" + "邮箱：" + TextBox7.Text;
    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex==1)
        {
            Image1.ImageUrl = "~/images/男.jpg";
        }
        else if (RadioButtonList1.SelectedIndex == 0)
        {
            Image1.ImageUrl = "~/images/女.jpg";
        }
        else
        {
            Image1.ImageUrl = "";
        }
    }
}
