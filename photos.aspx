<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="photos.aspx.cs" Inherits="Sending_Mail.photos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 29px;
        }
        .auto-style3 {
            width: 202px;
        }
        .auto-style4 {
            height: 29px;
            width: 202px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Enter Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Enter Image</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="165px" />
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                         <Columns>

                       <asp:BoundField DataField="Name" HeaderText="Name" />

                         <asp:TemplateField HeaderText="Image">

                            <ItemTemplate>
                                <asp:Image ID="Img" runat="server" ImageUrl='<%# Eval("Image") %>' Height="200px" Width="200px" />
                            </ItemTemplate>
                         </asp:TemplateField> 


                     </Columns>
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
