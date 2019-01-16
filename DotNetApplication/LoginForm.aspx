<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="DotNetApplication.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            align-items:center;
        }
        .auto-style2 {
            text-decoration: underline;
        }
        .auto-style3 {
            text-align: right;
            width: 310px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1" align="center">
                <tr>
                    <td colspan="2" style="text-align: center">
                        <h1 class="auto-style2"><em>Login Form</em></h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Username</td>
                    <td>
                        <asp:TextBox ID="txt_username" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_username" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td>
                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_password" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RegistationForm.aspx">Sign-Up</asp:LinkButton>
                    </td>
                    <td>
                        <asp:Button ID="btn_submit" runat="server" Text="Login" OnClick="btn_submit_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
