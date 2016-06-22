$(document).ready(function() {
  
  /*global $*/
    
  var td = $("td");
  // CELL COLOR DEPENDING ON CONTENT
  $(document).on('ready', function(){
    console.log("doc is ready");
    td.change().on('mousemove', function(){ $( "td:contains('BUG')" ).css( {"color": "red"} ); });
    td.change().on('mousemove', function() {
      $( "td:contains('TRIVIAL')" ).css( {"color": "grey", "font-weight": "normal"});
      $( "td:contains('MINOR')" ).css( {"color": "DeepSkyBlue"} );
      $( "td:contains('MAJOR')" ).css( {"color": "GoldenRod", "font-weight": "bold"});
      $( "td:contains('FEATURE')" ).css( {"color": "DeepSkyBlue"} );
      $( "td:contains('IMPROVEMENT')" ).css( {"color": "LimeGreen"} );
      $( "td:contains('PROJECT')" ).css( {"color": "DarkSlateGray"} );
      $( "td:contains('STOPPED')" ).css( {"color": "DarkGray"} );
      $( "td:contains('NEW')" ).css( {"background-color": "PowderBlue"} );
      $( "td:contains('TO-DO')" ).css( {"background-color": "PaleGoldenRod", "color": "DarkGray" } );
      $( "td:contains('ANALYSIS')" ).css( {"background-color": "Silver"} );
      $( "td:contains('IN PROGRESS')" ).css( {"background-color": "Khaki"} );
      $( "td:contains('QA')" ).css( {"background-color": "Aquamarine"} );
      $( "td:contains('DONE')" ).css( {"background-color": "OliveDrab", "color": "white"} );
      $( "td:contains('REJECTED')" ).css( {"background-color": "Thistle"} );
      $( "td:contains('CRITICAL')" ).css( {"color": "OrangeRed", "font-weight": "bold"} );
      $( "td:contains('BLOCKER')" ).css( {"color": "FireBrick", "font-weight": "bold"} );
      $( "td:contains('Yes!')" ).css( {"background-color": "YellowGreen", "font-weight": "bold", "color": "white"} );
      $( "td:contains('No!')" ).css( {"background-color": "inherit", "font-weight": "bold", "color": "DarkGray"} );
      $( "td:contains('Kundenprojekt')" ).css( {"color": "darkslategray", "font-weight": "bold"} );
      $( "td:contains('Cost-Sharing')" ).css( {"color": "darkslategray", "font-weight": "bold"} );
    });
  
  td.click(function(){ $( "td:contains('Yes!')" ).css( {"background-color": "YellowGreen", "font-weight": "bold", "color": "white"} ); });
  td.scroll(function(){ $( "td:contains('Yes!')" ).css( {"background-color": "YellowGreen", "font-weight": "bold", } ); });
    
  })
  
  
  
  
  $(".best_in_place").best_in_place();

  $('.best_in_place').bind("ajax:success", function () {$(this).closest('td').effect('highlight'); });
    
  
});