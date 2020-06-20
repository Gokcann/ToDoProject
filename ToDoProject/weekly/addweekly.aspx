<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addweekly.aspx.cs" Inherits="ToDoProject.weekly.addweekly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <%--ihtiyacimiz olan frontend dosyalarini ekliyoruz.--%>
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
                            <%--Weekly To Do Ekleme Alani--%>

                            <div class="form-group">
                                <label for="falgId">Select Flag</label>
                                <%--Flag verilerini cekme islemi.--%>
                                <asp:DropDownList runat="server" CssClass="form-control" ID="flagComboBox" AutoPostBack="true">
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label for="weeklyAdd">Weekly Task Text</label>
                                <asp:TextBox runat="server" ID="weeklyAdd" CssClass="form-control" placeholder="Type Weekly Task" />
                            </div>
                            <asp:Button Text="Save" ID="saveButton" runat="server" CssClass="btn btn-success" OnClick="saveButton_Click" />
                            <a href="/weekly/listweekly.aspx" class="btn btn-primary">List</a>
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
