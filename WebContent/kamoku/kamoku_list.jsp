<%@page contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="../header.html" %>
<%@include file="../disp/menu.jsp" %>

<div class="content">
  <h2 class="menu-title">科目管理</h2>

  <!-- 新規登録 -->
  <div style="margin-top: 10px;">
    <a href="${pageContext.request.contextPath}/kamoku/subject_create.jsp">新規登録</a>
  </div>

  <!-- 科目一覧 -->
  <table border="1" style="margin: 10px auto; border-collapse: collapse;">
    <thead>
      <tr>
        <th>科目コード</th>
        <th>科目名</th>
        <th>変更</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="subject" items="${subjects}">
        <tr>
          <td>${subject.cd}</td>
          <td>${subject.name}</td>
          <td>
            <a href="${pageContext.request.contextPath}/disp/subjectupdateform?cd=${subject.cd}">
              変更
            </a>
          </td>
        </tr>
      </c:forEach>
      <c:if test="${empty subjects}">
        <tr><td colspan="3">該当する科目情報がありません。</td></tr>
      </c:if>
    </tbody>
  </table>
</div>

<%@include file="../footer.html" %>
