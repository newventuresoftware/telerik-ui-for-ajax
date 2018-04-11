<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadScriptManager runat="server" ID="RadScriptManager1" />
       
        <telerik:RadODataDataSource runat="server" ID="RadODataDataSource1">
            <Transport>
                <Read Url="http://demos.telerik.com/aspnet-ajax/Services/NorthwindWcfService.svc/" />
            </Transport>
            <Schema>
                <telerik:DataModel ModelID="Product" Set="Products">
                    <telerik:DataModelField FieldName="ProductName" />
                    <telerik:DataModelField FieldName="ProductID" />
                </telerik:DataModel>
            </Schema>
        </telerik:RadODataDataSource>

        <div class="demo-container size-thin">
            <telerik:RadComboBox RenderMode="Lightweight" ID="RadComboBox1" runat="server" EnableLoadOnDemand="true" ODataDataSourceID="RadODataDataSource1"
                DataModelID="Product" DataTextField="ProductName" DataValueField="ProductID" Width="300"
                ShowMoreResultsBox="true" ItemsPerRequest="4">
            </telerik:RadComboBox>
        </div>

    </form>
</body>
</html>
