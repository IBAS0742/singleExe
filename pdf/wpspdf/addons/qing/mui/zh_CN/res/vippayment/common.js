/**
 * homepageapi兼容处理
 */
var docerApi;
try {
    if(window.external) {
        docerApi = window.external;
    }
} catch (e) {}
//区分新旧内核调用不同的执行方法
if(window.cefQuery) {
    var excApi = function(jsonstr) {
        var param = 'jsAsynCall("' + jsonstr + '")';
        var request_id = window.cefQuery({
            request: param,
            persistent: false,
            onSuccess: function(response) {

            },
            onFailure: function(error_code, error_message) {

            }
        });
    }
} else {
    var excApi = function(jsonstr) {
        //如果当前客户端是支持全异步接口
        docerApi.jsAsynCall(jsonstr);
    }
}
//客户端 异步调用入口
function jsAsynCall(data, needReturn, notParse) {
    //需要 返回值
    if(needReturn) {
        var defer = $.Deferred();
        !data.params&&(data.params={});
        var _callback = data.params['callback'] = 'wps_jsAsyn_callback_'+ (Math.floor(Math.random()*1000));
        window[_callback] = function(result) {
            result=Base64.decode(result);
            //alert(JSON.stringify(JSON.parse(result)).replace(/"/g,"'"));
            if(!notParse) {
                try {
                    result = $.parseJSON(result);
                } catch(_e) {
                    try {
                        result = eval('(' + result + ')');
                    } catch(_ee) {
                        result.exception = 'JSON PARSE ERROR';
                    }
                }
            }
            defer.resolve(result);
            delete window[_callback];
        }
    }

    try {
        excApi(Base64.encode(JSON.stringify(data)));
    } catch(_e) {}

    return defer;
}
