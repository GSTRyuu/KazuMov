/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
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
public class phim {

    private int phim_id;
    private String ten_phim;
    private int thoi_luong;
    private String ngay_cong_chieu;
    private String dien_vien;
    private String dao_dien;
    private int the_loai_id;
    private String tom_tat;
    private String anh;
    private String banner;
    private String trailer;
    
    public phim() {
        connect();
    }

    public phim(int phim_id, String ten_phim, int thoi_luong, String ngay_cong_chieu, String dien_vien, String dao_dien, int the_loai_id, String tom_tat, String anh, String banner, String trailer) {
        this.phim_id = phim_id;
        this.ten_phim = ten_phim;
        this.thoi_luong = thoi_luong;
        this.ngay_cong_chieu = ngay_cong_chieu;
        this.dien_vien = dien_vien;
        this.dao_dien = dao_dien;
        this.the_loai_id = the_loai_id;
        this.tom_tat = tom_tat;
        this.anh = anh;
        this.banner = banner;
        this.trailer = trailer;
        connect();
    }

    public phim(int phim_id, String ten_phim, int thoi_luong, String ngay_cong_chieu, String dien_vien, String dao_dien, int the_loai_id, String tom_tat, String anh) {
        this.phim_id = phim_id;
        this.ten_phim = ten_phim;
        this.thoi_luong = thoi_luong;
        this.ngay_cong_chieu = ngay_cong_chieu;
        this.dien_vien = dien_vien;
        this.dao_dien = dao_dien;
        this.the_loai_id = the_loai_id;
        this.tom_tat = tom_tat;
        this.anh = anh;
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

    public String getTom_tat() {
        return tom_tat;
    }

    public void setTom_tat(String tom_tat) {
        this.tom_tat = tom_tat;
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

    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

    @Override
    public String toString() {
        return "phim{" + "phim_id=" + phim_id + ", ten_phim=" + ten_phim + ", thoi_luong=" + thoi_luong + ", ngay_cong_chieu=" + ngay_cong_chieu + ", dien_vien=" + dien_vien + ", dao_dien=" + dao_dien + ", the_loai_id=" + the_loai_id + ", tom_tat=" + tom_tat + ", anh=" + anh + ", banner=" + banner + ", trailer=" + trailer + ", cnn=" + cnn + ", stm=" + stm + ", pstm=" + pstm + ", rs=" + rs + '}';
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

    public ArrayList<phim> getListphim() {
        ArrayList<phim> data = new ArrayList<phim>();
        try {
            String strSelect = "select * from phim";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                phim_id = rs.getInt(1);
                ten_phim = rs.getString(2);
                thoi_luong = rs.getInt(3);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                ngay_cong_chieu = "";
                if (rs.getDate(4) != null) {
                    ngay_cong_chieu = f.format(rs.getDate(4));
                }
                dien_vien = rs.getString(5);
                dao_dien = rs.getString(6);
                the_loai_id = rs.getInt(7);
                tom_tat = rs.getString(8);
                anh = rs.getString(9);
                data.add(new phim(phim_id, ten_phim, thoi_luong, ngay_cong_chieu, dien_vien, dao_dien, the_loai_id, tom_tat, anh));

            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return data;
    }

    public phim getphim(String id) {
        try {
            String strSelect = "select * from phim where phim_id = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {
                phim_id = rs.getInt(1);
                ten_phim = rs.getString(2);
                thoi_luong = rs.getInt(3);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                ngay_cong_chieu = "";
                if (rs.getDate(4) != null) {
                    ngay_cong_chieu = f.format(rs.getDate(4));
                }
                dien_vien = rs.getString(5);
                dao_dien = rs.getString(6);
                the_loai_id = rs.getInt(7);
                tom_tat = rs.getString(8);
                anh = rs.getString(9);
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return new phim(phim_id, ten_phim, thoi_luong, ngay_cong_chieu, dien_vien, dao_dien, the_loai_id, tom_tat, anh);
    }

    public ArrayList<phim> getListphimSearch(String search) {
        ArrayList<phim> data1 = new ArrayList<phim>();
        try {
            String strSelect = "select * from phim where ten_phim like ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1,"%" + search + "%");
            rs = pstm.executeQuery();
            while (rs.next()) {
                phim_id = rs.getInt(1);
                ten_phim = rs.getString(2);
                thoi_luong = rs.getInt(3);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                ngay_cong_chieu = "";
                if (rs.getDate(4) != null) {
                    ngay_cong_chieu = f.format(rs.getDate(4));
                }
                dien_vien = rs.getString(5);
                dao_dien = rs.getString(6);
                the_loai_id = rs.getInt(7);
                tom_tat = rs.getString(8);
                anh = rs.getString(9);
                data1.add(new phim(phim_id, ten_phim, thoi_luong, ngay_cong_chieu, dien_vien, dao_dien, the_loai_id, tom_tat, anh));
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return data1;
    }
    public ArrayList<phim> getList7phim() {
        ArrayList<phim> top = new ArrayList<phim>();
        try {
            String strSelect = "select top 7 * from phim order by phim_id asc";
            pstm = cnn.prepareStatement(strSelect);
            rs = pstm.executeQuery();
            while (rs.next()) {
                phim_id = rs.getInt(1);
                ten_phim = rs.getString(2);
                thoi_luong = rs.getInt(3);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                ngay_cong_chieu = "";
                if (rs.getDate(4) != null) {
                    ngay_cong_chieu = f.format(rs.getDate(4));
                }
                dien_vien = rs.getString(5);
                dao_dien = rs.getString(6);
                the_loai_id = rs.getInt(7);
                tom_tat = rs.getString(8);
                anh = rs.getString(9);
                banner = rs.getString(10);
                trailer = rs.getString(11);
                top.add(new phim(phim_id, ten_phim, thoi_luong, ngay_cong_chieu, dien_vien, dao_dien, the_loai_id, tom_tat, anh, banner, trailer));

            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return top;
    }

    public ArrayList<phim> getListphimChoice(String i) {
        ArrayList<phim> com = new ArrayList<phim>();
        try {
            String strSelect = "select * from phim where the_loai_id = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1,i);
            rs = pstm.executeQuery();
            while (rs.next()) {
                phim_id = rs.getInt(1);
                ten_phim = rs.getString(2);
                thoi_luong = rs.getInt(3);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                ngay_cong_chieu = "";
                if (rs.getDate(4) != null) {
                    ngay_cong_chieu = f.format(rs.getDate(4));
                }
                dien_vien = rs.getString(5);
                dao_dien = rs.getString(6);
                the_loai_id = rs.getInt(7);
                tom_tat = rs.getString(8);
                anh = rs.getString(9);
                com.add(new phim(phim_id, ten_phim, thoi_luong, ngay_cong_chieu, dien_vien, dao_dien, the_loai_id, tom_tat, anh));
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return com;
        
    }

}
