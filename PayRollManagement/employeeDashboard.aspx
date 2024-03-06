<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="employeeDashboard.aspx.cs" Inherits="employeeDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .menu-bar {
            text-align: center; 
            margin-top: 20px;
        }
        .menu-item {
            display: inline-block; 
            margin: 0 10px; 
        }
        .menu-item a {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s; 
        }
        .menu-item a:hover {
            background-color: #0056b3;
        }
        .user-info {
            text-align: right;
            margin-right: 20px;
            margin-top: 10px;
            color: #777;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="menu-bar">
        <div class="menu-item">
            <asp:HyperLink ID="EmployeesLink" runat="server" NavigateUrl="~/Employees.aspx">Employee</asp:HyperLink>
        </div>
        <div class="menu-item">
            <asp:HyperLink ID="LeaveLink" runat="server" NavigateUrl="~/Leave.aspx">Apply for Leave</asp:HyperLink>
        </div>
        <div class="menu-item">
            <asp:HyperLink ID="AttendanceLink" runat="server" NavigateUrl="~/Attendance.aspx">Attendance</asp:HyperLink>
        </div>
        <div class="menu-item">
            <asp:HyperLink ID="SalaryLink" runat="server" NavigateUrl="~/Salary.aspx">Salary</asp:HyperLink>
        </div>
        <div class="menu-item">
            <asp:HyperLink ID="LogoutLink" runat="server" NavigateUrl="~/adminOrEmployee.aspx">Logout</asp:HyperLink>
        </div>
    </div>
</asp:Content>
