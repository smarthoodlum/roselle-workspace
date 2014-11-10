package com.merqurion.roselle.model;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

/**
 * 
 * @author Orang Itu
 */
@Entity
@Table(name = "menu_images", catalog = "restaurant")
public class MenuImage implements java.io.Serializable {

    private static final long serialVersionUID = -999999999999999004l;
    
    public static final String MENU_IMAGE_PATH = "/resources/images/menu/";
    public static final String IMAGE_REAL_PATH = "/temp/";
    public static final int MAX_IMAGE_SIZE = 100000;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    
    @Column(length = 250, nullable = false)
    private String name;
    
    @Column(name = "url")
    private String url;
    
    //@Column(name = "thumbnail_url")
    @Transient
    private String thumbnail_url;
    
    @ManyToOne
    @JoinColumn(name = "menu_id", nullable = false)
    private Menu menu;
    
    @Column
    private Integer sequence;
    
    @Transient
    private Long size;
    
    @Transient
    private String delete_url;
    
    @Transient
    private String delete_type;
    
    @Transient
    private MultipartFile file;
    
    public String getDeleteType() {
        return delete_type;
    }
    
    public void setDeleteType(String deleteType) {
        this.delete_type = deleteType;
    }
    
    public String getDeleteUrl() {
        return delete_url;
    }
    
    public void setDeleteUrl(String deleteUrl) {
        this.delete_url = deleteUrl;
    }
    
    public MultipartFile getFile() {
        return file;
    }
    
    public void setFile(MultipartFile file) {
        setName(file.getOriginalFilename());
        this.file = file;
    }
    
    public Long getId() {
        return id;
    }
    
    public void setId(Long id) {
        this.id = id;
    }
    
    public String getUrl() {
        return url;
    }
    
    public void setUrl(String url) {
        this.url = url;
    }
    
    public Menu getMenu() {
        return menu;
    }
    
    public void setMenu(Menu menu) {
        this.menu = menu;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public Integer getSequence() {
        return sequence;
    }
    
    public void setSequence(Integer sequence) {
        this.sequence = sequence;
    }
    
    public Long getSize() {
        return size;
    }
    
    public void setSize(Long size) {
        this.size = size;
    }
    
    public String getThumbnailUrl() {
        return thumbnail_url;
    }
    
    public void setThumbnailUrl(String thumbnailUrl) {
        this.thumbnail_url = thumbnailUrl;
    }
    
    @Override
    public String toString() {
        return String.format(
            "{id: %s, name: %s, url: %s}",
            getId(), getName(), getUrl());
    }
}
