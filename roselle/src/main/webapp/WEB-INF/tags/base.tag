<%@ tag description="Simple Wrapper Tag" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ attribute name="stylesheets" fragment="true" %>
<%@ attribute name="styles" fragment="true" %>
<%@ attribute name="nav" fragment="true" %>
<%@ attribute name="header" fragment="true" %>
<%@ attribute name="scripts" fragment="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Merqurion Cockatoo Restaurant Application">
    <meta name="author" content="Merqurion Teamwork: Cengoserz, Ide Geram, Ucup, Rugz33 and Crocodile_R">
    <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />" />
    <jsp:invoke fragment="stylesheets" />
    <jsp:invoke fragment="styles" />
    <title><fmt:message key="appName" /> - ${title}</title>
  </head>
  <body>
    <!-- Nav -->
    <!--<div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container">
                <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="brand" href="<c:url value="/" />"><fmt:message key="brand" /></a>
                <div class="nav-collapse collapse">

                <-- Nav Menu 
                <ul class="nav">
                    <li><a href="<c:url value="/" />">Home</a></li>
                    <c:choose>
                    <c:when test="${not empty account}">
                    <c:if test="${empty guessMode}">
                    <c:choose>
                    <c:when test="${account.role.id == Role.ADMIN}">
                    <li><a href="<c:url value="/user/users" />">Users</a></li>
                    <li><a href="<c:url value="/menu/menu" />">Menus</a></li>
                    <li><a href="<c:url value="/category" />">Categories</a></li>
                    <li><a href="<c:url value="/table" />">Tables</a></li>
                    <li><a href="<c:url value="/rechtspersoon/edit" />">Recthspersoon</a></li>
                    </c:when>
                    <c:when test="${account.role.id == Role.CASHIER}">
                    <li><a href="<c:url value="/transaction/customer_orders" />">Transaction</a>
                    </c:when>
                    <c:when test="${account.role.id == Role.CHECKER or account.role.id == Role.CHEF}">
                    <li><a href="<c:url value="/order/order_list/grouped_by_order" />">Orders</a></li>
                    </c:when>
                    <c:when test="${account.role.id == Role.SUPERVISOR}">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Transaction <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="<c:url value="/transaction/monthly_report" />">Monthly Report</a></li>
                            <li><a href="<c:url value="/transaction/yearly_report" />">Yearly Report</a></li>
                        </ul>
                    </c:when>
                    <c:when test="${account.role.id == Role.WAITER}">
                    </c:when>
                    </c:choose>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="<c:url value="/settings/account" />">Account Settings</a></li>
                            <li><a href="<c:url value="/settings/password" />">Change Password</a></li>
                        </ul>
                    </li>
                    <li><a href="<c:url value="/logout" />">Logout</a></li>
                    </c:if>
                    </c:when>
                    <c:otherwise>
                    <li><a href="<c:url value="/login" />">Login</a></li>
                    </c:otherwise>
                    </c:choose>
                </ul>
                <-- End of Nav Menu
                </div>
            </div>
        </div>
    </div>-->
    <!-- End of Nav -->

    <!-- Main -->
  <jsp:doBody/>
    <!-- End of Main -->

    <!-- Footer -->
    <footer class="footer">
      <div class="container">
        <p>&copy; 2014 <a href="http://www.merqurion.com">Merqurion</a>. All rights reserved.</p>
      </div>
    </footer>
    <!-- End of Footer -->

    <!-- Scripts -->
    <script type="text/javascript" src="<c:url value="/resources/javascript/jquery-1.9.1.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
    <jsp:invoke fragment="scripts" />
    <!-- End of Scripts -->

  </body>
</html>