package cn.imzjw.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author https://blog.imzjw.cn
 * @date 2021/7/23 21:21
 */
@RestController
public class DockerController {

    @GetMapping("success")
    public String actions() {
        return "This is the Docker image I built using GitHub Actions. 🎉";
    }
}
