infoBoxesOn = 1;

window.onload = function(){
  $("#quiz").click(toggleGlobalInfo);
  $infoBoxes = $(".polaroid p");
  window.setInterval(flashOrange(),5000);
  $(".polaroid img").each(function(index){
    $(this).click(toggleThisInfo)
  });
  $("#upwards").click(function() {
      $('html, body').animate({
          scrollTop: $("#nav").offset().top
      }, 500);
  });
};

function flashOrange(){
  $("#quiz").fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
};

function toggleGlobalInfo() {
  if (infoBoxesOn == true) {
    $infoBoxes.css('display','none');
    $infoBoxes.addClass('quiz_mode');
    infoBoxesOn = false;
    return;
  } else {
    $infoBoxes.css('display','block');
    $infoBoxes.removeClass('quiz_mode');
    infoBoxesOn = true;
  };
};

function toggleThisInfo(){
  if (infoBoxesOn == false){
    if ($(this).siblings().css('display') == 'none'){
      $(this).siblings().css('display','block');
    } else {
      $(this).siblings().css('display','none')
    };
  }
};
