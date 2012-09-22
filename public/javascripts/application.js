$(function() {
	$('#slides').slides({
		paginationClass : 'slide-nav-buttons',
		container : 'slide-middle',
		currentClass : 'active',
		generatePagination: false,
        effect:'fade',
        play : 5500,
        pause: 2500
	});

    $('#jobsList li').click(function(e){
        if (e.target.nodeName.toUpperCase() === 'A') {
            $(e.currentTarget).toggleClass('active');
        }
    });

    $('#questionsList li').click(function(e){
        if (e.target.nodeName.toUpperCase() === 'A') {
            $(e.currentTarget).toggleClass('active');
        }
    });

    $('#cards-left-box li').click(function(e) {
        $('#cards-left-box li').removeClass('active');
        $(e.currentTarget).addClass('active');
        if (window.updateLeftBox) {
            window.updateLeftBox( $(e.currentTarget).attr('showbox'));
        }
    });

    $('#cards-right-box li').click(function(e) {
        $('#cards-right-box a').removeClass('active');
        $(e.currentTarget).children('a').addClass('active');
        if (window.updateRightBox) {
            window.updateRightBox( $(e.currentTarget).attr('showbox'));
        }
    });

    $('#id_email_submit').click(function(e) {
        var result = validateNameAndMail();
        if (!result) {
            e.preventDefault();
        }
    });

    $('#submit-contacts').click(function(e) {
        var message = validateEmpty($('#inquiry_message').val()),
        others = validateNameAndMail();

        if (!message) {
            $('#error-message').css('display', 'block');
        }
        else {
            $('#error-message').css('display', 'none');
        }

        if (message && others) {
            $('id_email_submit').submit();
        }
        else {
            e.preventDefault();
        }

    });

    $('#submit-question').click(function(e) {
        var message = validateEmpty($('#question_message').val()),
        others = validateNameAndMailOfQuestion();

        if (!message) {
            $('#error-message').css('display', 'block');
        }
        else {
            $('#error-message').css('display', 'none');
        }

        if (message && others) {
            $('id_email_submit').submit();
        }
        else {
            e.preventDefault();
        }

    });

    $('#submit-order').click(function(e) {
        e.preventDefault();

        var name, lastname, email, country, zipCode, city, street, house, phone;

        name = $('#order_name').val();
        lastname = $('#order_lastname').val();
        email = $('#order_email').val();
        country = $('#order_country').val();
        zipCode = $('#order_zip_code').val();
        city = $('#order_city').val();
        street = $('#order_street').val();
        house = $('#order_house').val();
        phone = $('#order_phone').val();

        order = validateOrder(name, lastname, email, country, zipCode, city, street, house, phone);

        if (!order) {  return false; }

        $.fancybox.close();


        $.post('/order', {  "order[name]": name,
                            "order[lastname]": lastname,
                            "order[email]": email,
                            "order[country]": country,
                            "order[zip_code]": zipCode,
                            "order[city]": city,
                            "order[street]": street,
                            "order[house]": house,
                            "order[phone]": phone,
                            "utf8": true
        }, function() {
        }).success(function() {
          alert("Спасибо за заказ!");
        });
    });

    function validateOrder(name, lastname, email, country, zipCode, city, street, house, phone) {
        name = validateEmpty(name);
        lastname = validateEmpty(lastname);
        email = validateEmail(email);
        country = validateEmpty(country);
        zipCode = validateEmpty(zipCode);
        city = validateEmpty(city);
        street = validateEmpty(street);
        house = validateEmpty(house);
        phone = validateEmpty(phone);

        if (!name) { $('#error-name').css('display', 'block'); }
        else { $('#error-name').css('display', 'none'); }

        if (!lastname) { $('#error-lastname').css('display', 'block'); }
        else { $('#error-lastname').css('display', 'none'); }

        if (!email) { $('#error-email').css('display', 'block'); }
        else { $('#error-email').css('display', 'none'); }

        if (!country) { $('#error-country').css('display', 'block'); }
        else { $('#error-country').css('display', 'none'); }

        if (!zipCode) { $('#error-zip_code').css('display', 'block'); }
        else { $('#error-zip_code').css('display', 'none'); }

        if (!city) { $('#error-city').css('display', 'block'); }
        else { $('#error-city').css('display', 'none'); }

        if (!street) { $('#error-street').css('display', 'block'); }
        else { $('#error-street').css('display', 'none'); }

        if (!house) { $('#error-house').css('display', 'block'); }
        else { $('#error-house').css('display', 'none'); }

        if (!phone) { $('#error-phone').css('display', 'block'); }
        else { $('#error-phone').css('display', 'none'); }

        return name && lastname && email && country && zipCode && city && street && house && phone;
    };

    function validateNameAndMailOfQuestion() {
        var name, email;

        name = validateEmpty( $('#question_name').val() );
        email = validateEmail( $('#question_email').val() );

        if (!name) {
            $('#error-name').css('display', 'block');
        }
        else {
            $('#error-name').css('display', 'none');
        }

        if (!email) {
            $('#error-email').css('display', 'block');
        }
        else {
            $('#error-email').css('display', 'none');
        }

        return name && email;
    };

    function validateNameAndMail() {
        var name, email;

        name = validateEmpty( $('#inquiry_name').val() );
        email = validateEmail( $('#inquiry_email').val() );

        if (!name) {
            $('#error-name').css('display', 'block');
        }
        else {
            $('#error-name').css('display', 'none');
        }

        if (!email) {
            $('#error-email').css('display', 'block');
        }
        else {
            $('#error-email').css('display', 'none');
        }

        return name && email;
    };

    function validateEmail(val) {
        var emailReg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        return emailReg.test(val);
    };

    function validateEmpty(val) {
        return val ? true : false;
    };

    $('#new_inquiry').change(function(e){
        if (e.srcElement.id === 'inquiry_file') {
            //$('#feedback-attach').text($('#inquiry_file').val())
            $('#feedback-attach').text('Файл прикреплен');
        }
    });

    $('#feedback-attach').click(function(e) {
        $('#inquiry_file').trigger('click');
    });
});
