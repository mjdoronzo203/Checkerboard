<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkerboard</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id = "header">
	<% 
		int width = 0;
		int height = 0;
		
		if(request.getParameter("width") != null) {
			width = Integer.parseInt(request.getParameter("width"));
		}
		if(request.getParameter("height") != null) {
			height = Integer.parseInt(request.getParameter("height"));
		} 
	%>
		<h1>Checkerboard: <%= width %>w x <%=height %>h</h1>
	</div>
	
	<div id = "board">
		
		<% for(int i = 0; i < height; i++){ %>
			<% if (i % 2 == 0) { %>
				<div>
					 <% for(int j = 0; j < width; j++){ %>
                			<% if(j % 2 == 0){ %>
                        		<div class="rowoneblack"></div>
                  		<% } else{ %>
                        		<div class="rowonered"></div>
                    		<% } %>
               		 <% } %>
				</div>
			<% } else { %>
				<div>
					<% for(int k = 0; k < width; k++){ %>
	                		<% if(k % 2 == 0){ %>
	                        <div class="rowtwored"></div>
	                    	<% } else{ %>
	                        <div class="rowtwoblack"></div>
	                    	<% } %>
	                <% } %>
				</div>
			<% } %>   
        <% } %>
	</div>

</body>
</html>