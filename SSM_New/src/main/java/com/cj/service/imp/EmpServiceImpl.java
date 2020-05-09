package com.cj.service.imp;

import com.cj.bean.Emp;
import com.cj.mapper.DeptMapper;
import com.cj.mapper.EmpMapper;
import com.cj.service.EmpService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EmpServiceImpl implements EmpService {
    @Autowired
    private EmpMapper empMapper;
    @Autowired
    private DeptMapper deptMapper;

    @Override
    public List<Emp> getAllEmp() {

        return empMapper.getAllEmp();
    }

    @Override
    public Emp getEmpById(String eid) {
        return empMapper.getEmpById(eid);
    }

    @Override
    public void updateEmp(Emp emp) {
        empMapper.updateEmp(emp);
    }

    @Override
    public void insertEmp(Emp emp) {
        empMapper.insertEmp(emp);
    }

    @Override
    public void deleteEmpById(Integer eid) {
        empMapper.deleteEmpById(eid+"");
    }

    @Override
    public void deleteEmpAll(String[] eids) {
        empMapper.deleteEmpAll(eids);
    }
}
