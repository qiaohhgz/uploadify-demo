<%--
  Created by IntelliJ IDEA.
  User: goodbaby
  Date: 2015-05-09
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <script src="lib/jquery/jquery-1.10.2.js"></script>
    <script src="lib/ckeditor/basic/ckeditor.js"></script>
    <script src="lib/ckeditor/basic/adapters/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var editor = CKEDITOR.replace("editor1");
            $("#show").click(function () {
                $("#content").html(editor.getData())
            });
        });
    </script>
</head>
<body>
<div>
    <button id="show">Show Html</button>
    <div id="content"></div>
</div>
<textarea id="editor1"></textarea>
</body>
</html>
