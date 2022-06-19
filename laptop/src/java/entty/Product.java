/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entty;

/**
 *
 * @author QuangHai144
 */
public class Product {
    private int id;
    private String ten,anh;
    private int gia;
    private String title,mota;
    private int soluong;
    private int kind;
    public Product(int id, String ten, String anh, int gia, String title, String mota,int soluong,int kind) {
        this.id = id;
        this.ten = ten;
        this.anh=anh;
        this.gia = gia;
        this.title = title;
        this.mota = mota;
        this.soluong = soluong;
        this.kind=kind;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public int getGia() {
        return gia;
    }

    public void setGia(int gia) {
        this.gia = gia;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public int getSoluong() {
        return soluong;
    }

    public void setSoluong(int soluong) {
        this.soluong = soluong;
    }

    public int getKind() {
        return kind;
    }

    public void setKind(int kind) {
        this.kind = kind;
    }
    
    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", ten=" + ten + ", anh=" + anh + ", gia=" + gia + ", title=" + title + ", mota=" + mota + ", soluong=" + soluong + '}';
    }

    
    
}
