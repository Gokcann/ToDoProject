<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ToDoProject.index" %>

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
                        <h1>Personal Task Tracker</h1>
                        <h3>This project is a job application for "PITON Ar-Ge ve Yazılım Evi". </h3>
                        <p>
                            <br />
                            <br />
                            *I apply for the <code>"back-end developer"</code> position. 
                           
                            <br />
                            <br />
                            *Used front-end source(/css, /js, /fonts); <code>https://github.com/rodrigo1208/InterfaceWeb</code>
                            <br />
                            <br />
                            *Database is <code>MS SQL Server Developer Edition 2019</code>.
                           
                            <br />
                            <br />
                            *Back-End is <code>ASP.NET(C#) framework</code>.
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

</body>
</html>
