<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listflag.aspx.cs" Inherits="ToDoProject.flags.listflag" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <%--bootstrap ve css dosyalarini ekliyoruz--%>
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
                    <a href="#">Weekly</a>
                </li>
                <li>
                    <a href="#">Monthly</a>
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
                            <h3>Flag List</h3>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID
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
                                                <td> <%#Eval("flag_id") %> </td>
                                                 <td> <%#Eval("flag_text") %> </td>
                                                <%--Delete ve Update butonlarini da ucuncu sutuna ekliyoruz.--%>
                                                 <td>
                                                     <%--Tiklanilan verinin edit islemlerine gitmek icin(ID kullaniyoruz).--%>
                                                     <asp:HyperLink NavigateUrl='<%# "deleteflag.aspx?id=" + Eval("flag_id") %>' runat="server" CssClass="btn btn-danger" > Delete </asp:HyperLink>
                                                     <asp:HyperLink NavigateUrl='<%# "updateflag.aspx?id=" + Eval("flag_id") %>' runat="server" CssClass="btn btn-success" > Update </asp:HyperLink>
                                                     
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </tbody>
                            </table>
                            <a href="/flags/addflag.aspx" class="btn btn-primary">Back</a>
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

