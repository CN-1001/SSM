package com.cj.service;

import com.cj.bean.Emp;

import java.util.List;

public interface EmpService {
    List<Emp> getAllEmp();

    Emp getEmpById(String eid);

    //修改
    void  updateEmp(Emp emp);
    //    添加
    void insertEmp(Emp emp);

    //    删除
    void deleteEmpById(Integer eid);

    void deleteEmpAll(String[] eid);
}
