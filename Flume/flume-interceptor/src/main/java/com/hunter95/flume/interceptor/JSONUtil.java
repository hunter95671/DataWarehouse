package com.hunter95.flume.interceptor;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;

public class JSONUtil {

//    public static void main(String[] args) {
//        System.out.println(isValidate("{\"age\":18}"));
//        System.out.println(isValidate("{\"age\"}"));
//    }

    //验证数据是否为json
    public static boolean isValidate(String log) {

        try {
            JSON.parse(log);
            return true;
        } catch (JSONException e) {
            return false;
        }

    }
}
