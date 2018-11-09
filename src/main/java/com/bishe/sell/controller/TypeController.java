package com.bishe.sell.controller;

import com.bishe.sell.pojo.Type;
import com.bishe.sell.service.TypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("api/type/")
public class TypeController {

    @Autowired
    private TypeService typeService;

    /**
     * 查询分类列表
     * @param model
     * @param session
     * @return
     */
    @RequestMapping("admin/typeList.html")
    public String typeList(Model model, HttpSession session) {

        List<Type> typeList = typeService.getTypeList();

        model.addAttribute("typeList", typeList);

        session.setAttribute("typeList", typeList);

        return "admin/type/typeList";
    }

    /**
     * 添加分类
     * @param type
     * @return
     */
    @RequestMapping("admin/addType.html")
    public String addType(Type type) {

        typeService.addTyp(type);

        return "redirect:/api/type/admin/typeList.html";
    }

    /**
     * 删除分类（逻辑删除）
     * @param typeId
     * @return
     */
    @RequestMapping("admin/deleteType/{typeId}.html")
    public String deleteType(@PathVariable String typeId) {

        typeService.deleteTypeById(typeId);

        return "redirect:/api/type/admin/typeList.html";
    }

    /**
     * 获取分类，跳转到编辑页面
     * @param typeId
     * @param model
     * @return
     */
    @RequestMapping("admin/toEdit/{typeId}.html")
    public String toEdit(@PathVariable String typeId, Model model) {

        Type type = typeService.getTypeById(typeId);

        model.addAttribute("type", type);

        return "admin/type/editType";
    }

    /**
     * 编辑分类
     * @param type
     * @return
     */
    @RequestMapping("admin/editType.html")
    private String editType(Type type) {

        typeService.editType(type);

        return "redirect:/api/type/admin/typeList.html";
    }

}
