package com.example.demo.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.demo.Test;
import com.example.demo.dao.TestDao;
import org.springframework.stereotype.Service;

@Service
public class TestServiceImpl extends ServiceImpl<TestDao, Test> implements TestService{
}
