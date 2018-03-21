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
            height: 4px;
            font-family: 黑体;
            font-weight: bold;
            font-size: xx-large;
            text-align: center;
        }
        .style5
        {
            text-align: right;
        }
        .style6
        {
            text-align: right;
            height: 35px;
        }
        .style7
        {
            text-align: left;
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" cellpadding="0" cellspacing="0" class="style1">
            <tr>
                <td class="style2" colspan="2">
                    高考成绩查询</td>
            </tr>
            <tr>
                <td class="style6">
                    考号：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="考号有误，请核实！"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    身份证号：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                <td class="style7">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="身份证号有误，请核实！"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Button ID="Button1" runat="server" Text="查询" onclick="Button1_Click" />
&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="重置" onclick="Button2_Click" />
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
