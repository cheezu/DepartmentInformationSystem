<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CourseRegistrationPage.aspx.cs" Inherits="CourseRegistrationPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">

    <asp:Label ID="Label3" runat="server" Text="In the following, you may select the students' current semester and apply for the courses available in the same semester"></asp:Label>
    <br/><br/>
    <asp:Label ID="Label1" runat="server" Text="Semester: "></asp:Label>
    <asp:DropDownList ID="SemesterDdl" runat="server" OnSelectedIndexChanged="SemesterDdl_OnSelectedIndexChanged" AutoPostBack="true">
        <asp:ListItem>Select</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Course(s) Available:  "></asp:Label>
    <asp:CheckBoxList ID="CourseCbl" runat="server" AutoPostBack="true">
    </asp:CheckBoxList>

    <br/>
    <asp:Button ID="SubmitBtn" runat="server" Text="Submit" OnClick="SubmitBtn_Click" />
    <br/>


</asp:Content>

