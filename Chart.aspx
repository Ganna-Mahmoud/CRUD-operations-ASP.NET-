<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Chart.aspx.cs" Inherits="Final_Project.Chart" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Chart
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <center>

        <asp:Chart ID="Chart1" runat=server DataSourceID="SqlDataSource1" Height="650px" Palette="SemiTransparent" Width="650px" EnableViewState="True" OnPreRender="Chart1_PreRender">
            <Series>
                <asp:Series Name="Series1" ChartType="Pie" XValueMember="Dname" YValueMembers="Expr1"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>

            </ChartAreas>

        </asp:Chart>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Final-ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [Student] WHERE [Sid] = @Sid" InsertCommand="INSERT INTO [Student] ([Sname], [Semail], [Stel], [Sdate], [Spass1], [Spass2], [Sdep]) VALUES (@Sname, @Semail, @Stel, @Sdate, @Spass1, @Spass2, @Sdep)" ProviderName="<%$ ConnectionStrings:Final-ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT COUNT(Student.Sid) AS Expr1, Department.Dname FROM Student INNER JOIN Department ON Student.Sdep = Department.Did GROUP BY Department.Dname" UpdateCommand="UPDATE [Student] SET [Sname] = @Sname, [Semail] = @Semail, [Stel] = @Stel, [Sdate] = @Sdate, [Spass1] = @Spass1, [Spass2] = @Spass2, [Sdep] = @Sdep WHERE [Sid] = @Sid">
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



        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" Width="416px">
            <Columns>
                <asp:BoundField DataField="Dname" HeaderText="Department" SortExpression="Dname" />
                <asp:BoundField DataField="Expr1" HeaderText="Number of students" ReadOnly="True" SortExpression="Expr1" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView> 

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Final-ProjectConnectionString1 %>" DeleteCommand="DELETE FROM [Student] WHERE [Sid] = @Sid" InsertCommand="INSERT INTO [Student] ([Sname], [Semail], [Stel], [Sdate], [Spass1], [Spass2], [Sdep]) VALUES (@Sname, @Semail, @Stel, @Sdate, @Spass1, @Spass2, @Sdep)" ProviderName="<%$ ConnectionStrings:Final-ProjectConnectionString1.ProviderName %>" SelectCommand="SELECT COUNT(Student.Sid) AS Expr1, Department.Dname FROM Student INNER JOIN Department ON Student.Sdep = Department.Did GROUP BY Department.Dname" UpdateCommand="UPDATE [Student] SET [Sname] = @Sname, [Semail] = @Semail, [Stel] = @Stel, [Sdate] = @Sdate, [Spass1] = @Spass1, [Spass2] = @Spass2, [Sdep] = @Sdep WHERE [Sid] = @Sid">
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
