<script src="./assets/js/test.js">
    $('.window .close').click(function (e) {
        //Cancel the link behavior
        e.preventDefault();
    });
</script>
<script>
    // 텝매뉴 링크이동
    $(function () {
        if (location.hash == "#tab11") {
            $('.tabsmenu').find('li').eq(0).addClass('active').siblings().removeClass();
            $('.tabselements').find('#tab11').addClass('active').siblings().removeClass('active');
        } else if (location.hash == "#tab12") {
            $('.tabsmenu').find('li').eq(1).addClass('active').siblings().removeClass();
            $('.tabselements').find('#tab12').addClass('active').siblings().removeClass('active');
        } else if (location.hash == "#tab13") {
            $('.tabsmenu').find('li').eq(2).addClass('active').siblings().removeClass();
            $('.tabselements').find('#tab13').addClass('active').siblings().removeClass('active');
        } else if (location.hash == "#tab14") {
            $('.tabsmenu').find('li').eq(2).addClass('active').siblings().removeClass();
            $('.tabselements').find('#tab14').addClass('active').siblings().removeClass('active');
        } else if (location.hash == "#tab15") {
            $('.tabsmenu').find('li').eq(2).addClass('active').siblings().removeClass();
            $('.tabselements').find('#tab15').addClass('active').siblings().removeClass('active');
        } else if (location.hash == "#tab16") {
            $('.tabsmenu').find('li').eq(2).addClass('active').siblings().removeClass();
            $('.tabselements').find('#tab16').addClass('active').siblings().removeClass('active');
        }
    })
</script>