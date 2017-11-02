<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="UpdateGradePage.aspx.cs" Inherits="UpdateCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">

    Semester:
    <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="111px" AutoPostBack="True">
        <asp:ListItem>1</asp:ListItem>
        <asp:ListItem>2</asp:ListItem>
        <asp:ListItem>3</asp:ListItem>
        <asp:ListItem>4</asp:ListItem>
        <asp:ListItem>5</asp:ListItem>
        <asp:ListItem>6</asp:ListItem>
        <asp:ListItem>7</asp:ListItem>
        <asp:ListItem>8</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="GPALbl" runat="server" Text="GPA:  0.0"></asp:Label>
    <br />
    <asp:Label ID="CGPALbl" runat="server" Text="CGPA: 0.0"></asp:Label>
    <br />
    <asp:GridView ID="SemesterCourseGrid" runat="server" AllowSorting="true" AutoGenerateColumns="false" DataSourceID="SemesterCourseSource" DataKeyNames="CourseRegId">
        <Columns>
            <asp:BoundField DataField="RegNo" HeaderText="RegNo" SortExpression="RegNo" ReadOnly="true"></asp:BoundField>
            <asp:BoundField DataField="CourseRegId" HeaderText="CourseRegId" SortExpression="CourseRegId" ReadOnly="true" InsertVisible="False"></asp:BoundField>
            <asp:BoundField DataField="CourseId" HeaderText="CourseId" SortExpression="CourseId" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="CourseName" HeaderText="CourseName" ReadOnly="True" SortExpression="CourseName"></asp:BoundField>
            <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade"></asp:BoundField>
            <asp:CommandField ShowEditButton="True"></asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SemesterCourseSource" runat="server"
        ConnectionString='<%$ ConnectionStrings:DISConnectionString %>'
        SelectCommand="SELECT CourseRegistration.CourseId, CourseRegistration.Grade, CourseList.CourseName, CourseRegistration.CourseRegId, CourseRegistration.RegNo FROM CourseRegistration INNER JOIN CourseList ON CourseRegistration.CourseId = CourseList.CourseId WHERE (CourseRegistration.RegNo = @RegNo) AND (CourseList.Semester = @Semester)"
        UpdateCommand="UPDATE CourseRegistration SET Grade = @Grade WHERE (CourseRegId = @CourseRegId)">
        <SelectParameters>
            <asp:QueryStringParameter QueryStringField="RegNo" Name="RegNo" Type="Int32"></asp:QueryStringParameter>
            <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Semester"></asp:ControlParameter>
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Grade"></asp:Parameter>
            <asp:Parameter Name="CourseRegId"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

