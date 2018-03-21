<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-family: 黑体;
            text-align: center;
        }
        .style3
        {
            width: 500px;
        }
        .style4
        {
            height: 24px;
            text-align: center;
        }
        .style5
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td>
                    <h1 class="style2">
                        管理界面</h1>
                </td>
            </tr>
            <tr>
                <td style="text-align: center" valign="top">
                    <asp:Button ID="Button1" runat="server" BorderStyle="None" Text="添加信息" 
                        onclick="Button1_Click" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" BorderStyle="None" Text="查询管理" 
                        onclick="Button2_Click" />
&nbsp;
                    <asp:Button ID="Button3" runat="server" BorderStyle="None" Text="修改密码" 
                        onclick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                            <table align="center" cellpadding="0" cellspacing="0" class="style3">
                                <tr>
                                    <td class="style5">
                                        准考证号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RangeValidator 
                                            ID="RangeValidator5" runat="server" BorderStyle="None" 
                                            ControlToValidate="TextBox1" ErrorMessage="请输入有效数值！" Type="Double"></asp:RangeValidator></td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        身份证号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:RangeValidator 
                                            ID="RangeValidator6" runat="server" BorderStyle="None" 
                                            ControlToValidate="TextBox2" ErrorMessage="请输入有效数值！" Type="Double"></asp:RangeValidator></td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        语&nbsp;&nbsp;&nbsp; 文：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><asp:RangeValidator 
                                            ID="RangeValidator1" runat="server" BorderStyle="None" 
                                            ControlToValidate="TextBox3" ErrorMessage="请输入有效成绩！" MaximumValue="150" 
                                            MinimumValue="0" Type="Double"></asp:RangeValidator></td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        数&nbsp;&nbsp;&nbsp; 学：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><asp:RangeValidator 
                                            ID="RangeValidator2" runat="server" BorderStyle="None" 
                                            ControlToValidate="TextBox4" ErrorMessage="请输入有效成绩！" MaximumValue="150" 
                                            MinimumValue="0" Type="Double"></asp:RangeValidator></td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        英&nbsp;&nbsp;&nbsp; 语：<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><asp:RangeValidator 
                                            ID="RangeValidator3" runat="server" BorderStyle="None" 
                                            ControlToValidate="TextBox5" ErrorMessage="请输入有效成绩！" MaximumValue="150" 
                                            MinimumValue="0" Type="Double"></asp:RangeValidator></td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        综&nbsp;&nbsp;&nbsp; 合：<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><asp:RangeValidator 
                                            ID="RangeValidator4" runat="server" BorderStyle="None" 
                                            ControlToValidate="TextBox6" ErrorMessage="请输入有效成绩！" MaximumValue="300" 
                                            MinimumValue="0" Type="Double"></asp:RangeValidator></td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        总&nbsp;&nbsp;&nbsp; 分：<asp:TextBox ID="TextBox7" runat="server" ReadOnly="True"></asp:TextBox><asp:Button 
                                            ID="Button6" runat="server" onclick="Button6_Click" Text="计算总分" Width="126px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="确定" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="Button5" runat="server" Text="重置" onclick="Button5_Click" />
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <table align="center" cellpadding="0" cellspacing="0" class="style3">
                                <tr>
                                    <td class="style5">
                                        原始密码：<asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        修改密码：<asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        确认密码：<asp:TextBox ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <td class="style5">
                                        <asp:Button ID="Button7" runat="server" Text="确定" onclick="Button7_Click" />
                                        &nbsp;&nbsp;
                                        <asp:Button ID="Button8" runat="server" Text="重置" onclick="Button8_Click" />
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
