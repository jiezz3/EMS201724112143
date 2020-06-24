<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EnamequeryPage.aspx.cs" Inherits="EMS201724112143.querypage.EsqueryPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            此为根据设备编号查询设备详细信息，如需其他功能请点击<a href="queryPage.aspx">返回</a>主菜单
        </div>
        <div class="jumbotron">
            <div class="form-inline">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server"  Text="Button" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT *FROM Equipment WHERE (Ename = @Ename) ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="" Name="Ename" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
                <HeaderTemplate>
                    <table border="1" width="100%">
                        <tr>
                            <th>
                                设备编号
                            </th>
                            <th>
                                设备名称
                            </th>
                            <th>
                                设备规格
                            </th>
                            <th>
                                设备图片
                            </th>
                            <th>
                                设备价格
                            </th>
                            <th>
                                购买日期
                            </th>
                            <th>
                                存放位置
                            </th>
                             <th>
                                负责人
                            </th>
                        </tr>
                    
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <%#Eval("PK") %>
                        </td>
                        <td>
                            <%#Eval("Ename") %>
                        </td>
                        <td>
                            <%#Eval("Especifications") %>
                        </td>
                        <td>
                            <%#Eval("Epicture") %>
                        </td>
                        <td>
                            <%#Eval("Eprice") %>
                        </td>
                        <td>
                            <%#Eval("date") %>
                        </td>
                        <td>
                            <%#Eval("position") %>
                        </td>
                         <td>
                            <%#Eval("FK") %>
                        </td>
                    </tr>
                </ItemTemplate>
               <FooterTemplate>
                   </table>
               </FooterTemplate>
            </asp:Repeater>
        </div>
        </div>
    </form>
</body>
</html>