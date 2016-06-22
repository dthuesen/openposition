$(document).ready(function() {
    
  // CELL COLOR DEPENDING ON CONTENT
  var td = $("td");
  td.change().mousemove(function(){ $( "td:contains('BUG')" ).css( {"color": "red"} ); });
  td.mousemove(function(){ $( "td:contains('TRIVIAL')" ).css( {"color": "grey", "font-weight": "normal"}) });
  td.mousemove(function(){ $( "td:contains('MINOR')" ).css( {"color": "DeepSkyBlue"} ); });
  td.mousemove(function(){ $( "td:contains('MAJOR')" ).css( {"color": "GoldenRod", "font-weight": "bold"}) });
  td.mousemove(function(){ $( "td:contains('FEATURE')" ).css( {"color": "DeepSkyBlue"} ); });
  td.mousemove(function(){ $( "td:contains('IMPROVEMENT')" ).css( {"color": "LimeGreen"} ); });
  td.mousemove(function(){ $( "td:contains('PROJECT')" ).css( {"color": "DarkSlateGray"} ); });
  td.mousemove(function(){ $( "td:contains('STOPPED')" ).css( {"color": "DarkGray"} ); });
  td.mousemove(function(){ $( "td:contains('NEW')" ).css( {"background-color": "PowderBlue"} ); });
  td.mousemove(function(){ $( "td:contains('TO-DO')" ).css( {"background-color": "PaleGoldenRod", "color": "DarkGray" } ) });
  td.mousemove(function(){ $( "td:contains('ANALYSIS')" ).css( {"background-color": "Silver"} ); });
  td.mousemove(function(){ $( "td:contains('IN PROGRESS')" ).css( {"background-color": "Khaki"} ); });
  td.mousemove(function(){ $( "td:contains('QA')" ).css( {"background-color": "Aquamarine"} ); });
  td.mousemove(function(){ $( "td:contains('DONE')" ).css( {"background-color": "OliveDrab", "color": "white"} ) });
  td.mousemove(function(){ $( "td:contains('REJECTED')" ).css( {"background-color": "Thistle"} ); });
  td.mousemove(function(){ $( "td:contains('CRITICAL')" ).css( {"color": "OrangeRed", "font-weight": "bold"} ) });
  td.mousemove(function(){ $( "td:contains('BLOCKER')" ).css( {"color": "FireBrick", "font-weight": "bold"} ) });
  td.mousemove(function(){ $( "td:contains('Yes!')" ).css( {"background-color": "YellowGreen", "font-weight": "bold", "color": "white"} ) });
  td.mousemove(function(){ $( "td:contains('No!')" ).css( {"background-color": "inherit", "font-weight": "bold", "color": "DarkGray"} ) });
  td.click(function(){ $( "td:contains('Yes!')" ).css( {"background-color": "YellowGreen", "font-weight": "bold", "color": "white"} ) });
  td.scroll(function(){ $( "td:contains('Yes!')" ).css( {"background-color": "YellowGreen", "font-weight": "bold", } ) });
  
  $(".best_in_place").best_in_place();

  $('.best_in_place').bind("ajax:success", function () {$(this).closest('td').effect('highlight'); });
    
  
});