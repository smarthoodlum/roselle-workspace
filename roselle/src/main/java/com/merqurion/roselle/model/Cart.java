package com.merqurion.roselle.model;

import java.util.List;

/**
 * 
 * @author Orang Itu
 */
public interface Cart {

    Boolean addItem(Item item);
    
    Item getItem(Integer id);
    
    List<Item>getItems();
    
    Boolean updateItem(Integer id, Item item);
    
    Item removeItem(Integer id);
    
    void clear();
    
    void reset();
    
}
