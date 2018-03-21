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
    protected void btnOK_Click(object sender, EventArgs e)
    {
        if (TxtUsername.Text == "admin" && TxtPWD.Text == "123456")
        {
            Response.Write("<script>alert('登录成功！')</script>");
        }
        else
        {
            Response.Write("<script>alert('登录失败，请重新注册！')</script>");
        }
    }
}
