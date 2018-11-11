package com.bishe.sell.test;

import org.junit.jupiter.api.Test;

/**
 * 测试类，跟项目功能无关
 */
public class RegixTest {

    @Test
    public void testEmail() {
        String regix = "^[A-Za-z\\d]+([-_.][A-Za-z\\d]+)*@([A-Za-z\\d]+[-.])+[A-Za-z\\d]{2,4}$";
        String email = "1579106391@qq.com";
        System.out.println(email.matches(regix));
    }

    @Test
    public void testTelephone() {
        String regix = "^[1]([3|5|8][0-9]{1})[0-9]{8}$";
        String telephone = "18296662231";
        System.out.println(telephone.matches(regix));
    }

}
