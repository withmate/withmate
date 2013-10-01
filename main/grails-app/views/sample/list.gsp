
<%@ page import="io.withmate.sample.Sample" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sample.label', default: 'Sample')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sample" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sample" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="test" title="${message(code: 'sample.test.label', default: 'Test')}" />
					
						<g:sortableColumn property="test2" title="${message(code: 'sample.test2.label', default: 'Test2')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sampleInstanceList}" status="i" var="sampleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sampleInstance.id}">${fieldValue(bean: sampleInstance, field: "test")}</g:link></td>
					
						<td>${fieldValue(bean: sampleInstance, field: "test2")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${sampleInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
