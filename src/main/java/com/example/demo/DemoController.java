package com.example.demo;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.example.demo.service.TestService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

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
//    @DeleteMapping
//    public String delete(@RequestParam String word){
//        testService.remove(Wrappers.<Test>lambdaQuery().eq(Test::getWord,word));
//        return "wordlist";
//    }
    @RequestMapping(method = RequestMethod.POST)
    public String addWord(Model model,Test test) {
        test.word = test.word.trim();
        test.mean = test.mean.trim();
        Test test1 = testService.getOne(Wrappers.<Test>lambdaQuery().eq(Test::getWord,test.word));
        if(test1 == null && test.word != null && !test.word.equals("")){
            test1 = new Test(test.word, -1, test.mean);
            ++test1.count;
            testService.save(test1);
        }
        else{
            testService.update(test,Wrappers.<Test>lambdaQuery().eq(Test::getWord,test.word));
        }
        list = null;
        return "index";
    }
    @GetMapping("/wordList")
    public String wordByName(Model model, @RequestParam(required = false) String word,
                             Integer current,
                             Integer size){
        Page<Test> page1;
        QueryWrapper<Test> wrapper = new QueryWrapper<>();
        if(word != null) {
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

}
