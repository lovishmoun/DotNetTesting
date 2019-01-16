<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DashBoard.aspx.cs" Inherits="DotNetApplication.DashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 642px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3" colspan="2">
                            <h1 class="auto-style4"><em>Dashboard</em></h1>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td style="text-align: right">
                            <strong><em>Hi! Welcome</em>&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Red" style="text-align: right"></asp:Label>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id" ForeColor="Black"  onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" OnRowCancelingEdit="GridView1_RowCancelingEdit" Width="100%">
                <Columns>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:Button ID="btn_update" runat="server" Text="Update" CommandName="Update"  ValidationGroup="r" />
                            <asp:Button ID="btn_cancel" runat="server" Text="Cancel" CommandName="Cancel" ValidationGroup="r"  />
                        </EditItemTemplate>              
                        <ItemTemplate>
                             <asp:Button ID="btn_edit" runat="server" Text="Edit" CommandName="Edit"  ValidationGroup="r" />
                            <asp:Button ID="btn_delete" runat="server" Text="Delete" CommandName="Delete" ValidationGroup="r"  />
                            </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lbl_id" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="First Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_fname" runat="server" Text='<%# Eval("fname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_fname" runat="server" Text='<%# Eval("fname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_lname" runat="server" Text='<%# Eval("lname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_lname" runat="server" Text='<%# Eval("lname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_email" runat="server" Text='<%# Eval("email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_email" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Mobile Number">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_number" runat="server" Text='<%# Eval("number") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_number" runat="server" Text='<%# Eval("number") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Birth">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_dob" runat="server" Text='<%# Eval("dob") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_dob" runat="server" Text='<%# Eval("dob") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Company Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_cname" runat="server" Text='<%# Eval("cname") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_cname" runat="server" Text='<%# Eval("cname") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="State">
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_state" runat="server" Text='<%# Eval("state") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="lbl_state" runat="server" Text='<%# Eval("state") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="Gray"  ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />        
            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">&nbsp;</td>
                        <td style="text-align: right"><strong><asp:Label ID="lblresult" runat="server"></asp:Label></strong></td>
                    </tr>
                </table>
            </div>

        </div>
    </form>
</body>
</html>
