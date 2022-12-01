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



// 슬라이드




