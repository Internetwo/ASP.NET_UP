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
        this.MultiView1.ActiveViewIndex = 0;
        Button1.BackColor = System.Drawing.Color.Blue;
        Button2.BackColor = System.Drawing.Color.Empty;
        Button3.BackColor = System.Drawing.Color.Empty;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 1;
        Button2.BackColor = System.Drawing.Color.Blue;
        Button1.BackColor = System.Drawing.Color.Empty;
        Button3.BackColor = System.Drawing.Color.Empty;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        this.MultiView1.ActiveViewIndex = 2;
        Button3.BackColor = System.Drawing.Color.Blue;
        Button1.BackColor = System.Drawing.Color.Empty;
        Button2.BackColor = System.Drawing.Color.Empty;
    }
}
