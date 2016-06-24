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
      $( "td:contains('OPEN')" ).css( {"color": "white", "background-color": "Red"} );
      $( "td:contains('QA')" ).css( {"background-color": "Aquamarine"} );
      $( "td:contains('DONE')" ).css( {"background-color": "OliveDrab", "color": "white"} );
      $( "td:contains('REJECTED')" ).css( {"background-color": "Thistle"} );
      $( "td:contains('CRITICAL')" ).css( {"color": "OrangeRed", "font-weight": "bold"} );
      $( "td:contains('BLOCKER')" ).css( {"color": "FireBrick", "font-weight": "bold"} );
      $( "td:contains('Yes!')" ).css( {"background-color": "YellowGreen", "font-weight": "bold", "color": "white"} );
      $( "td:contains('No!')" ).css( {"background-color": "inherit", "font-weight": "bold", "color": "DarkGray"} );
      $( "td:contains('CLIENT-PROJECT')" ).css( {"color": "darkslategray", "font-weight": "bold"} );
      $( "td:contains('COST-SHARING')" ).css( {"color": "darkslategray", "font-weight": "bold"} );
    });
  
  td.click(function(){ $( "td:contains('Yes!')" ).css( {"background-color": "YellowGreen", "font-weight": "bold", "color": "white"} ); });
  td.scroll(function(){ $( "td:contains('Yes!')" ).css( {"background-color": "YellowGreen", "font-weight": "bold", } ); });
    
  })
  
  // Shortlist Filter
  $('#men-shortlist').on('change', function() {
    let selectedOption = $('#men-shortlist option:selected').val();
    
    switch (selectedOption) {
      case "All":
        window.location.assign("/open_positions_lists");
        break;
      case true:
        window.location.assign("/open_positions_lists?shortlist=1");
        break;
      case false:
        window.location.assign("/open_positions_lists?shortlist=0");
        break;
      default: 
        window.alert = "Looking forward to the Weekend";
    }

  })  
  
  // Category Filter
  $('#men-category').on('change', function() {
    let selectedOption = $('#men-category option:selected').val();
    
    switch (selectedOption) {
      case "All":
        window.location.assign("/open_positions_lists");
        break;
      case "FEATURE":
        window.location.assign("/open_positions_lists?category=FEATURE");
        break;
      case "BUG":
        window.location.assign("/open_positions_lists?category=BUG");
        break;
      case "IMPROVEMENT":
        window.location.assign("/open_positions_lists?category=IMPROVEMENT");
        break;
      case "PROJECT":
        window.location.assign("/open_positions_lists?category=PROJECT");
        break;
      case "STOPPED":
        window.location.assign("/open_positions_lists?category=STOPPED");
        break;
      default: 
        window.alert = "Looking forward to the Weekend";
    }

  })  
  
  // Client Filter
  $('#men-client').on('change', function() {
    let selectedOption = $('#men-client option:selected').val();
    
    switch (selectedOption) {
      case "All":
        window.location.assign("/open_positions_lists");
        break;
      case "O2":
        window.location.assign("/open_positions_lists?client=O2");
        break;
      case "Telefonica":
        window.location.assign("/open_positions_lists?client=Telefonica");
        break;
      default: 
        window.alert = "Looking forward to the Weekend";
    }

  })
  
  // Priority Filter
  $('#men-prio').on('change', function() {
    let selectedOption = $('#men-client option:selected').val();
    
    switch (selectedOption) {
      case "All":
        window.location.assign("/open_positions_lists");
        break;
      case "TRIVIAL":
        window.location.assign("/open_positions_lists?prio=TRIVIAL");
        break;
      case "MINOR":
        window.location.assign("/open_positions_lists?prio=MINOR");
        break;
      case "MAJOR":
        window.location.assign("/open_positions_lists?prio=MAJOR");
        break;
      case "CRITICAL":
        window.location.assign("/open_positions_lists?prio=CRITICAL");
        break;
      case "BLOCKER":
        window.location.assign("/open_positions_lists?prio=BLOCKER");
        break;
      default: 
        window.alert = "Looking forward to the Weekend";
    }

  })
  
  // State Filter
  $('#men-state').on('change', function() {
    let selectedOption = $('#men-state option:selected').val();
    
    switch (selectedOption) {
      case "All":
        window.location.assign("/open_positions_lists");
        break;
      case "NEW":
        window.location.assign("/open_positions_lists?state=NEW");
        break;
      case "TO-DO":
        window.location.assign("/open_positions_lists?state=TO-DO");
        break;
      case "ANALYSIS":
        window.location.assign("/open_positions_lists?state=ANALYSIS");
        break;
      case "IN PROGRESS":
        window.location.assign("/open_positions_lists?state=IN PROGRESS");
        break;
      case "QA":
        window.location.assign("/open_positions_lists?state=QA");
        break;
      case "DONE":
        window.location.assign("/open_positions_lists?state=DONE");
        break;
      case "REJECTED":
        window.location.assign("/open_positions_lists?state=REJECTED");
        break;
      default: 
        window.alert = "Looking forward to the Weekend";
    }

  })  
  
  
  $(".best_in_place").best_in_place();

  $('.best_in_place').bind("ajax:success", function () {$(this).closest('td').effect('highlight'); });
    
  
});