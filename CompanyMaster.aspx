<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyMaster.aspx.cs" Inherits="WebApplication1.CompanyMaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 
            
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 64px"></asp:TextBox>
            <br/>
            <br/>
            <asp:Label ID="Label2" runat="server" Text="File Upload"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true" style="margin-left: 31px" />
            <br/>
             <asp:Label ID="lblmessage" runat="server" />
            <br />
            <br/>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" style="margin-left: 103px" /><br/>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vbdsConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [CompanyMaster]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="270px" style="margin-right: 0px" Width="292px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="data" HeaderText="data" SortExpression="data" />
                </Columns>
            </asp:GridView>

            <br />
            <br />

        </div>
     </form>
</body>
</html>
