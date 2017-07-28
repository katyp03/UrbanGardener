// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require rails-ujs
//= require turbolinks
//= require_tree .
//= require bootstrap-sprockets

$(document).ready(function(){
        $('#nav').localScroll(800);
        $('#intro').parallax("50%", 0.1);
        $('#second').parallax("50%", 0.1);
        $('.bg').parallax("50%", 0.4);
        $('#third').parallax("50%", 0.3);
})

document.addEventListener("DOMContentLoaded", function(){

  $('.navlogo2').hide();

  $('.navlogo').hover(
    function(){
      $('.navlogo').hide();
      $('.navlogo2').show();
    },
    function(){
      $('.navlogo2').hide();
      $('.navlogo').show();
    }
  )
  $('.navlogo2').hover(
    function(){
      $('.navlogo').hide();
      $('.navlogo2').show();
    },
    function(){
      $('.navlogo2').hide();
      $('.navlogo').show();
    }
  )

});
