$(document).ready(function(){
    Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));
    $("#form-submit-btn").click(function(event){
        event.preventDefault();
        $('input[type=submit]').prop('disabled', true);
        var error = false;
        var ccNum = $('#card_number').val(),
            cvcNum = $('#card_code').val(),
            expMonth = $('#card_month').val(),
            expYear = $('#card_year').val();
            
        if(!error){
            //GET the stripe token:
            Stripe.createToken({
                number:ccNum,
                cvc: cvcNum,
                exp_month: expMonth,
                exp_year: expYear
            }, stripeResponseHandler);
        }
    })
})
    
