<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.master" AutoEventWireup="true" CodeFile="adminEmployee.aspx.cs" Inherits="adminEmployee" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <style>
        #GridViewContainer {
    max-width: 100%;
      margin-left: 10px;
    margin-bottom: 10px;
    height: 300px; /* Set a fixed height for the container */
}
        .btnEmployee {
            margin-left:10px;
        }

.gridview-pager {
    border: none !important; /* Remove border */
    margin-top: 10px; /* Add some margin between GridView and pagination */
}
        #GridViewContainer table {
            width: 97%;
            height: 80%;
            border-collapse: collapse;
        }

        #GridViewContainer th,
        #GridViewContainer td {
            padding: 8px;
            text-align: left;
        }

        #GridViewContainer th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        #heading {
            margin-left: 20px;
        }

        .gridview-pager {
            border: none !important; /* Remove border */
        }
        .gridview-pager a,
.gridview-pager a:hover {
    border: none !important;
}
        .gridview-pager tr {
            border: none !important;
             
        }
        /* Add this CSS rule to remove borders from pagination controls */
.gridview-pager,
.gridview-pager tr,
.gridview-pager a {
    border: none !important; /* Remove border */
}
        .gridview-pager a {
            display: inline-block; 
            padding: 5px 10px;
            margin: 0 5px; 
            color: #333; 
            text-decoration: none; 
            border: none; /* Remove border */
        }

        .gridview-pager a:hover {
            background-color: #f2f2f2; 
        }

        .gridview-pager .current {
            font-weight: bold;
        }
    </style>
                   
      <div id="heading">
                  <asp:Label ID="lblEmpId" runat="server" Text="Employee ID:"></asp:Label>
                    <asp:TextBox ID="txtEmpId" runat="server"></asp:TextBox>
             
                    <asp:Label ID="lblUserId" runat="server" Text="User ID:"></asp:Label>
                    <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
              
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
               
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
               <p />
                    <asp:Label ID="lblDob" runat="server" Text="Date of Birth:" ></asp:Label>
                    <asp:TextBox ID="txtDob" runat="server"></asp:TextBox>       
              
                    <asp:Label ID="lblContactNumber" runat="server" Text="Contact Number:"></asp:Label>
                    <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox></>
                
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
             <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
         
                   <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
               <p />
                   <asp:Label ID="lblDepartmentId" runat="server" Text="Department ID:"></asp:Label>
                   <asp:TextBox ID="txtDepartmentId" runat="server"></asp:TextBox>
           <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>
                    <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                        </asp:DropDownList>
             <asp:Button ID="btnSubmit" runat="server" Text="Add Employee" Class="btnEmployee" OnClick="btnSubmit_Click" />
            </div>
      
    <hr />

    <div id="GridViewContainer">
        <h2>Department Details</h2>
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="true"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="5" CellPadding="0"
    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting"
    OnRowCancelingEdit="GridView1_RowCancelingEdit" DataKeyNames="EmpId">
    <Columns>
        <asp:BoundField DataField="EmpId" HeaderText="Employee ID" />
        <asp:BoundField DataField="UserId" HeaderText="User ID" />
        <asp:BoundField DataField="FirstName" HeaderText="First Name" />
        <asp:BoundField DataField="LastName" HeaderText="Last Name" />
        <asp:BoundField DataField="Dob" HeaderText="Date of Birth" />
        <asp:BoundField DataField="Gender" HeaderText="Gender" />
        <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" />
        <asp:BoundField DataField="Email" HeaderText="Email" />
        <asp:BoundField DataField="Address" HeaderText="Address" />
        <asp:BoundField DataField="DepartmentId" HeaderText="Department ID" />
        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
         </div>
    
</asp:Content>
