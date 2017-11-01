<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateGradePage.aspx.cs" Inherits="UpdateCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">

    <asp:Label ID="Label1" runat="server" Text="Semester: "></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="111px">
    </asp:DropDownList>
    <br />
    <asp:Label ID="GPALbl" runat="server" Text="GPA:  0.0"></asp:Label>
    <br />
    <asp:Label ID="CGPALbl" runat="server" Text="CGPA: 0.0"></asp:Label>
    <br />
    <asp:GridView ID="SemesterCourseGrid" runat="server" AllowSorting="true" AutoGenerateColumns="false" DataSourceID="SemesterCourseSource">
        <Columns>
            <asp:BoundField DataField="CourseId" HeaderText="Subject Code" InsertVisible="False" ReadOnly="True" SortExpression="CourseId" />
            <asp:BoundField DataField="CourseName" HeaderText="Subject Name" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
            <asp:CommandField ShowEditButton="true" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SemesterCourseSource" runat="server" ConnectionString="<%$ ConnectionStrings:Department Information System Database (Shayna)Connection   String %>"
        SelectCommand="SELECT [CourseId], [CourseName], [Status], [Grade] FROM [DeptCourse] inner join [StudentDetails] ON [DeptCourse].Year = [StudentDetails].Year" />

</asp:Content>

