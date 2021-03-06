<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<!-- saved from url=(0041)http://v3.bootcss.com/examples/dashboard/ -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="./images/favicon.ico">

    <title>日志监控系统</title>
    <link href="/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/bower_components/dashboard/dashboard.css" rel="stylesheet">
    <link href="/bower_components/commons/css/core.css" rel="stylesheet">
    <link href="/bower_components/jquery-treegrid/css/jquery.treegrid.css" rel="stylesheet">
    <script src="/bower_components/dashboard/ie-emulation-modes-warning.js"></script>
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed"
                    data-toggle="collapse" data-target="#navbar" aria-expanded="false"
                    aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span> <span
                    class="icon-bar"></span> <span class="icon-bar"></span> <span
                    class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">日志监控系统</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">帮助</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
            <h4>
					<span style="margin-left: -15px;"
                          class="glyphicon glyphicon-triangle-bottom"></span>&nbsp;监控报表
            </h4>
            <ul class="nav nav-sidebar">
                <li><a href="/app/list-root-message">应用信息</a></li>
                <li class="active"><a href="#">调用关系</a></li>
                <li><a href="/app/exception">异常超时</a></li>
                <li><a href="#">调用统计</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h2 class="page-header">应用信息</h2>

            <ol class="breadcrumb">
                <li><a href="#">首页</a></li>
                <li class="active">调用关系</li>
            </ol>



            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">操作区</h3>
                </div>
                <form id="query-message-form" class="form-inline" action="/app/list-root-message" method="get">
                    <div class="form-group">
                        <label for="domain-id">应用 * : </label>
                        <select id="domain-id" name="domain" class="form-control"
                                onchange="chainJs.domainChanged()" style="width: 120px;">
                            <option value="">请选择</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="className-id">类名称：</label>
                        <select id="className-id" name="className" class="form-control" style="width: 120px;" onchange="chainJs.classNameChanged()">
                            <option value="">请选择</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="classMethod-id">方法名：</label>
                        <select id="classMethod-id" name="classMethod" class="form-control" style="width: 120px;">
                            <option value="">请选择</option>
                        </select>
                    </div>
                    <input type="hidden" name="page"/>
                    <input type="hidden" name="size"/>
                    <input type="button" class="btn btn-primary" onclick="chainJs.query()" value="查询"/>
                </form>
            </div>

            <div class="row">
                <table id="treegrid" class="table table-striped tree">
                    <thead>
                        <tr>
                            <th width="20%" style="text-align: center;">应用名称</th>
                            <th style="text-align: center;">类名称</th>
                            <th width="15%" style="text-align: center;">方法名</th>
                            <th width="10%" style="text-align: center;">IP</th>
                            <th width="8%" style="text-align: center;">完整性</th>
                        </tr>
                    </thead>
                    <tbody id="theme-content">
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="/bower_components/jquery/dist/jquery.min.js"></script>
<script src="/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/bower_components/jquery-treegrid/js/jquery.treegrid.bootstrap3.js"></script>
<script src="/bower_components/jquery-treegrid/js/jquery.treegrid.min.js"></script>
<script src="/bower_components/commons/js/hashtable.js"></script>
<script src="/bower_components/commons/js/hashset.js"></script>
<script src="/bower_components/commons/js/url-util.js"></script>
<script src="/bower_components/commons/js/logx/chain.js"></script>
<script src="/bower_components/commons/js/handleTreeGrid.js"></script>
<script src="/bower_components/dashboard/docs.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="/bower_components/dashboard/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
