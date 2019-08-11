function check_invalid_string(str)
{
    var bIsInvalid = (str == null|| str == ""||str == undefined)
    return bIsInvalid
}

//测试字符串是否是非负数串
function is_nonneg_interger(num)
{
    return num != null && !isNaN(num) && num >= 0
}

//测试字符串是否是正数串
function is_positive_interger(num)
{
    return num != null && !isNaN(num) && num > 0
}

//测试字符串是否是数串
function is_interger(num)
{
    return num != null && !isNaN(num)
}