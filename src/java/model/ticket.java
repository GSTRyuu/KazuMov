/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

/**
 *
 * @author fpt
 */
public class ticket {

    private int phim_id;
    private String ten_phim;
    private int thoi_luong;
    private String ngay_cong_chieu;
    private String dien_vien;
    private String dao_dien;
    private int the_loai_id;
    private String anh;
    private String banner;
    private int suat_chieu_id;
    private String bat_dau;
    private String ngay;
    private int phong_id;

    public ticket() {
        connect();
    }

    public ticket(int phim_id, String ten_phim, int thoi_luong, String ngay_cong_chieu, String dien_vien, String dao_dien, int the_loai_id, String anh, String banner, int suat_chieu_id, String bat_dau, String ngay, int phong_id) {
        this.phim_id = phim_id;
        this.ten_phim = ten_phim;
        this.thoi_luong = thoi_luong;
        this.ngay_cong_chieu = ngay_cong_chieu;
        this.dien_vien = dien_vien;
        this.dao_dien = dao_dien;
        this.the_loai_id = the_loai_id;
        this.anh = anh;
        this.banner = banner;
        this.suat_chieu_id = suat_chieu_id;
        this.bat_dau = bat_dau;
        this.ngay = ngay;
        this.phong_id = phong_id;
        connect();
    }

    public ticket(int phim_id, int suat_chieu_id, String bat_dau, String ngay, int phong_id) {
        this.phim_id = phim_id;
        this.suat_chieu_id = suat_chieu_id;
        this.bat_dau = bat_dau;
        this.ngay = ngay;
        this.phong_id = phong_id;
        connect();
    }

 
    public int getPhim_id() {
        return phim_id;
    }

    public void setPhim_id(int phim_id) {
        this.phim_id = phim_id;
    }

    public String getTen_phim() {
        return ten_phim;
    }

    public void setTen_phim(String ten_phim) {
        this.ten_phim = ten_phim;
    }

    public int getThoi_luong() {
        return thoi_luong;
    }

    public void setThoi_luong(int thoi_luong) {
        this.thoi_luong = thoi_luong;
    }

    public String getNgay_cong_chieu() {
        return ngay_cong_chieu;
    }

    public void setNgay_cong_chieu(String ngay_cong_chieu) {
        this.ngay_cong_chieu = ngay_cong_chieu;
    }

    public String getDien_vien() {
        return dien_vien;
    }

    public void setDien_vien(String dien_vien) {
        this.dien_vien = dien_vien;
    }

    public String getDao_dien() {
        return dao_dien;
    }

    public void setDao_dien(String dao_dien) {
        this.dao_dien = dao_dien;
    }

    public int getThe_loai_id() {
        return the_loai_id;
    }

    public void setThe_loai_id(int the_loai_id) {
        this.the_loai_id = the_loai_id;
    }

    public String getAnh() {
        return anh;
    }

    public void setAnh(String anh) {
        this.anh = anh;
    }

    public String getBanner() {
        return banner;
    }

    public void setBanner(String banner) {
        this.banner = banner;
    }

    public int getSuat_chieu_id() {
        return suat_chieu_id;
    }

    public void setSuat_chieu_id(int suat_chieu_id) {
        this.suat_chieu_id = suat_chieu_id;
    }

    public String getBat_dau() {
        return bat_dau;
    }

    public void setBat_dau(String bat_dau) {
        this.bat_dau = bat_dau;
    }

    public String getNgay() {
        return ngay;
    }

    public void setNgay(String ngay) {
        this.ngay = ngay;
    }

    public int getPhong_id() {
        return phong_id;
    }

    public void setPhong_id(int phong_id) {
        this.phong_id = phong_id;
    }



    Connection cnn;  //ket noi
    Statement stm;   //thuc hien cau lenh sql
    PreparedStatement pstm;
    ResultSet rs;    //luu tru va xu ly du lieu

    private void connect() {
        try {
            cnn = (new DBContext().connection);
            if (cnn != null) {
                System.out.println("Connect success");
            } else {
                System.out.println("Connect fail");
            }
        } catch (Exception e) {
        }
    }

    public ArrayList<ticket> getListPhimAndSuat(String id) {
         ArrayList<ticket> data = new ArrayList<ticket>();
        try {
            String strSelect = "select distinct phim.phim_id, suat_chieu_id, bat_dau, ngay, phong_id from phim join suat_chieu on phim.phim_id = suat_chieu.phim_id where phim.phim_id = ? ";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {
                phim_id = rs.getInt(1);
                suat_chieu_id = rs.getInt(2);
                bat_dau = rs.getString(3);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                ngay = "";
                if (rs.getDate(4) != null) {
                    ngay = f.format(rs.getDate(4));
                }
                phong_id = rs.getInt(5);     
                data.add(new ticket(phim_id, suat_chieu_id, bat_dau, ngay, phong_id));
                System.out.println(data);
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return data;
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
