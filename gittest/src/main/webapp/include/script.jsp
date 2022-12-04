<script src="./assets/js/test.js">
    $('.window .close').click(function (e) {
        //Cancel the link behavior
        e.preventDefault();
    });
</script>
<script>
    // íë§¤ë´ ë§í¬ì´ë
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
            $('.tabsmenu').find('li').eq(3).addClass('active').siblings().removeClass();
            $('.tabselements').find('#tab14').addClass('active').siblings().removeClass('active');
        } else if (location.hash == "#tab15") {
            $('.tabsmenu').find('li').eq(4).addClass('active').siblings().removeClass();
            $('.tabselements').find('#tab15').addClass('active').siblings().removeClass('active');
        } else if (location.hash == "#tab16") {
            $('.tabsmenu').find('li').eq(5).addClass('active').siblings().removeClass();
            $('.tabselements').find('#tab16').addClass('active').siblings().removeClass('active');
        }
    })
</script>
    <script>
        jQuery(document).ready(function($) {
    $("input[name=keyword]:checkbox").change(function() {// 체크박스들이 변경됬을때
        // var cnt = $("#selCnt").val();
        if( 4==$("input[name=keyword]:checkbox:checked").length ) {
            $(":checkbox:not(:checked)").attr("disabled", "disabled");
        } else {
            $("input[name=keyword]:checkbox").removeAttr("disabled");
        }
    });
 
    $("#selCnt").change(function() {
        $("input[name=keyword]:checkbox").removeAttr("checked");
        $("input[name=keyword]:checkbox").removeAttr("disabled");
    });
});
    </script>