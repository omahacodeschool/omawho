infoBoxesOn = 1;

window.onload = function(){
  $("img#quiz").click(toggleGlobalInfo);
  $infoBoxes = $(".polaroid p");
  $(".polaroid img").each(function(){
    this.click(toggleThisInfo)
  });
};

function toggleGlobalInfo() {
  if (infoBoxesOn == true) {
    $infoBoxes.css('display','none');
    infoBoxesOn = false;
    return;
  } else {
    $infoBoxes.css('display','block');
    infoBoxesOn = true;
  };
};

function toggleThisInfo(){
  if (this.siblings()[0].css('display') == 'none'){
    this.siblings()[0].css('display','block');
  } else {
    this.siblings()[0].css('display','none');
  }
};

function testFunction(){
  console.log('YUP');
}