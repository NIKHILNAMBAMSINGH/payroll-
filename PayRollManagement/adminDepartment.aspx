<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="adminDepartment.aspx.cs" Inherits="adminDepartment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        /* Container for input elements */
        #inputTable {
            width: 30%; /* Adjusted the width to 30% */
            margin-left: 20px;
            margin-bottom: 20px;
            float: left; /* Float the input table to the left */
        }

        /* Styling for form labels */
        #inputTable label {
            display: inline-block;
            width: 120px; /* Set a fixed width for labels */
            font-weight: bold;
        }

        /* Styling for form input fields */
        #inputTable input[type="text"] {
            width: calc(100% - 130px); /* Adjusted the width of textboxes */
            padding: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        /* Styling for form buttons */
        #inputTable input[type="button"] {
            padding: 8px 15px;
            margin-right: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #inputTable input[type="button"]:last-child {
            margin-right: 0; /* Remove margin-right for the last button */
        }

        /* Styling for the container of the GridView */
        #GridViewContainer {
            max-width: 100%;
            margin-left: 10px;
            margin-bottom: 10px;
            height: 300px; /* Set a fixed height for the container */
            float: left; /* Float the container to the left */
        }

        /* Styling for the GridView */
        #GridViewContainer table {
            width: 97%;
            height: 80%;
            border-collapse: collapse;
        }

        #GridViewContainer th,
        #GridViewContainer td {
            padding: 8px;
            text-align: left;
            border: 1px solid #ddd; /* Add border for cells */
        }

        #GridViewContainer th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        /* Styling for pagination */
        .gridview-pager {
            border: none !important; /* Remove border */
            margin-top: 10px; /* Add some margin between GridView and pagination */
        }

        .gridview-pager a {
            display: inline-block;
            padding: 5px 10px;
            margin: 0 5px;
            color: #333;
            text-decoration: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fff;
            transition: background-color 0.3s;
        }

        .gridview-pager a:hover {
            background-color: #f2f2f2;
        }

        .gridview-pager .current {
            font-weight: bold;
        }
    </style>

    <div id="inputTable">
        <label for="txtDeptId">Department ID:</label>
        <asp:TextBox ID="txtDeptId" runat="server" Width="100px"></asp:TextBox><br />
        <label for="txtDeptName">Department Name:</label>
        <asp:TextBox ID="txtDeptName" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnAddDepartment" runat="server" Text="Add Department" OnClick="btnAddDepartment_Click" />
        <asp:Button ID="btnResetDepartment" runat="server" Text="Reset" OnClick="btnResetDepartment_Click" />
    </div>

    <hr />

    <div id="GridViewContainer">
        <h2>Department Details</h2>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="true"
            OnPageIndexChanging="OnPageIndexChanging" PageSize="5" CellPadding="0"
            OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting"
            OnRowCancelingEdit="GridView1_RowCancelingEdit" DataKeyNames="deptId">
            <Columns>
                <asp:BoundField DataField="deptId" HeaderText="Department ID" SortExpression="deptId" />
                <asp:BoundField DataField="deptName" HeaderText="Department Name" SortExpression="deptName" />
                <asp:BoundField DataField="addedDate" HeaderText="Added Date" SortExpression="addedDate" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            </Columns>
            <PagerSettings FirstPageText="1" NextPageText="Next" PreviousPageText="Previous" />
            <PagerStyle Height="0px" CssClass="gridview-pager" />
        </asp:GridView>
    </div>
</asp:Content>
