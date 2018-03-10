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
  //  $('[data-toggle="popover"]').popover();

  // $(".toggle-popover").hover(function(){
  //       $(this).popover('toggle');


  //   });


 // <input class="hide marketing" type="radio" value="" checked="checked" name="todo[marketing]" />
 //  <input class="hide leads" type="radio" value="" checked="checked" name="todo[leads]" />
 //   <input class="hide personal" type="radio" value="" checked="checked" name="todo[personal]" />
 //    <input class="hide deals" type="radio" value="" checked="checked" name="todo[deals]" />



// $( ".category-select").on('click', function(e) {
//     var  input = $(this).text().toString();
//     input = input.replace(/\s/g, '');

//   switch(input) {
//     case 'Marketing':
//     var radio_i = true;

//         console.log('Marketing');
//         var m_i = $('<input class="hide marketing" type="radio" value="" checked="checked" name="todo[marketing]"/>')
//           if ( radio_i) {
//             m_i.appendTo("#addTask_form");
//             $(this).css('background', 'whitesmoke')
//             radio_i  = null;
//           } else {
//             radio_i = $( m_i ).detach();
//              $(this).css('background', 'black')
//              radio_i = true;
//           }

//         break;
//     case 'Leads':
//    var radio_i = true;
//       console.log('Leads');
//        console.log(radio_i);
//       var m_i = $('<input class="hide leads" type="radio" value="" checked="checked" name="todo[leads]"/>')
//           if ( radio_i ) {
//             m_i.appendTo("#addTask_form");
//               $(this).css('background', 'whitesmoke')
//             radio_i  = null;

//           } else {
//             radio_i = $( m_i ).detach();
//             $(this).css('background', 'black')
//             radio_i = true;
//           }

//         break;
//     case 'Deals':
//     var radio_i = true;
//         console.log('Deals');
//          console.log(radio_i);
//          var m_i = $('<input class="hide deals" type="radio" value="" checked="checked" name="todo[deals]" />')
//           if (radio_i ) {
//             m_i.appendTo("#addTask_form");
//             $(this).css('background', 'whitesmoke')
//             radio_i  = null;
//           } else {
//             radio_i = $( m_i ).detach();
//             $(this).css('background', 'black')
//             radio_i = true;
//           }


//         break;
//     case 'Personal':
//    var radio_i = true;
//         console.log('Personal');
//          console.log(radio_i);
//         var m_i = $('<input class="hide personal" type="radio" value="" checked="checked" name="todo[personal]" />')
//           if (radio_i) {
//             m_i.appendTo("#addTask_form");
//             $(this).css('background', 'whitesmoke')
//             radio_i  = null;
//           } else {
//              $(this).css('background', 'black')
//             radio_i = $( m_i ).detach();
//             radio_i = true;
//           }

//         break;

//     default:
//          console.log('None of the string matched');
// }



// //   if ( p ) {
// //     p.appendTo( "body" );
// //     p = null;
// //   } else {
// //     p = $( "p" ).detach();
// //   }
//  });


// $(this)
//  input = "."+input.toString();
//    input = input.replace(/\s/g, '');



//   $(".category-select").click( function(){
//     console.log($(this).text())
//     // var input =  ':input[value="todo['+$(this).text().toLowerCase()+']"]'

//   var  input = $(this).text().toLowerCase()
//     input = input.replace(/\s/g, '');
// $('#addTask_form *').filter(':input').each(function(index, value){
//   console.log(value.vaule);
//    if (value.name.toString === input) {
//     value.value = 'true';
//    }
// });

//     // $(input).attr('value', 'True' )
//    console.log($(input).val());

//   console.log( $( "#addTask_form" ).find( input ).val("true"));
//   console.log($(input).attr( 'value'));

//   $(".category-select").click(
//     function(){
//        var input =  "input[value='todo[" + $(this).text().toLowerCase()+"]'"
//        console.log(input + "this is the way it should remove the value for input");
//        $(input).val('');
//        console.log($(input).val());
//     }
// );

// });





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
         e.preventDefault();
         var  id = $(this).text().toLowerCase()
          id = id.replace(/\s/g, '');
          $('#finshed_input'+id.toString()).val('true');

           $("form[action='/todos/"+id.toString()+"']").submit();



    // //changing the action to /todos/id
    // // $("#finished_form").attr("action",'/todos/'+id);
    // alert("After - action = "+$("#finished_form").attr("action"));
    // //submit the form
    // $("#finished_form").submit();


     });

     //delete a task submit the form
    $('.check-i-delete').click(function(e){
       e.preventDefault();
       $(this).closest('form').submit();
    });

    // Tab section send get request whnen user click the button
    $('.assign-task').click(function(e){
            e.preventDefault();
              var id = $('.ub-2', this).html();

              $('#assigned_id').val(id);
        }); //h-nav-drop
    // Add the class show to navbar-drop-down to fix version change issue when clicked
    $('.h-nav-drop').click(function(e){
            e.preventDefault();

            $('#top-nav-dropdown').addClass('show');

        });
  //gets all checked boxes and set then to be unchecked
  $('.category-check').each(function(index, element) {
    this.checked = false;
});

  //toggles the checkbox for categories
$( ".category-select").on('click', function(e) {
    var  input = $(this).text().toLowerCase()
    input = input.replace(/\s/g, '');
    if  (toggleCheck(input) === 'change') {
      $(this).css("background-color", "orange");
    } else {
      $(this).css("background-color", "whitesmoke");
    }

})

function getText(div) {
  var text = div.text().toLowerCase()
      text = text.replace(/\s/g, '');
      return text;
}

  function toggleCheck(idValue){
         if(document.getElementById(idValue).checked){
            document.getElementById(idValue).checked = false;
            check_category.value = false;
          }
         else{
          var check_category = document.getElementById(idValue)
           check_category.checked = true;
           check_category.value = true;
           return 'change';

         }
       }


});
