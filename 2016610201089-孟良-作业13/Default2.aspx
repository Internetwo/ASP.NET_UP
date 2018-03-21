<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

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
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style2" style="font-size: xx-large">
                    <span lang="zh-cn" style="font-weight: 700; text-align: center">在线考试系统</span></td>
            </tr>
            <tr>
                <td bgcolor="#99CCFF">
                    一、单选题</td>
            </tr>
            <tr>
                <td>
                    ①当需要用控件控制输入性别（男、女）和选课类别（必修课、选修课）时，应使用的控件是：</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="A">A.RadioButton</asp:ListItem>
                        <asp:ListItem Value="B">B.RadioButtonList</asp:ListItem>
                        <asp:ListItem Value="C">C.CheckBox</asp:ListItem>
                        <asp:ListItem Value="D">D.CheckBoxList</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>
                    ②下面几个图形控件中，不能执行鼠标单击事件的控件是：</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="A">A.Image</asp:ListItem>
                        <asp:ListItem Value="B">B.ImageMap</asp:ListItem>
                        <asp:ListItem Value="C">C.ImageButton</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td bgcolor="#99CCFF">
                    二、多选题</td>
            </tr>
            <tr>
                <td>
                    ①能够在单机时转向其他页面的控件是：</td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="A">A.Button</asp:ListItem>
                        <asp:ListItem Value="B">B.LinkButton</asp:ListItem>
                        <asp:ListItem Value="C">C.HyperLink</asp:ListItem>
                        <asp:ListItem Value="D">D.ImageButton</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td>
                    ②能够实现站点导航的控件是：</td>
            </tr>
            <tr>
                <td>
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem Value="A">A.SiteMapPath</asp:ListItem>
                        <asp:ListItem Value="B">B.Menu</asp:ListItem>
                        <asp:ListItem Value="C">C.TreeView</asp:ListItem>
                        <asp:ListItem Value="D">D.HyperLink</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="交卷" onclick="Button1_Click" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="重置" onclick="Button2_Click" />
                &nbsp;
                    <asp:Button ID="Button3" runat="server" Enabled="False" onclick="Button3_Click" 
                        Text="查看答案" />
                &nbsp;
                    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="注销" 
                        ToolTip="双击注销！" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
