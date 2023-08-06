<jsp:useBean id='administratorBean' scope='request' class='com.thinking.machines.hr.beans.AdministratorBean' />
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean' />
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
</div><!--header ends here-->
<!--mid box content box starts-->
<div class='content'>

<div class='loginForm'>
<form action='/styletwo/Login.jsp' method='post'>
<table border='0'>
<tr>
<td colspan='2' align='center'>
<span class='error'>
${errorBean.error}
</span>
</td>
</tr>
<tr>
<td>Username</td>
<td><input type='text' name='username' id='username' maxlength='15'></td>
</tr>
<tr>
<td>Password</td>
<td><input type='password' name='password' id='password' maxlength='15'></td>
</tr>
<tr>
<td colspan='2' align='center'>
<button type='submit'>Login</button>
</td>
</tr>
</table>
</form>
</div>


</div><!--mid box content box ends-->
<!--footer Starts-->
<div class='footer'>&copy;Thinking Machines 2023</div>
<!--footer Ends-->
</div>
<!--main content box ends-->
</body>
</html>


