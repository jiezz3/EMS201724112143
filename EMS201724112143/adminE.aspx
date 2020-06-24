<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminE.aspx.cs" Inherits="EMS201724112143.adminE" %>

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
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Equipment] WHERE [PK] = @PK" InsertCommand="INSERT INTO [Equipment] ([PK], [Ename], [Especifications], [Epicture], [Eprice], [date], [position], [FK]) VALUES (@PK, @Ename, @Especifications, @Epicture, @Eprice, @date, @position, @FK)" SelectCommand="SELECT * FROM [Equipment]" UpdateCommand="UPDATE [Equipment] SET [Ename] = @Ename, [Especifications] = @Especifications, [Epicture] = @Epicture, [Eprice] = @Eprice, [date] = @date, [position] = @position, [FK] = @FK WHERE [PK] = @PK">
                <DeleteParameters>
                    <asp:Parameter Name="PK" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PK" Type="Int32" />
                    <asp:Parameter Name="Ename" Type="String" />
                    <asp:Parameter Name="Especifications" Type="String" />
                    <asp:Parameter Name="Epicture" Type="Object" />
                    <asp:Parameter Name="Eprice" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="position" Type="String" />
                    <asp:Parameter Name="FK" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Ename" Type="String" />
                    <asp:Parameter Name="Especifications" Type="String" />
                    <asp:Parameter Name="Epicture" Type="Object" />
                    <asp:Parameter Name="Eprice" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="position" Type="String" />
                    <asp:Parameter Name="FK" Type="String" />
                    <asp:Parameter Name="PK" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <table class="auto-style1">
                <tr>
                    <td>设备管理</td>
                    <td><a href="adminPage.aspx">返回管理人菜单</a></td>
                </tr>
            </table>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="PK" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="PKLabel" runat="server" Text='<%# Eval("PK") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EnameLabel" runat="server" Text='<%# Eval("Ename") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EspecificationsLabel" runat="server" Text='<%# Eval("Especifications") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EpictureLabel" runat="server" Text='<%# Eval("Epicture") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EpriceLabel" runat="server" Text='<%# Eval("Eprice") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="positionLabel" runat="server" Text='<%# Eval("position") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FKLabel" runat="server" Text='<%# Eval("FK") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        </td>
                        <td>
                            <asp:Label ID="PKLabel1" runat="server" Text='<%# Eval("PK") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EnameTextBox" runat="server" Text='<%# Bind("Ename") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EspecificationsTextBox" runat="server" Text='<%# Bind("Especifications") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EpictureTextBox" runat="server" Text='<%# Bind("Epicture") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EpriceTextBox" runat="server" Text='<%# Bind("Eprice") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="positionTextBox" runat="server" Text='<%# Bind("position") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FKTextBox" runat="server" Text='<%# Bind("FK") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>未返回数据。</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                        </td>
                        <td>
                            <asp:TextBox ID="PKTextBox" runat="server" Text='<%# Bind("PK") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EnameTextBox" runat="server" Text='<%# Bind("Ename") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EspecificationsTextBox" runat="server" Text='<%# Bind("Especifications") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EpictureTextBox" runat="server" Text='<%# Bind("Epicture") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="EpriceTextBox" runat="server" Text='<%# Bind("Eprice") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="positionTextBox" runat="server" Text='<%# Bind("position") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="FKTextBox" runat="server" Text='<%# Bind("FK") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="PKLabel" runat="server" Text='<%# Eval("PK") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EnameLabel" runat="server" Text='<%# Eval("Ename") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EspecificationsLabel" runat="server" Text='<%# Eval("Especifications") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EpictureLabel" runat="server" Text='<%# Eval("Epicture") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EpriceLabel" runat="server" Text='<%# Eval("Eprice") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="positionLabel" runat="server" Text='<%# Eval("position") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FKLabel" runat="server" Text='<%# Eval("FK") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                    <tr runat="server" style="">
                                        <th runat="server"></th>
                                        <th runat="server">PK</th>
                                        <th runat="server">Ename</th>
                                        <th runat="server">Especifications</th>
                                        <th runat="server">Epicture</th>
                                        <th runat="server">Eprice</th>
                                        <th runat="server">date</th>
                                        <th runat="server">position</th>
                                        <th runat="server">FK</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                        </td>
                        <td>
                            <asp:Label ID="PKLabel" runat="server" Text='<%# Eval("PK") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EnameLabel" runat="server" Text='<%# Eval("Ename") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EspecificationsLabel" runat="server" Text='<%# Eval("Especifications") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EpictureLabel" runat="server" Text='<%# Eval("Epicture") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EpriceLabel" runat="server" Text='<%# Eval("Eprice") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="positionLabel" runat="server" Text='<%# Eval("position") %>' />
                        </td>
                        <td>
                            <asp:Label ID="FKLabel" runat="server" Text='<%# Eval("FK") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
    </form>
</body>
</html>
