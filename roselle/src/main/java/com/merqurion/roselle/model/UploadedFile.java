package com.merqurion.roselle.model;

/**
 * 
 * @author Orang Itu
 */
public class UploadedFile implements java.io.Serializable {

    private static final long serialVersionUID = -38331060124340967L;

    private String name;
    private Long size;
    private String url;
    private String thumbnail_url;
    private String delete_url;
    private String delete_type;

    public UploadedFile() {
        super();
    }

    public UploadedFile(String name, Long size, String url) {
        super();
        this.name = name;
        this.size = size;
        this.url = url;
    }

    public UploadedFile(String name, Long size, String url,
        String thumbnailUrl, String deleteUrl, String deleteType) {
        super();
        this.name = name;
        this.size = size;
        this.url = url;
        this.thumbnail_url = thumbnailUrl;
        this.delete_url = deleteUrl;
        this.delete_type = deleteType;
    }

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
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getDelete_type() {
        return delete_type;
    }

    public void setDelete_type(String delete_type) {
        this.delete_type = delete_type;
    }

    public String getDelete_url() {
        return delete_url;
    }

    public void setDelete_url(String delete_url) {
        this.delete_url = delete_url;
    }

    public String getThumbnail_url() {
        return thumbnail_url;
    }

    public void setThumbnail_url(String thumbnail_url) {
        this.thumbnail_url = thumbnail_url;
    }
}
