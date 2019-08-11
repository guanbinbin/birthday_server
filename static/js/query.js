function query_guest()
{
    var opt = parseInt(document.getElementById("query_options").value);
    var para1, para2;
    if (!is_nonneg_interger(opt))
    {
        alert("目前不支持此种查找");
        return;
    }
    alert(opt)
    switch (opt) {
        case 1:
        case 2:
            //取para1输入框的值，忽略para2输入框的值并清除
            para1 = document.getElementById("para1").value;
            document.getElementById("para2").value = "";
            if (para1 == null || para1 == "" || para1 == undefined) {
                alert("请输入全名或姓氏以查找");
                return;
            }
            break;
        case 3:
            para1 = parseInt(document.getElementById("para1").value);
            para2 = parseInt(document.getElementById("para2").value);
            if (!is_interger(para1)) {
                alert("参数1必须是整数");
                return;
            }
            if (!is_interger(para2)) {
                alert("参数2必须是整数");
                return;
            }
            if (para2 < para1) {
                var t = 0
                t = para1, para1 = para2, para2 = t
                alert("交换完成")
            }
            break;
        case 4:
            para1, para2 = "-R", "+R";
            break;
        default:
            alert("非法错误");
            return;
    }
    $.ajax({
        type: "POST",           //方法类型
        dataType: "json",       //预期服务器返回的数据类型
        url: "/manage/query_guest",   //url
        data:
            {
                "option": opt,
                "paras[]": [para1, para2],
            },
        success: function (data) {
            jsonData = JSON.stringify(data)
            alert(jsonData);
            var ack = JSON.parse(jsonData);
            if (ack.ErrCode == 0 && ack.ErrMsg =="ok")
            {
                show_table(ack);
            }
            console.log(data);
        },
        error: function (err) {
            alert(JSON.stringify(err));
            console.log(err.responseText);
        }
    });
}

function show_table(ack)
{
    var ret = "";
    var total_house_num, total_guest_num, total_guest_money
    total_house_num = total_guest_num = total_guest_money = 0

    var left_call = "open_win(";
    for(i = 0; i < ack.Data.length; i++)
    {
        var each = ack.Data[i]
        total_house_num++
        total_guest_num += each.AttendCount
        total_guest_money += each.Money
        ret += "<tr><td id=\"id_"+each.Id+"\" bgcolor=\"ff69b4\"><input type=\"submit\" value=\""+each.Id+"\" onclick=";
        ret += left_call;
        ret += each.Id + ")"+ "></td>";
        ret += "<td>"+each.Name+"</td><td>"+each.Money+"</td><td>"+each.AttendCount+"</td><td>"+each.EntryTime+"</td></tr>"
    }
    alert(ret)
    tableHeadPre = "<table id=\"main_table\" border=\"1\" width=\"300\">\n" +
        "<caption style=\"color: deepskyblue\" align=\"center\">宾客礼金记录</caption>\n" +
        "<tr><th bgcolor=\"#ffd700\" align=\"center\">序列号</th><th bgcolor=\"#ffd700\">嘉宾姓名</th><th bgcolor=\"#ffd700\">赠送礼金</th><th bgcolor=\"#ffd700\">出席人数</th><th bgcolor=\"#ffd700\">录入时间</th></tr>\n"
    document.getElementById("guest_query_table").innerHTML = tableHeadPre + ret + "</table>"
    document.getElementById("result_hint").innerHTML = "符合条件的宾客共：<label style=\"color: fuchsia\">" + ack.Data.length + "</lable> 条"
    document.getElementById("total_house_num").innerHTML = "户数: <label style=\"color: fuchsia\">" + total_house_num + "</lable> "
    document.getElementById("total_guest_num").innerHTML = "人数: <label style=\"color: fuchsia\">" + total_guest_num + "</lable> "
    document.getElementById("total_guest_money").innerHTML = "礼金: <label style=\"color: fuchsia\">" + total_guest_money + "</lable> "
    return ret
}