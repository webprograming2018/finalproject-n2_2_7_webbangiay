<%-- 
    Document   : thongke
    Created on : Dec 30, 2018, 11:28:58 AM
    Author     : diepv
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container"
            <h1 style="text-align:center;margin-bottom: 50px;">Thống kế sản phẩm bán chạy theo tuần theo tháng xuất ra file excel</h1>
            <form action="Thongke" method="POST">
                <input type="submit" value="Thống kê" class="btn btn-primary">
            </form>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/process.js" language="JavaScript"></script>
    </body>
</html>
