package com.bishe.sell.service.impl;

import com.bishe.sell.mapper.TypeMapper;
import com.bishe.sell.pojo.Type;
import com.bishe.sell.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@Transactional
public class TypeServiceImpl implements TypeService {

    @Autowired
    private TypeMapper typeMapper;

    @Override
    public List<Type> getTypeList() {
        return typeMapper.getTypeList();
    }

    @Override
    public void addTyp(Type type) {
        // 补全属性
        type.setTypeId(UUID.randomUUID().toString());
        type.setTypeFlag(1);
        typeMapper.addType(type);
    }

    @Override
    public void deleteTypeById(String typeId) {
        typeMapper.deleteTypeById(typeId);
    }

    @Override
    public Type getTypeById(String typeId) {
        return typeMapper.getTypeById(typeId);
    }

    @Override
    public void editType(Type type) {
        typeMapper.editType(type);
    }
}
