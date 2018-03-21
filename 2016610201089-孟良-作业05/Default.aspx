<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>小菜单</title>
    <style type="text/css">
        .style1 {
            width: 500px;
        }
        .style2
        {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center" align="center">
    <table class="style1" align="center">
    <tr>
        <td colspan="3">
            <asp:Label ID="Label1" runat="server" Text="预选菜单"></asp:Label>
        </td>
        <td colspan="3">
            <asp:Label ID="Label2" runat="server" Text="已选菜单"></asp:Label>
        </td>
     </tr>
    </table>
        <table class="style1" align="center">
            <tr>
                <td rowspan="4">
                    <asp:ListBox ID="ListBox1" runat="server" Height="200px" 
                        style="margin-left: 0px" Width="200px" SelectionMode="Multiple">
                        <asp:ListItem>青菜</asp:ListItem>
                        <asp:ListItem>萝卜</asp:ListItem>
                        <asp:ListItem>白菜</asp:ListItem>
                        <asp:ListItem>洋芋</asp:ListItem>
                        <asp:ListItem>鸡蛋</asp:ListItem>
                        <asp:ListItem>猪肉</asp:ListItem>
                        <asp:ListItem>牛肉</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="&gt;&gt;" onclick="Button1_Click" 
                        Width="50px" />
                </td>
                <td rowspan="4">
                    <asp:ListBox ID="ListBox2" runat="server" Height="200px" Width="200px" 
                        SelectionMode="Multiple">
                    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="&lt;&lt;" onclick="Button2_Click" 
                        Width="50px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="&gt;" onclick="Button3_Click" 
                        Width="50px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="&lt;" onclick="Button4_Click" 
                        Width="50px" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Button ID="Button5" runat="server" Text="上移" ToolTip="上菜顺序调整" 
                        onclick="Button5_Click" />
                    &nbsp
                    &nbsp
                    &nbsp
                    &nbsp
                    <asp:Button ID="Button6" runat="server" Text="下移" ToolTip="上菜顺序调整" 
                        onclick="Button6_Click" />
                    <br />
                    <p class="style2">
                        温馨提示：请勿在预选菜单及未选中情况下点击上移，下移，否则会报错呦~~</p>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>