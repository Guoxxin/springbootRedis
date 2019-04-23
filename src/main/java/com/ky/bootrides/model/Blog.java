package com.ky.bootrides.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * @author taoshengjie
 * @date 2019-03-23 14:12
 */
@Entity
@Table(name = "tb_blog")
public class Blog {
    @Id
    @GeneratedValue(strategy= GenerationType.SEQUENCE,generator="wocao")
    @SequenceGenerator(name = "wocao",sequenceName="blogauto",initialValue=21,allocationSize=2)
    @Column(name="blogid")
    private Integer blogid;

    //@NotBlank(message = "日志分类（id）不能为空")
    @Column(name="classid")
    private Integer classid;
    @Column(name="userid")
    private Integer userid;

  //  @Pattern(regexp = "^(?!_)(?!.*?_$)[a-zA-Z0-9_\\u4e00-\\u9fa5]+${1,50}",message = "字符在1到50位之内，只能含有汉字、数字、字母、下划线不能以下划线开头和结尾")
    @Column(name="title")
    private String title;

   // @Pattern(regexp = "^(?!_)(?!.*?_$)[a-zA-Z0-9_\\u4e00-\\u9fa5]+${1,500}",message = "字符在1到500位之内，只能含有汉字、数字、字母、下划线不能以下划线开头和结尾")
    @Column(name="content")
    private String content;
    @Column(name="thumbnail")
    private String thumbnail;
    @Column(name="pv")
    private Integer pv;


    @Column(name="blogdate")
    private Timestamp blogdate;

    public Integer getBlogid() {
        return blogid;
    }

    public void setBlogid(Integer blogid) {
        this.blogid = blogid;
    }

    public Integer getClassid() {
        return classid;
    }

    public void setClassid(Integer classid) {
        this.classid = classid;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public Integer getPv() {
        return pv;
    }

    public void setPv(Integer pv) {
        this.pv = pv;
    }

    public Timestamp getBlogdate() {
        return blogdate;
    }

    public void setBlogdate(Timestamp blogdate) {
        this.blogdate = blogdate;
    }
}
