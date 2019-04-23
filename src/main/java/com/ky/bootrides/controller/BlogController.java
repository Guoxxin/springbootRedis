package com.ky.bootrides.controller;


import com.ky.bootrides.model.Result;
import com.ky.bootrides.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import com.ky.bootrides.model.Blog;
import javax.validation.constraints.Null;
import java.util.List;
import java.util.Map;


/**
 * @author taoshengjie
 * @date 2019-03-23 14:11
 */
@RestController
@CrossOrigin
public class BlogController {
    @Autowired
    private BlogService blogService;
    @Autowired
    private RedisTemplate redisTemplate;


    @RequestMapping("/getBlog")
    public Result getBlog(){
        List<Blog> blogs=blogService.findAll();
        return new Result(200,"获取成功",blogs);
    }
    @RequestMapping("/getRedisBlog")
    public Result getredisBlog(){
        ValueOperations operations = redisTemplate.opsForValue();
        Object result = operations.get("所有的博客");
        return new Result(200,"获取成功",result);
    }
}
