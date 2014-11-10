package com.merqurion.roselle.model;

import java.util.*;

/**
 * 
 * @author Orang Itu
 */
public class RestaurantCart implements Cart, java.io.Serializable {

    private static final long serialVersionUID = -999999999999999008l;
    
    private Map<Integer, Item> items = new HashMap<Integer, Item>();
    private String tableName;
    
    /**
     * Tambah item. Di sinilah muncul alasan kenapa Cart dijadikan interface.
     * Ga semua Cart harus dimasukkan OrderedMenu. Dalam hal ini, OrderedMenu
     * memang implements dari Item, tapi OrderedMenu punya arti khusus di
     * restoran. Maka dari itu, dibentuklah kelas RestaurantCart yang
     * addItem() mengharuskan menginput Item yang adalah OrderedMenu.
     */
    @Override
    public Boolean addItem(Item item) {
        if (item == null) {
            throw new NullPointerException();
        }
        
        if (!(item instanceof OrderLine)) { // ga boleh klo bukan OrderedMenu
            return false;
        }
        
        if (!items.containsKey(item.getId())) { // kalau sekiranya ga ada, add kan saja
            items.put(item.getId(), item);
            return true;
        }
        
        OrderLine temp = (OrderLine) items.get(item.getId());
        temp.setQuantity(temp.getQuantity() + item.getQuantity());
        temp.setNote(temp.getNote() + "\n\n" + item.getNote());
        
        return true;
    }
    
    @Override
    public Item getItem(Integer menuId) {
        return items.get(menuId);
    }
    
    @Override
    public List<Item> getItems() {
        return new ArrayList<Item>(items.values());
    }
    
    @Override
    public Boolean updateItem(Integer menuId, Item item) {
        if (item == null) {
            return false;
        }
        
        if (!(item instanceof OrderLine)) {
            return false;
        }
        
        //items.put(menuId, item);
        OrderLine cartItem = (OrderLine) items.get(menuId);
        cartItem.setQuantity(item.getQuantity());
        cartItem.setNote(item.getNote());
        
        return true;
    }
    
    @Override
    public Item removeItem(Integer menuId) {
        if (items.containsKey(menuId)) {
            return items.remove(menuId);
        }
        
        return null;
    }
    
    @Override
    public void clear() {
        items.clear();
    }
    
    @Override
    public void reset() {
        clear();
        setTableName(null);
    }
    
    public CustOrder getOrder(Integer serverId, String tableName) {
        if (serverId == null) {
            throw new NullPointerException("Server ID cannot be null");
        }
        
        if (tableName == null) {
            throw new NullPointerException("Table name cannot be null");
        }
        
        CustOrder order = new CustOrder();
        User server = new User();
        server.setId(serverId);
        order.setServer(server);
        Set<OrderLine> orderLines = new HashSet<OrderLine>(0);
        for (Item item : items.values()) {
            orderLines.add((OrderLine) item);
        }
        order.setOrderLines(orderLines);
        return null;
    }
    
    public String getTableName() {
        return tableName;
    }
    
    public void setTableName(String tableName) {
        this.tableName = tableName;
    }
}
