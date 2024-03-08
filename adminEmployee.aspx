<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="adminEmployee.aspx.cs" Inherits="adminEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style2" style="width: 121%">
        <tr>
            <td><div id="heading">
                  <asp:Label ID="lblEmpId" runat="server" Text="Employee ID:"></asp:Label>
                    <asp:TextBox ID="txtEmpId" runat="server"></asp:TextBox>
             
                    <asp:Label ID="lblUserId" runat="server" Text="User ID:"></asp:Label>
                    <asp:TextBox ID="txtUserId" runat="server"></asp:TextBox>
              
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
               <br />
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>

                    <asp:Label ID="lblDob" runat="server" Text="Date of Birth:" ></asp:Label>
                    <asp:TextBox ID="txtDob" runat="server"></asp:TextBox>       
              
                    <asp:Label ID="lblContactNumber" runat="server" Text="Contact Number:"></asp:Label>
                    <asp:TextBox ID="txtContactNumber" runat="server"></asp:TextBox>
                <br />
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
             <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
         
                   <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
              
                   <asp:Label ID="lblDepartmentId" runat="server" Text="Department ID:"></asp:Label>
                   <asp:TextBox ID="txtDepartmentId" runat="server"></asp:TextBox>
                <br />
           <asp:Label ID="lblGender" runat="server" Text="Gender:"></asp:Label>
                    <asp:DropDownList ID="ddlGender" runat="server">
                            <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                            <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                        </asp:DropDownList>
            
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click"  Text="Add Employee" />
            
            </div></td>
        </tr>
        <tr>
            <td > <div id="GridViewContainer" >
        <h2>Employee Details</h2>
             <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" AllowPaging="true"
    OnPageIndexChanging="OnPageIndexChanging" PageSize="5" CellPadding="0"
    OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting"
    OnRowCancelingEdit="GridView1_RowCancelingEdit" DataKeyNames="EmpId" >
   <Columns>
    <asp:BoundField DataField="EmpId" HeaderText="Employee ID" ItemStyle-Width="100px" ReadOnly="true" />
    <asp:BoundField DataField="UserId" HeaderText="User ID" ItemStyle-Width="100px"  ReadOnly="true" />
    <asp:BoundField DataField="FirstName" HeaderText="First Name" ItemStyle-Width="150px" />
    <asp:BoundField DataField="LastName" HeaderText="Last Name" ItemStyle-Width="150px" />
    <asp:BoundField DataField="Dob" HeaderText="Date of Birth" ItemStyle-Width="100px" />
    <asp:BoundField DataField="Gender" HeaderText="Gender" ItemStyle-Width="100px" />
    <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" ItemStyle-Width="150px" />
    <asp:BoundField DataField="Email" HeaderText="Email" ItemStyle-Width="200px" />
    <asp:BoundField DataField="Address" HeaderText="Address" ItemStyle-Width="200px" />
    <asp:BoundField DataField="DepartmentId" HeaderText="Department ID" ItemStyle-Width="100px" />
    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
</Columns>
</asp:GridView>
         </div></td>
        </tr>
    </table>
</asp:Content>

