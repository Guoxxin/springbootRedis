package com.ky.bootrides.repository;

import com.ky.bootrides.model.Blog;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface BlogRepository extends JpaRepository<Blog,Integer>  {
}
