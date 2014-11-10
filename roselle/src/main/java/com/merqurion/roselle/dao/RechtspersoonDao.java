package com.merqurion.roselle.dao;

import com.merqurion.roselle.model.Rechtspersoon;
import javax.persistence.*;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class RechtspersoonDao {

    @PersistenceContext
    private EntityManager em;
    
    public Rechtspersoon findOne(Integer id) {
        Rechtspersoon rechtspersoon = (Rechtspersoon) em
            .find(Rechtspersoon.class, id);
        return rechtspersoon;
    }
    
    public void update(Rechtspersoon rechtspersoon) {
        em.merge(rechtspersoon);
    }
    
}
