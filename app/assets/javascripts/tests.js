$(function () {
    $('.app_type').click(function(e) {
        $('.app_type').not(this).removeClass('active')
        .siblings('input').prop('checked',false)
            .siblings('.img-radio').css('opacity','0.5');
      $(this).addClass('active')
            .siblings('input').prop('checked',true)
        .siblings('.img-radio').css('opacity','1');
    });

    $('#test_url').on('change', function(){
      if($(this).val() != '') {
        $.ajax({
          url: '/tests/search?url=' + $(this).val(),
          dataType: 'script'
        })
      }
    });

    $("#bounty_slider").slider({
        range: "min",
        value: 30,
        step: 10,
        min: 0,
        max: 500,
        slide: function( event, ui ) {
            $( "#bounty_field" ).val( "$" + ui.value );
        }
    });

    $("#bounty_field").change(function () {
        var value = this.value.substring(1);
        console.log(value);
        $("#slider").slider("value", parseInt(value));
    });
});

$(document).on("fields_added.nested_form_fields", function(event, param) {
  $('.instruction_field').on('blur', function(){
      $.post({
        url: '/instructions',
        data: { 'instructions': { 'desc': $(this).val() } },
        dataType: 'script'
      })
    })
});
