package com.example.demo;

import java.util.ArrayList;
import java.util.List;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController		// Rest API Controller
@EnableAutoConfiguration       // 設定を自動的に有効化
public class TestController {

    @RequestMapping("/")	// URLのパスを指定
    @ResponseBody
    public List<String> top(@RequestParam(value = "name", required = false) String name) 
    {
        List<String> list = new ArrayList<String>();
        list.add("SpringBootの最小アプリケーション");
        if (name == "hoge") {
            list.add("(パラメータにhoge指定)");
        } else {
            list.add("(パラメータ指定無し)");
        }
        return list;
    }
}