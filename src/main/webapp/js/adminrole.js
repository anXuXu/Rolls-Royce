$(document).ready(function(){
    $("#occupations").on(
        "change",function () {
            var send = {
                "occname":$("#occupations").val()
            }
            $('.demo').empty();
            jQAJAXS(getRootPath()+"/admin/occRloe.action", send, function (msg) {
                // var ob = JSON.parse(msg);

                var demo2 = $('.demo').doublebox({
                    nonSelectedListLabel: '选择权限',
                    selectedListLabel: '授权用户权限',
                    preserveSelectionOnMove: 'moved',
                    moveOnSelect: false,
                    nonSelectedList:msg.loses,
                    selectedList:msg.haves,
                    optionValue:"menu_Id",
                    optionText:"menu_Name",
                    doubleMove:true,
                });
                $(".move").on(
                    "click",function () {
                        //获取未选择的所有值
                        var selectedText = new Array();
                        var selectedOption = new Array();
                        $('select[name="doublebox"]').find("option:not(:selected)").each(function(index, item) {
                            selectedText[index] = $(item).text();
                            selectedOption[index] = $(item).val();
                        });
                        alert("未被选择"+selectedText);
                        alert(selectedOption);
                        //AJAX
                        //获取选择的值
                        $('select[name="doublebox"]').find("option:selected").each(function(index, item) {
                            selectedText[index] = $(item).text();
                            selectedOption[index] = $(item).val();
                        });
                        alert("已被选择"+selectedText);
                        alert(selectedOption);
                        //AJAX
                    }
                );
            })
        }
    );





})