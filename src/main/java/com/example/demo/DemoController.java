package com.example.demo;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.service.TestService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class DemoController {
    @Resource
    public TestService testService;
    @RequestMapping("/wordlist")
    public String wordList(Model model){
        model.addAttribute("test",new Test());
        return "index";
    }
    @RequestMapping(value = "/addWord",method = RequestMethod.POST)
    public String addWord(Model model,Test test) {
        Test test1 = testService.getOne(Wrappers.<Test>lambdaQuery().eq(Test::getWord,test.word));
        System.out.println(test1);
        if(test1 == null && test.word != null && !test.word.equals("")){
            test1 = new Test(test.word, -1, test.mean);
            ++test1.count;
            testService.save(test1);
        }
        else{
            testService.update(test,Wrappers.<Test>lambdaQuery().eq(Test::getWord,test.word));
        }
        return "index";
    }
    @RequestMapping("/word")
    public String wordByName(Model model, @RequestParam(required = false) String word,
                             @RequestParam(required = false)Integer current,
                             @RequestParam(required = false)Integer size){
        Page<Test> page;
        if(current == null || size == null){
            page = new Page<>(1, 10);
        }
        else{
            page = new Page<>(current,size);
        }
        QueryWrapper<Test> wrapper = new QueryWrapper<>();
        if(word != null) {
            wrapper.eq("word", word);
            List<Test> one = testService.list(wrapper);
            one.forEach(s->++s.count);
            testService.updateBatchById(one);
        }
        Page<Test> page1 = testService.page(page,wrapper);
        model.addAttribute("page1",page1);
        return "wordlist";
    }

}
