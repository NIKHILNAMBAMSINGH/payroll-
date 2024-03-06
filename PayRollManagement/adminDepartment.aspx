<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="adminDepartment.aspx.cs" Inherits="adminDepartment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        #GridViewContainer {
            max-width: 100%;
            overflow-x: auto;
            margin-left:10px;
        }

        #GridViewContainer table {
            width: 97%;
            height: 80%;
            border-collapse: collapse;
        }

        #GridViewContainer th,
        #GridViewContainer td {
            padding: 8px;
            border: 1px solid #ddd;
            text-align: left;
        }

        #GridViewContainer th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        #heading {
            margin-left:20px;
        }
    </style>

    <div id="heading">
        <asp:Label ID="lblDeptId" runat="server" Text="Department ID:"></asp:Label>
        <asp:TextBox ID="txtDeptId" runat="server" Width="126px"></asp:TextBox>
        <asp:Label ID="lblDeptName" runat="server" Text="Department Name:"></asp:Label>
        <asp:TextBox ID="txtDeptName" runat="server"></asp:TextBox>
        <asp:Button ID="btnAddDepartment" runat="server" Text="Add Department" OnClick="btnAddDepartment_Click" />
    </div>

    <hr />

    <div id="GridViewContainer">
        <h2>Department Details</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="deptId" HeaderText="Department ID" SortExpression="deptId" />
                <asp:BoundField DataField="deptName" HeaderText="Department Name" SortExpression="deptName" />
                <asp:BoundField DataField="addedDate" HeaderText="Added Date" SortExpression="addedDate" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
