//= require jquery

$(document).ready(function(){
  
  // Finds edit buttons
  $('.mercury-edit-toggle').each(function(i){
    $this = $(this);
    // Turns link into link to original article if already editing
    // Changes text to what ever is specified in the data attribute
    // 'data-finish-editing'
    if( $this.attr('href') == window.parent.location.pathname ){
      $this.attr( 'href', window.location.pathname );
      $this.text( $this.attr('data-finish-editing') );
    }
  });
  
});