<%--
  Created by IntelliJ IDEA.
  User: goodbaby
  Date: 2015-05-09
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>uploadify.jsp</title>
    <script src="lib/jquery/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="lib/uploadify/jquery.uploadify.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="lib/uploadify/uploadify.css">
    <style type="text/css">
        body {
            font: 13px Arial, Helvetica, Sans-serif;
        }
    </style>
</head>
<body>
<h1>Uploadify Demo</h1>

<form>
    <div id="queue"></div>
    <input id="file_upload" name="file_upload" type="file" multiple="true">
</form>
<div>
    <img src="#"/>
</div>

<script type="text/javascript">
    function _handleUploadResponse(file, data, response) {

    }

    $(function () {
        var time = new Date().getTime();
        $('#file_upload').uploadify({
            'formData': {
                'timestamp': time
            },
            'fileSizeLimit': '5MB',
            'fileTypeDesc': 'Image Files',
            'method': 'post',
            'fileTypeExts': '*.gif; *.jpg; *.png',
            'swf': 'lib/uploadify/uploadify.swf',
            'cancelImg': 'lib/uploadify/uploadify-cancel.png',
            onUploadSuccess: _handleUploadResponse
        });
    });
</script>
</body>
</html>
