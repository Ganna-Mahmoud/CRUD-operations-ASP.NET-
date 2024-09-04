<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Final_Project.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    HOME
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center style="height: 432px; width: 843px">
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Sid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Height="366px" Width="790px">
            <Columns>
                <asp:BoundField DataField="Sid" HeaderText="Sid" ReadOnly="True" SortExpression="Sid" InsertVisible="False" />
                <asp:BoundField DataField="Sname" HeaderText="Name" SortExpression="Sname" />
                <asp:BoundField DataField="Semail" HeaderText="Email" SortExpression="Semail" />
                <asp:BoundField DataField="Stel" HeaderText="Telephone" SortExpression="Stel" />
                <asp:BoundField DataField="Sdate" HeaderText="Date" SortExpression="Sdate" />
                <asp:BoundField DataField="Spass1" HeaderText="Password" SortExpression="Spass1" />
                <asp:BoundField DataField="Spass2" HeaderText="Password2" SortExpression="Spass2" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Final-ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [Student] WHERE [Sid] = @Sid" InsertCommand="INSERT INTO [Student] ([Sname], [Semail], [Stel], [Sdate], [Spass1], [Spass2], [Sdep]) VALUES (@Sname, @Semail, @Stel, @Sdate, @Spass1, @Spass2, @Sdep)" ProviderName="<%$ ConnectionStrings:Final-ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT Student.Sid, Student.Sname, Student.Semail, Student.Stel, Student.Sdate, Student.Spass1, Student.Spass2, Student.Sdep, Department.Dname FROM Student INNER JOIN Department ON Student.Sdep = Department.Did" UpdateCommand="UPDATE [Student] SET [Sname] = @Sname, [Semail] = @Semail, [Stel] = @Stel, [Sdate] = @Sdate, [Spass1] = @Spass1, [Spass2] = @Spass2, [Sdep] = @Sdep WHERE [Sid] = @Sid">
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
