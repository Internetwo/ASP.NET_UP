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
                <td style="text-align: center">
                    
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                        <asp:View ID="View1" runat="server">
                            <table align="center" cellpadding="0" cellspacing="0" class="style3">
                                <tr>
                                    <td class="style5">
                                        准考证号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RangeValidator 
                                            ID="RangeValidator5" runat="server" BorderStyle="None" 
                                            ControlToValidate="TextBox1" ErrorMessage="请输入有效数值！" Type="Double" 
                                            MaximumValue="9999999999999"></asp:RangeValidator></td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        身份证号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:RangeValidator 
                                            ID="RangeValidator6" runat="server" BorderStyle="None" 
                                            ControlToValidate="TextBox2" ErrorMessage="请输入有效数值！" Type="Double" 
                                            MaximumValue="999999999999999999"></asp:RangeValidator></td>
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
                            <asp:DropDownList ID="DropDownList1" runat="server">
                                <asp:ListItem>--请选择--</asp:ListItem>
                                <asp:ListItem>考号</asp:ListItem>
                                <asp:ListItem>身份证号</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                            <asp:Button ID="Button9" runat="server" Text="确定" onclick="Button9_Click" />
                            &nbsp;
                            <asp:Button ID="Button10" runat="server" onclick="Button10_Click" Text="显示全部" />
                           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" ForeColor="#333333" GridLines="None" Align="center" 
                                AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" 
                                onrowcancelingedit="GridView1_RowCancelingEdit" 
                                onrowediting="GridView1_RowEditing" PageSize="5" 
                                DataKeyNames="考号,身份证号,语文,数学,英语,综合,总分" onrowdeleting="GridView1_RowDeleting" 
                                onrowupdating="GridView1_RowUpdating">
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="考号" HeaderText="准考证号" ReadOnly="True" />
                            <asp:BoundField DataField="身份证号" HeaderText="身份证号" ReadOnly="True" />
                            <asp:BoundField DataField="语文" HeaderText="语文" />
                            <asp:BoundField DataField="数学" HeaderText="数学" />
                            <asp:BoundField DataField="英语" HeaderText="英语" />
                            <asp:BoundField DataField="综合" HeaderText="综合" />
                            <asp:BoundField DataField="总分" HeaderText="总分" ReadOnly="True" />
                            <asp:CommandField ShowEditButton="True" />
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                        CommandName="Delete" onclientclick="return confirm(&quot;确定删除吗？&quot;)" 
                                        Text="删除"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
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
