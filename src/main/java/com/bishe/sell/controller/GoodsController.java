package com.bishe.sell.controller;

import com.bishe.sell.pojo.Comment;
import com.bishe.sell.pojo.Goods;
import com.bishe.sell.pojo.History;
import com.bishe.sell.pojo.Type;
import com.bishe.sell.service.CommentService;
import com.bishe.sell.service.GoodsService;
import com.bishe.sell.service.HistoryService;
import com.bishe.sell.service.TypeService;
import com.bishe.sell.utils.Page;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("api/goods/")
public class GoodsController {

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private TypeService typeService;

    @Autowired
    private HistoryService historyService;

    @Autowired
    private CommentService commentService;

    /**
     * 查看商品列表
     *
     * @param model
     * @param p
     * @return
     */
    @RequestMapping("admin/goodsList.html")
    public String adminGoodsList(Model model, Page<Goods> p) {
        p = goodsService.getGoodsList(p);

        model.addAttribute("page", p);

        return "admin/goods/goodsList";
    }

    /**
     * 查询商品类型，跳转到添加商品界面
     *
     * @param model
     * @return
     */
    @RequestMapping("admin/toAddGoods.html")
    public String toAddGoods(Model model) {

        List<Type> typeList = typeService.getTypeList();

        model.addAttribute("typeList", typeList);

        return "admin/goods/addGoods";
    }

    /**
     * 新增商品
     *
     * @param goods
     * @param goodsPhoto
     * @return
     */
    @RequestMapping("admin/addGoods.html")
    public String addGoods(Goods goods, MultipartFile goodsPhoto) {
        if (goodsPhoto != null) {
            // 不为空，说明用户上传了图片
            String name = UUID.randomUUID().toString().replaceAll("-", "");

            String ext = FilenameUtils.getExtension(goodsPhoto.getOriginalFilename());

            String fileName = name + "." + ext;

            try {
                goodsPhoto.transferTo(new File("F:\\sell\\photo\\" + fileName));
            } catch (IOException e) {
                e.printStackTrace();
            }

            goods.setGoodsImg("photo\\" + fileName);
        }

        goodsService.addGoods(goods);

        return "redirect:/api/goods/admin/goodsList.html";
    }

    /**
     * 根据id删除商品（逻辑删除）
     *
     * @param goodsId
     * @return
     */
    @RequestMapping("admin/deleteGoods/{goodsId}.html")
    public String deleteGoods(@PathVariable String goodsId) {

        goodsService.deleteGoodsById(goodsId);

        return "redirect:/api/goods/admin/goodsList.html";
    }

    /**
     * 查询商品信息，跳转到商品修改页面
     *
     * @param goodsId
     * @param model
     * @return
     */
    @RequestMapping("admin/toEdit/{goodsId}.html")
    public String toEdit(@PathVariable String goodsId, Model model) {

        Goods goods = goodsService.getGoodsById(goodsId);

        model.addAttribute("goods", goods);

        List<Type> typeList = typeService.getTypeList();

        model.addAttribute("typeList", typeList);

        return "admin/goods/editGoods";
    }

    /**
     * 修改商品
     *
     * @param goods
     * @param goodsPhoto
     * @return
     */
    @RequestMapping("admin/editGoods.html")
    public String editGoods(Goods goods, MultipartFile goodsPhoto) {

        String name = UUID.randomUUID().toString().replaceAll("-", "");

        String ext = FilenameUtils.getExtension(goodsPhoto.getOriginalFilename());
        if (StringUtils.isNotBlank(ext)) {
            String fileName = name + "." + ext;

            try {
                goodsPhoto.transferTo(new File("F:\\sell\\photo\\" + fileName));
            } catch (IOException e) {
                e.printStackTrace();
            }

            goods.setGoodsImg("photo\\" + fileName);
        }

        goodsService.editGoods(goods);

        return "redirect:/api/goods/admin/goodsList.html";
    }

    /**
     * 查看商品信息
     * @param goodsId
     * @param model
     * @return
     */
    @RequestMapping("readGoods/{goodsId}.html")
    public String readGoodsById(@PathVariable String goodsId, Model model) {

        // 每次进入，把点击量+1
        goodsService.updateClickNum(goodsId);

        Goods goods = goodsService.getGoodsById(goodsId);

        model.addAttribute("goods", goods);

        // 查询这个商品的出价历史
        List<History> historyList = historyService.getHistoryListByGoodsId(goodsId);
        model.addAttribute("historyList", historyList);

        // 查询这个商品的评论
        List<Comment> commentList = commentService.getCommentListByGoodsId(goodsId);
        model.addAttribute("commentList", commentList);


        return "item-info";
    }

    /**
     * 用户界面分页查询商品列表
     * @param typeId
     * @param p
     * @param model
     * @return
     */
    @RequestMapping("goodsList{typeId}.html")
    public String goodsList(@PathVariable  String typeId, Page p, Model model) {

        if(StringUtils.isNotBlank(typeId)) {
            p.getParams().put("typeId", typeId);
        }
        p.setCurrentCount(10);
        Page page = goodsService.getGoodsList(p);
        model.addAttribute("page", page);

        return "item-list";
    }

}
