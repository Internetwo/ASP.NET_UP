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
            Label1.Text = "姓名：" + TextBox1.Text;
            Label2.Text = "性别：" + DropDownList1.SelectedItem.Text;
            Label3.Text = "";
            Label4.Text = "学历：" + DropDownList2.SelectedItem.Text;
            Label5.Text = "头像为：";
            Label6.Text = "兴趣爱好：";
            for (int i = 0; i <=CheckBoxList1.Items.Count-1; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    Label3.Text = Label3.Text + CheckBoxList1.Items[i].Text; 
                } 
            }
            Image2.ImageUrl = Image1.ImageUrl;
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedIndex == 1)
        {
            Image1.ImageUrl = "~/images/男.jpg";
        }
        else if (DropDownList1.SelectedIndex == 2)
        {
            Image1.ImageUrl = "~/images/女.jpg";
        }
        else
        {
            Image1.ImageUrl = "";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        DropDownList1.SelectedIndex = 0;
        CheckBoxList1.SelectedIndex = -1;
        DropDownList2.SelectedIndex = 0;
        Image1.ImageUrl = "";
        Image2.ImageUrl = "";
        Label1.Text = "";
        Label2.Text = "";
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        Label6.Text = "";
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
