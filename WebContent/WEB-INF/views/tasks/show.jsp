<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <title>id=<c:out value="${task.id}" />のタスク</title>
        <h2>id=<c:out value="${task.id}" />のタスク</h2>
        <ul>
            <li>
                                タスク内容：
              <c:out value="${task.content}" />
            </li>
            <li>
                                作成日時：
              　                 <fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss" />
            </li>
            <li>
                                更新日時：
               <fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss" />
            </li>
       </ul>
       <a href="${pageContext.request.contextPath}/edit?id=${task.id}">タスク内容を編集</a><br>

       <a href="${pageContext.request.contextPath}/index">一覧に戻る</a>


    </c:param>
</c:import>