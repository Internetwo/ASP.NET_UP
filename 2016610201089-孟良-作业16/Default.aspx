<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 600px;
        }
        .style2
        {
            height: 4px;
            font-family: 黑体;
            font-weight: bold;
            font-size: xx-large;
            text-align: center;
        }
        .style3
        {
            text-align: right;
            height: 35px;
        }
        .style4
        {
            text-align: left;
            height: 35px;
        }
         .style5
        {
            text-align: center;
            height: 35px;
        }
        </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <table align="center" cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style2" colspan="3">
                    高考成绩查询管理后台</td>
            </tr>
            <tr>
                <td class="style3">
                    用户名：</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style3">
                    密码：</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="style3">
                    验证码：</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                 </td>
            </tr>
            <tr>
                <td class="style5" colspan="3">
                    <asp:Button ID="Button1" runat="server" Text="登录" onclick="Button1_Click" />
&nbsp;&nbsp;
                    </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
