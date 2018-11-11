package com.bishe.sell.task;

import com.bishe.sell.pojo.Comment;
import com.bishe.sell.pojo.Goods;
import com.bishe.sell.pojo.History;
import com.bishe.sell.service.CommentService;
import com.bishe.sell.service.GoodsService;
import com.bishe.sell.service.HistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class GoodsTask {

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private HistoryService historyService;

    @Autowired
    private CommentService commentService;

    /**
     * 每秒执行一次定时器，把已经结束的商品状态改为3（卖出）
     * initialDelay：tomcat启动多久执行
     * fixedDelay：每隔多久执行
     */
//    @Scheduled(initialDelay = 1000, fixedDelay = 1000)
    public void endGoods() {

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        String time = sdf.format(new Date());

        List<Goods> goodsList = goodsService.getGoodsByEndTime(time);

        if(goodsList != null && goodsList.size() != 0) {
            // 不为空，说明查到了结束时间是现在的数据，需要结束这个商品的拍卖
            goodsService.endGoods(goodsList);
        }

    }

    /**
     * 定时任务，每天执行一次，清除无意义的评论和出价历史
     * 因为涉及到循环删除、效率很低，所以最终考虑没有以页面功能的形式展出
     * 而是以定时任务的形式
     * 如果要测试，把fixedDelay的值改成1000就行，表示每一秒执行一次
     */
    @Scheduled(initialDelay = 1000, fixedDelay = 1000 * 60 * 60 * 24)
    public void deleteMeaninglessHistory() {

        // 查询所有的评论，遍历，根据评论去搜商品，如果没有就把这条评论删掉
        List<Comment> commentList = commentService.getAllCommentList();
        for (Comment comment : commentList) {
            Goods goods = comment.getGoods();
            if(goods == null) {
                commentService.deleteCommentById(comment.getCommentId());
            }
        }

        // 出价历史同理
        List<History> historyList = historyService.getAllHistoryList();
        for (History history : historyList) {
            Goods goods = history.getGoods();
            if(goods == null) {
                historyService.deleteHistory(history.getHistoryId());
            }
        }

    }

}
