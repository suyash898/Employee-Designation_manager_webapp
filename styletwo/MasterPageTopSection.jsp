<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Guard>
<jsp:forward page='/LoginForm.jsp' />
</tm:Guard>
<!DOCTYPE html>
<html lang='en'>
<head>
<meta charset='UTF-8'>
<title>Style Two</title>
<link rel='stylesheet' type='text/css' href='/styletwo/css/styles.css'>
</head>
<body>
<!--main content box starts-->
<div class='main-container'>
<!--header content box starts-->
<div class='header'>
<a href='/styletwo/index.html'><img src='https://thinkingmachines.in/assets/images/logo/tm.png' class='logo'></a>
<div class='brand-name'>Thinking Machines</div>
<div class='username'>
<img src='/styletwo/images/user.png' />
${username}&nbsp;
<a href='/styletwo/logout'>Logout</a>
</div>
</div><!--header ends here-->
<!--mid box content box starts-->
<div class='content'>
<!--left panel Starts-->
<div class='content-left-panel'>

<tm:If condition='${module==DESIGNATION}'>
<b>Designation</b><br>
</tm:If>
<tm:If condition='${module!=DESIGNATION}'>
<a href='/styletwo/Designations.jsp'>Designations</a><br>
</tm:If>
<tm:If condition='${module==EMPLOYEE}'>
<b>Employee</b><br>
</tm:If>
<tm:If condition='${module!=EMPLOYEE}'>
<a href='/styletwo/Employees.jsp'>Employees</a><br>
</tm:If>

<tm:If condition='${module!=HOME}'>
<br>
<a href='/styletwo/index.jsp'>Home</a><br>
</tm:If>




</div>
<!--Left panel ends-->
<!--right panel Starts-->
<div class='content-right-panel'>
