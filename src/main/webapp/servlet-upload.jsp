<%--
  Created by IntelliJ IDEA.
  User: goodbaby
  Date: 2015-05-09
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>servlet-upload.jsp</title>
</head>
<body>
<form name="uploadForm" method="post" enctype="multipart/form-data" action="upload.do">
    Name:<input type="text" name="username"/> <br/>
    File1:<input type="file" name="file1"/> <br/>
    File2:<input type="file" name="file2"/> <br/>
    <input type="submit" name="submit" value="上传">
    <input type="reset" name="reset" value="重置">
</form>
</body>
</html>
