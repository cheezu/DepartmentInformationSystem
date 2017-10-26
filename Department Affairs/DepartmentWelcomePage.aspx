<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DepartmentWelcomePage.aspx.cs" Inherits="DepartmentWelcomePage" MasterPageFile="DepartmentMaster.master" %>

<asp:Content ContentPlaceHolderID="maincontent" ID="welcometext" runat="server">
    <asp:Label ID="deptwelcome_header" runat="server" Text="Our Department at a Glance:" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Names="Segoe Script"></asp:Label>
    <br /><br />
    <asp:Label ID="moneyleft_title" runat="server" Text="Money left in our account:" Font-Names="Comic Sans MS"></asp:Label>
    &nbsp;<asp:Label ID="moneyleft_data" runat="server" Text="Label" Font-Names="Impact"></asp:Label>
    <br />
    <asp:Label ID="researchnumber_title" runat="server" Text="Research Projects Going On:" Font-Names="Comic Sans MS"></asp:Label>
    &nbsp;<asp:Label ID="researchnumber_data" runat="server" Text="Label" Font-Names="Impact"></asp:Label>
    </asp:Content>