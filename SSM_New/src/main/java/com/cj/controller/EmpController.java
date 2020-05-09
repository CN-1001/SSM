package com.cj.controller;

import com.cj.bean.Dept;
import com.cj.bean.Emp;
import com.cj.service.DeptService;
import com.cj.service.EmpService;
import com.cj.util.PageUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;

@Controller
public class EmpController {
    @Autowired
    private EmpService service;
    @Autowired
    private DeptService deptService;

    //查询
    @RequestMapping(value = "/emps/{pageNum}", method = RequestMethod.GET)
    public String getAllEmp(Map<String, Object> map, @PathVariable("pageNum") Integer pageNum, HttpServletRequest request) {
//    分页                   当前页          条数
        PageHelper.startPage(pageNum, 4);
        List<Emp> allEmp = service.getAllEmp();

        PageInfo<Emp> pageInfo = new PageInfo<Emp>(allEmp, 85);
//            导航条  页码
        String page = PageUtil.getPageInfo(pageInfo, request);
        map.put("page", page);
        map.put("empList", allEmp);
        return "list";
    }

    //    添加
    @RequestMapping(value = "/emp", method = RequestMethod.GET)
    public String add(Map<String, Object> map) {
        List<Dept> allDept = deptService.getAllDept();
        map.put("depts", allDept);
        System.out.println(allDept);
        return "add";
    }

    //    保存
    @RequestMapping(value = "/emp", method = RequestMethod.POST)
    public String save(Emp emp, ModelAndView mv) {
        System.out.println(emp);
        service.insertEmp(emp);
        mv.setViewName("list");
        return "redirect:/emps/1";
    }

    //    删除
    @RequestMapping(value = "/emp/{eid}", method = RequestMethod.DELETE)
    public String deleteEmp(@PathVariable("eid") Integer eid) {

        service.deleteEmpById(eid);

        return "redirect:/emps/1";
    }
    //    删除
    @RequestMapping(value = "/emps", method = RequestMethod.DELETE)
    public String deleteEmpAll(@RequestParam("eidss") String[] eids) {
        System.out.println(Arrays.toString(eids));

        service.deleteEmpAll(eids);
        return "redirect:/emps/1";
    }

    //    修改
    @RequestMapping(value = "/emp/{eid}", method = RequestMethod.GET)
    public String toUpdate(Map<String, Object> map, @PathVariable("eid") String eid) {
        System.out.println("update");
        Emp emp = service.getEmpById(eid);
        Collection<Dept> departments = deptService.getAllDept();
        map.put("depts", departments);
        map.put("emp", emp);

        return "update";

    }

    @RequestMapping(value = "/emp", method = RequestMethod.PUT)
    public String update(Emp emp) {
        service.updateEmp(emp);
        return "redirect:/emps/1";
    }

}
