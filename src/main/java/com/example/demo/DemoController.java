package com.example.demo;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.example.demo.service.TestService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

@Controller
public class DemoController {
    @Resource
    public TestService testService;
    public List<Test> list;
    @RequestMapping("/index")
    public String wordList(Model model){
        model.addAttribute("test",new Test());
        return "index";
    }
    @DeleteMapping
    @ResponseBody
    public CommonResult<Test> delete(@RequestParam String word){
        testService.remove(Wrappers.<Test>lambdaQuery().eq(Test::getWord,word));
        list.removeIf(test -> Objects.equals(test.word, word));
        return new CommonResult<>(200,"删除成功");
    }
    @PostMapping
    @ResponseBody
    public CommonResult<Test> addWord(Model model,@RequestBody Test test) {
        test.word = test.word.trim();
        test.mean = test.mean.trim();
        Test test1 = testService.getOne(Wrappers.<Test>lambdaQuery().eq(Test::getWord,test.word));
        if(test1 == null && checkEmptyOrNull(test.word)){
            test1 = new Test(test.word, -1, test.mean);
            ++test1.count;
            testService.save(test1);
        }
        else{
            if(!checkEmptyOrNull(test.mean))
                testService.update(test, Wrappers.<Test>lambdaQuery().eq(Test::getWord, test.word));

        }
        list = null;
        return new CommonResult<>(200,"插入成功");
    }

    @GetMapping("/wordList")
    public String wordByName(Model model, @RequestParam(required = false) String word,
                             Integer current,
                             Integer size){
        Page<Test> page1;
        QueryWrapper<Test> wrapper = new QueryWrapper<>();
        if(!checkEmptyOrNull(word)) {
            wrapper.eq("word", word.trim());
            Test one = testService.getOne(wrapper);
            if(one == null){
                page1 = new Page<>();
            }
            else {
                ++one.count;
                testService.updateById(one);
                page1 = new Page<>(1,10,1,List.of(one));
            }
            model.addAttribute("page1",page1);
            return "wordlist";
        }
        if(list == null)
            list = testService.list(wrapper.last("order by rand()"));
        page1 = new Page<>(current,size,list.size(),list);
        model.addAttribute("page1",page1);
        return "wordlist";
    }
    public boolean checkEmptyOrNull(String s){
        return s == null || "".equals(s);
    }
}
