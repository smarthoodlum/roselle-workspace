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
            <h1>Create Menu</h1>
          </div>
          <jsp:include page="form.jsp" />
        </div>
      </div>
    </div>
  </jsp:body>
</t:base>