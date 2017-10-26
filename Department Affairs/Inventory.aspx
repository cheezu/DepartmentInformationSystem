<%@ Page Title="" Language="C#" MasterPageFile="~/Department Affairs/DepartmentMaster.master" AutoEventWireup="true" CodeFile="Inventory.aspx.cs" Inherits="Department_Affairs_Inventory" %>

<asp:Content ContentPlaceHolderID="maincontent" runat="server" ID="inventorycontent">

    <asp:GridView ID="Grid_Inventory" runat="server" DataSourceID="Sql_Inventory" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="inv_id">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
        <EditRowStyle BackColor="#999999"></EditRowStyle>

        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#5D7B9D" Font-Bold="true" ForeColor="White" />
        <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
        <Columns>
            <asp:BoundField DataField="inv_id" HeaderText="ID" ReadOnly="true"/>
            <asp:TemplateField HeaderText="Description">
                <ItemTemplate>
                    <b>Item:</b><br />
                    <%# Eval("desc") %><br />
                    <b>Cost:</b><br />
                    <%# Eval("cost") %>
                </ItemTemplate>
                <EditItemTemplate>
                    <b>Item:</b><br />
                    <%# Eval("desc") %><br />
                    <b>Cost:</b><br />
                    <asp:TextBox Text='<%# Bind("cost") %>' runat="server" ID="txtCost" />
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="location" HeaderText="Location" />
            <asp:BoundField DataField="qty" HeaderText="Quantity" />
            <asp:CommandField ShowEditButton="true" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="Sql_Inventory" runat="server" ConnectionString="<%$ ConnectionStrings:DISConnectionString %>" SelectCommand="SELECT [inv_id], [desc], [location], [qty], [amount], [cost] FROM [Inventory]"
        UpdateCommand="UPDATE Inventory SET cost=@cost, location=@location, qty=@qty WHERE (inv_id=@inv_id)" DeleteCommand="DELETE FROM Inventory WHERE (inv_id = @inv_id)">
        <DeleteParameters>
            <asp:Parameter Name="inv_id" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="cost" />
            <asp:Parameter Name="location" />
            <asp:Parameter Name="qty" />
            <asp:Parameter Name="inv_id" />
        </UpdateParameters>
</asp:SqlDataSource>

<asp:Button ID="Button1" runat="server" Text="New Inventory" />

</asp:Content>
