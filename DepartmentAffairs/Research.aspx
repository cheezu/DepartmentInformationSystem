<%@ Page Title="" Language="C#" MasterPageFile="DepartmentMaster.master" AutoEventWireup="true" CodeFile="Research.aspx.cs" Inherits="Department_Affairs_Research" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="maincontent" runat="server">
    <asp:DetailsView ID="det_Research" runat="server" Height="50px" Width="766px" AllowPaging="True" DataSourceID="sql_Research" AutoGenerateRows="false" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="research_id">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True"></CommandRowStyle>

        <EditRowStyle BackColor="#999999"></EditRowStyle>

        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True"></FieldHeaderStyle>

        <Fields>
            <asp:BoundField DataField="research_id" HeaderText="ID" ReadOnly="true" InsertVisible="False" />
            <asp:BoundField DataField="description" HeaderText="Description" />
            <asp:BoundField DataField="author" HeaderText="Author" />
            <asp:BoundField DataField="start_date" HeaderText="Start Date" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" ShowDeleteButton="true" />
        </Fields>

        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
    </asp:DetailsView>


    <asp:SqlDataSource ID="sql_Research" runat="server" ConnectionString='<%$ ConnectionStrings:DISConnectionString %>'
        InsertCommand="INSERT INTO Research(description, author, start_date) VALUES (@description, @author, @start_date)"
        SelectCommand="SELECT research_id, description, author, start_date FROM Research ORDER BY research_id"
        UpdateCommand="UPDATE Research SET description = @description, author = @author, start_date = @start_date WHERE (research_id = @research_id)"
        DeleteCommand="DELETE FROM Research WHERE (research_id = @research_id)">
        <DeleteParameters>
            <asp:Parameter Name="research_id"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="description"></asp:Parameter>
            <asp:Parameter Name="author"></asp:Parameter>
            <asp:Parameter Name="start_date"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="description"></asp:Parameter>
            <asp:Parameter Name="author"></asp:Parameter>
            <asp:Parameter Name="start_date"></asp:Parameter>
            <asp:Parameter Name="research_id"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
