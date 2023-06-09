package com.javapandeng.po;

import java.io.Serializable;
import java.util.Date;

public class News implements Serializable {
    private Integer id;
    private String name;
    private String content;
    private Date addTime;

    public News(Integer id, String name, String content, Date addTime) {
        this.id = id;
        this.name = name;
        this.content = content;
        this.addTime = addTime;
    }

    public News() {
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", content='" + content + '\'' +
                ", addTime=" + addTime +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }
}
