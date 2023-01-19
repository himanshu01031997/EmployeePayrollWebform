<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="signinaspx.aspx.cs" Inherits="EmployeePayroll.WebForms.signinaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/signin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div>
         <h2> &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SignIn
         </h2>
    </div>
    <div>
    <h3> &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;To Continue to Employee Payroll</h3>
    </div>
    <br />
    <div class="emailtab">
          <asp:TextBox ID="TextBox1"  type="text" runat="server" ToolTip="please enter email" name="email" placeholder="Email" BorderColor="Black"  ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" Display="Dynamic" 
              ForeColor="Red" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct Email" 
                    ControlToValidate="TextBox1" ForeColor="Red"
                    ValidationExpression="[a-z0-9A-Z]+[@]+[a-zA-Z]+[.][a-zA-Z]{2,3}"></asp:RegularExpressionValidator>

    </div>
    

    <div class="passwoedtab">
        <asp:TextBox ID="TextBox3"  type="text" runat="server" ToolTip="please enter password" name="Password" 
            placeholder="Password" BorderColor="Black" TextMode="Password"  ></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password Required" 
              Display="Dynamic" ForeColor="Red" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
   
        <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter the correct password"
                ValidationExpression="[a-zA-Z0-9]{8,}" ControlToValidate="TextBox3" ForeColor="Red"></asp:RegularExpressionValidator>
    </div>
        <div>
            &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server">Forgetpassword?</asp:LinkButton>

        </div>
        <br />
         <div>
            &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
             <br />
             <br />
        </div>
         <div>
             &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button1" runat="server" Text="Create account" OnClick="Button1_Click" />
             &nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="Button3" runat="server" Text="Login" OnClick="Button3_Click" />

            
        </div>

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    </div>
    
</asp:Content>
