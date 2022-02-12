<%@ Page Title="MyPortal" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyPortal.aspx.cs" Inherits="MyPortal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #portal
        {
            background-color:#ff4b64;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:Label ID="lb_box" runat="server" Text="Label"></asp:Label>
</asp:Content>

