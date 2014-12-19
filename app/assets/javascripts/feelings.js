/**
 * Created by brucepark on 14. 12. 14..
 */

console.log("a")

var ready = function () {
    console.log("b")

    $('.feeling_super_category input[type=radio]').change(function () {
        console.log("feeling_super_category")
        $(this).closest("form").submit();
    })

    $('.feeling_category input[type=radio]').change(function () {
        console.log("feeling_category change")
        $(this).closest("form").submit();
    });

    $('.feeling_vfeeling input[type=radio]').change(function () {
        console.log("feeling_vfeeling change")
    });

    $('.feeling_note input[type=text]').click(function () {
        console.log("feeling_note")
    });

    $('.simple_form.edit_feeling input[type=submit]').click(function () {
        console.log("submit")
    });
};
$(document).ready(ready)
$(document).on('page:load', ready)

