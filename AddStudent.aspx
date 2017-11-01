<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddStudent.aspx.cs" Inherits="AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <asp:SqlDataSource ID="StudentListSource" runat="server" ConnectionString='<%$ ConnectionStrings:Department Information System Database (Shayna)ConnectionString %>' InsertCommand="INSERT INTO StudentDetails (Name, Section, Year, CGPA, DepartmentId, DepartmentName) VALUES (@Name, @Section, @Year, @CGPA, @DepartmentId, @DepartmentName)"
        SelectCommand="SELECT * FROM Inventory">
        <InsertParameters>
            <asp:ControlParameter Name="Name" ControlID="txtName" PropertyName="Text"></asp:ControlParameter>
            <asp:ControlParameter Name="Section" ControlID="txtSection" PropertyName="Text"></asp:ControlParameter>
            <asp:ControlParameter Name="Year" ControlID="txtYear" PropertyName="Text"></asp:ControlParameter>
            <asp:ControlParameter Name="CGPA" ControlID="txtCGPA" PropertyName="Text"></asp:ControlParameter>
            <asp:ControlParameter Name="DepartmentId" ControlID="txtDeptId" PropertyName="Text"></asp:ControlParameter>
            <asp:ControlParameter Name="DepartmentName" ControlID="txtDeptName" PropertyName="Text"></asp:ControlParameter>
        </InsertParameters>
    </asp:SqlDataSource>
    
    <asp:Label ID="SuccessLabel" runat="server" ForeColor="#009933" Text="You have entered a new student successfully"></asp:Label>
    <asp:Label ID="FailLabel" runat="server" ForeColor="Red" Text="Error. Please try again."></asp:Label>
    <br/><br/>
    <table>
        <tr>
            <td style="height: 22px; width: 135px">
                <asp:Label ID="Name" runat="server" Text="Student Name: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 135px">
                <asp:Label ID="Section" runat="server" Text="Section: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSection" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 135px">
                <asp:Label ID="Year" runat="server" Text="Year: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 135px">
                <asp:Label ID="CGPA" runat="server" Text="CGPA: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCGPA" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 135px">
                <asp:Label ID="DepartmentId" runat="server" Text="Department ID: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDeptId" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 135px">
                <asp:Label ID="DepartmentName" runat="server" Text="Department Name: "></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDeptName" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="InsertBtn" runat="server" Text="Insert" OnClick="InsertStudent" Height="26px" />

</asp:Content>

