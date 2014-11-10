<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>

<form:form cssClass="form-horizontal" method="post" modelAttribute="menu">
  <div class="notices">
    <c:if test="${not empty message}">
      <div id="message" class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        <h4>Success!</h4>
        <div class="notice-text">${message}</div>
      </div>  
    </c:if>
    <s:bind path="*">
    <c:if test="${status.error}">
    <div id="message" class="alert alert-error">
      <button type="button" class="close" data-dismiss="alert">&times;</button>
      <h4>Error!</h4>
      <div class="notice-text">Form has errors</div>
    </div>
    </c:if>
    </s:bind>
  </div>

  <div class="form-group">
    <form:label cssClass="col-sm-2 control-label" path="name">
      Menu name <span class="required">*</span>
    </form:label>
    <div class="col-sm-10">
      <form:input id="name" path="name" autocomplete="off" required="required" cssClass="form-control" />
      <form:errors path="name" cssClass="help-inline text-error" />
    </div>
  </div>
  <div class="form-group">
    <form:label cssClass="col-sm-2 control-label" path="price">
      Price <span class="required">*</span>
    </form:label>
    <div class="col-sm-10">
      <form:input id="price" path="price" autocomplete="off" required="required" cssClass="form-control" />
      <form:errors path="price" cssClass="help-inline text-error" />
    </div>
  </div>
  <div class="form-group">
    <form:label cssClass="col-sm-2 control-label" path="description">
      Description
    </form:label>
    <div class="col-sm-10">
      <form:textarea path="description" cssClass="form-control vertical-resize input-xlarge" rows="5" />
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Availability</label>
    <div class="col-sm-10">
      <div class="checkbox">
        <label>
          <form:checkbox id="available" path="availability" /> &nbsp;
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <form:label cssClass="col-sm-2 control-label" path="category.id">
      Category
    </form:label>
    <div class="col-sm-10">
      <form:select id="category" path="category.id" cssClass="form-control">
        <form:options items="${categories}" />
      </form:select>
    </div>
  </div>
  <c:if test="${not empty edit}">
    <div class="form-group">
      <label class="col-sm-2 control-label">Photo</label>
      <div class="col-sm-10">
        <label class="control-label">
          <a href="<c:url value="/menu/images/${menuId}" />" class="pull-left">Add photo</a>
        </label>
      </div>
    </div>
  </c:if>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary">Save</button>
      <button type="reset" class="btn">Reset</button>
    </div>
  </div>
  <form:hidden path="id" />
</form:form>
