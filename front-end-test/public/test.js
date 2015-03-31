window.onload = {
  var infoBoxesOn = 1;
  $("img#quiz").click(toggleGlobalInfo);
  $infoBoxes = $(".polaroid p");
  $(".polaroid").click(toggleThisInfo);
  
  function toggleGlobalinfo(){
    if infoBoxesOn == true {
      $infoBoxes.css('display','none');
      infoBoxesOn = false;
    };
    if infoBoxesOn == false {
      $infoBoxes.css('display','block');
      infoBoxesOn = true;
    };
  };
  
}