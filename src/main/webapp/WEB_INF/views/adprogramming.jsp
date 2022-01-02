<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
<head>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<jsp:include page="../includes/adminheader.jsp" />

</head>
<body>

<div id="chart_div" style="height: 900px;" ></div>

</body>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic);

function drawBasic() {

	 var data = google.visualization.arrayToDataTable([
         ['Language','%']
         <c:forEach var="trends" items="${trends}">  
             ,['${trends.key}',${trends.value}]
         </c:forEach>
     ]);      
     
      var options = {
        title: 'Programming Languages',
        chartArea: {width: '50%'},
        
        hAxis: {
          title: 'Percentage',
          minValue: 0
        },
        vAxis: {
          title: 'Languages'
        }
      };

      var chart = new google.visualization.BarChart(document.getElementById('chart_div'));

      chart.draw(data, options);
    }

</script>
  
</html>


