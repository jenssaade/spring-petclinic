<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<spring:url value="/resources/images/banner-graphic.png" var="banner"/>
<spring:eval expression="@environment['feature.petclinic.ownersearch.enabled']" var="ownerSearchEnabled"/>
<spring:eval expression="@environment['petclinic.developer.mode']" var="devmode"/>
<spring:eval expression="@environment['petclinic.developer.mode.alert.color']" var="alertColor"/>
<spring:eval expression="@environment['discobit.cfg.uuid']" var="discobitCfg"/>
<spring:eval expression="@environment['java.version']" var="javaversion"/>

 <c:if test="${devmode}">
 <div class="devmode" style="background-color:${alertColor};">
 <strong>DEV MODE ENABLED</strong>	
 <br>by discoBit configuration ${discobitCfg}
 <br>Java: ${javaversion}
 </div>
 </c:if>
<img src="${banner}"/>

<div class="navbar" style="width: 601px;">
    <div class="navbar-inner">
        <ul class="nav">
            <li style="width: 100px;"><a href="<spring:url value="/" htmlEscape="true" />"><i class="icon-home"></i>
                Home</a></li>
            <c:if test="${ownerSearchEnabled}">
            <li style="width: 130px;"><a href="<spring:url value="/owners/find.html" htmlEscape="true" />"><i
                    class="icon-search"></i> Find owners</a></li>
            </c:if>
            <li style="width: 140px;"><a href="<spring:url value="/vets.html" htmlEscape="true" />"><i
                    class="icon-th-list"></i> Veterinarians</a></li>
            <li style="width: 90px;"><a href="<spring:url value="/oups.html" htmlEscape="true" />"
                                        title="trigger a RuntimeException to see how it is handled"><i
                    class="icon-warning-sign"></i> Error</a></li>
            <li style="width: 80px;"><a href="#" title="not available yet. Work in progress!!"><i
                    class=" icon-question-sign"></i> Help</a></li>
        </ul>
    </div>
</div>
	
