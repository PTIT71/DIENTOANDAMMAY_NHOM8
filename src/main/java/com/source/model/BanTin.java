package com.source.model;

import java.util.Date;

public class BanTin {
    private String TieuDe;
    private String Sumary;
    private int ID_Tin;
    private String Content;
    private String Author;
    private Date DateNews;
    private String mapping;
    private String image;

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getMapping() {
        return mapping;
    }

    public void setMapping(String mapping) {
        this.mapping = mapping;
    }

    public Date getDateNews() {
        return DateNews;
    }

    public String getAuthor() {
        return Author;
    }

    public String getContent() {
        return Content;
    }

    public void setAuthor(String author) {
        Author = author;
    }

    public void setContent(String content) {
        Content = content;
    }

    public void setDateNews(Date dateNews) {
        DateNews = dateNews;
    }

    public int getID_Tin() {
        return ID_Tin;
    }

    public void setID_Tin(int ID_Tin) {
        this.ID_Tin = ID_Tin;
    }

    public String getSumary() {
        return Sumary;
    }

    public String getTieuDe() {
        return TieuDe;
    }

    public void setSumary(String sumary) {
        Sumary = sumary;
    }

    public void setTieuDe(String tieuDe) {
        TieuDe = tieuDe;
    }

    public BanTin()
    {

    }

}
