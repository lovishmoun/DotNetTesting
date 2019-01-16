<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistationForm.aspx.cs" Inherits="DotNetApplication.RegistationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <link href="Calender/Calendar.css" rel="stylesheet" />
    <script src="Calender/Calendar.js"></script>
    <style type="text/css">

        .auto-style1 {
            width: 70%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-decoration: underline;
        }
        .auto-style4 {
            text-align: right;
            width: 398px;
        }
        .auto-style5 {
            width: 398px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style2" colspan="2">
                        <h1 class="auto-style3"><em>Registration Form</em></h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">First Name</td>
                    <td>
                        <asp:TextBox ID="txt_fname" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_fname" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Last Name</td>
                    <td>
                        <asp:TextBox ID="txt_lname" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_lname" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Password</td>
                    <td>
                        <asp:TextBox ID="txt_password" runat="server" TextMode="Password"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_password" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Confirm Password</td>
                    <td>
                        <asp:TextBox ID="txt_cpassword" runat="server" TextMode="Password"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_lname" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="r"></asp:RequiredFieldValidator>
                        &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Confirm Password and Password not Match" ForeColor="Red" SetFocusOnError="True" ValidationGroup="r" ControlToCompare="txt_password" ControlToValidate="txt_cpassword"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Email-ID</td>
                    <td>
                        <asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="r"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" Display="Dynamic" ErrorMessage="Enter Valid Email " ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Mobile Number</td>
                    <td>
                        <asp:TextBox ID="txt_number" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_number" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="r"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txt_number" Display="Dynamic" ErrorMessage="Enter Valid Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Date of Birth</td>
                    <td>
                        <asp:TextBox ID="txt_dob" runat="server"></asp:TextBox>&nbsp;
                        <a onclick="showCalendarControl(txt_dob)" href="#"><img src="Calender/calendar.gif" style="width: 20px; height: 20px" border=0 /></a>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txt_dob" Display="Dynamic" ErrorMessage="Enter DOB in mm/dd/yyyy" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[0-9]{2}[-|\/]{1}[0-9]{2}[-|\/]{1}[0-9]{4}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Company Name</td>
                    <td>
                        <asp:TextBox ID="txt_cname" runat="server"></asp:TextBox>
                    &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">State</td>
                    <td>
                        <asp:DropDownList ID="ddl_state" runat="server">
                            <asp:ListItem Value="0">----Select-----</asp:ListItem>
                            <asp:ListItem Value="1">Uttar Pradesh</asp:ListItem>
                            <asp:ListItem Value="2">Delhi</asp:ListItem>
                            <asp:ListItem Value="3">Haryana</asp:ListItem>
                            <asp:ListItem Value="4">Jammu and Kashmir</asp:ListItem>
                            <asp:ListItem Value="5">Punjab</asp:ListItem>
                            <asp:ListItem Value="6">Himachal Pradesh</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddl_state" Display="Dynamic" ErrorMessage="*" ForeColor="Red" InitialValue="0" SetFocusOnError="True" ValidationGroup="r"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" />
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
