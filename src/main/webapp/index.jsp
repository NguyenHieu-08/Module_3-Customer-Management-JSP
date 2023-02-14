<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.LinkedList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách khách hàng</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <%!
        List<String> dic = new LinkedList<>();
    %>

    <%
        dic.add("abc,10-6-154,HN,sadas");
        dic.add("abc,10-6-154,HN,sadas");
        dic.add("abc,10-6-154,HN,sadas");
        dic.add("abc,10-6-154,HN,sadas");
    %>

    <h1>Danh sách khách hàng</h1>

    <div class="info-cus">
        <table class="table table-striped">
            <tr>
                <th>Tên</th>
                <th>Ngày sinh</th>
                <th>Địa chỉ</th>
                <th>Ảnh</th>
            </tr>
            <tr>
                <td>Mai Van Hoang</td>
                <td>03-14-1998</td>
                <td>12 Đống Đa</td>
                <td><img class="image" src="https://www.pngitem.com/pimgs/m/10-100704_basketball-clipart-chibi-kuroko-no-basket-chibi-hd.png"></td>
            </tr>
            <tr>
                <td>Mai Van Hoang</td>
                <td>03-14-1998</td>
                <td>12 Đống Đa</td>
                <td><img class="image" src="https://www.pngitem.com/pimgs/m/10-100704_basketball-clipart-chibi-kuroko-no-basket-chibi-hd.png"></td>
            </tr>
            <c:forEach items="${dic}" var="cus">
                <c:forTokens items="${cus}" delims="," var="e">
                    <tr>
                        <td><c:out value="${e}"/></td>
                    </tr>
                </c:forTokens>
            </c:forEach>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>