<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Final_Project.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    UPDATE
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
              border-radius: 30px; /* Optional: Add rounded corners */
       }
        .auto-style1 {
            width: 97%;
        height: 419px;
    }
        .auto-style2 {
            width: 79px;
        }
        .auto-style3 {
            width: 449px;
        }
        </style>
    <center>
    
     <table style="width: 117%; height: 527px;">
         <tr>
             <td style="vertical-align:top; " class="auto-style3">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Sid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." Height="191px" Width="330px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                     <Columns>
                         <asp:BoundField DataField="Sid" HeaderText="ID" ReadOnly="True" SortExpression="Sid" InsertVisible="False" />
                         <asp:BoundField DataField="Sname" HeaderText="Name" SortExpression="Sname" />
                         <asp:CommandField ShowSelectButton="True" />
                     </Columns>
                     <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                     <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                     <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                     <RowStyle BackColor="White" ForeColor="#003399" />
                     <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                     <SortedAscendingCellStyle BackColor="#EDF6F6" />
                     <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                     <SortedDescendingCellStyle BackColor="#D6DFDF" />
                     <SortedDescendingHeaderStyle BackColor="#002876" />
                 </asp:GridView>
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
    <br />
             </td>
             <td style="vertical-align:top">
                 <div style="border: 2px solid blue; height: 472px; width: 348px; border-radius: 20px;">
                     <asp:FormView ID="FormView1" runat="server" DataKeyNames="Sid" DataSourceID="SqlDataSource2" OnPageIndexChanging="FormView1_PageIndexChanging" DefaultMode="Edit" Height="371px" Width="252px">
                         <EditItemTemplate>
                             <table class="auto-style1">
                                 <tr>
                                     <td class="auto-style2" style="text-align:center">ID:</td>
                                     <td>
                                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("Sid") %>'></asp:Label>
                                         <br />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style2" style="text-align:center; vertical-align: top;">Name:</td>
                                     <td>
                                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Sname") %>'></asp:TextBox>
                                         <br />
                                         <br />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style2" style="text-align:center; vertical-align: top;">Email:</td>
                                     <td>
                                         <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Semail") %>'></asp:TextBox>
                                         <br />
                                         <br />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style2" style="text-align:center; vertical-align: top;">Phone:</td>
                                     <td>
                                         <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Stel") %>'></asp:TextBox>
                                         <br />
                                         <br />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style2" style="text-align:center; vertical-align: top;">Date:</td>
                                     <td>
                                         <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Sdate") %>'></asp:TextBox>
                                         <br />
                                         <br />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style2" style="text-align:center; vertical-align: top;">Password</td>
                                     <td>
                                         <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Spass1") %>'></asp:TextBox>
                                         <br />
                                         <br />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style2" style="text-align:center; vertical-align: top;">Confirm Password</td>
                                     <td>
                                         <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Spass2") %>'></asp:TextBox>
                                         <br />
                                         <br />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style2" style="text-align:center; vertical-align: top;">Department:</td>
                                     <td>
                                         <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Sdep") %>' Height="16px" Width="98px" DataSourceID="SqlDataSourceDept" DataTextField="Dname" DataValueField="Did">
                                         </asp:DropDownList>
                                         <asp:SqlDataSource ID="SqlDataSourceDept" runat="server" ConnectionString="<%$ ConnectionStrings:Final-ProjectConnectionString1 %>" SelectCommand="SELECT [Did], [Dname] FROM [Department]"></asp:SqlDataSource>
                                         <br />
                                         <br />
                                     </td>
                                 </tr>
                                 <tr>
                                     <td class="auto-style2">&nbsp;</td>
                                     <td>
                                         <asp:Button ID="Button1" runat="server" class="solid-button" BackColor="#009900" CommandName="Update" ForeColor="White" Text="Update" />
                                     </td>
                                 </tr>
                             </table>
                         </EditItemTemplate>
                         <InsertItemTemplate>
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
                             <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                             &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
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

                     <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Final-ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [Student] WHERE [Sid] = @Sid" InsertCommand="INSERT INTO [Student] ([Sname], [Semail], [Stel], [Sdate], [Spass1], [Spass2], [Sdep]) VALUES (@Sname, @Semail, @Stel, @Sdate, @Spass1, @Spass2, @Sdep)" ProviderName="<%$ ConnectionStrings:Final-ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT [Sid], [Sname], [Semail], [Stel], [Sdate], [Spass1], [Spass2], [Sdep] FROM [Student] where Sid = @id" UpdateCommand="UPDATE [Student] SET [Sname] = @Sname, [Semail] = @Semail, [Stel] = @Stel, [Sdate] = @Sdate, [Spass1] = @Spass1, [Spass2] = @Spass2, [Sdep] = @Sdep WHERE [Sid] = @Sid">
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
                         <SelectParameters>
                             <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int16" />
                         </SelectParameters>
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
               </div>
                 
             </td>
         </tr>
     </table>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>
    </p>
 </center>
</asp:Content>
