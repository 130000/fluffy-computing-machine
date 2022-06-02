package com.example.demo;

import java.util.Collections;
import java.util.List;

public class Page<T>{
    public Integer current;
    public Integer size;
    public Integer totalPage;
    public Integer totalRecord;
    public List<T> records;
    public Integer start;
    public Integer end;
    public Page(Integer current,Integer size,Integer totalRecord,List<T> records) {
        this.current = current;
        this.totalRecord = totalRecord;
        this.size = size < totalRecord ? size : totalRecord;
        if(totalRecord % size == 0){
            totalPage = totalRecord / size;
        }
        else{
            totalPage = totalRecord / size + 1;
        }
        start = (current - 1) * size;
        end = (totalRecord - start) >= 10 ? start + size : start + totalRecord % size;
        this.records = records.subList(start,end);
    }
    public Page(){
        current = 1;
        size = 10;
        records = Collections.emptyList();
        start = 0;
        end = 0;
        totalPage = 1;
        totalRecord = 0;
    }

    public Integer getCurrent() {
        return current;
    }

    public void setCurrent(Integer current) {
        this.current = current;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(Integer totalRecord) {
        this.totalRecord = totalRecord;
    }

    public List<T> getRecords() {
        return records;
    }

    public void setRecords(List<T> records) {
        this.records = records;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getEnd() {
        return end;
    }

    public void setEnd(Integer end) {
        this.end = end;
    }
}
