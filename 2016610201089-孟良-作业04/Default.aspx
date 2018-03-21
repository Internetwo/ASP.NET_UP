<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 33%;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 33%;
        }
        .style4
        {
            width: 33%;
        }
        .style5
        {
            width: 33%;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <table width="100%" class="style2">
            <tr>
                <td colspan="3" align="center">
                    <asp:Label ID="Label1" runat="server" Text="用户登录"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5">
                   用户名：<asp:TextBox ID="TxtUsername" runat="server" Columns="20" MaxLength="10" 
                        Rows="5" style="text-align: left"></asp:TextBox></td>
                <td style="text-align: left" class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style5">
                   密 &nbsp;&nbsp;&nbsp;码：<asp:TextBox ID="TxtPWD" runat="server" Columns="20" TextMode="Password"></asp:TextBox></td>
                <td style="text-align: left" class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style1" style="text-align: right">
                    &nbsp&nbsp&nbsp</td>
                <td align="center" class="style3">
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnOK0" runat="server" Text="登录" 
                        OnClick="btnOK_Click" AccessKey="R" ToolTip="后台登录" CssClass="btn"/>
                    &nbsp;&nbsp;
                    <asp:Button ID="btnCancle" runat="server" Text="取消" CssClass="btn"/>
                </td>
                <td align="center" style="text-align: left" class="style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" align="center">
                    <asp:LinkButton ID="lbtnRegister" runat="server" Text="新用户注册" PostBackUrl="#"></asp:LinkButton>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
