console.log("c")

var ready = function () {
    console.log("d")

    $('.need_category input[type=radio]').change(function () {
        console.log("need_category change")
        $(this).closest("form").submit();
    });

    $('.need_vneed input[type=radio]').change(function () {
        console.log("need_vfeeling change")
    });

    $('.need_note input[type=text]').click(function () {
        console.log("need_note")
    });

    $('.simple_form.edit_need input[type=submit]').click(function () {
        console.log("submit")
    });
};
$(document).ready(ready)
$(document).on('page:load', ready)

