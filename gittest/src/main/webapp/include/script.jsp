<!-- <script src="./assets/js/test.js">
    $('.window .close').click(function (e) {
        //Cancel the link behavior
        e.preventDefault();
    });
</script> -->
<script>
    jQuery(document).ready(function ($) {
        $("input[name=keyword]:checkbox").change(function () {// 체크박스들이 변경됬을때
            var cnt = $("#selCnt").val();
            if (4 == $("input[name=keyword]:checkbox:checked").length) {
                $(":checkbox:not(:checked)").attr("disabled", "disabled");
            } else {
                $("input[name=keyword]:checkbox").removeAttr("disabled");
            }
        });

        $("#selCnt").change(function () {
            $("input[name=keyword]:checkbox").removeAttr("checked");
            $("input[name=keyword]:checkbox").removeAttr("disabled");
        });

        $(document).ready(function () {
            if (4 == $("input[name=keyword]:checkbox:checked").length) {
                $(":checkbox:not(:checked)").attr("disabled", "disabled");
            } else {
                $("input[name=keyword]:checkbox").removeAttr("disabled");
            }
            // 모두 로딩되었을때
        });
    });
</script>
