<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name='DESIGNATION'/>
<jsp:useBean id='designationBean' scope='request' class='com.thinking.machines.hr.beans.DesignationBean'/>
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean'/>
<jsp:include page='/MasterPageTopSection.jsp' />
<script src='/styletwo/js/DesignationDeleteConfirmation.js'></script>
<b>Designation(Delete Module)</b><br><br>
<form method='post' action='/styletwo/DeleteDesignation.jsp' onsubmit='return validateForm(this)' >
<tm:FormID/>
Designation : ${designationBean.title}<br><br>
<input type='hidden' id='code' name='code' value='${designationBean.code}'>
Are you sure you want to delete ?
<button type='submit'>Yes</button>
<button type='button' onclick='cancelDeletion()'>No</button>
</form>
<form id='cancelDeletionForm' action='/styletwo/Designations.jsp'></form>
<jsp:include page='/MasterPageBottomSection.jsp' />














