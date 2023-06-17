<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mail.aspx.cs" Inherits="Sending_Mail.Mail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 202px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">From</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="205px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">To</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="204px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Subject</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Body</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="203px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="Pink" BorderColor="Black" BorderWidth="2px" OnClick="Button1_Click" Text="Sendig Mail" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
