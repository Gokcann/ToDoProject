<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateflag.aspx.cs" Inherits="ToDoProject.flags.updateflag" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <%--bootstrap ve css dosyalarini ekliyoruz--%>
    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/assets/css/simple-sidebar.css" rel="stylesheet" />
    <script src="/assets/js/jquery.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>

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
                            <%--Flag Update Alani--%>

                            <div class="form-group">
                                <label for="flagUpdate">Update Text</label>
                                <asp:TextBox runat="server" ID="flagUpdate" CssClass="form-control" placeholder="Type Text" />
                            </div>
                            <asp:Button Text="Update" ID="updateButton" runat="server" CssClass="btn btn-success" OnClick="updateButton_Click" />
                            <a href="/flags/listflag.aspx" class="btn btn-primary">List</a>
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