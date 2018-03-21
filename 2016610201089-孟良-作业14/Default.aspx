<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>在线考试系统</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: xx-large;
            font-weight: bold;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style2">
                    在线考试系统</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    考号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator 
                        ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
                        ErrorMessage="请输入考号"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="登录" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
