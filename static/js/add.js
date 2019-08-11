function add_new_guest()
{
    var name = document.getElementById("name").value;
    var money= parseInt(document.getElementById("money").value);
    var attend_count = parseInt(document.getElementById("attend_count").value);

    if(check_invalid_string(name))
    {
        alert("姓名不能为空");
        return;
    }
    if(!is_positive_interger(money))
    {
        alert("礼金必须>0");
        return;
    }
    if(!is_nonneg_interger(attend_count))
    {
        alert("人数必须>=0");
        return;
    }
    $.ajax({
        type: "POST",           //方法类型
        dataType: "json",       //预期服务器返回的数据类型
        url: "/manage/add_new_guest" ,   //url
        data:
            {
                "name": name,
                "money":money,
                "attend_count": attend_count,
            },
        success: function (data) {
            alert(JSON.stringify(data));
            console.log(data);
        },
        error: function(err) {
            alert(err.responseText);
            console.log(err.responseText);
        }
    });
}