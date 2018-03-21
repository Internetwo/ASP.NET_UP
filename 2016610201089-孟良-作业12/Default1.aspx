<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default1.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script src="./dateCalendar/WdatePicker.js"></script>
    <title>无标题页</title>
    <style type="text/css">
        .style1
        {
            width:100%;
        }
        .style2
        {
            text-align: left;
        }
        .style3
        {
            text-align: right;
        }
        .style4
        {
            text-align: left;
            width: 322px;
        }
        .style5
        {
            width: 322px;
        }
        .style6
        {
            text-align: right;
            height: 52px;
        }
        .style7
        {
            text-align: left;
            width: 322px;
            height: 52px;
        }
        .style8
        {
            height: 52px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td style="text-align: center">
                    &nbsp;</td>
                <td style="text-align: center">
                    注册用户</td>
                <td style="text-align: center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    用户名：</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="用户名不能为空"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    密码：</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" 
                        ValidationGroup="1"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="请设置密码"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    密码提示问题：</td>
                <td class="style4">
                    <asp:ListBox ID="ListBox1" runat="server">
                        <asp:ListItem>你的爱人？</asp:ListItem>
                        <asp:ListItem>你的出生地？</asp:ListItem>
                        <asp:ListItem>你小学的班级？</asp:ListItem>
                        <asp:ListItem>你童年的玩伴儿？</asp:ListItem>
                    </asp:ListBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    问题答案：</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    性别：</td>
                <td class="style4">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" AutoPostBack="True" 
                        onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem>女</asp:ListItem>
                        <asp:ListItem>男</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    用户角色：</td>
                <td class="style4">
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>管理员</asp:ListItem>
                        <asp:ListItem>买家</asp:ListItem>
                        <asp:ListItem>卖家</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    兴趣爱好：</td>
                <td class="style4">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>电子产品</asp:ListItem>
                        <asp:ListItem>体育</asp:ListItem>
                        <asp:ListItem>时尚</asp:ListItem>
                        <asp:ListItem>家居</asp:ListItem>
                        <asp:ListItem>读书</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    用户所在地：</td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownList4" runat="server">
                        <asp:ListItem>西藏</asp:ListItem>
                        <asp:ListItem>四川</asp:ListItem>
                        <asp:ListItem>重庆</asp:ListItem>
                        <asp:ListItem>贵州</asp:ListItem>
                        <asp:ListItem>广西</asp:ListItem>
                        <asp:ListItem>云南</asp:ListItem>
                    </asp:DropDownList>
                    省(自治区\直辖市)<asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>拉萨</asp:ListItem>
                        <asp:ListItem>成都</asp:ListItem>
                        <asp:ListItem>重庆</asp:ListItem>
                        <asp:ListItem>贵阳</asp:ListItem>
                        <asp:ListItem>桂林</asp:ListItem>
                        <asp:ListItem>昆明</asp:ListItem>
                    </asp:DropDownList>
                    市(地区)</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    您的性别头像：</td>
                <td class="style7">
                    <asp:ImageButton ID="Image1" runat="server" Height="52px" Width="52px" />
                </td>
                <td class="style8">
                    </td>
            </tr>
            <tr>
                <td class="style3">
                    出生时间：</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox8" runat="server" onclick="WdatePicker({el:this,dateFmt:'yyyy-MM-dd HH:mm:ss'})"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    移动电话：</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="请注意正确的电话格式" 
                        ValidationExpression="(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\(\d{3}\))|(\d{3}\-))?(1[358]\d{9})$)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    身份证号：</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="请注意正确的身份证格式" 
                        ValidationExpression="^(^[1-9]\d{7}((0[1-9])|(1[0-2]))(([1|2]\d)|([0][1-9])|3[0-1])\d{3}$)|(^[1-9]\d{5}[1-9]\d{3}((0[1-9])|(1[0-2]))(([1|2]\d)|([0][1-9])|3[0-1])((\d{4})|\d{3}[Xx])$)"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    邮箱：</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="请注意正确的电子邮件格式" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td style="text-align: center" class="style5">
                    <asp:Button ID="Button1" runat="server" Text="同意以下协议，提交" 
                        onclick="Button1_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
