package com.bishe.sell.mapper;

import com.bishe.sell.pojo.Type;

import java.util.List;

public interface TypeMapper {

    // 获取类型列表
    List<Type> getTypeList();

    // 添加分类
    void addType(Type type);

    // 根据id删除分类
    void deleteTypeById(String typeId);

    // 根据id获取分类
    Type getTypeById(String typeId);

    // 编辑页面
    void editType(Type type);
}
