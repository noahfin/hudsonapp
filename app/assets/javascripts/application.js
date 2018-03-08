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
//= require popper
//= require rails-ujs
//= require jquery-3.2.1.min
//= require bootstrap.min
//= require material.min
//= require chartist.min
//= require arrive.min
//= require perfect-scrollbar.jquery.min
//= bootstrap-notify
//= material-dashboard
//= application



// fix register and login lable by adding the .active class on focus
$(document).ready(function() {
   // console.log( $('#finished_form'))
   // $('#finished_form ').children( 'select' ).addClass('mdb-select');
   //    if (jQuery.contains(document, '#finished_form')) {
   //      console.log( $('#finished_form'))
   //      $('#finished_form ').children( 'select' ).addClass('mdb-select');
   //    }
 // $('#finished_form #mdb-select-category').addClass('mdb-select');


  $('.form-control').focus(function(){
    var label = $('label[for="'+$(this).attr('id')+'"]');
     $(label).addClass('active');
     label = '';
  });

    $('.form-control').on( "blur", function() {
     var label = $('label[for="'+$(this).attr('id')+'"]');
         $(label).removeClass('active');
         label = '';
    });


  // This is the todo section to show and hide in progress and completed-task and submit forms
    $('.todo-progress-menu').click(function(e){
      e.preventDefault()
      $( ".inprogress-task" ).toggle(function(){

      });
    });
        $('.completed-task').click(function(e){
            e.preventDefault()
            $( ".finshed-task" ).toggle(function(){
          });
        });

      //mark task as finshed submit the form
     $('.check-i').click(function(e){
         e.preventDefault()
         $(this).closest('form').submit();
     });

     //delete a task submit the form
    $('.check-i-delete').click(function(e){
       e.preventDefault()
       $(this).closest('form').submit();
    });

    // Tab section send get request whnen user click the button
    $('.assign-task').click(function(e){
            e.preventDefault()
              var id = $('.ub-2', this).html();
              console.log(id);
              $('#assigned_id').val(id);
        }); //h-nav-drop
    // Add the class show to navbar-drop-down to fix version change issue when clicked
    $('.h-nav-drop').click(function(e){
            e.preventDefault()
            console.log('icon clicked');
            $('#top-nav-dropdown').addClass('show');

        }); //h-nav-drop
});
