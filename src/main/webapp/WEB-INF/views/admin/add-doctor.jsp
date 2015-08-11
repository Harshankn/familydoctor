<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content">
	<div class="margin-left margin-top-middle title">
		<spring:message code="label.admin.registration" />
		<div class="hr-separator"></div>
	</div>
	<div class="margin-left-large margin-top-middle">		
							
		<c:if test="${not empty message}">
			<div class="success-message">
    			</h3><c:out value="${message}" />
    		</div>
		</c:if>

		<spring:url value="/admin/save-doctor" var="url" htmlEscape="true"/>
		<form:form commandName="newDoctor" action="${url}" method="POST">
		
			<form:errors path="*" cssClass="error-message" element="div" />
			
			<table class="data-table">
				<tr>
					<td class="text-align-right"><label for="firstName"><spring:message
								code="label.first.name" /> *</label></td>
					<td><form:input path="firstName" id="firstName" maxlength="10"
							size="15" /></td>
					<td class="text-align-right"><label for="lastName"><spring:message
								code="label.last.name" /> *</label></td>
					<td>&nbsp;<form:input path="lastName" id="lastName"
							maxlength="10" size="15" /></td>
				</tr>
				<tr>
					<td class="text-align-right"><label for="dateOfBirth"><spring:message
								code="label.date.of.birth" /> *</label></td>
					<td colspan="3"><form:input path="dateOfBirth"
							id="dateOfBirth" maxlength="10" size="47" /></td>
					<td rowspan="8" class="text-align-top"></td>
				</tr>
				<tr>
					<td class="text-align-right"><label for="gender"><spring:message
								code="label.gender" /> *</label></td>
					<td class="text-align-left"><form:radiobutton path="gender"
							id="gender" value="MALE" />&nbsp;&nbsp;<spring:message
							code="label.gender.male" /> &nbsp;&nbsp;&nbsp;&nbsp; <form:radiobutton
							path="gender" id="gender" value="FEMALE" />&nbsp;&nbsp;<spring:message
							code="label.gender.female" /></td>
				</tr>	
	
				<tr>
					<td class="text-align-right"><label for="street"><spring:message
								code="label.address.street" /></label></td>
					<td colspan="3"><form:input path="address.street" id="street"
							maxlength="50" size="47" /></td>
				</tr>
				<tr>
					<td class="text-align-right"><label for="city"><spring:message
								code="label.address.city" /></label></td>
					<td colspan="3"><form:input path="address.city" id="city"
							maxlength="50" size="47" /></td>
				</tr>
				<tr>
					<td class="text-align-right"><label for="state"><spring:message
								code="label.address.state" /></label></td>
					<td><form:input path="address.state" id="state" maxlength="2"
							size="15" /></td>
					<td class="text-align-right"><label for="zipcode"><spring:message
								code="label.address.zipcode" /> *</label></td>
					<td>&nbsp;<form:input path="address.zipcode" id="zipcode"
							maxlength="5" size="15" /></td>
				</tr>
				<tr>
					<td class="text-align-right"><label for="phone"><spring:message
								code="label.phone" /> *</label></td>
					<td colspan="3"><form:input path="phone" id="phone"
							maxlength="50" size="47" /></td>
				</tr>
				<tr>
					<td class="text-align-right"><label for="email"><spring:message
								code="label.user.email" /> *</label></td>
					<td colspan="3"><form:input path="user.email" id="email"
							maxlength="50" size="47" /></td>
				</tr>
				<tr>
					<td class="text-align-right"><label for="password"><spring:message
								code="label.user.password" /> *</label></td>
					<td colspan="3"><form:password path="user.password"
							id="password" maxlength="50" size="47" /></td>
				</tr>
				<tr>
					<td class="text-align-right"><label for="confirm"><spring:message
								code="label.user.confirm.password" /> *</label></td>
					<td colspan="3"><form:password path="user.confirmPassword"
							id="confirm" maxlength="50" size="47" /></td>
				</tr>
				<tr>
					<td><label>License #:</label></td>
					<td><form:input path="licenseNumber" /></td>
				</tr>	
				<tr>
					<td><label>Specialization:</label></td>
					<td>
						<form:select path="specialization">
							<form:options items="${specialization}"/>
						</form:select>
					</td>
				</tr>		
				
				<tr>
					<td></td>
					<td colspan="3" class="text-align-center">
						<form:input type="hidden" path="user.enabled" />
						<input type="submit" value="Submit"/>
						
						<c:url value="/admin" var="url"/>
						<button class="btn-white" onclick="window.location='<c:out value='${url}'/>'"> Cancel </button>
					</td>
				</tr>																						
			</table>

		</form:form>
		
	</div>
</div>