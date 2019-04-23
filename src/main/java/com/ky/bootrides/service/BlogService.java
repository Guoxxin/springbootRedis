package com.ky.bootrides.service;

import com.ky.bootrides.model.Blog;
import com.ky.bootrides.repository.BlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * @author taoshengjie
 * @date 2019-03-23 14:40
 */
@Service
public class BlogService {
    @Autowired
    private BlogRepository blogRepository;
    @Autowired
    RedisTemplate redisTemplate;

    public List<Blog> findAll(){
        List<Blog> all=blogRepository.findAll();
        redisTemplate.opsForValue().set("你好啊","你好啊!!!");
        ValueOperations vo = redisTemplate.opsForValue();
        vo.set("所有的博客",all);
        return all;
    }



}
