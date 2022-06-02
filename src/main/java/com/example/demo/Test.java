package com.example.demo;

import com.baomidou.mybatisplus.annotation.*;

@TableName("english")
public class Test {
    @TableId(type = IdType.AUTO)
    public Integer id;
    @TableField(updateStrategy = FieldStrategy.NOT_EMPTY,insertStrategy = FieldStrategy.NOT_EMPTY)
    public String word;
    public Integer count;
    @TableField(updateStrategy = FieldStrategy.NOT_EMPTY)
    public String mean;

    public String getMean() {
        return mean;
    }

    public void setMean(String mean) {
        this.mean = mean;
    }

    public Test() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Test( String word, Integer count, String mean) {
        this.word = word;
        this.count = count;
        this.mean = mean;
    }

    @Override
    public String toString() {
        return "Test{" +
                "id=" + id +
                ", word='" + word + '\'' +
                ", count=" + count +
                ", mean='" + mean + '\'' +
                '}';
    }
}
