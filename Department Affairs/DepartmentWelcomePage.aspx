<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DepartmentWelcomePage.aspx.cs" Inherits="DepartmentWelcomePage" MasterPageFile="DepartmentMaster.master" %>

<asp:Content ContentPlaceHolderID="maincontent" ID="welcometext" runat="server">
    <asp:Label ID="deptwelcome_header" runat="server" Text="Our Department at a Glance:" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Font-Names="Segoe Script"></asp:Label>
    <br /><br />
    <asp:Label ID="moneyleft_title" runat="server" Text="Money left in our account:" Font-Names="Comic Sans MS" Font-Size="XX-Large"></asp:Label>
    &nbsp;<asp:Label ID="moneyleft_data" runat="server" Text="Label" Font-Names="Impact" Font-Size="XX-Large"></asp:Label>
    <br />
    <asp:Label ID="researchnumber_title" runat="server" Text="Research Projects Going On:" Font-Names="Comic Sans MS" Font-Size="XX-Large"></asp:Label>
    &nbsp;<asp:Label ID="researchnumber_data" runat="server" Text="Label" Font-Names="Impact" Font-Size="XX-Large"></asp:Label>
    <br />
    <asp:Label ID="studentnumber" runat="server" Text="Number of Students:" Font-Names="Comic Sans MS" Font-Size="XX-Large"></asp:Label>
    <asp:Label ID="studentnumber_data" runat="server" Text="Label" Font-Names="Impact" Font-Size="XX-Large"></asp:Label>
    <br />
    </asp:Content>