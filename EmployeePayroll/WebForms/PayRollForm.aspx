<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="PayRollForm.aspx.cs" Inherits="EmployeePayroll.WebForms.PayRollForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/PayRollForm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <form method="post">
            <div>
                <h3>Employee PayRoll Form</h3>
            </div>
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" Text="Name" ></asp:Label>
                <asp:TextBox  class="nametext" ID="TextBox1" type="text" runat="server" required="required" Width="380px" ToolTip="Please Enter Name"></asp:TextBox>
            </div>
            </br>
            <div  >
                <asp:Label ID="Label2" runat="server" Text="Profile Image"></asp:Label>
                <asp:RadioButtonList class="imagepart" ID="RadioButtonList1" runat="server" required="required" CellSpacing="1" RepeatDirection="Horizontal" Height="2px"  Width="2px"  RepeatLayout="Flow">
                    <asp:ListItem Value="../Asset/Ellipse -1.png"><img src="../Asset/Ellipse -1.png"  alt="img1"/></asp:ListItem>
                    <asp:ListItem Value="../Asset/Ellipse -2.png"><img src="../Asset/Ellipse -2.png" alt="img2" /></asp:ListItem>
                    <asp:ListItem Value="../Asset/Ellipse -3.png"><img src="../Asset/Ellipse -3.png" alt="img3" /></asp:ListItem>
                    <asp:ListItem Value="../Asset/Ellipse -4.png"><img src="../Asset/Ellipse -4.png" alt="img3" /></asp:ListItem>
                </asp:RadioButtonList>  
                </div>
             <br />
                <br />
               <div>
                   <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                   <asp:RadioButtonList  class="genderpart" ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" required="required" CellPadding="1" CellSpacing="1" RepeatLayout="Flow">
                       <asp:ListItem Text="Male" Value="Male" ></asp:ListItem>
                       <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                   </asp:RadioButtonList>
               </div>
                 <br />
                <div>
                    <asp:Label ID="Label4" runat="server" Text="Department" ></asp:Label>
                    <asp:CheckBoxList  class="departmentpart" ID="CheckBoxList1" runat="server" RepeatDirection="Horizontal" required="required" CellPadding="1" CellSpacing="1" RepeatLayout="Flow">
                        <asp:ListItem Text="HR" Value="HR"></asp:ListItem>
                        <asp:ListItem Text="Sales" Value="Sales"></asp:ListItem>
                        <asp:ListItem Text="Finance" Value="Finance"></asp:ListItem>
                        <asp:ListItem Text="Engineer" Value="Engineer"></asp:ListItem>
                        <asp:ListItem Text="Others" Value="Others"></asp:ListItem>
                    </asp:CheckBoxList>
                </div>
                <br />
                 <div>
                    <asp:Label ID="Label6" runat="server" Text="Salary"></asp:Label>
                    <asp:DropDownList class="salarypart" ID="DropDownList2"  runat="server" Width="160px"  RepeatLayout="Flow" placeholder="salary">
                          <asp:ListItem Text="10000" Value="10000"></asp:ListItem>
                          <asp:ListItem Text="20000" Value="20000"></asp:ListItem>
                          <asp:ListItem Text="15000" Value="15000"></asp:ListItem>
                          <asp:ListItem Text="20000" Value="20000"></asp:ListItem>
                          <asp:ListItem Text="25000" Value="25000"></asp:ListItem>
                          <asp:ListItem Text="30000" Value="30000"></asp:ListItem>
                          <asp:ListItem Text="35000" Value="35000"></asp:ListItem>
                          <asp:ListItem Text="40000" Value="40000"></asp:ListItem>
                          <asp:ListItem Text="45000" Value="45000"></asp:ListItem>
                          <asp:ListItem Text="50000" Value="50000"></asp:ListItem>

                    </asp:DropDownList>

                </div>
                <br />
                <br />
                <div>
                   <asp:Label ID="Label5" runat="server" Text="StartDate"></asp:Label>
                    <asp:DropDownList class="startpart" ID="DropDownList1"  runat="server" Width="80px"  RepeatLayout="Flow" >
                    </asp:DropDownList>
                    <asp:DropDownList  class="startpart" ID="DropDownList3"  runat="server" Width="80px"  RepeatLayout="Flow" 
                        OnSelectedIndexChange="dd1month_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:DropDownList class="startpart" ID="DropDownList4"  runat="server" Width="120px"  RepeatLayout="Flow" 
                        OnSelectedIndexChange="dd1year_SelectedIndexChanged">
                    </asp:DropDownList>

                </div>
                </br>
                </br>
                <div>
                    <asp:Label ID="Label7" runat="server" Text="Notes" RepeatLayout="Flow"></asp:Label>
                    <asp:TextBox class="notepart" ID="TextBox2" type="text" runat="server" Width="380px" Height="90px"></asp:TextBox>
                </div>
                </br>
                </br>
                <div>
                     <asp:Button ID="Button1" runat="server" Text="Cancel" />
                     <asp:Button class="submitbut" ID="Button3" runat="server" Text="Submit" OnClick="RadioButtonList1_SelectedIndexChanged" />
                     <asp:Button class="resetbut" ID="Button4" runat="server" Text="Reset" />
                     <br />
                     <br />
                     <br />
                </div>
            <div>
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>

            </div>
            </div>
        </form>
    </div>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ></asp:SqlDataSource>

</asp:Content>
