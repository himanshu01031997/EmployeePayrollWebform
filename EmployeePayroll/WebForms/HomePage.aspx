<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayroll.WebForms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/HomePage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div>
            <h3>Employee Details</h3>
        </div>
        <div>
                        <asp:Button ID="Button1" runat="server" Text="Add User" />
        </div>
        </br>
        <div>
             <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                 <AlternatingRowStyle BackColor="#DCDCDC" />
                 <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                 <HeaderStyle BackColor="#000084" Font-Bold="true" ForeColor="White" />
                 <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                 <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                 <SelectedRowStyle BackColor="#008ABC" Font-Bold="true" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#0000A9" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#000065" />
             </asp:GridView >
        </div>
        <div>
            <asp:ListView ID="ListView1" runat="server">

            </asp:ListView>
        </div>



    </div>

</asp:Content>
