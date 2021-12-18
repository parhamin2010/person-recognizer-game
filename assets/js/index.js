var CD = '';



numberWang = {
    countUpOrDown: function (containerid, startingNumber, endingNumber, betweenNumberDuration, betweenEffect, effectDuration, endingEffect, endingEffectDuration) {
        var divPlaceholder = document.getElementById(containerid);
        var fixedStartingNumber = parseInt(startingNumber.toFixed(0));
        var fixedEndingNumber = parseInt(endingNumber.toFixed(0));
        betweenNumberDuration = betweenNumberDuration || 20;
        if (isNaN(startingNumber, endingNumber)) {
            console.log('both starting and ending numbers are not integars!');
            return false;
        } else {

            if (fixedStartingNumber > fixedEndingNumber) {
                function updateToEndNumber() {
                    divPlaceholder.innerHTML = fixedStartingNumber--;
                    if (fixedStartingNumber == fixedEndingNumber - 1) {
                        clearInterval(clearCountTimer);
                        clearCountTimer = 0;
                    }
                }

                var clearCountTimer = setInterval(updateToEndNumber, betweenNumberDuration);
            } else if (fixedStartingNumber < fixedEndingNumber) {
                function updateToEndNumber() {
                    divPlaceholder.innerHTML = fixedStartingNumber++;
                    if (fixedStartingNumber == fixedEndingNumber) {
                        clearInterval(clearCountTimer);
                        clearCountTimer = 0;
                    }
                }

                var clearCountTimer = setInterval(updateToEndNumber, betweenNumberDuration);
            } else if (fixedStartingNumber == fixedEndingNumber) {
                clearInterval(clearCountTimer);
                clearCountTimer = 0;
            }
        }
    }
};

function prepare_stage() {
    var form = $('#game-init');
    form.find('button[name=reset]').click();
    form.fadeOut();
    $('.button-1,.button-2,.button-3,.button-4').slideToggle();
    $('.result').slideToggle();
    $('#count-down-container').slideToggle();

    var userFollowers = 1;
    numberWang.countUpOrDown('count-down', 3, userFollowers, 1000, "shake", "0.03s", "tada", "2s");

    CD = new Promise(function (resolve,reject) {
        setTimeout(function () {
            $('#count-down').css({'font-size': '40pt', 'margin': '40px auto', 'background': 'none', 'border': 'none'});
            $('#count-down').html('Go!');
            $('#count-down').fadeOut(1000);
            resolve();
        }, 4000);
    })


}

function game_init() {
    var form = $('#game-init');
    $.ajax({
        method: 'POST',
        url: 'core.php',
        data: {
            'difficulty': form.find('select[name=difficulties]').val(),
            'new_game': form.find('button[name=new_game]').val(),
            'method': 'start_game'
        },
        success: function (res) {
            var response = JSON.parse(res);

            if (response.status == 200) {
                prepare_stage(response.data);
                var rounds = 10;
                const images = response.data;
                var cache = '';
                switch (response.data.difficulties) {
                    case 1:
                        difficulties = 8000;
                        rounds = 5;
                        break;
                    case 2:
                        difficulties = 6000;
                        rounds = 10;
                        break;
                    case 3:
                        difficulties = 4000;
                        rounds = 15;
                        break;
                }


                Promise.all([CD]).then(function (){
                    var x = 0;
                    var intervalID = setInterval(function () {
                        var img = '';
                        var rand_img = Math.floor(Math.random() * ((images[0].length)));
                        img = $('<img class="animate__animated animate__fadeIn checking" id="img-drp" data-nation="' + images[0][rand_img].nation + '" src="' + images[0][rand_img].image_address + '">').appendTo('#image-dropper');
                        img.animate({top:'105%'},{duration:difficulties}).hide('fast',function(){ img.remove(); });
                        if (++x == rounds) {
                            window.clearInterval(intervalID);
                        }

                        images[0].splice(rand_img, 1);

                    }, difficulties + 200);
                })
            } else {
                return false;
            }
        }
    })
}


$(document).ready(function () {
    var bar1 = new ldBar("#ldBar");
    bar1.set(20);
    setTimeout(function () {
        bar1.set(Math.floor(Math.random() * 81) + 20);
        bar1.set(100);
        $('#ldBar').fadeOut(2000);
        $('.main').fadeIn(2000);
    }, 2000);
    $('#game-init').fadeIn();

})


function check_nation(btn){
    var img_nation = $('.checking').attr('data-nation');
    var btn_nation = btn.attr('data-nation');
    var score = parseInt($("#score").html());
    if($('.checking').length > 0) {
        if (img_nation == btn_nation) {
            $("#score").html(parseInt(score) + 20);
            $('.checking').removeClass('checking');
        } else {
            $("#score").html(parseInt(score) - 5);
            $('.checking').removeClass('checking');
        }
    }
}