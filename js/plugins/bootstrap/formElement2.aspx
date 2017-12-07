<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formElement2.aspx.cs" Inherits="Demonstrion.bootstrap.formElement2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>form表单中通用样式</title>
    <link href="../font/iconfont.css" rel="stylesheet" />
    <link href="css/chosen.min.css" rel="stylesheet" />
    <style>
   input[type=email],input[type=url],input[type=search],input[type=tel],input[type=color],input[type=text],input[type=password],input[type=datetime],input[type=datetime-local],input[type=date],input[type=month],input[type=time],input[type=week],input[type=number],textarea {
    border-radius: 0!important;
    color: #858585;
    background-color: #FFF;
    border: 1px solid #D5D5D5;
    padding: 5px 4px 6px;
    font-size: 14px;
    font-family: inherit;
    -webkit-box-shadow: none!important;
    box-shadow: none!important;
    -webkit-transition-duration: .1s;
    transition-duration: .1s
}

input[type=email]:hover,input[type=url]:hover,input[type=search]:hover,input[type=tel]:hover,input[type=color]:hover,input[type=text]:hover,input[type=password]:hover,input[type=datetime]:hover,input[type=datetime-local]:hover,input[type=date]:hover,input[type=month]:hover,input[type=time]:hover,input[type=week]:hover,input[type=number]:hover,textarea:hover {
    border-color: #b5b5b5
}

input[type=email]:focus,input[type=url]:focus,input[type=search]:focus,input[type=tel]:focus,input[type=color]:focus,input[type=text]:focus,input[type=password]:focus,input[type=datetime]:focus,input[type=datetime-local]:focus,input[type=date]:focus,input[type=month]:focus,input[type=time]:focus,input[type=week]:focus,input[type=number]:focus,textarea:focus {
    -webkit-box-shadow: none;
    box-shadow: none;
    color: #696969;
    border-color: #F59942;
    background-color: #FFF;
    outline: 0
}

.form-control::-webkit-input-placeholder,input::-webkit-input-placeholder {
    color: silver
}

.form-control:-moz-placeholder,input:-moz-placeholder {
    color: silver;
    opacity: 1
}

.form-control::-moz-placeholder,input::-moz-placeholder {
    color: silver;
    opacity: 1
}

.form-control:-ms-input-placeholder,input:-ms-input-placeholder {
    color: silver
}

select {
    border-radius: 0;
    -webkit-box-shadow: none!important;
    box-shadow: none!important;
    color: #858585;
    background-color: #FFF;
    border: 1px solid #D5D5D5
}



.chosen-container-single .chosen-single{
    width:210px;
    height:32px;
    line-height:28px;
    box-shadow:none;
    background:#fafafa;
    border-radius:0;
}
.chosen-container-single .chosen-single span{
    height:32px;
    line-height:28px;
    font-size:16px;
    font-size:"Microsoft YaHei";
    text-indent:0;
}
.chosen-container-single .chosen-single div b{
    background:none;
    position:relative;
}
.chosen-container-single .chosen-single div b:before{
    position:absolute;
    top:2px;
    font-family:"iconfont" !important;
  font-size:12px;
  font-style:normal;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
   content: "\e65e";
}
.chosen-container-single.chosen-with-drop .chosen-single div b:before{
   content: "\e65d";
}
.chosen-container .chosen-drop{
    width:210px;
}
.chosen-container-single .chosen-search{
    position:relative;
}
.chosen-container-single .chosen-search input[type=text]{
    width:200px;
    height:28px;
    line-height:28px;
    background:none;
    text-indent:0;
}
.chosen-container-single .chosen-search:after{
    position:absolute;
    top:10px;
    right:12px;
    font-family:"iconfont" !important;
  font-size:14px;
  font-style:normal;
  font-weight:500;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\e651";
}
.chosen-container .chosen-results{
    max-height:240px;
    overflow-y:auto;
    overflow-x:hidden;
    list-style:none;
    margin:0 4px 4px 0;
    padding:0 0 0 4px;
    color:#858585;
    font-family:sans-serif
}
.chosen-container *{
    box-sizing:border-box;
}
.chosen-container .chosen-results li{
    line-height:25px;
    height:25px;
    padding:0 6px;
    font-size:16px;
    font-family:Arial
}
.chosen-container.chosen-container-active .chosen-single,.chosen-container.chosen-container-active .chosen-drop{
    border-color: #4492C9
}
.chosen-container-single .chosen-single abbr{
     content: "\e641";
     background:none;
}
.chosen-container-single .chosen-single abbr:after{
    position:absolute;
    top:-3px;
    right:-3px;
    font-family:"iconfont" !important;
  font-size:10px;
  font-style:normal;
  font-weight:600;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\e641";
  transform:scale(.8)
}
.chosen-container-multi .chosen-choices li.search-choice .search-choice-close{
    background:none;
}
.chosen-container-multi .chosen-choices li.search-choice .search-choice-close:before{
   position:absolute;
    top:0px;
    right:0px;
    font-family:"iconfont" !important;
  font-size:10px;
  font-style:normal;
  font-weight:600;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\e641";
  transform:scale(.8)
}
/*
   teatarea限制字符串的样式
*/
.limiterBox{
    border:1px solid #222;
    border-top:none;
    background-color:#333;
    padding:3px;
    font-size:12px;
    color:#fff;
    margin-top:6px;

}
.limiterBox:after{
    display:none;
}
.limiterBox:before{
    display:inline-block;
    content:"";
    position:absolute;
    width:0;
    height:0;
    top:-8px;
    left:50%;
    margin-left:-5px;
    border-color: transparent transparent #333;
    border-style:solid;
    border-width:0 8px 8px;

}
/*
   teatarea限制字符串的样式
*/
textarea.autosize-transition{
    transition-duration:"height 0.2s";
}
/*文件选择*/
.file-input{
    position:relative;
    height:30px;
    max-width:100%;
    display:block;
}
.file-input .file-container{
    display:block;
    position:absolute;
    top:0;
    left:0;
    right:0;
    height:30px;
    background-color:#fff;
    border:1px solid #d5d5d5;
    cursor:pointer;
    box-shadow:none;
    transition:all .15s;
}
.file-input .file-container:before{
    display:inline-block;
    content:attr(data-title);
    position:absolute;
    right:0;
    top:0;
    bottom:0;
    line-height:24px;
    text-align:center;
    padding:0 8px;
    background-color:#6fb3e0;
    color:#fff;
    font-size:11px;
    font-weight:700;
    border:2px solid #fff;
    border-left-width:4pc;
    transition: all .3s;
}
.file-input input[type=file]{
    position:absolute;
    z-index:-999;
    overflow:hidden;
    opacity:0;
    width:0;
    height:0;
}
.file-input .file-container .file-name{
    display:inline-block;
    height:30px;
    max-width:80%;
    white-space:nowrap;
    overflow:hidden;
    line-height:28px;
    color:#888;
    font-size:13px;
    /*vertical-align:;*/
    position:static;
    padding-left:30px;
}
.file-input .file-container .file-name:after{
    display:inline-block;
    content:attr(data-title);
}
.file-input .file-container  .file-icon{
    display:inline-block;
    position:absolute;
    left:0;
    top:0;
    bottom:0;
    line-height:24px;
    width:26px;
    text-align:center;
    background-color:#d1d1d1;
    border:2px solid #fff;
    transition: all .1s;
}
    </style>
</head>
<body>
    <form id="form1" runat="server" class="form-control">
    <div class="wrapper">
        <p>
           text <input type="text" name="name"  placeholder="用户名"  class="input-normal" /><br />
        </p>
        <p>
          email  <input type="email" name="name"  placeholder="邮箱"  class="input-normal" /><br />
        </p>
        <p>
          password  <input type="password" name="name"  placeholder="密码"  class="input-normal" />
        </p>


        <div style="width:210px;">
            <label for="form-field-select-3">单选</label>
            <br />
            <select class="chosen-select form-control" id="form-field-select-3"  style="display:block;width:210px" data-placeholder="Choose a State...">
                <option value="value"></option>
                <option value="f">Albel</option>
                <option value="2">dsdsd</option>
                <option value="3">dsdsd</option>
                <option value="value">vbfbfbf</option>
                <option value="value">tewrwer</option>
                <option value="value">Albel</option>
                <option value="value">dsdsd</option>
                <option value="value">dsdsd</option>
                <option value="value">vbfbfbf</option>
                <option value="value">tewrwer</option>
                <option value="value">Albel</option>
                <option value="value">dsdsd</option>
                <option value="value">dsdsd</option>
                <option value="value">vbfbfbf</option>
                <option value="value">tewrwer</option>
            </select>
        </div>
        <br />
        <div style="width:210px;">
            <label for="form-field-select-4">多选</label>
            <br />
            <select class="chosen-select form-control" id="form-field-select-4"  style="display:block;width:210px" data-placeholder="Choose a State..." multiple >
                <option value="value"></option>
                <option value="f">Albel</option>
                <option value="2">dsdsd</option>
                <option value="3">dsdsd</option>
                <option value="4">vbfbfbf</option>
                <option value="5">tewrwer</option>
                <option value="6">Albel</option>
                <option value="7">dsdsd</option>
                <option value="8">dsdsd</option>
                <option value="9">vbfbfbf</option>
                <option value="10">tewrwer</option>
                <option value="11">Albel</option>
                <option value="12">dsdsd</option>
                <option value="13">dsdsd</option>
                <option value="14">vbfbfbf</option>
                <option value="15">tewrwer</option>
            </select>
        </div>
        <div style="width:240px;margin:20px 0;">
            <label for="form-field-9">默认 Textarea</label>
            <textarea class="form-control" placeholder="Default Textarea" style="width:210px;" id="form-field-9"></textarea>
            <label for="form-field-10">限制字符个数 Textarea</label>
            <textarea class="form-control limited" placeholder="Limited Textarea" maxlength="50" style="width:240px;"id="form-field-10"></textarea>
             <label for="form-field-11">自动调节textarea高度</label>
            <textarea class="autosize-transition form-control" placeholder="AutoSize Textarea" style="width:240px;overflow:hidden;word-wrap:break-word;resize:horizontal;height:52px;"id="form-field-11"></textarea>
        </div>
        <%--<div style="width:240px">
            <label class="file-input" id="">
                <input type="file" id="input-file-1"/>
                <span data-title="Choose" class="file-container">
                    <span class="file-name" data-title="No File...">
                        <i class="iconfont icon-download file-icon"></i>
                    </span>
                </span>
                <a href="#">content</a>
            </label>
        </div>--%>
    </div>
    </form>
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/chosen.jquery.min.js"></script>
    <script src="js/jquery.inputlimiter.min.js"></script>
    <script src="js/autosize.min.js"></script>
    <script src="js/ace.min.js"></script>
    <script src="js/ace-elements.min.js"></script>
    <script>
    <%--select框的初始化,需引用chosen.jquery.min.js --%>
        $("#form-field-select-3").chosen({
            allow_single_deselect:true  //允许出现close按钮
        })
        $("#form-field-select-4").chosen({
            allow_single_deselect:true  //允许出现close按钮
        })
     <%--text 限制字符个数的初始化,需要引用inputlimiter.min.js--%>
        $("textarea.limited").inputlimiter({
            remText:'%n 个字符剩余...',
            limitText:'最大允许 :%n.'
        })
        //txtarea的自动高度设置,需要引用autosize.min.js
        autosize($("textarea[class*=autosize]"))
    </script>
    <script>
        $("#input-file-1").ace_file_input({
            no_file: "No File ...",
            btn_choose: 'Choose',
            btn_change: 'Change',
            droppable: false,
            onchange: null,
            thumbnail:false
        })
    </script>
</body>
</html>
