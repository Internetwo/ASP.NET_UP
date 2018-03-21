<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width: 600px;
        }
        .style2
        {
            font-size: xx-large;
            font-weight: bold;
            font-family: 黑体;
        }
        .style3
        {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style2" colspan="2" style="text-align: center">
                    课程选择小工具</td>
            </tr>
            <tr>
                <td class="style3" style="text-align: right">
                    请选择学分：</td>
                <td class="style3" style="text-align: left">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" Width="131px">
                        <asp:ListItem>2学分</asp:ListItem>
                        <asp:ListItem>4学分</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style3" style="text-align: right">
                    请选择课程类型：</td>
                <td class="style3" style="text-align: left">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>必修课</asp:ListItem>
                        <asp:ListItem>选修课</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style3" style="text-align: right">
                    您的选择结果是：</td>
                <td class="style3" style="text-align: left">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确定" />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="重置" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
