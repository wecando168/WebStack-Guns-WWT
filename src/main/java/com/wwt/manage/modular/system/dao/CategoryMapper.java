package com.wwt.manage.modular.system.dao;

import java.util.List;
import java.util.Map;

import com.wwt.manage.core.common.node.MenuNode;
import com.wwt.manage.core.common.node.ZTreeNode;
import com.wwt.manage.modular.system.model.Category;

public interface CategoryMapper extends BaseDao<Category> {

    List<Category> getCatogry(Map map);

    List<MenuNode> getCatogryNode(Map map);

    /**
     * 获取ztree的节点列表
     */
    List<ZTreeNode> tree();
}