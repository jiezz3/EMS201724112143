<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="queryPage.aspx.cs" Inherits="EMS201724112143.querypage.queryPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" >
                <tr>
                    <td colspan="5">请根据需求选择查询方式：</td>
                    
                </tr>               
                <tr>
                    <td><a href="PKqueryPage.aspx">设备编号</a></td>
                    <td><a href="EnamequeryPage.aspx">设备名称</a></td>
                    <td><a href="datequeryPage.aspx">存放日期</a></td>
                    <td><a href="positionqueryPage.aspx">存放地址</a></td>
                    <td><a href="FKqueryPage.aspx">负责人姓名</a></td>
                </tr>
            </table>
            <hr />
        </div>
    </form>
</body>
</html>
