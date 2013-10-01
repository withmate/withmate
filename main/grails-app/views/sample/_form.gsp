<%@ page import="io.withmate.sample.Sample" %>



<div class="fieldcontain ${hasErrors(bean: sampleInstance, field: 'test', 'error')} ">
	<label for="test">
		<g:message code="sample.test.label" default="Test" />
		
	</label>
	<g:textField name="test" value="${sampleInstance?.test}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sampleInstance, field: 'test2', 'error')} ">
	<label for="test2">
		<g:message code="sample.test2.label" default="Test2" />
		
	</label>
	<g:textField name="test2" value="${sampleInstance?.test2}"/>
</div>

