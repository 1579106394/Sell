package com.bishe.sell.service;

import com.bishe.sell.pojo.Type;

import java.util.List;

public interface TypeService {

    // 获取类型列表
    List<Type> getTypeList();

    // 添加分类
    void addTyp(Type type);

    // 根据id删除分类
    void deleteTypeById(String typeId);

    // 根据id获取分类
    Type getTypeById(String typeId);

    // 编辑分类
    void editType(Type type);
}