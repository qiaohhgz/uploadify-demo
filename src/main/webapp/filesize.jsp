<%--
  Created by IntelliJ IDEA.
  User: goodbaby
  Date: 2015-05-09
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<script type="text/javascript">
    function AlertFilesize() {
        if (window.ActiveXObject) {
            var fso = new ActiveXObject("Scripting.FileSystemObject");
            var filepath = document.getElementById('fileInput').value;
            var thefile = fso.getFile(filepath);
            var sizeinbytes = thefile.size;
        } else {
            var sizeinbytes = document.getElementById('fileInput').files[0].size;
        }

        var fSExt = new Array('Bytes', 'KB', 'MB', 'GB');
        fSize = sizeinbytes;
        i = 0;
        while (fSize > 900) {
            fSize /= 1024;
            i++;
        }

        alert((Math.round(fSize * 100) / 100) + ' ' + fSExt[i]);
    }
</script>

<input id="fileInput" type="file" onchange="AlertFilesize();"/>
</body>
</html>
