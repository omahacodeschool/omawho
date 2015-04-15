

window.onload = function() {
  var infoBoxesOn = 1;
  var page_num = 1;

  var category_buttons = document.getElementsByClassName('category_button');
  category_buttons.addEventListener("click", function() {
    alert("Clicked button");
  });

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

  function toggleThisInfo(event){
    if (infoBoxesOn === false){
      event.preventDefault();
      if ($(this).parent().siblings().css('display') == 'none'){
        $(this).parent().siblings().css('display','block');
      } else {
        $(this).parent().siblings().css('display','none');
      }
    }
  }

  function append_child() {
    row = document.getElementById("polaroids-row");
    row.innerHTML = row.innerHTML + js_req.response;
  }

  function loadPage(page_num) {
    page_url = "/page/" + page_num;
    window_location = window.location.href;
    if (window_location.indexOf("category") > 0) {
      index = window_location.lastIndexOf("y/") + 2;
      end_index = window_location.length;
      page_url = "/category/" + window_location.substr(index,end_index) + "/page/" + page_num;
      alert("Page number: " + page_num);
    }
    else {
      page_url = "/page/" + page_num;
    }
    js_req = new XMLHttpRequest();
    js_req.open("get", page_url);
    js_req.send();
  }

  window.onscroll = function(ev) {
    if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
      page_num++;
      loadPage(page_num);
      js_req.addEventListener("load", append_child);
    }
  };
};
