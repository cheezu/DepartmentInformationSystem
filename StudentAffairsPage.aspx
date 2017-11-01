<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StudentAffairsPage.aspx.cs" Inherits="StudentAffairsPage" MasterPageFile="MasterPage.master" %>

<asp:Content ContentPlaceHolderID="MainContent" ID="StudentList" runat="server">


    <p>
        <asp:GridView ID="StudentListGrid" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="StudentListSource" DataKeyNames="RegNo"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" >
            <Columns>
                <asp:BoundField DataField="RegNo" HeaderText="RegNo" InsertVisible="False" ReadOnly="True" SortExpression="RegNo" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ReadOnly="True" />
                <asp:BoundField DataField="Section" HeaderText="Section" SortExpression="Section" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="CGPA" HeaderText="CGPA" SortExpression="CGPA" />
                <asp:CommandField ShowEditButton="true" />
                <asp:CommandField ShowDeleteButton="true" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="StudentListSource" runat="server" ConnectionString="<%$ ConnectionStrings:Department Information System Database (Shayna)ConnectionString %>"
            SelectCommand="SELECT [RegNo], [Name], [Section], [Year], [CGPA] FROM [StudentDetails]"
            UpdateCommand="UPDATE StudentDetails SET Section = @Section, Year = @Year, CGPA = @CGPA WHERE (RegNo = @RegNo)"
            DeleteCommand="DELETE FROM StudentDetails WHERE (RegNo = @RegNo)" 
            InsertCommand="INSERT INTO StudentDetails(Name, Section, Year, CGPA, DepartmentId, DepartmentName) VALUES (, @Name, @Section, @Year, CGPA, @DepartmentId, @DepartmentName)">
            <DeleteParameters>
                <asp:Parameter Name="RegNo"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name"></asp:Parameter>
                <asp:Parameter Name="Section"></asp:Parameter>
                <asp:Parameter Name="Year"></asp:Parameter>
                <asp:Parameter Name="DepartmentId"></asp:Parameter>
                <asp:Parameter Name="DepartmentName"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Section"></asp:Parameter>
                <asp:Parameter Name="Year"></asp:Parameter>
                <asp:Parameter Name="CGPA"></asp:Parameter>
                <asp:Parameter Name="DepartmentId"></asp:Parameter>
                <asp:Parameter Name="DepartmentName"></asp:Parameter>
                <asp:Parameter Name="RegNo"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="NewStudentBtn" runat="server" Text="Insert" PostBackUrl="~/AddStudent.aspx" />
    </p>


</asp:Content>
