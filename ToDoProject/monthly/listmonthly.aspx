<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listmonthly.aspx.cs" Inherits="ToDoProject.montly.listmontly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <%--ihtiyacimiz olan frontend dosyalarini ekliyoruz.--%>
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/assets/css/simple-sidebar.css" rel="stylesheet" />
    <script src="/assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

</head>
<body>

    <div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="#">Personal To Do List
                    </a>
                </li>
                <li>
                    <a href="/flags/addflag.aspx">Flag</a>
                </li>
                <li>
                    <a href="/daily/adddaily.aspx">Daily</a>
                </li>
                <li>
                    <a href="/weekly/addweekly.aspx">Weekly</a>
                </li>
                <li>
                    <a href="/monthly/addmonthly.aspx">Monthly</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <form id="form1" runat="server">
                            <h3>Daily To Do List</h3>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID
                                        </th>
                                        <th>Task
                                        </th>
                                        <th>Flag
                                        </th>
                                        <th>Edit
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%--Repeater bizim için tekrarlayan bir satır olusturuyor.--%>
                                    <asp:Repeater ID="repeaterId" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td><%#Eval("todomonthly_id") %> </td>
                                                <td><%#Eval("todomonthly_text") %> </td>
                                                <td><%#getFlagText(Convert.ToInt32(Eval("flag_id"))) %> </td>
                                                <%--Delete ve Update butonlarini da dorduncu sutuna ekliyoruz.--%>
                                                <td>
                                                    <%--Tiklanilan verinin edit islemlerine gitmek icin(ID kullaniyoruz).--%>
                                                    <asp:HyperLink NavigateUrl='<%# "deletemonthly.aspx?id=" + Eval("todomonthly_id") %>' runat="server" CssClass="btn btn-danger"> Delete </asp:HyperLink>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                            </table>
                            <a href="/monthly/addmonthly.aspx" class="btn btn-primary">Back</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

</body>
</html>
