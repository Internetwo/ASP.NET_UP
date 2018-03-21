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
        string year = DateTime.Now.Year.ToString();
        string month = DateTime.Now.Month.ToString();
        string day = DateTime.Now.Day.ToString();
        string time = DateTime.Now.ToString("hh:mm:ss");
        string week = DateTime.Now.ToString("星期ddd");
        Response.Write(year + "年" + month + "月" + day + "日");
        Response.Write("<br/>");
        Response.Write(time);
        Response.Write("<br/>");
        Response.Write(week);
    }
}
