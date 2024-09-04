<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Final_Project.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Search
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

        .left-content {
      text-align: left;
      margin: 0 auto;
    }


        .auto-style4 {
            width: 137%;
            height: 219px;
        }
        </style>
   
    <div class="left-content">
        
        <table class="auto-style4">
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ID:&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
                    &nbsp;
                    <asp:Button ID="Button1" class="solid-button" runat="server" Text="Search" BackColor="#009900" ForeColor="White" OnClick="Button1_Click"></asp:Button>
                             &nbsp;&nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td style="text-align:initial">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Sid" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." Height="16px" Width="670px" Visible="False">
                        <Columns>
                            <asp:BoundField DataField="Sid" HeaderText="Sid" InsertVisible="False" ReadOnly="True" SortExpression="Sid" />
                            <asp:BoundField DataField="Sname" HeaderText="Name" SortExpression="Sname" />
                            <asp:BoundField DataField="Semail" HeaderText="Email" SortExpression="Semail" />
                            <asp:BoundField DataField="Stel" HeaderText="Telephone" SortExpression="Stel" />
                            <asp:BoundField DataField="Sdate" DataFormatString="{0:d}" HeaderText="Date" SortExpression="Sdate" />
                            <asp:BoundField DataField="Spass1" HeaderText="Password" SortExpression="Spass1" />
                            <asp:BoundField DataField="Dname" HeaderText="Department" SortExpression="Dname" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Final-ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [Student] WHERE [Sid] = @Sid" InsertCommand="INSERT INTO [Student] ([Sname], [Semail], [Stel], [Sdate], [Spass1], [Spass2], [Sdep]) VALUES (@Sname, @Semail, @Stel, @Sdate, @Spass1, @Spass2, @Sdep)" ProviderName="<%$ ConnectionStrings:Final-ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT Student.Sid, Student.Sname, Student.Semail, Student.Stel, Student.Sdate, Student.Spass1, Student.Spass2, Student.Sdep, Department.Dname FROM Student INNER JOIN Department ON Student.Sdep = Department.Did where
 (Student.Sid = @Id)
or
 ( Student.Sname like '%' + @Name + '%')" UpdateCommand="UPDATE [Student] SET [Sname] = @Sname, [Semail] = @Semail, [Stel] = @Stel, [Sdate] = @Sdate, [Spass1] = @Spass1, [Spass2] = @Spass2, [Sdep] = @Sdep WHERE [Sid] = @Sid">
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
                            <asp:ControlParameter ControlID="TextBox1" Name="Id" PropertyName="Text" Type="Int16" />
                            <asp:ControlParameter ControlID="TextBox2" Name="Name" PropertyName="Text" Type="String" />
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
                </td>
            </tr>
        </table>
        
    </div>
        
    <br />
    <br />
    
</asp:Content>
