<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sending mail from sms.aspx.cs" Inherits="Sending_Mail.Sending_mail_from_sms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 170px;
        }
        .auto-style3 {
            width: 170px;
            height: 10px;
        }
        .auto-style4 {
            height: 10px;
        }
        .auto-style6 {
            width: 346px;
        }
        .auto-style7 {
            height: 10px;
            width: 346px;
        }
        .auto-style8 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <strong><em>
            <marquee class="auto-style8"><asp:Label ID="Label2" runat="server" BackColor="Pink" BorderColor="Black" BorderWidth="1px" CssClass="auto-style5" Height="35px" Text="Register Here" Width="151px"></asp:Label></marquee>
                    </em></strong>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox1" runat="server" Width="179px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox2" runat="server" Width="177px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Mobile</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox3" runat="server" Width="178px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" BackColor="Pink" BorderColor="Black" BorderWidth="2px" OnClick="Button1_Click" Text="Send Mail" />
                </td>
                <td class="auto-style4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;&nbsp; Already have an account.&nbsp; Please&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Login</asp:LinkButton>
                    &nbsp; Here.</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
