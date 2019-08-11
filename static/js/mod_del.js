var tableHeadPre = "<table id=\"sub_tab\" border=\"1\" width=\"300\">\n"+
    "<caption style=\"color: orange\" align=\"center\">您试图操作的宾客如下</caption>\n" +
    "<tr><th bgcolor=\"#ffd700\" align=\"center\">序列号</th><th bgcolor=\"#ffd700\">嘉宾姓名</th><th bgcolor=\"#ffd700\">赠送礼金</th><th bgcolor=\"#ffd700\">出席人数</th><th bgcolor=\"#ffd700\">录入时间</th></tr>\n"
var bg_open   = document.getElementById('open_win_background');
var close_btn = document.getElementById("open_win_close_btn");

close_btn.onclick = function close() {
    bg_open.style.display = "none";
}

function open_win(IdStr)
{
    var mainTable = document.getElementById("main_table");
    var tarId = -1;
    var theId = parseInt(IdStr);
    //表格列数
    // var cells = mainTable.rows.item(0).cells.length ;
    for (i = 1; i < mainTable.rows.length; i++)
    {
        var factId = id_counter(mainTable.rows[i].innerHTML);
        if (factId == null || factId == undefined || factId == -1)
        {
            continue;
        }
        if(factId == theId)
        {
            tarId = theId;
            break;
        }
    }
    if(tarId == -1)
    {
        alert("没有此记录: id="+IdStr);
        return "";
    }
    $.ajax({
        type: "POST",           //方法类型
        dataType: "json",       //预期服务器返回的数据类型
        url: "/manage/query_guest",   //url
        data:
            {
                "option": 0,
                "paras[]": [theId],
            },
        success: function (data) {
            jsonData = JSON.stringify(data)
            alert(jsonData);
            var ack = JSON.parse(jsonData);
            if (ack.ErrCode == 0 && ack.ErrMsg =="ok")
            {
                draw_table(ack);
            }
            console.log(data);
        },
        error: function (err) {
            //fixme
            alert(JSON.stringify(err));
            draw_table_v2();
            var myDate = new Date()
            document.getElementById("foot").innerHTML = myDate.toLocaleString()
        }
    });
}

function draw_table(ack)
{
    var ret = "";
    for(i = 0; i < ack.Data.length; i++)
    {
        var each = ack.Data[i];
        ret = "<tr><td bgcolor=\"ff69b4\">"+each.Id+"</td><td>"+each.Name+"</td><td>"+each.Money+"</td><td>"+each.AttendCount+"</td><td>"+each.EntryTime+"</td></tr>";
        if(i == 0)
        {
            document.getElementById("var_id").innerHTML = each.Id;
            document.getElementById("var_name").innerHTML = each.Name;
            document.getElementById("var_money").innerHTML = each.Money;
            document.getElementById("var_attend_count").innerHTML = each.AttendCount;
        }
    }
    bg_open.style.display = "block";
    document.getElementById("display_row").innerHTML = tableHeadPre + ret + "</table>"
    var myDate = new Date()
    document.getElementById("foot").innerHTML = myDate.toLocaleString()
}

function draw_table_v2()
{
    var ret = "";
    ret = "<td bgcolor=\"ff69b4\">错误</td><td>错误</td><td>错误</td><td>错误</td><td>错误</td>";
    bg_open.style.display = "block";
    document.getElementById("display_row").innerHTML = tableHeadPre + ret + "</table>"
    {
        document.getElementById("var_id").innerHTML = "错误";
        document.getElementById("var_name").innerHTML = "李婷";
        document.getElementById("var_money").innerHTML = "错误";
        document.getElementById("var_attend_count").innerHTML = "错误";
    }
}

function id_counter(htmlText)
{
    if(htmlText == null || htmlText == "")
    {
        alert("html text is invalid");
        return -1
    }
    var len = htmlText.length
    var start = htmlText.indexOf("id_")
    if(start + 3 >= len)
    {
        alert("该行数据无效:" + htmlText)
        return -1
    }
    var leftText = htmlText.substring(start + 3, len)
    var ret = parseInt(leftText)
    return ret
}

function manage_guest()
{
    var var_list = user_managed_info();
    var old_id = var_list[0];
    var choice = -1;
    var url = "/manage/mod_guest";
    var arg_obj = {};
    if(old_id == null || old_id == undefined)
    {
        alert("请选择指定操作的记录!");
        return;
    }
    var radio = document.getElementsByName("mod_or_del");
    for(var i = 0;i < radio.length; i++)
    {
        if(radio[i].checked)
        {
            choice = parseInt(radio[i].value);
            break;
        }
    }
    if(choice == -1)
    {
        alert("请选择操作类型");
        return;
    }
    switch (choice)
    {
        case 0:
            arg_obj.id = old_id;
            var new_name  = document.getElementById("name_v2").value;
            var new_money = document.getElementById("money_v2").value;
            var new_attend_count = document.getElementById("attend_count_v2").value;
            if (new_name != null || new_name != undefined)
            {
                arg_obj.name = new_name;
            }
            if (new_money != null || new_money != undefined)
            {
                arg_obj.money = new_money;
            }
            if (new_attend_count != null || new_attend_count != undefined)
            {
                arg_obj.count = new_attend_count;
            }
            break;
        case 1:
            url = "/manage/del_guest";
            arg_obj.id = old_id;
            break;
        default:
            alert("暂不支持该管理操作");
            return;
    }
    js = JSON.stringify(arg_obj);
    alert(js);
    $.ajax({
        type: "POST",           //方法类型
        dataType: "json",       //预期服务器返回的数据类型
        url:  url,
        data: arg_obj,
        success: function (data) {
            jsonData = JSON.stringify(data)
            alert(jsonData);
            var ack = JSON.parse(jsonData);
            if (ack.ErrCode == 0 && ack.ErrMsg =="ok")
            {
                if(choice == 0)
                {
                    draw_table(ack);
                } else if (choice == 1)
                {
                    destroy_sub_table();
                }
                console.log(data);
            }
        },
        error: function (err) {
            console.log(err.responseText);
        }
    });
}

function user_managed_info()
{
    var old_id  = -1;
    var old_name = "";
    var old_money= 0;
    var old_attend_count = 0;
    old_id = parseInt(document.getElementById("var_id").innerHTML);
    old_name = document.getElementById("var_name").innerHTML;
    old_money = parseInt(document.getElementById("var_money").innerHTML);
    old_attend_count = parseInt(document.getElementById("var_attend_count").innerHTML);
    return [old_id, old_name, old_money, old_attend_count];
}

function destroy_sub_table()
{
    // document.getElementById("sub_tab").innerHTML = "";
    close_btn.click();
}