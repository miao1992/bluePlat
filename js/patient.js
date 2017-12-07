/**

点击某个radio显示某个div
@pram   name:为input的name值
@pram   id:为点击input的id
@pram   ctrl:为控制显示的div的id

**/
function changeShow(name, id, ctrl, callback) {
    var str = "";
    $("input[name=" + name + "]:checked").each(function () {
        str += $(this).parent().text() ? $(this).parent().text() : $(this).next().text()

    })
    var value = $("#" + id).parent().text() ? $("#" + id).parent().text() : $("#" + id).next().text();
    //若str中含有value字符串，证明选中此项
    if (str.indexOf(value) >= 0) {
        $("#" + ctrl).show();
    } else {
        $("#" + ctrl).hide();
        $("#" + ctrl + " input[type=radio]").prop("checked", false);
    }
    $("input[name=" + name + "]").change(function () {
        if ($("input[name=" + name + "]").is(":checked")) {
            if ($("#" + id).is(":checked")) {
                $("#" + ctrl).show();
                if (callback) {

                    callback()
                }
            } else {
                $("#" + ctrl).hide();
                $("#" + ctrl + " input[type=radio]").prop("checked", false);
            }
        }

    })


}
/**

点击某个radio改变某个inut的样式
@pram   name:为input的name值
@pram   id:为点击input的id
@pram   ctrl:为改变样式的input的id

**/

function changeInputCss(name, id, ctrl) {
    var str = "";
    $("input[name=" + name + "]:checked").each(function () {
        str += $(this).parent().text() ? $(this).parent().text() : $(this).next().text()

    })
    var value = $("#" + id).parent().text() ? $("#" + id).parent().text() : $("#" + id).next().text();
    if (str.indexOf(value) >= 0) {
        $("#" + ctrl).prop("disabled", false);//ctrl可以输入
        $("#" + ctrl).removeClass("disabled");
    } else {
        $("#" + ctrl).prop("disabled", true);
        $("#" + ctrl).addClass("disabled");
        $("#" + ctrl).val("");//如果是一个文本框，清空该文本框的内容
    }

    $("input[name=" + name + "]").change(function () {
        if ($("input[name=" + name + "]").is(":checked")) {
            if ($("#" + id).is(":checked")) {
                $("#" + ctrl).removeClass("disabled");
                $("#" + ctrl).prop("disabled", false);//ctrl可以输入
            } else {
                $("#" + ctrl).prop("disabled", true);
                $("#" + ctrl).addClass("disabled");
                $("#" + ctrl).val("");//如果是一个文本框，清空该文本框的内容
                $("#" + ctrl + " input[type=text]").val("");//清空所有的文本框
                $("#" + ctrl + " input[type=radio]").prop("checked", false);//清空单选列表选项
                $("#" + ctrl + " input[type=checkbox]").prop("checked", false);//清空复选框
            }
        }
    })

}
/**

点击某个radio出现相对应的文字
@pram   name:为input的name值
@pram   ctrl:为文字的容器id名

**/
function showValue(name, ctrl) {
    $("input[name=" + name + "]:checked").each(function () {
        var value = $(this).val();
        $("#" + ctrl).text(value);
    })

    $("input[name=" + name + "]").change(function () {
        if ($("input[name=" + name + "]").is(":checked")) {
            var value = $(this).val();
            $("#" + ctrl).text(value);
        }
    })
}




/**

封装全选功能
@pram  allele为全选按钮的id
@pram  ele为全部的checkbox的集合

**/



function checkAll(ele, allele) {
    $("#" + allele).on("click", function () {
        var _this = this;
        $(ele).each(function (index, value) {
            value.checked = _this.checked;
        })
    })
    $(ele).on("click", function () {
        var checkboxs = $(ele);
        var checkeds = ele + ":checked";
        var checkboxsc = $(checkeds);
        if (checkboxsc.length == checkboxs.length) {
            $("#" + allele).get(0).checked = true;
        } else {
            $("#" + allele).get(0).checked = false;
        }
    })
}




/**

封装table内某一行的删除功按钮功能
@pram  ele为当前table行内的按钮


**/

function delParentTr(ele) {
    var tableWrap = $(ele).parents("table");
    $(ele).parents("tr").remove();
    var index = $(tableWrap).find("tr").length;
    $(tableWrap).find("tr").each(function (index) {
        index = ++index;
        $(this).children().first().html("<input type='checkbox' id='" + index + "' name='key'>" + index);
    })

    //checkAll("input[type=checkbox][name='key']", "#checkAll")
    //执行全选按钮
}


/**

封装table外的删除功按钮功能
@pram  ele为当前table外的删除按钮
@pram  table为需要删除项目的table 的id

**/

function delTableTr(ele, table) {
    $("#" + ele).on("click", function () {
        $("#" + table + " input[type=checkbox]").each(function (index, item) {
            if ($(this).prop("checked")) {
                $(this).parents("tr").remove();
            }
        })
    })
}
/**

封装table外的删除功按钮功能
@pram  ele为当前table外的删除按钮
@pram  table为需要删除项目的table 的id
@pram  callback 弹出调用的函数
**/
function delTableTrs(ele, table, callback) {
    $("#" + ele).on("click", function () {
        if ($("#" + table + " input[type=checkbox]").length <= 0) {
            callback();
        } else {
            var flag = true;
            $("#" + table + " input[type=checkbox]").each(function (index, item) {
                if ($(this).prop("checked")) {
                    $(this).parents("tr").remove();
                    flag = false;
                }
            })
            if (flag) {
                callback();
            }
        }

        //$("#"+table+" tr").each(function (index) {
        //    index = ++index;
        //    $(this).children().first().html("<input type='checkbox' id='" + index + "' name='key'>" + index);
        //})
    })
}
/**

封装按回车键跳转下一个
@pram  ele为需要执行的文本框
**/
function toNext(ele) {
    var i = 0;
    $(ele).each(function () {
        $(this).keydown(function (e) {
            if (e.keyCode == 13) {
                i++;
                $(ele)[i].focus();
                return false;
            }
        })

    })
}

