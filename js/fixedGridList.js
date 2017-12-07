
/*
  页面中调用时需要将下面注释中内容复制到页面中，
  给最外层的 类名为fixedList—container的命一个id名，
  然后将此id传给fixedGridList（）函数
*/
/*  将此部分内容复制到需要固定表格的页面脚本中，注意id名字需要更换
        $(function () {
            layout();
        })
        function layout() {
            window.onresize = function () {
                fixedGridList("#fixedList-container3");   //页面resize时，重新调用一次
            };
            window.onload = function () {
                fixedGridList("#fixedList-container3");  //只需要将表格对外层的id写入即可
            }
        }


*/


function fixedGridList(eleContainer) {
    var containerWidth = $(eleContainer).width();//获取容器的宽度
    var containerHeight = $(eleContainer).outerHeight(true);//获取容器的高度
    var tHead = eleContainer + " .fixedList-hd";  //拼接相应head字符串
    var tBody = eleContainer + " .fixedList-bd";  //拼接相应body字符串
    var scrollbar = eleContainer + " .scrollbar";
    var scrollbarContent = eleContainer + " .scrollbar .scrollBarContent";
    var tHeadHeight = $(tHead).outerHeight(true);//获取头部div的高度

    $(eleContainer + " .fixedList-hd table td").last().width(0);
    /*  获取头部表格的总宽度 */
    var totalWidth = 0;
    $(tHead + " .tbGrid-List  td ").each(function (index) {
        var width = parseInt(this.style.width);
        if (isNaN(width)) {
            width = 0;   //如果表格行内没设置宽度，默认为0
        }
        totalWidth += width;
    })
    var diff = containerWidth - totalWidth;
    //比较头部table总宽度与container容器的宽度
    if (diff>0) {
        $(tHead + " .tbGrid-List  td ").last().width(diff);//设置头部表格的最后一列的宽度
        /*  此处注意要分开写   不然第二项设置不上  */
        $(tHead).outerWidth(containerWidth);  //分别设置头部div与body部分div的宽度
        $(tBody).outerWidth(containerWidth);    
        $(tHead + " .tbGrid-List").outerWidth(containerWidth);
        $(tBody + " .tbGrid-List").outerWidth(containerWidth);
    }
    else{
        $(tHead + " .tbGrid-List  td ").last().width(100)
        $(tHead).outerWidth(totalWidth + 100);
        $(tBody).outerWidth(totalWidth + 100);
        $(tHead + " .tbGrid-List").outerWidth(totalWidth + 100);
        $(tBody + " .tbGrid-List").outerWidth(totalWidth + 100);
    } 

    //遍历头部td，让下面内容部分的table的td与之对应相等
    $(tHead + " .tbGrid-List tr:first-child td ").each(function (index) {
        var width = parseInt(this.style.width);
        $(tBody + " .tbGrid-List tr:first-child td ").eq(index).outerWidth(width)
    })


    //设置模拟滚动条的高度
   
    $(scrollbar).css("top", tHeadHeight);
    $(scrollbar).outerHeight(containerHeight - tHeadHeight);
    //console.log(tHeadHeight, containerHeight);
   
    $(scrollbarContent).outerHeight($(tBody + " .tbGrid-List").outerHeight(true));
    $(tBody).css("max-height", containerHeight - tHeadHeight);//设置tbody的最大高度
    //tbody的滚动与模拟滚动条的滚动关联
    $(tBody).on("mousewheel", function () {
        var scrollY = $(this).scrollTop();
        $(scrollbar).scrollTop(scrollY);
    })
    //将模拟滚动条与tbody的滚动关联
    $(scrollbar).scroll(function (event) {
        $(tBody).scrollTop(event.target.scrollTop);
        $(this).scrollTop(event.target.scrollTop);
    })
    //左边滚动条滚动的距离赋给模拟滚动条
    $(eleContainer).scroll(function (event) {
        $(scrollbar).css("right", -event.target.scrollLeft + 1);
    })
}


