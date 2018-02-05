/**
 * Created by 蓝鸥科技有限公司  www.lanou3g.com.
 */
/*是否带有小数*/
function isDecimal(strValue) {
    var objRegExp = /^\d+\.\d+$/;
    return objRegExp.test(strValue);
}

/*校验是否中文名称组成 */
function ischina(str) {
    var reg = /^[\u4E00-\u9FA5]{2,4}$/;
    /*定义验证表达式*/
    return reg.test(str);
    /*进行验证*/
}

/*校验是否全由3~8位字母数字下划线且数字不能开头组成 */
function isUsername(str) {
    var reg = /^[^\d]\w{2,7}$/;
    /*定义验证表达式*/
    return reg.test(str);
    /*进行验证*/
}

/*校验电话码格式 */
function isTelCode(str) {
    var reg = /^((0\d{2,3}-\d{7,8})|(1[3584]\d{9}))$/;
    return reg.test(str);
}

/*校验邮件地址是否合法 */
function IsEmail(str) {
    var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
    return reg.test(str);
}

/*去掉首尾空格*/
function TrimBlank(str) {
    var re = /^\s+|\s+$/g;
    return str.replace(re, "");
}

/*获取当前页面的参数key对应的值*/
function getParams(key) {
    //创建正则表达式，以key开头(如name=aa)，或者key前面包含&，
    // 并且值的最后有&或直接是末尾，并且值中不包含&
    var reg = new RegExp("(^|&)" + key + "=([^&]*)(&|$)");
    var r = location.search.substr(1).match(reg);
    if (r != null) {
        return decodeURI(r[2]);
    }
    return null;
};



