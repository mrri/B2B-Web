<%-- 
    Document   : chart
    Created on : May 26, 2015, 6:27:17 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <html>
  <head>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    
  </head>
  <body>
      <div id="columnchart_material" style="width: 900px; height: 500px;"></div>
      
      
    <script type="text/javascript">
       
      google.load("visualization", "1.1", {packages:["bar"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Sales'],
          ['2014', 0],
          ['2015', ${user_id}],
          ['2016',6],
          ['2017', 2]
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