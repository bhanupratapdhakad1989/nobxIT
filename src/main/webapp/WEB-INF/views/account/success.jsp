<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success Page</title>
<style>
#loader {
  position: absolute;
  left: 50%;
  top: 50%;
  z-index: 1;
  width: 120px;
  height: 120px;
  margin: -76px 0 0 -76px;
  border: 16px solid #f3f3f3;
  border-radius: 50%;
  border-top: 16px solid #3498db;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

.overlay {
    position: fixed;
    display: block;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0,0,0,0.5);
    z-index: 2;
    cursor: pointer;
}
</style>
</head>
<body>

	<h3>Success Page</h3>
	Welcome ${sessionScope.username }
	<br>
	<a href="${pageContext.request.contextPath }/account/logout">Logout</a>
	

	<input type="button" value="fetch report" onClick="onSubmit()">
	
	<script type="text/javascript">
		function onSubmit() {
			var btn = document.createElement("div");
  			btn.id = "loader";
  			document.body.appendChild(btn);
  			
  			var div = document.createElement("div");
  			div.className = "overlay";
  			document.body.appendChild(div);
  			
			setTimeout(openNewPage, 60000);
		}

		function openNewPage() {
			window.onbeforeunload = null;
			window.location.href = "https://www.google.co.in/"
		}

		 window.onbeforeunload = function() {
		       return "Dude, are you sure you want to leave? Think of the kittens!";
		 }
		
		 
	</script>

</body>
</html>