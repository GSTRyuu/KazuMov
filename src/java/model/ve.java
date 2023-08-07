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
public class ve {

    private int ve_id;
    private String ten_phim;
    private String ngay;
    private String gio;
    private String rap;
    private int phong;
    private int ghe;
    private int tong_tien;
    private String ngay_ban;

    public ve() {
        connect();
    }

    public ve(int ve_id, String ten_phim, String ngay, String gio, String rap, int phong, int ghe, int tong_tien, String ngay_ban) {
        this.ve_id = ve_id;
        this.ten_phim = ten_phim;
        this.ngay = ngay;
        this.gio = gio;
        this.rap = rap;
        this.phong = phong;
        this.ghe = ghe;
        this.tong_tien = tong_tien;
        this.ngay_ban = ngay_ban;
        connect();
    }

   

    public int getVe_id() {
        return ve_id;
    }

    public void setVe_id(int ve_id) {
        this.ve_id = ve_id;
    }

    public String getTen_phim() {
        return ten_phim;
    }

    public void setTen_phim(String ten_phim) {
        this.ten_phim = ten_phim;
    }

    public String getNgay() {
        return ngay;
    }

    public void setNgay(String ngay) {
        this.ngay = ngay;
    }

    public String getGio() {
        return gio;
    }

    public void setGio(String gio) {
        this.gio = gio;
    }

    public String getRap() {
        return rap;
    }

    public void setRap(String rap) {
        this.rap = rap;
    }

    public int getPhong() {
        return phong;
    }

    public void setPhong(int phong) {
        this.phong = phong;
    }

    public int getGhe() {
        return ghe;
    }

    public void setGhe(int ghe) {
        this.ghe = ghe;
    }

    public int getTong_tien() {
        return tong_tien;
    }

    public void setTong_tien(int tong_tien) {
        this.tong_tien = tong_tien;
    }

    public String getNgay_ban() {
        return ngay_ban;
    }

    public void setNgay_ban(String ngay_ban) {
        this.ngay_ban = ngay_ban;
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

    public ArrayList<ve> getListVe(String uid) {
        ArrayList<ve> data = new ArrayList<ve>();
        try {
            String strSelect = "select distinct ve_id, ten_phim, ngay, bat_dau, ten, so_phong, ve.so, tong_tien, ngay_ban from rap\n"
                    + "join phong on rap.rap_id = phong.rap_id\n"
                    + "join ghe on ghe.phong_id = ghe.phong_id\n"
                    + "join suat_chieu on suat_chieu.phong_id = phong.phong_id\n"
                    + "join phim on phim.phim_id = suat_chieu.phim_id\n"
                    + "join ve on ve.suat_chieu_id = suat_chieu.suat_chieu_id\n"
                    + "join nguoi_dung on nguoi_dung.nguoi_dung_id = ve.nguoi_dung_id\n"
                    + "where nguoi_dung.nguoi_dung_id = ? ";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, uid);
            rs = pstm.executeQuery();
            while (rs.next()) {

                ve_id = rs.getInt(1);
                ten_phim = rs.getString(2);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                ngay = "";
                if (rs.getDate(3) != null) {
                    ngay = f.format(rs.getDate(3));
                }
                gio = rs.getString(4);
                rap = rs.getString(5);
                phong = rs.getInt(6);
                ghe = rs.getInt(7);
                tong_tien = rs.getInt(8);
                ngay_ban = "";
                if (rs.getDate(9) != null) {
                    ngay_ban = f.format(rs.getDate(9));
                }
                data.add(new ve(ve_id, ten_phim, ngay, gio, rap, phong, ghe, tong_tien, ngay_ban));
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<ve> getListVeAsc(String uid) {
        ArrayList<ve> data = new ArrayList<ve>();
        try {
            String strSelect = "select distinct ve_id, ten_phim, ngay, bat_dau, ten, so_phong, ve.so, tong_tien, ngay_ban from rap\n"
                    + "join phong on rap.rap_id = phong.rap_id\n"
                    + "join ghe on ghe.phong_id = ghe.phong_id\n"
                    + "join suat_chieu on suat_chieu.phong_id = phong.phong_id\n"
                    + "join phim on phim.phim_id = suat_chieu.phim_id\n"
                    + "join ve on ve.suat_chieu_id = suat_chieu.suat_chieu_id\n"
                    + "join nguoi_dung on nguoi_dung.nguoi_dung_id = ve.nguoi_dung_id\n"
                    + "where nguoi_dung.nguoi_dung_id = ? order by ngay asc";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, uid);
            rs = pstm.executeQuery();
            while (rs.next()) {

                ve_id = rs.getInt(1);
                ten_phim = rs.getString(2);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                ngay = "";
                if (rs.getDate(3) != null) {
                    ngay = f.format(rs.getDate(3));
                }
                gio = rs.getString(4);
                rap = rs.getString(5);
                phong = rs.getInt(6);
                ghe = rs.getInt(7);
                tong_tien = rs.getInt(8);
                ngay_ban = "";
                if (rs.getDate(9) != null) {
                    ngay_ban = f.format(rs.getDate(9));
                }
                data.add(new ve(ve_id, ten_phim, ngay, gio, rap, phong, ghe, tong_tien, ngay_ban));
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<ve> getListVeDesc(String uid) {
        ArrayList<ve> data = new ArrayList<ve>();
        try {
            String strSelect = "select distinct ve_id, ten_phim, ngay, bat_dau, ten, so_phong, ve.so, tong_tien, ngay_ban from rap\n"
                    + "join phong on rap.rap_id = phong.rap_id\n"
                    + "join ghe on ghe.phong_id = ghe.phong_id\n"
                    + "join suat_chieu on suat_chieu.phong_id = phong.phong_id\n"
                    + "join phim on phim.phim_id = suat_chieu.phim_id\n"
                    + "join ve on ve.suat_chieu_id = suat_chieu.suat_chieu_id\n"
                    + "join nguoi_dung on nguoi_dung.nguoi_dung_id = ve.nguoi_dung_id\n"
                    + "where nguoi_dung.nguoi_dung_id = ? order by ngay desc";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, uid);
            rs = pstm.executeQuery();
            while (rs.next()) {

                ve_id = rs.getInt(1);
                ten_phim = rs.getString(2);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                ngay = "";
                if (rs.getDate(3) != null) {
                    ngay = f.format(rs.getDate(3));
                }
                gio = rs.getString(4);
                rap = rs.getString(5);
                phong = rs.getInt(6);
                ghe = rs.getInt(7);
                tong_tien = rs.getInt(8);
                ngay_ban = "";
                if (rs.getDate(9) != null) {
                    ngay_ban = f.format(rs.getDate(9));
                }
                data.add(new ve(ve_id, ten_phim, ngay, gio, rap, phong, ghe, tong_tien, ngay_ban));
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return data;
    }

}
