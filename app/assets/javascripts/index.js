infoBoxesOn = 1;

window.onload = function(){
  page_num = 1;
  $("#quiz").click(toggleGlobalInfo);
  $infoBoxes = $(".polaroid p");
  window.setInterval(flashOrange(),5000);
  $(".polaroid img").each(function(index){
    $(this).click(toggleThisInfo);
  });
  $("#upwards").click(function() {
      $('html, body').animate({
          scrollTop: $("#nav").offset().top
      }, 500);
  });

  function flashOrange(){
    $("#quiz").fadeIn(500).fadeOut(500).fadeIn(500).fadeOut(500).fadeIn(500);
  }

  function toggleGlobalInfo() {
    if (infoBoxesOn === true) {
      $infoBoxes.css('display','none');
      $infoBoxes.addClass('quiz_mode');
      infoBoxesOn = false;
      return;
    } else {
      $infoBoxes.css('display','block');
      $infoBoxes.removeClass('quiz_mode');
      infoBoxesOn = true;
    }
  }

  function toggleThisInfo(){
    if (infoBoxesOn === false){
      if ($(this).siblings().css('display') == 'none'){
        $(this).siblings().css('display','block');
      } else {
        $(this).siblings().css('display','none');
      }
    }
  }

  function append_child() {
    row = document.getElementById("polaroids-row");
    row.innerHTML = row.innerHTML + js_req.response;
  }

  function loadPage(page_num) {
    js_req = new XMLHttpRequest();
    page_url = "/page/" + page_num;
    js_req.open("get", page_url);
    js_req.send();
  }

  window.onscroll = function(ev) {
    if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
        page_num++;
        loadPage(page_num);
        js_req.addEventListener("load", append_child)
    }
};


};
