// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require ckeditor/init
//= require_tree .

// Title animation
$(document).ready(function() {
  var title;
  if (title = document.getElementsByClassName('title-text')[0]) {
    snabbt(title, 'attention', {
      rotation: [0, 0, Math.PI/5],
      springConstant: 1.9,
      springDeceleration: 0.9,
    });
  }
});

$(document).ready(function() {
  var $hamburger = $('#hamburger');
  var $ul = $('.nav ul');

  window.onresize = function() {
    var width = $('body').width();

    if (width > 800) {
      $ul.show();
    } else {
      $ul.hide();
    }
  };

  $hamburger.click(function(){
    $ul.toggle('fast');
  });
});

// Creates the ckeditor text area
$('textarea.ckeditor').each(function () {
   var $textarea = $(this);
   $textarea.val(CKEDITOR.instances[$textarea.attr('name')].getData());
});

// Initializes highlighting on article pages
$(window).load(function(){
  $('pre code').each(function(i, block) {
    hljs.highlightBlock(block);
  });
});


