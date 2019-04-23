package com.ky.bootrides;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

@SpringBootApplication
@EnableCaching
public class BootridesApplication {

    public static void main(String[] args) {
        SpringApplication.run(BootridesApplication.class, args);
    }

}
