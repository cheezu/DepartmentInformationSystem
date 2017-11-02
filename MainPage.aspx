<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MainPage.aspx.cs" Inherits="MainPage"  MasterPageFile="FullMaster.master" %>

<asp:Content ContentPlaceHolderID="MainContent" ID="WelcomeText" runat="server">
    <asp:Label ID="WelcomeMsg" runat="server" Text="Welcome, User" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" Font-Names="Segoe Script"></asp:Label>
    <br />
<br />
Welcome to the University Information Management System.<br />
Here you may choose to view or make changes to the information pertained under student and department affairs.<br />
<br />
Please select any of the option under the navigation bar above to be redirected to the page you want.<br />   
    
</asp:Content>