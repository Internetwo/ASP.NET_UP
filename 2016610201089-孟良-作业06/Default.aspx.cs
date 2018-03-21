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
        if (RadioButtonList1.SelectedIndex == -1 || RadioButtonList2.SelectedIndex == -1)
        {
            Response.Write("<script>alert('请选择相应选项，不能只选一个或者不选！')</script>");
        }
        else
        {
            Label1.Text = RadioButtonList1.SelectedItem.Text+","+RadioButtonList2.SelectedItem.Text;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        RadioButtonList1.SelectedIndex = -1;
        RadioButtonList2.SelectedIndex = -1;

    }
}
