package top.yuyufeng.service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.yuyufeng.dao.ArticleInfoMapper;
import top.yuyufeng.entity.ArticleInfo;

import java.util.List;

/**
 * Created by yuyufeng on 2017/6/7.
 */
@Service
public class ArticleService {

    @Autowired
    private ArticleInfoMapper articleInfoMapper;

    public int add(ArticleInfo articleInfo) {
        return articleInfoMapper.insertSelective(articleInfo);
    }

    public ArticleInfo getArticle(Long articleId) {
        return articleInfoMapper.selectByPrimaryKey(articleId);
    }

    public Page<ArticleInfo> queryPageOrderByTime(int i, int i1) {
        Page<ArticleInfo> page = new Page<ArticleInfo>();
        PageHelper.startPage(i, i1, "article_time desc");
        List<ArticleInfo> list = articleInfoMapper.queryList();
        page = (Page<ArticleInfo>) list;
        return page;
    }
}