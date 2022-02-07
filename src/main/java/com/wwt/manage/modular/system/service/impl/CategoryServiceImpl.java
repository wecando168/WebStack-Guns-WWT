package com.wwt.manage.modular.system.service.impl;

import com.wwt.manage.core.common.node.MenuNode;
import com.wwt.manage.core.common.node.ZTreeNode;
import com.wwt.manage.core.util.Pager;
import com.wwt.manage.modular.system.dao.CategoryMapper;
import com.wwt.manage.modular.system.dao.SiteMapper;
import com.wwt.manage.modular.system.model.Category;
import com.wwt.manage.modular.system.model.Site;
import com.wwt.manage.modular.system.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @Author jsnjfz
 * @Date 2019/7/21 15:17
 * 分类相关业务接口实现类
 */
@Service
public class CategoryServiceImpl extends BaseService<Category> {

    @Autowired
    private CategoryMapper categoryMapper;

    @Autowired
    private SiteMapper siteMapper;

    public static Pager<Category> pager = null;


    public List<Category> getCatogry(Map<String, Object> map) {
        return categoryMapper.getCatogry(map);
    }

    public List<MenuNode> getCatogryNode(Map<String, Object> map) {
        return categoryMapper.getCatogryNode(map);
    }

    public List<ZTreeNode> tree() {
        return categoryMapper.tree();
    }


    public List<Category> getCatogrySite(Map<String, Object> map) {
        List<Category> categoryList = categoryMapper.getList(map);
        List<Site> siteList = siteMapper.getList(map);
        for (Category category:categoryList) {
            List<Site> sites = new ArrayList<>();
            for (Site site:siteList){
                if (site.getCategoryId() == category.getId()){
                    sites.add(site);
                }

            }
            category.setSites(sites);
        }
        return categoryList;
    }
    /**
     * 站内查询
     * @param map
     * @return
     */
    public List<Category> getCatogrySiteByinfo(Map<String, Object> map) {
        List<Category> categoryList = categoryMapper.getList(map);
        List<Category> resultList = new ArrayList<>();
        List<Site> siteList = siteMapper.getList(map);
        if(siteList.size()==0) {
        	return categoryList;
        }
        for (Category category:categoryList) {
            List<Site> sites = new ArrayList<>();
            for (Site site:siteList){
                if (site.getCategoryId() == category.getId()){
                    sites.add(site);
                }
            }
            if(sites.size()!=0) {
            	category.setSites(sites);
            }
            if(null==category.getSites()||category.getSites().size()==0) {
            }else {
            	resultList.add(category);
            }
        }
        return resultList;
    }


}
