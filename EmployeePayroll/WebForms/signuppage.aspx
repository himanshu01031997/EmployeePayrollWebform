<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="signuppage.aspx.cs" Inherits="EmployeePayroll.WebForms.signuppage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/signuppage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <div>
               <h3>   &nbsp;&nbsp&nbsp; &nbsp;&nbsp&nbsp; &nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Create an Account</h3>
        </div>
         <div>
                    <h5>  &nbsp;&nbsp&nbsp; &nbsp;&nbsp&nbsp; &nbsp;&nbsp&nbsp; &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp&nbsp;continue to employee payroll</h5>
        </div>
        <div>
                        <asp:TextBox ID="TextBox1" type="text" runat="server" placeholder="Firstname" required="required" ToolTip="please enter the firstname"></asp:TextBox>
                         &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="TextBox3" type="text" runat="server" placeholder="Lastname" required="required" ToolTip="please enter the lastname" style="margin-left: 40px"></asp:TextBox>
            <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="enter the valid firstname" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="[A-Z]{1}[a-zA-Z]{2,}" Display="Dynamic"></asp:RegularExpressionValidator>
                                     &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="enter the valid lastname" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[A-Z]{1}[a-zA-Z]{2,}" Display="Dynamic"></asp:RegularExpressionValidator>
        </div>
        <div>
            <asp:TextBox ID="TextBox2" type="text" runat="server" ToolTip="Enter Emailid" placeholder="Email" required="required" Width="410px"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="enter the correct email" Display="Dynamic" ControlToValidate="TextBox2" ForeColor="Red" ValidationExpression="[a-z0-9A-Z]+[@]+[a-zA-Z]+[.][a-zA-Z]{2,3}"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TextBox4" type="text" runat="server" ToolTip="Enter Phoneno" placeholder="phoneno" required="required" Width="410px"></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="enter the correct phoneno" Display="Dynamic" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="[7-9]{1}[0-9]{9}"></asp:RegularExpressionValidator>
        </div>
        <br />
        <div>
            <asp:TextBox ID="TextBox5" type="text" runat="server" ToolTip="Enter password" placeholder="password" required="required" TextMode="Password" ></asp:TextBox>
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" type="text" runat="server" ToolTip="confirm password" placeholder=" confirm password" required="required" style="margin-left: 47px" TextMode="Password" ></asp:TextBox>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="enter the correct password" Display="Dynamic" ControlToValidate="TextBox5"   ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{8,}"></asp:RegularExpressionValidator>
                                                 &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;
                                                 &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="confirm password" Display="Dynamic" ControlToValidate="TextBox6"   ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{8,}"></asp:RegularExpressionValidator>

        </div>
        <br />
        <div>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Show Password" />

        </div>
        <br />
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign in instead</asp:LinkButton> &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="sign up" style="margin-left: 145px" Width="111px" OnClick="Button1_Click" />
        </div>
        <div>
            <asp:Label ID="Label2" class="labelerror" ForeColor="Red" runat="server"></asp:Label>
        </div>
      
    </div>
  
    

</asp:Content>
