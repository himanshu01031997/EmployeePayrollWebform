<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="EmployeePayroll.WebForms.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/HomePage.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div>
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee Details</h1>
            <asp:Button ID="Button7" runat="server" Text="Add User" OnClick="Button1_Click" BackColor="#66FF33" BorderColor="Black" BorderStyle="Solid" ForeColor="Black" Height="43px" style="margin-left: 1010px" Width="200px" />
        </div>
        </br>
       
        <div class="table2">
            <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px"
                CellPadding="3" GridLines="Vertical" HorizontalAlign="Center" AutoGenerateColumns="False" Width="1155px"
                DataSourceID="SqlDataSource1" AllowPaging="True"  DataKeyNames="ID" OnRowDeleting="GridView2_RowDeleting"     >
                <AlternatingRowStyle BackColor="#FFFFFF" />
                <Columns>
                    <asp:TemplateField HeaderText="image" SortExpression="image">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("image") %>'/>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" /> 
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" /> 
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" /> 
                    <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" /> 
                    <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" /> 
                    <asp:BoundField DataField="Startdate" HeaderText="Startdate" SortExpression="Startdate" /> 
                    <%--<asp:CommandField ButtonType="Image" DeleteImageUrl="../Asset/icons/delete-black-18dp.svg "
   EditImageUrl="../Asset/icons/update-black-18dp.svg" HeaderText="ACTIONS" UpdateImageUrl="../Asset/icons/update-black-18dp.svg"
                        ShowDeleteButton="true" ShowEditButton="true" />--%>
                    <asp:CommandField ButtonType="Image" CancelImageUrl="../Asset/icons/cancel.png"
                    DeleteImageUrl="../Asset/icons/delete-black-18dp.svg" EditImageUrl="../Asset/icons/update-black-18dp.svg"
                    HeaderText="ACTIONS" ShowDeleteButton="True" ShowEditButton="True"  UpdateImageUrl="../Asset/icons/update-black-18dp.svg" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#42515F" Font-Bold="true" ForeColor="White" Height="60px" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFFFF" ForeColor="Black" Height="58PX" />
                 <SelectedRowStyle BackColor="#008ABC" Font-Bold="true" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F1F1F1" />
                 <SortedAscendingHeaderStyle BackColor="#0000A9" />
                 <SortedDescendingCellStyle BackColor="#CAC9C9" />
                 <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeePayrollDBConnectionString2 %>" 
                        SelectCommand="SELECT [id],[Name],[Gender],[Department],[salary],[Notes], [image],[Startdate] from [EmployeePayrollTable]"
                        ConflictDetection="CompareAllValues"
                        DeleteCommand="DELETE FROM [EmployeePayrollTable] WHERE [id] = @original_ID AND [image] = @original_img AND 
                        [Name] = @original_name AND [Gender] = @original_gender AND 
                        [Department] = @original_Department AND [salary] = @original_salary AND [Startdate] = @original_startdate AND 
                        [notes]=@original_notes"
                        OldValuesParameterFormatString="original_{0}"
                        UpdateCommand="UPDATE [EmployeePayrollTable] SET [Name] = @Name, [Gender] = @Gender, [Department] = @Department,
                        [salary] = @salary,  [notes] = @notes, [image] = @image,[Startdate] = @StartDate WHERE [id] = @original_id">
                        
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Gender" Type="String" />
                            <asp:Parameter Name="Department" Type="String" />
                            <asp:Parameter Name="salary" Type="String" />
                            <asp:Parameter Name="notes" Type="String" />
                            <asp:Parameter Name="image" Type="String" />
                            <asp:Parameter Name="Startdate" Type="String" />
                            <asp:Parameter Name="original_id" Type="Int32" />


                          <%--  <asp:Parameter Name="original_id" Type="Int32" />
                            <asp:Parameter Name="original_img" Type="String" />
                            <asp:Parameter Name="original_name" Type="String" />
                            <asp:Parameter Name="original_gender" Type="String" />
                            <asp:Parameter Name="original_Department" Type="String" />
                            <asp:Parameter Name="original_salary" Type="String" />
                            <asp:Parameter Name="original_startdate" Type="String" />
                            <asp:Parameter Name="original_notes" Type="String" />--%>
                        </UpdateParameters>
                        <DeleteParameters>
                            <asp:Parameter Name="original_id" Type="Int32" />
                            <asp:Parameter Name="original_img" Type="String" />
                            <asp:Parameter Name="original_name" Type="String" />
                            <asp:Parameter Name="original_gender" Type="String" />
                            <asp:Parameter Name="original_Department" Type="String" />
                            <asp:Parameter Name="original_salary" Type="String" />
                            <asp:Parameter Name="original_startdate" Type="String" />
                            <asp:Parameter Name="original_notes" Type="String" />
                        </DeleteParameters>
                    </asp:SqlDataSource>         
        </div>
    </div>
</asp:Content>
