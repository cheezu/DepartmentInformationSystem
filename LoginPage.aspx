<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>University Information Management Database</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>       
            <table>
                <tr>
                    <td>
                        <asp:Label ID="User" runat="server" Text="Username: "></asp:Label>
                    </td>  
                    <td>
                        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="checkUser" runat="server" ErrorMessage="Please enter Username" ControlToValidate="txtUser"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="PWD" runat="server" Text="Password: "></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPWD" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="checkPWD" runat="server" ErrorMessage="Please enter Password" ControlToValidate="txtPWD"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="LoginButton" runat="server" Text="Login" OnClick="LoginButton_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
