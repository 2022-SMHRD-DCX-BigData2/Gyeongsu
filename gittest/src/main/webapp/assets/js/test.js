document.querySelector("body").addEventListener("click", (ev) => {
  // Tabs
  if (ev.target.closest(".tabsmenu") !== null && ev.target.tagName === "A") {
    // 1- Récupérer le target depuis le href du lien
    const targetTab = ev.target.getAttribute("href");
    // 2- Pointer vers l'élément avec l'id qui correspond au href
    const currentTab = document.querySelector(targetTab);
    //  2.1 - enlever la classe active précédente
    const context = ev.target.closest(".tabscontainer");
    context.querySelector(".tabsmenu .active").classList.remove("active");
    context.querySelector(".tabselements .active").classList.remove("active");

    // 2.2 - ajouter la classe active sur l'élément
    currentTab.classList.add("active");
    ev.target.closest("li").classList.add("active");

    // 클릭 스크롤 이동 방지
    ev.preventDefault();
  }
});





var counter = 1;
setInterval(function () {
  document.getElementById('s' + counter).checked = true;
  counter++;
  if (counter >= 11) {
    counter = 1;
  }
}, 2000);



$(document).ready(function () {
  $("input:radio[name=slider]").click(function () {
    var num = $(this).attr('id')
    console.log(num);
    for (let i = 0; i <= document.getElementsByName("slider").length; i++) {
      if (num == 's' + i) {
        counter = i;

      }

    }

    OnlyMember();

  })
});
function OnlyMember() {

  return false;
}


$(document).ready(function btns() {
  $(".slider-btn").on('click', function (e) {
    if (e.target.id === 'prev-btn') {
      // 1번 버튼을 클릭했을 때 구현하고 싶은 코드
      var currentNumber = $("input[name='slider']:checked").attr('id');
      for (let i = 0; i <= document.getElementsByName("slider").length; i++) {
        if (currentNumber == 's' + i) {
          currentNumber = 's' + (i - 1);
          if (currentNumber == 's0') {
            currentNumber = 's' + 10;
            counter = 10;

          } else {
            counter = i - 1
          }


          document.getElementById(currentNumber).checked = true;

          return false;

        }

      }
    } else if (e.target.id === 'next-btn') {
      // 2번 버튼을 클릭했을 때 구현하고 싶으 코드
      var currentNumber = $("input[name='slider']:checked").attr('id');
      for (let i = 0; i <= document.getElementsByName("slider").length; i++) {
        if (currentNumber == 's' + i) {
          currentNumber = 's' + (i + 1);
          if (currentNumber == "s11") {
            currentNumber = 's' + 1;
            counter = 1;
          }
          document.getElementById(currentNumber).checked = true;
          counter = i + 1;
          return false;

        }

      }
    }
    OnlyMember();

  });
});
function OnlyMember() {

  return false;
}





