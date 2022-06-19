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
public class Account {
    private String user,pass;
    private int id,isAdmin;
    private String sdt,diachi;

    public Account() {
    }

    public Account(int id,String user, String pass,  int isAdmin, String sdt, String diachi) {
        this.user = user;
        this.pass = pass;
        this.id = id;
        this.isAdmin = isAdmin;
        this.sdt = sdt;
        this.diachi = diachi;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    @Override
    public String toString() {
        return "Account{" + "user=" + user + ", pass=" + pass + ", id=" + id + ", isAdmin=" + isAdmin + ", sdt=" + sdt + ", diachi=" + diachi + '}';
    }

    
}
