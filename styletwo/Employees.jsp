<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name='EMPLOYEE'/>
<jsp:include page='/MasterPageTopSection.jsp' />
<link rel='stylesheet' type='text/css' href='/styletwo/css/employees.css'>
<script src='/styletwo/js/Employees.js'></script>
<b>Employee</b>
<div class='employeeGrid'>
<table border='1' id='employeesGridTable'>
<thead>
<tr>
<th colspan='6' class='employeeGridHeader'>
<a href='/styletwo/getEmployeeAddForm'>Add Employee</a>
</th>
</tr>
<tr>
<th class='employeeGridSNOColumnTitle'>S.No.</th>
<th class='employeeGridIdColumnTitle'>Id.</th>
<th class='employeeGridNameColumnTitle'>Name</th>
<th class='employeeGridDesignationColumnTitle'>Designation</th>
<th class='employeeGridEditOptionColumnTitle'>Edit</th>
<th class='employeeGridDeleteOptionColumnTitle'>Delete</th>
</tr>
</thead>
<tbody>



<tr style='cursor:pointer'>
<td style='text-align:right' placeHolderId='serialNumber'></td>
<td placeHolderId='employeeId'></td>
<td placeHolderId='name'></td>
<td placeHolderId='designation'></td>
<td style='text-align:center' placeHolderId='editOption'></td>
<td style='text-align:center' placeHolderId='deleteOption'></td>
</tr>



</tbody>
</table>
</div>
<div style='border:2px solid black;margin: 5px;height: 24vh;'>
<label style='background: gray;color: white;padding-right: 5px;padding-left: 5px;margin: 1px;'>Details</label>
<table border='0' width='100%'>
<tr>
<td>Employee Id: <span id='detailPanel_emplyeeId' style='margin-right:30px'></span></td>
<td>Name : <span id='detailPanel_name' style='margin-right:30px'></span></td>
<td>Designation : <span id='detailPanel_designation' style='margin-right:30px'></span>
</td>
</tr>
<tr>
<td>Date of Birth : <span id='detailPanel_dateOfBirth' style='margin-right:30px'></span>
</td>
<td>Gender : <span id='detailPanel_gender' style='margin-right:30px'></span></td>
<td>Is Indian : <span id='detailPanel_isIndian' style='margin-right:30px'></span></td>
</tr>
<tr>
<td>Basic salary : <span id='detailPanel_basicSalary' style='margin-right:30px'></span>
</td>
<td>Pan Number : <span id='detailPanel_panNumber' style='margin-right:30px'></span></td>
<td>Aadhar card Number : <span id='detailPanel_aadharCardNumber'
style='margin-right:30px'></span></td>
</tr>
</table>
</div>  

 
<jsp:include page='/MasterPageBottomSection.jsp' />