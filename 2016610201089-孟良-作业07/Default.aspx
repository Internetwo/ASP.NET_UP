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
            text-align: center;
            font-weight: bold;
            font-size: xx-large;
        }
        .style7
        {
            text-align: right;
            height: 85px;
        }
        .style8
        {
            text-align: left;
            height: 85px;
        }
        .style9
        {
            text-align: center;
            height: 42px;
        }
        .style10
        {
            text-align: right;
            height: 32px;
        }
        .style11
        {
            text-align: left;
            height: 32px;
        }
        .style12
        {
            text-align: right;
            height: 42px;
        }
        .style13
        {
            text-align: left;
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style2" colspan="2">
                    个人信息简表</td>
            </tr>
            <tr>
                <td class="style12">
                    姓名：</td>
                <td class="style13">
                    <asp:TextBox ID="TextBox1" runat="server" Width="80px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    性别：</td>
                <td class="style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>--请选择--</asp:ListItem>
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="80px" Width="80px" />
                </td>
            </tr>
            <tr>
                <td class="style10">
                    兴趣爱好：</td>
                <td class="style11">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="16px" 
                        RepeatDirection="Horizontal" Width="187px" 
                        onselectedindexchanged="CheckBoxList1_SelectedIndexChanged">
                        <asp:ListItem>读书</asp:ListItem>
                        <asp:ListItem>打球</asp:ListItem>
                        <asp:ListItem>看电影</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="style12">
                    个人学历：</td>
                <td class="style13">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>--请选择--</asp:ListItem>
                        <asp:ListItem>高中</asp:ListItem>
                        <asp:ListItem>大专</asp:ListItem>
                        <asp:ListItem>本科</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style9" colspan="2">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="确定" />
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="重置" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td rowspan="4">
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                    <asp:Image ID="Image2" runat="server" Height="80px" Width="80px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
