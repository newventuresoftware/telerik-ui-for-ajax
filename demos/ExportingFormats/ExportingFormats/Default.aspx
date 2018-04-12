<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
            <Scripts>
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js" />
            </Scripts>
        </telerik:RadScriptManager>
        <script type="text/javascript">
        //Put your JavaScript code here.
        </script>
        <div>
            <asp:Button runat="server" Text="Export" OnClick="Export_Click" />
            <telerik:RadGrid ID="RadGrid1" runat="server" CellSpacing="-1" DataSourceID="ProductsDataSource" GridLines="Both">
                <ExportSettings ExportOnlyData="true">
                    <Pdf PageHeight="210mm" PageWidth="297mm" DefaultFontFamily="Arial Unicode MS" PageTopMargin="45mm"
                    BorderStyle="Medium" BorderColor="#666666" />
                    <Excel Format="Xlsx" />
                </ExportSettings>
                <MasterTableView AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="ProductsDataSource">
                    <Columns>
                        <telerik:GridBoundColumn DataField="ProductID" DataType="System.Int32" FilterControlAltText="Filter ProductID column" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" UniqueName="ProductID">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="ProductName" FilterControlAltText="Filter ProductName column" HeaderText="ProductName" SortExpression="ProductName" UniqueName="ProductName">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="UnitPrice" DataType="System.Decimal" FilterControlAltText="Filter UnitPrice column" HeaderText="UnitPrice" SortExpression="UnitPrice" UniqueName="UnitPrice">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="UnitsInStock" DataType="System.Int16" FilterControlAltText="Filter UnitsInStock column" HeaderText="UnitsInStock" SortExpression="UnitsInStock" UniqueName="UnitsInStock">
                        </telerik:GridBoundColumn>
                        <telerik:GridBoundColumn DataField="CategoryName" FilterControlAltText="Filter CategoryName column" HeaderText="CategoryName" SortExpression="CategoryName" UniqueName="CategoryName">
                        </telerik:GridBoundColumn>
                    </Columns>
                </MasterTableView>
            </telerik:RadGrid>
            <asp:SqlDataSource ID="ProductsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>" SelectCommand="SELECT * FROM [Alphabetical list of products]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
