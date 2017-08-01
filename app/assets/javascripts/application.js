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

document.addEventListener("turbolinks:load", function(){

  // logo changing on hover
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

  // parallax scrolling for home page
  $('#nav').localScroll(800);
  $('#intro').parallax("50%", 0.1);
  $('#second').parallax("50%", 0.1);
  $('.bg').parallax("30vw", 1.8);
  $('.sc').parallax("2vw", 2.4);
  $('#third').parallax("50%", 0.3);
});

// making sign in modal show and close
function signInModalShow(){
  document.getElementById('signInModal').style.display = "block";
  document.getElementById('signInForm').style.display = "block";
  document.getElementById('signUpForm').style.display = "none";
}
// making sign up form render from sign in form in modal
function signUpFormShow(){
  document.getElementById('signInForm').style.display = "none";
  document.getElementById('signUpForm').style.display = "block";
}
// making sign in form render from sign up form in modal
function signInFormShow(){
  document.getElementById('signInForm').style.display = "block";
  document.getElementById('signUpForm').style.display = "none";
}
// making modal close when you click "close" button
function closeModal() {
  document.getElementById('signInModal').style.display = "none";
}
