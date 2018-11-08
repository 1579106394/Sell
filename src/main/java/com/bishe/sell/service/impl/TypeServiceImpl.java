package com.bishe.sell.service.impl;

import com.bishe.sell.mapper.TypeMapper;
import com.bishe.sell.pojo.Type;
import com.bishe.sell.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TypeServiceImpl implements TypeService {

    @Autowired
    private TypeMapper typeMapper;

    @Override
    public List<Type> getTypeList() {
        return typeMapper.getTypeList();
    }
}
