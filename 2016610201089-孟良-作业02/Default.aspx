<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-family: 楷体;
            text-align: center;
        }
        .style3
        {
            font-family: 宋体;
            font-weight: bold;
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="4">
                    <h1 class="style2">
                        <asp:Label ID="Label1" runat="server" Text="大小写字母转换器"></asp:Label>
                    </h1>
                </td>
            </tr>
            <tr>
                <td>
                    <p class="style3">
                        请输入小写字母：</p>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <p class="style3">
                        请输入大写字母：</p>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: right">
                    转换的大写字母为：</td>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td style="text-align: right">
                    转换的小写字母为：</td>
                <td>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" BackColor="#66CCFF" 
                        onclick="Button1_Click" onclientclick="return confirm(&quot;确定转换为大写字母吗？&quot;)" 
                        style="text-align: center" Text="转换" />
                </td>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button3" runat="server" BackColor="#99CCFF" 
                        onclick="Button3_Click" onclientclick="return confirm(&quot;确定转换为小写字母吗？&quot;)" 
                        Text="转换" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
