<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style>
.onClass {
	background-color: #E6E6E6;
}

</style>

<!--<c:url var="string1" value="${pageContext.request.requestURL}"/>
<c:set var="length1" value="${fn:length(string1)}" />
<c:set var="chkString" value="${fn:substring(string1, length1-5, length1-4) }" />-->
	  
<nav>
	<ul class="nav nav-pills pull-right"> 
	 <li role="presentation">
	  <a href="/board/list" <c:if test="${nav eq 'list' }">class="onClass"</c:if> >List normal</a> 
	 </li>
	 
	 <li role="presentation">
	  <a href="/board/listPage?num=1" <c:if test="${nav eq 'listPage' }">class="onClass"</c:if> >List + Paging</a> 
	 </li>
	 
	 <li role="presentation">
	  <a href="/board/listPageSearch?num=1" <c:if test="${nav eq 'listPageSearch' }">class="onClass"</c:if> >List + Paging + Search</a> 
	 </li>
	 
	 <li role="presentation">
	  <a href="/board/write" <c:if test="${nav eq 'write' }">class="onClass"</c:if> >write</a> 
	 </li> 
	</ul>
</nav>
<h3 class="text-muted"><a href="/"> HOME </a></h3>	
<!--<c:remove var="string1" />
<c:remove var="length1" />
<c:remove var="chkString" />-->