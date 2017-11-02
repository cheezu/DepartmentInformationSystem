<%@ Page Title="" Language="C#" MasterPageFile="FullMaster.master" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="Department_Affairs_Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
    There was an error. Perform these tasks to fix the error:<br />
    <br />
&nbsp;

    <asp:scriptmanager ID="ScriptManager1" runat="server"></asp:scriptmanager>

    <!--Update panel for users to find out the current time-->

    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div style="background-color: lightyellow;padding: 20px">
                <asp:Label ID="lblTime" runat="server" Font-Bold="True"></asp:Label>
                <br />
                <br />
                <asp:Button ID="cmdRefreshTime" runat="server" Text="Click this button to show time." OnClick="cmdRefreshTime_Click" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />

    <!--Update panel for users to select branches they wish to see-->

    <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div style="background-color: lightblue;padding: 20px">
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>CSE</asp:ListItem>
                <asp:ListItem>EEE</asp:ListItem>
                <asp:ListItem>ECE</asp:ListItem>
                <asp:ListItem>ICE</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Panel ID="Panel1" runat="server" BackColor="#99FFCC" Width="1554px">
                    <asp:Label ID="Label1" runat="server" Font-Names="Cambria" Font-Size="XX-Large" Text="CONGRATULATIONS! YOU HAVE SELECTED THE BEST BRANCH!"></asp:Label>
                </asp:Panel>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />

    <!--Update panel for users to find out the details about seperate colleges-->

    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div style="background-color: lightgreen">

                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>MIT</asp:ListItem>
                    <asp:ListItem>IIT</asp:ListItem>
                    <asp:ListItem>NIT</asp:ListItem>
                </asp:RadioButtonList>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DISConnectionString %>" SelectCommand="SELECT * FROM [ajax] WHERE ([college] = @college)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="RadioButtonList1" Name="college" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                    <Fields>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="college" HeaderText="college" SortExpression="college" />
                        <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                    </Fields>
                </asp:DetailsView>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />

    <!--Update panel for users to cancel course registration-->

    <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div style="background-color:darkkhaki">
                <asp:CheckBoxList runat="server" ID="cb1" OnSelectedIndexChanged="cb1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>IT</asp:ListItem>
                    <asp:ListItem>DCC</asp:ListItem>
                    <asp:ListItem>EOM</asp:ListItem>
                </asp:CheckBoxList>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="True" Text="Label"></asp:Label>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />

    <!--Update panel for users to check if the textbox is filled-->

    <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div style="background-color:lightpink">

                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Label ID="Label5" runat="server" Text="Enter valid input(s)."></asp:Label>
                <br />
                <asp:Button ID="Button1" runat="server" Text="click me pls" Width="207px" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />

    <!--Update panel for users to view details about seperate colleges-->

    <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div style="background-color:aqua">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />

    <!--Update panel for users to increase the number of users registered-->

    <asp:UpdatePanel ID="UpdatePanel7" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div style="background-color:greenyellow">

                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Button ID="Button2" runat="server" Text="Click me!" PostBackUrl="~/Error.aspx" OnClick="Button2_Click" />
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />

    <!--Update panel for users to select the semester the batch of students are being registered to-->

    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
        <ContentTemplate>
            <div style="background-color:lavender">

                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>I</asp:ListItem>
                    <asp:ListItem>II</asp:ListItem>
                    <asp:ListItem>III</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

