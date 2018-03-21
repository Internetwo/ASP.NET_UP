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
        for (int i = 0; i < ListBox1.Items.Count; i++)
        {
            ListBox2.Items.Add(ListBox1.Items[i].Text);
        }
            ListBox1.Items.Clear();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < ListBox2.Items.Count; i++)
        {
            ListBox1.Items.Add(ListBox2.Items[i].Text);
        }
            ListBox2.Items.Clear();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        for (int i = ListBox1.Items.Count-1; i >=0; i--)
        {
            if (ListBox1.Items[i].Selected == true)
            {
                ListBox2.Items.Add(ListBox1.Items[i].Text);
                ListBox1.Items.Remove(ListBox1.Items[i].Text);
            }
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        for (int i = ListBox2.Items.Count-1; i >= 0; i--)
        {
            if (ListBox2.Items[i].Selected == true)
            {
                ListBox1.Items.Add(ListBox2.Items[i].Text);
                ListBox2.Items.Remove(ListBox2.Items[i].Text);
            }
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
            string name = ListBox2.SelectedItem.Text;
            int i = ListBox2.SelectedIndex;
            if (i != 0)
            {
                ListBox2.SelectedItem.Text = ListBox2.Items[i - 1].Text;
                ListBox2.Items[i - 1].Text = name;
                ListBox2.SelectedIndex = i - 1;
            }
            else
            {
                Response.Write("<script>alert('已经到第一位了！！！')</script>");
            }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string name = ListBox2.SelectedItem.Text;
        int i = ListBox2.SelectedIndex;
        if (i != 6)
        {
            ListBox2.SelectedItem.Text = ListBox2.Items[i + 1].Text;
            ListBox2.Items[i + 1].Text = name;
            ListBox2.SelectedIndex = i + 1;
        }
        else
        {
            Response.Write("<script>alert('已经到最后一位了！！！')</script>");
        }
    }
}
