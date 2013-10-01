
<%@ page import="io.withmate.sample.Sample" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sample.label', default: 'Sample')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sample" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-sample" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list sample">
			
				<g:if test="${sampleInstance?.test}">
				<li class="fieldcontain">
					<span id="test-label" class="property-label"><g:message code="sample.test.label" default="Test" /></span>
					
						<span class="property-value" aria-labelledby="test-label"><g:fieldValue bean="${sampleInstance}" field="test"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${sampleInstance?.test2}">
				<li class="fieldcontain">
					<span id="test2-label" class="property-label"><g:message code="sample.test2.label" default="Test2" /></span>
					
						<span class="property-value" aria-labelledby="test2-label"><g:fieldValue bean="${sampleInstance}" field="test2"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${sampleInstance?.id}" />
					<g:link class="edit" action="edit" id="${sampleInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
