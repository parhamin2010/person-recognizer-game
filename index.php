<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible">
    <title>True Detective?</title>
    <link rel="icon" type="image/x-icon" href="imgs/logo.png">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="stylesheet" href="assets/css/animate.css"/>
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/index.css">
    <link rel="stylesheet" type="text/css" href="assets/js/loading-bar.css"/>
    <script type="text/javascript" src="assets/js/loading-bar.js"></script>
</head>
<body class="animate__animated animate__zoomIn">
<div
       data-stroke="data:ldbar/res,gradient(0,1,#9df,#9fd,#df9,#fd9)"
       data-path="M10 20Q20 15 30 20Q40 25 50 20Q60 15 70 20Q80 25 90 20"
       class="ldBar" id="ldBar"></div>

<div class="container-fluid main" style="display: none">
    <div class="top-line">
        <div onclick="check_nation(this)" data-nation="3" class="button-1 animate__animated animate__backInLeft"><p>Thailand</p></div>
        <div onclick="check_nation(this)" data-nation="2" class="button-2 animate__animated animate__backInRight"><p>Japon</p></div>
    </div>
    <div class="main-line">
        <div class="container-fluid text-center image_containter">
            <div id="image-dropper">
                <!--   Images dropper  -->
            </div>
            <form class="animate__animated animate__zoomIn" action="#" method="post" onsubmit="game_init(this);return false;" id="game-init" style="display:none;">
                <h1 class="h1 w-100 border-1 text-center text-white animate__animated animate__pulse animate__infinite mb-2">Who's True Detective?</h1>
                <select class="input w-25 m-auto form-select mt-2 text-center p-2" style="background: #ffffffa1" name="difficulties">
                    <option value="0" readonly hidden>Select difficulty</option>
                    <option value="3">Brain Blasting!</option>
                    <option value="2">Humanly</option>
                    <option value="1">Kitty...</option>
                </select>
                <button type="reset" hidden></button>
                <button type="submit" class="btn btn-success bg-transparent text-white mt-2" name="new_game" value="new_game">Play!</button>
            </form>
            <div class="animate__animated animate__zoomIn" id="count-down-container" style="display:none;">
                <h1 class="h1 w-100 border-1 text-center text-white mb-2" id="count-down">3</h1>
            </div>

        </div>
    </div>
    <div class="button-line">
        <div onclick="check_nation(this)" data-nation="4" class="button-3 animate__animated animate__backInLeft"><p>Korea</p></div>
        <div onclick="check_nation(this)" data-nation="1" class="button-4 animate__animated animate__backInRight"><p>China</p></div>
    </div>

    <div class="result animate__animated animate__backInUp">
        <p id="score-title" class="animate__animated animate__backInUp">YOUR SCORE</p>
        <p id="score" class="animate__animated animate__pulse animate__infinite	infinite">0</p>
    </div>
</div>

</body>
<script src="assets/js/jQuery.js"></script>
<script src="assets/js/index.js"></script>

</html>

