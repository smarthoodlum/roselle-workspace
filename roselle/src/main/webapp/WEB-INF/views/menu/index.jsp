<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<t:base>
  <jsp:body>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="page-header">
            <h1>Menu</h1>
          </div>
          
          <a href="<c:url value="/menu/add"/>" class="btn btn-default">Add</a>
          <br />
          <br />
          <table class="table table-bordered">
            <thead>
              <tr class="center middle">
                <th>No.</th>
                <th>Name</th>
                <th>Price</th>
                <th>&nbsp;</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach items="${menus}" var="menu" varStatus="status">
                <tr>
                  <td class="center midle">${status.count}.</td>
                  <td class="center middle">${menu.name}</td>
                  <td class="center middle">${menu.price}</td>
                  <td><a href="<c:url value="/menu/${menu.id}/edit" />">Edit</a></td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </jsp:body>
</t:base>
