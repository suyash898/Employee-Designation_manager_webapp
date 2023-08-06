function Employee(){
this.employeeId = "";
this.name = "";
this.designationCode = 0;
this.designation = "";
this.dateOfBirth = "";
this.gender = "";
this.isIndian = true;
this.basicSalary = 0;
this.panNumber = "";
this.aadharCardNumber = "";
}
var employees=[]
var employee
employee = new Employee()
employee.employeeId = "A100004";
employee.name = "Lalita";
employee.designationCode =2;
employee.designation = "Clerk";
employee.dateOfBirth = "28/11/2000";
employee.gender = "F";
employee.isIndian = true;
employee.basicSalary =300000.00;
employee.panNumber = "AB1237";
employee.aadharCardNumber = "UB1237";
employees[0] = employee;
employee = new Employee()
employee.employeeId = "A100003";
employee.name = "Rohit";
employee.designationCode =6;
employee.designation = "gamer";
employee.dateOfBirth = "25/10/2000";
employee.gender = "M";
employee.isIndian = true;
employee.basicSalary =500000.00;
employee.panNumber = "A1236";
employee.aadharCardNumber = "U1236";
employees[1] = employee;
employee = new Employee()
employee.employeeId = "A100002";
employee.name = "Ronit";
employee.designationCode =3;
employee.designation = "Teacher";
employee.dateOfBirth = "22/11/2000";
employee.gender = "M";
employee.isIndian = true;
employee.basicSalary =200000.00;
employee.panNumber = "AB1235";
employee.aadharCardNumber = "UB1235";
employees[2] = employee;
var selectedRow = null
function selectEmployee(row,employeeId){
if(row == selectedRow) return
if(selectedRow != null){
selectedRow.style.background='white'
selectedRow.style.color='black'
}
row.style.background = "#7C7B7B"
row.style.colot = "white"
selectedRow = row
var i
for(i =0 ; i<employees.length ; i++){
if(employeeId == employees[i].employeeId){
break
}
}
var emp = employees[i]
document.getElementById("detailPanel_emplyeeId").innerHTML = emp.employeeId
document.getElementById("detailPanel_name").innerHTML = emp.name
document.getElementById("detailPanel_designation").innerHTML = emp.designation
document.getElementById("detailPanel_dateOfBirth").innerHTML = emp.dateOfBirth
document.getElementById("detailPanel_gender").innerHTML = emp.gender
if (emp.isIndian) {
document.getElementById("detailPanel_isIndian").innerHTML = "Yes"
}
else {
document.getElementById("detailPanel_isIndian").innerHTML = "No"
}
document.getElementById("detailPanel_basicSalary").innerHTML = emp.basicSalary
document.getElementById("detailPanel_panNumber").innerHTML = emp.panNumber
document.getElementById("detailPanel_aadharCardNumber").innerHTML = emp.aadharCardNumber
}





function createDynamicRowClickHandler(rowAddress,employeeId)
{
return function()
{
selectEmployee(rowAddress,employeeId)
};
}
function populateEmployeesGridTable()
{
var employeesGridTable=document.getElementById("employeesGridTable");
var employeesGridTableBody=employeesGridTable.getElementsByTagName("tbody")[0];
var employeesGridTableBodyRowTemplate=employeesGridTableBody.getElementsByTagName("tr")[0];
//remove the row from DOM(document object model)
employeesGridTableBodyRowTemplate.remove();
var employeesGridTableColumnsTemplateCollection=employeesGridTableBodyRowTemplate.getElementsByTagName("td");
var cellTemplate;
var k;
var dynamicRow;
var dynamicRowCells;
var placeHolderFor;
for(k=0;k<employees.length;k++)
{
dynamicRow=employeesGridTableBodyRowTemplate.cloneNode(true);
employeesGridTableBody.appendChild(dynamicRow);
dynamicRowCells=dynamicRow.getElementsByTagName("td");
for(var i=0;i<dynamicRowCells.length;i++)
{
cellTemplate=dynamicRowCells[i];
placeHolderFor=cellTemplate.getAttribute("placeHolderId");
if(placeHolderFor==null) continue;
if(placeHolderFor=="serialNumber") cellTemplate.innerHTML=(k+1);
if(placeHolderFor=="employeeId") cellTemplate.innerHTML=employees[k].employeeId;
if(placeHolderFor=="name") cellTemplate.innerHTML=employees[k].name;
if(placeHolderFor=="designationCode") cellTemplate.innerHTML=employees[k].designationCode;
if(placeHolderFor=="designation") cellTemplate.innerHTML=employees[k].designation;
if(placeHolderFor=="dateOfBirth") cellTemplate.innerHTML=employees[k].dateOfBirth;
if(placeHolderFor=="gender") cellTemplate.innerHTML=employees[k].gender;
if(placeHolderFor=="isIndian") cellTemplate.innerHTML=employees[k].isIndian;
if(placeHolderFor=="basicSalary") cellTemplate.innerHTML=employees[k].basicSalary;
if(placeHolderFor=="panNumber") cellTemplate.innerHTML=employees[k].panNumber;
if(placeHolderFor=="aadharCardNumber") cellTemplate.innerHTML=employees[k].aadharCardNumber;
if(placeHolderFor=="editOption") cellTemplate.innerHTML="<a href='/styletwo/editEmployee?employeeId="+employees[k].employeeId+"'>Edit</a>";
if(placeHolderFor=="deleteOption") cellTemplate.innerHTML="<a href='/styletwo/employeeDeleteConfirmation?employeeId="+employees[k].employeeId+"'>Edit</a>";
}
dynamicRow.onclick=createDynamicRowClickHandler(dynamicRow,employees[k].employeeId);
}//employee population loop ends
}
window.addEventListener('load',populateEmployeesGridTable);
