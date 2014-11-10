package com.merqurion.roselle.dao;

import com.merqurion.roselle.model.Category;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class CategoryDao {

    @PersistenceContext
    private EntityManager em;
    
    @SuppressWarnings("unchecked")
    public List<Category> getCategories() {
        List<Category> categories = em
            .createQuery("select c from Category c order by id asc")
            .getResultList();
        return categories;
    }
    
    public Category find(Integer id) {
        Category category = (Category) em
            .createQuery("select c from Category c join fetch c.group where c.id = :id")
            .setParameter("id", id)
            .getSingleResult();
        return category;
    }
    
    public void save(Category category) {
        if (category == null) {
            return;
        }
        em.persist(category);
    }
    
    public void update(Category category) {
        if (category == null) {
            return;
        }
        em.merge(category);
    }
    
    public void delete(Category category) {
        if (category == null) {
            return;
        }
        em.remove(category);
    }
}
