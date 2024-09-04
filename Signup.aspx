<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Final_Project.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    REGISTER
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <style type="text/css">
        
        .solid-button {
              /* Set other styles for a complete look */
              color: white; /* Text color */
              padding: 5px 10px; /* Padding for the button */
              border: none; /* No border */
              text-align: center; /* Center text */
              text-decoration: none; /* No text decoration */
              display: inline-block; /* Make it an inline-block element */
              font-size: 16px; /* Font size */
              cursor: pointer; /* Cursor style */
              border-radius: 20px; /* Optional: Add rounded corners */
       }

        .dropdown-container {
      text-align: center;
    }
         
    .auto-style1 {
        height: 70px;
    }
         
    </style>
    <center>
        <div style="border: 2px solid blue; height: 563px; width: 407px; border-radius: 20px;">
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="Sid" DataSourceID="SqlDataSource1" Height="130px" Width="621px" DefaultMode="Insert">
            <EditItemTemplate>
                Sid:
                <asp:Label ID="SidLabel1" runat="server" Text='<%# Eval("Sid") %>' />
                <br />
                Sname:
                <asp:TextBox ID="SnameTextBox" runat="server" Text='<%# Bind("Sname") %>' />
                <br />
                Semail:
                <asp:TextBox ID="SemailTextBox" runat="server" Text='<%# Bind("Semail") %>' />
                <br />
                Stel:
                <asp:TextBox ID="StelTextBox" runat="server" Text='<%# Bind("Stel") %>' />
                <br />
                Sdate:
                <asp:TextBox ID="SdateTextBox" runat="server" Text='<%# Bind("Sdate") %>' />
                <br />
                Spass1:
                <asp:TextBox ID="Spass1TextBox" runat="server" Text='<%# Bind("Spass1") %>' />
                <br />
                Spass2:
                <asp:TextBox ID="Spass2TextBox" runat="server" Text='<%# Bind("Spass2") %>' />
                <br />
                Sdep:
                <asp:TextBox ID="SdepTextBox" runat="server" Text='<%# Bind("Sdep") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="w-100">
                    <tr>
                        <td class="auto-style1" style="text-align:center">NAME</td>
                        <td class="auto-style1">
                        
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Sname") %>'></asp:TextBox>
                        
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        
                            <br />
                        
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19" style="text-align:center">Email</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Semail") %>'></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="xx@xx.xx" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19" style="text-align:center">Phone</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Stel") %>'></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="oxx-xxxxx" ForeColor="Red" ValidationExpression="\d{3}-\d{8}"></asp:RegularExpressionValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19" style="text-align:center">Date</td>
                        <td class="auto-style3" style="text-align:left">
                            <asp:TextBox ID="TextBox7" runat="server" TextMode="Date"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20" style="text-align:center">Password</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Spass1") %>' TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19"style="text-align:center">Confirm Password</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="TextBox6"  style="text-align:left" runat="server" Text='<%# Bind("Spass2") %>' TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="*Invalid" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style19" style="text-align:center">Department</td>
                        <td class="auto-style3">
                            <div class="dropdown-container">
                                <asp:DropDownList ID="DropDownList1" runat="server" style="text-align:center" SelectedValue='<%# Bind("Sdep") %>' DataSourceID="SqlDataSourceDept" DataTextField="Dname" DataValueField="Did">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceDept" runat="server" ConnectionString="<%$ ConnectionStrings:Final-ProjectConnectionString1 %>" SelectCommand="SELECT [Did], [Dname] FROM [Department]"></asp:SqlDataSource>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20"></td>
                        <td class="auto-style4">
                            <asp:Button ID="Button1" runat="server" BackColor="#009900" class="solid-button" CommandName="Insert" Font-Bold="True" Font-Size="Large" ForeColor="White" Height="40px" Text="Insert" Width="100px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            </td>
                        <td class="auto-style6">
                            &nbsp;</td>
                    </tr>
                </table>
            </InsertItemTemplate>
            <ItemTemplate>
                Sid:
                <asp:Label ID="SidLabel" runat="server" Text='<%# Eval("Sid") %>' />
                <br />
                Sname:
                <asp:Label ID="SnameLabel" runat="server" Text='<%# Bind("Sname") %>' />
                <br />
                Semail:
                <asp:Label ID="SemailLabel" runat="server" Text='<%# Bind("Semail") %>' />
                <br />
                Stel:
                <asp:Label ID="StelLabel" runat="server" Text='<%# Bind("Stel") %>' />
                <br />
                Sdate:
                <asp:Label ID="SdateLabel" runat="server" Text='<%# Bind("Sdate") %>' />
                <br />
                Spass1:
                <asp:Label ID="Spass1Label" runat="server" Text='<%# Bind("Spass1") %>' />
                <br />
                Spass2:
                <asp:Label ID="Spass2Label" runat="server" Text='<%# Bind("Spass2") %>' />
                <br />
                Sdep:
                <asp:Label ID="SdepLabel" runat="server" Text='<%# Bind("Sdep") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
    </asp:FormView>

        </div>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Final-ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [Student] WHERE [Sid] = @Sid" InsertCommand="INSERT INTO [Student] ([Sname], [Semail], [Stel], [Sdate], [Spass1], [Spass2], [Sdep]) VALUES (@Sname, @Semail, @Stel, @Sdate, @Spass1, @Spass2, @Sdep)" ProviderName="<%$ ConnectionStrings:Final-ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [Sid], [Sname], [Semail], [Stel], [Sdate], [Spass1], [Spass2], [Sdep] FROM [Student]" UpdateCommand="UPDATE [Student] SET [Sname] = @Sname, [Semail] = @Semail, [Stel] = @Stel, [Sdate] = @Sdate, [Spass1] = @Spass1, [Spass2] = @Spass2, [Sdep] = @Sdep WHERE [Sid] = @Sid">
        <DeleteParameters>
            <asp:Parameter Name="Sid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Sname" Type="String" />
            <asp:Parameter Name="Semail" Type="String" />
            <asp:Parameter Name="Stel" Type="String" />
            <asp:Parameter DbType="Date" Name="Sdate" />
            <asp:Parameter Name="Spass1" Type="String" />
            <asp:Parameter Name="Spass2" Type="String" />
            <asp:Parameter Name="Sdep" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Sname" Type="String" />
            <asp:Parameter Name="Semail" Type="String" />
            <asp:Parameter Name="Stel" Type="String" />
            <asp:Parameter DbType="Date" Name="Sdate" />
            <asp:Parameter Name="Spass1" Type="String" />
            <asp:Parameter Name="Spass2" Type="String" />
            <asp:Parameter Name="Sdep" Type="Int32" />
            <asp:Parameter Name="Sid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </center>
    
   
</asp:Content>
