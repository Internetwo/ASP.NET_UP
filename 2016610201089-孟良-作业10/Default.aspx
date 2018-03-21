<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <asp:Button ID="Button1" runat="server" Text="衣服" onclick="Button1_Click" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="裤子" onclick="Button2_Click" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="鞋子" onclick="Button3_Click" />
<br/>
        <asp:MultiView ID="MultiView1" runat="server" >
            <asp:View ID="View1" runat="server">
                <asp:Button ID="Button4" runat="server" Text="外套" />
                &nbsp;<asp:Button ID="Button5" runat="server" Text="T恤" />
                &nbsp;<asp:Button ID="Button6" runat="server" Text="棉衣" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:Button ID="Button7" runat="server" Text="长裤" />
                &nbsp;<asp:Button ID="Button8" runat="server" Text="五分裤" />
                &nbsp;<asp:Button ID="Button9" runat="server" Text="短裤" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:Button ID="Button10" runat="server" Text="跑鞋" />
                &nbsp;<asp:Button ID="Button11" runat="server" Text="皮鞋" />
                &nbsp;<asp:Button ID="Button12" runat="server" Text="休闲鞋" />
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
