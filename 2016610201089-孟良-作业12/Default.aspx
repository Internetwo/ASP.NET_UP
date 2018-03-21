<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<%@ Register assembly="EeekSoft.Web.PopupWin" namespace="EeekSoft.Web" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server">
        </FCKeditorV2:FCKeditor>
    
    </div>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确定" />
    <br />
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <cc1:PopupWin ID="PopupWin1" runat="server" Message="欢迎访问本网站！" Title="欢迎" 
        Link="Default1.aspx" ActionType="OpenLink" LinkTarget="_blank" />
    </form>
</body>
</html>
