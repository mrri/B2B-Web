<%-- 
    Document   : chart
    Created on : May 26, 2015, 6:27:17 PM
    Author     : lo.zert
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <c:import url="/analytics" />
  </head>
  <body>
      <% String a="10";%>
      <div id="columnchart_material" style="width: 900px; height: 500px;"></div>
    <script type="text/javascript">
       
      google.load("visualization", "1.1", {packages:["bar"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Danh mục', 'Số lượng'],
          <c:forEach items="${requestScope.analyticsTotal}" var="Category">
                         
                     ['${Category.name}',${Category.total_product}],    
                </c:forEach>
        ]);

        var options = {
          chart: {
            title: 'Khả năng cung cấp',
            subtitle: '',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('columnchart_material'));

        chart.draw(data, options);
      }
    </script>
    
                
            
    
        
  </body>
</html>