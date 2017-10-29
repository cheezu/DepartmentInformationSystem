﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Department Affairs/DepartmentMaster.master" AutoEventWireup="true" CodeFile="AddInventory.aspx.cs" Inherits="Department_Affairs_AddInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    <asp:SqlDataSource ID="sql_insertinv" runat="server" ConnectionString='<%$ ConnectionStrings:DISConnectionString %>' InsertCommand="INSERT INTO Inventory (description, cost, qty, location) VALUES (@description, @cost, @qty, @location)"
        SelectCommand="SELECT * FROM Inventory">
        <InsertParameters>
            <asp:ControlParameter Name="description" ControlID="tb_desc" PropertyName="Text"></asp:ControlParameter>
            <asp:ControlParameter Name="cost" ControlID="tb_cost" PropertyName="Text"></asp:ControlParameter>
            <asp:ControlParameter Name="qty" ControlID="tb_qty" PropertyName="Text"></asp:ControlParameter>
            <asp:ControlParameter Name="location" ControlID="tb_loc" PropertyName="Text"></asp:ControlParameter>
        </InsertParameters>
    </asp:SqlDataSource>
    <br />
    <table>
        <tr>
            <td>
                Description:
            </td>
            <td>
                <asp:TextBox ID="tb_desc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Quantity:
            </td>
            <td>
                <asp:TextBox ID="tb_qty" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Location:
            </td>
            <td>
                <asp:TextBox ID="tb_loc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Cost:
            </td>
            <td>
                <asp:TextBox ID="tb_cost" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Insert" OnClick="InsertInv" />

    <asp:Label ID="SuccessLabel" runat="server" ForeColor="#009933" Text="Success!"></asp:Label>
    <asp:Label ID="FailLabel" runat="server" ForeColor="Red" Text="Failure. Try again."></asp:Label>

</asp:Content>

