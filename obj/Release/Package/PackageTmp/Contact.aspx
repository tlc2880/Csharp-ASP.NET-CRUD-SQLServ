﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="asp.netcrud.Contact" %>

<!DOCTYPE html>

<!--
//  Name: Tommy Cao
//  Date: 04/17/15
//  Title: C# Asp.Net-Insert Update Delete and View With SQL Server Database
//  Description:  Implementation asp.net application with CRUD Create, Review, Update, and Delete with SQL server database using a stored procedure.
-->

<html xmlns="http://www.w3.org/1999/xhtml">
    <%--  --%>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HiddenField ID="hfContactID" runat="server" />
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Mobile"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtMobile" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Adddress"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Label ID="lblSuccessMessage" runat="server" Text="" ForeColor="Green"></asp:Label>
                </td>
                <tr>
                <td>
                    
                </td>
                <td colspan="2">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            </tr>
        </table>
        <br />
        <asp:GridView ID="gvContact" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkView" runat="server" CommandArgument='<%# Eval("ContactID") %>' OnClick="lnk_OnClick">View</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
