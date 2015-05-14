package com.mycompany.testhibernatejpa;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author lo.zert
 */
@Entity
@Table(name = "user")
public class UserInfo implements Serializable {
    @Id
    @Column(name="id")
    private int id;
    @Column(name="username")
    private String userName;
    @Column(name="password1")
    private String password1;
    @Column(name="email")
    private String email;
    @Column(name="phone")
    private String phone;
    @Column(name="city")
    private String city;
    
    public UserInfo()
    {
        
    }
    
    public UserInfo(String username, String password, String email, String phone, String city){
        this.userName = username;
        this.password1 = password;
        this.email = email;
        this.phone = phone;
        this.city = city;
    }
    public int getId() {
        return id;
    }
 
    public void setId(int id) {
        this.id = id;
    }
 
    public String getUserName() {
        return userName;
    }
 
    public void setUserName(String userName) {
        this.userName = userName;
    }
 
    public String getPassword1() {
        return password1;
    }
 
    public void setPassword1(String password1) {
        this.password1 = password1;
    }
 
    public String getEmail() {
        return email;
    }
 
    public void setEmail(String email) {
        this.email = email;
    }
 
    public String getPhone() {
        return phone;
    }
 
    public void setPhone(String phone) {
        this.phone = phone;
    }
 
    public String getCity() {
        return city;
    }
 
    public void setCity(String city) {
        this.city = city;
    }
 
}
