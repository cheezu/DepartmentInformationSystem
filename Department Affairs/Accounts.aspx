<%@ Page Title="" Language="C#" MasterPageFile="~/Department Affairs/DepartmentMaster.master" AutoEventWireup="true" CodeFile="Accounts.aspx.cs" Inherits="Department_Affairs_Accounts" %>

<asp:Content ContentPlaceHolderID="maincontent" runat="server">
    Here we will tell you about the accounts of the department.

    <asp:GridView ID="grid_accounts" runat="server" AutoGenerateColumns="False" DataKeyNames="tran_id" DataSourceID="sql_accounts" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True">

        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="tran_id" HeaderText="Transaction ID" ReadOnly="True" InsertVisible="False" SortExpression="tran_id"></asp:BoundField>
            <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount"></asp:BoundField>
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="description"></asp:BoundField>
            <asp:CommandField ShowEditButton="true" HeaderText="Edit?"/>
            <asp:CommandField ShowDeleteButton="true" HeaderText="Delete?" />
        </Columns>
        <EditRowStyle BackColor="#999999"></EditRowStyle>

        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
    </asp:GridView>

    <asp:SqlDataSource runat="server" ID="sql_accounts" ConnectionString='<%$ ConnectionStrings:DISConnectionString %>' SelectCommand="SELECT [tran_id], [amount], [description] FROM [Accounts]" DeleteCommand="DELETE FROM [Accounts] WHERE [tran_id] = @tran_id" InsertCommand="INSERT INTO [Accounts] ([amount], [description]) VALUES (@amount, @description)" UpdateCommand="UPDATE [Accounts] SET [amount] = @amount, [description] = @description WHERE [tran_id] = @tran_id">
        <DeleteParameters>
            <asp:Parameter Name="tran_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="amount" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="description" Type="String"></asp:Parameter>
        </InsertParameters>
    </asp:SqlDataSource>
<asp:Button ID="btn_newentry" runat="server" Text="Add New Entry" OnClick="btn_newentry_Click" UseSubmitBehavior="False" />
                    <asp:Label ID="lbl_status" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table>
            <tr>
                <td>
                    Amount:
                </td>
                <td>
                    <asp:TextBox ID="tb_amount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Description:
                </td>
                <td>
                    <asp:TextBox ID="tb_desc" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btn_submit" runat="server" Text="Submit" OnClick="btn_submit_Click" UseSubmitBehavior="False" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
