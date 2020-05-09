package com.cj.mapper;

import com.cj.bean.Emp;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface EmpMapper {
    //获取
    List<Emp> getAllEmp();

    Emp getEmpById(String eid);

    //修改
    void updateEmp(Emp emp);

    //    添加
    void insertEmp(Emp emp);

    //    删除
    void deleteEmpById(@Param("eid") String eid);

    void deleteEmpAll(@Param("eids") String[] eids/*, @Param("eids") String eids*/);
}
