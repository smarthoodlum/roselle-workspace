package com.merqurion.roselle.dao;

import com.merqurion.roselle.model.Category;
import com.merqurion.roselle.model.Menu;
//import com.merqurion.cockatoo.mvc.extension.Page;
import java.math.BigInteger;
import java.util.List;
import javax.persistence.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class MenuDao {

    @PersistenceContext
    private EntityManager em;
    
    @SuppressWarnings("unchecked")
    public List<Menu> all() {
        //return getMenus(0, 0);
        return em.createQuery("select m from Menu m").getResultList();
    }
    
    @SuppressWarnings("unchecked")
    public List<Menu> getMenus(int start, int maxRows) {
        Query query = em.createQuery(
            "from Menu m join fetch m.category c");
        if (start >= 0 && maxRows > 0) {
            query.setFirstResult(start)
                    .setMaxResults(maxRows);
        }
        List<Menu> menus = (List<Menu>) query.getResultList();
        /*for (Menu menu : menus) {
            menu.getCategory().getName();
        }*/
        return menus;
    }
    
    /**
     * Targeted query:
     * SELECT * FROM menus m
     * LEFT JOIN categories c ON m.category_id = c.category_id
     * WHERE m.menu_name LIKE 'b%' AND m.category_id = 1;
     */
    /*@SuppressWarnings("unchecked")
    public List<Menu> getMenus(String menuName, Integer categoryId,
        String orderByType, Page page) {
        menuName += "%";
        String hql =
            "from Menu as m " +
            "left join fetch m.category c " +
            "where m.name like :menuName and deleted = false ";
        String sql =
            "select count(*) from menus m " +
            "left join categories c on m.category_id = c.id " +
            "where m.name like :menuName";
        
        if (categoryId == -2) {
            hql += "and m.category is null ";
            sql += " and m.category_id is null";
        } else if (categoryId > -1) {
            hql += "and m.category = :category ";
            sql += " and m.category_id = :categoryId";
        }

        hql += "order by m.name " + orderByType;
        
        Query squery = sessionFactory.getCurrentSession().createSQLQuery(sql)
                .setParameter("menuName", menuName);
        if (categoryId > -1) {
            squery.setParameter("categoryId", categoryId);
        }
        
        Integer count = ((BigInteger) squery
                .uniqueResult()).intValue();
        
        //System.out.println(">>> Jumlahnya: " + count);
        page.setItemsTotal(count);
        page.paginate();
        
        Query query = sessionFactory.getCurrentSession().createQuery(hql)
                .setParameter("menuName", menuName);
        if (categoryId > -1) {
            Category cTemp = new Category();
            cTemp.setId(categoryId);
            query.setParameter("category", cTemp);
        }
        
        if (page.getStart() >= 0 && page.getItemsPerPage() > 0) {
            query.setFirstResult(page.getStart())
                .setMaxResults(page.getItemsPerPage());
        }
        List<Menu> menus = (List<Menu>) query.list();
        return menus;
    }*/
    
    @SuppressWarnings("unchecked")
    public List<Menu> getRecommendedMenus() {
        String sql = 
            "from Menu m left join fetch m.menuImages i where m.recommended = 1 and deleted = false";
        List<Menu> menus = 
            (List<Menu>) em
            .createQuery(sql)
            .getResultList();
        return menus;
    }
    
    /*public int getMenuCount() {
        int count = ((BigInteger) em.createNativeQuery(
            "select count(*) from menus where deleted = 0")
            .uniqueResult()).intValue();
        return count;
    }*/
    
    public Menu find(Integer id) {
        Menu menu = (Menu) em
            .createQuery("from Menu as m join fetch m.category where m.id = :id")
            .setParameter("id", id)
            .getSingleResult();
        return menu;
    }
    
    @SuppressWarnings("unchecked")
    public List<Menu> getMenuByCategory(Integer categoryId) {
        List<Menu> menus = 
            (List<Menu>) em
            .createQuery(
                "select distinct m from Menu as m " +
                "left join fetch m.menuImages i " +
                "where m.category.id = :categoryId and m.deleted = false order by m.name asc")
            .setParameter("categoryId", categoryId)
            .getResultList();
        return menus;
    }
    
    public void save(Menu menu) {
        em.persist(menu);
    }
    
    public void update(Menu menu) {
        em.merge(menu);
    }
    
    public void delete(Integer menuId) {
        Menu menu = 
            (Menu) em
            .createQuery("from Menu where id = :menuId")
            .setParameter("menuId", menuId)
            .getSingleResult();
        menu.setDeleted(true);
        em.merge(menu);
    }
    
}
