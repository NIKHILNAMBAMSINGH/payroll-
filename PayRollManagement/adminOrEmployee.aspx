<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="adminOrEmployee.aspx.cs" Inherits="adminOrEmployee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .login-container {
            text-align: center;
            margin-top: 50px;
            background-color: #f8f9fa; 
            border: 2px solid #007bff; 
            border-radius: 10px; 
            padding: 40px; 
            width: 400px; 
            margin: 0 auto; 
        }
        .login-buttons {
            text-align: center;
            margin-top: 20px;
        }
        .login-buttons button {
            background-color: #007bff;
            border: 2px solid #007bff;
            color: white;
            padding: 25px 50px; 
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 24px; 
            margin: 20px 0; 
            cursor: pointer;
            border-radius: 10px; 
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .login-buttons button:hover {
            background-color: #0056b3; 
        }
        .login-type {
            font-size: 28px; 
            font-weight: bold; 
            color: black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <div class="login-container">
        <div class="login-type">
            LOGIN TYPE
        </div>
        <div class="login-buttons">
            <asp:Button ID="AdminLoginButton" runat="server" Text="Admin Login" CssClass="login-button" OnClick="AdminLoginButton_Click" style="width: 200px; height: 60px; background-color:#007bff; border-color: #007bff;color:white" />
            <br /> 
            <asp:Button ID="EmployeeLoginButton" runat="server" Text="Employee Login" CssClass="login-button" OnClick="EmployeeLoginButton_Click" style="margin-top: 30px; width: 200px; height: 60px; background-color: #007bff; border-color: #007bff;color:white" />
        </div>
    </div>

</asp:Content>
