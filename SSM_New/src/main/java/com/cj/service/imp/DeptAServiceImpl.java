package com.cj.service.imp;

import com.cj.bean.Dept;
import com.cj.mapper.DeptMapper;
import com.cj.service.DeptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class DeptAServiceImpl implements DeptService {
    @Autowired
    private DeptMapper deptMapper;
    @Override
    public List<Dept> getAllDept() {
        return deptMapper.getAllDept();
    }
}
