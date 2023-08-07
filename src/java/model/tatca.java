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
public class tatca {

    //phim
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
    //suat_chieu
    private int suat_chieu_id;
    private String bat_dau;
    private String ngay;
    //rap
    private int rap_id;
    private String ten;
    private String dia_chi;
    //phong
    private int phong_id;
    private int so_phong;
    //ghe
    private int ghe_id;
    private int so_ghe;
    //nguoi_dung
    private int nguoi_dung_id;
    private String ho_ten;
    private String tai_khoan;
    private String mat_khau;
    private String so;
    private String email;
    private String ngay_sinh;
    private String gioi_tinh;

    public tatca() {
        connect();
    }

    public tatca(String ten_phim, String banner) {
        this.ten_phim = ten_phim;
        this.banner = banner;
        connect();
    }

    public tatca(int so_ghe) {
        this.so_ghe = so_ghe;
        connect();
    }

    public tatca(String ten) {
        this.ten = ten;
        connect();
    }

    public tatca(int rap_id, String ten, String dia_chi) {
        this.rap_id = rap_id;
        this.ten = ten;
        this.dia_chi = dia_chi;
        connect();
    }

    public tatca(int phong_id, int so_phong) {
        this.phong_id = phong_id;
        this.so_phong = so_phong;
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

    public int getRap_id() {
        return rap_id;
    }

    public void setRap_id(int rap_id) {
        this.rap_id = rap_id;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getDia_chi() {
        return dia_chi;
    }

    public void setDia_chi(String dia_chi) {
        this.dia_chi = dia_chi;
    }

    public int getPhong_id() {
        return phong_id;
    }

    public void setPhong_id(int phong_id) {
        this.phong_id = phong_id;
    }

    public int getSo_phong() {
        return so_phong;
    }

    public void setSo_phong(int so_phong) {
        this.so_phong = so_phong;
    }

    public int getGhe_id() {
        return ghe_id;
    }

    public void setGhe_id(int ghe_id) {
        this.ghe_id = ghe_id;
    }

    public int getSo_ghe() {
        return so_ghe;
    }

    public void setSo_ghe(int so_ghe) {
        this.so_ghe = so_ghe;
    }

    public int getNguoi_dung_id() {
        return nguoi_dung_id;
    }

    public void setNguoi_dung_id(int nguoi_dung_id) {
        this.nguoi_dung_id = nguoi_dung_id;
    }

    public String getHo_ten() {
        return ho_ten;
    }

    public void setHo_ten(String ho_ten) {
        this.ho_ten = ho_ten;
    }

    public String getTai_khoan() {
        return tai_khoan;
    }

    public void setTai_khoan(String tai_khoan) {
        this.tai_khoan = tai_khoan;
    }

    public String getMat_khau() {
        return mat_khau;
    }

    public void setMat_khau(String mat_khau) {
        this.mat_khau = mat_khau;
    }

    public String getSo() {
        return so;
    }

    public void setSo(String so) {
        this.so = so;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNgay_sinh() {
        return ngay_sinh;
    }

    public void setNgay_sinh(String ngay_sinh) {
        this.ngay_sinh = ngay_sinh;
    }

    public String getGioi_tinh() {
        return gioi_tinh;
    }

    public void setGioi_tinh(String gioi_tinh) {
        this.gioi_tinh = gioi_tinh;
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

    public ArrayList<tatca> getRapByPhimId(String pid) {
        ArrayList<tatca> data = new ArrayList<tatca>();
        try {
            String strSelect = "select distinct rap.rap_id, ten, dia_chi from rap\n"
                    + "join phong on rap.rap_id = phong.rap_id\n"
                    + "join ghe on ghe.phong_id = ghe.phong_id\n"
                    + "join suat_chieu on suat_chieu.phong_id = phong.phong_id\n"
                    + "join phim on phim.phim_id = suat_chieu.phim_id\n"
                    + "where phim.phim_id = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, pid);
            rs = pstm.executeQuery();
            while (rs.next()) {
                rap_id = rs.getInt(1);
                ten = rs.getString(2);
                dia_chi = rs.getString(3);

                data.add(new tatca(rap_id, ten, dia_chi));
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<tatca> getSuat(String pid, String rid, String n) {
        ArrayList<tatca> data = new ArrayList<tatca>();
        try {
            String strSelect = "select distinct suat_chieu_id, ngay, bat_dau from rap\n"
                    + "join phong on rap.rap_id = phong.rap_id\n"
                    + "join ghe on ghe.phong_id = ghe.phong_id\n"
                    + "join suat_chieu on suat_chieu.phong_id = phong.phong_id\n"
                    + "join phim on phim.phim_id = suat_chieu.phim_id\n"
                    + "where phim.phim_id = ? and rap.rap_id = ? and ngay >= ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, pid);
            pstm.setString(2, rid);
            pstm.setString(3, n);
            rs = pstm.executeQuery();
            while (rs.next()) {
                suat_chieu_id = rs.getInt(1);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                ngay = "";
                if (rs.getDate(2) != null) {
                    ngay = f.format(rs.getDate(2));
                }
                bat_dau = rs.getString(3);

                data.add(new tatca(suat_chieu_id, ngay, bat_dau));
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return data;
    }

    public ArrayList<tatca> getPhong(String rid, String sid) {
        ArrayList<tatca> data = new ArrayList<tatca>();
        try {
            String strSelect = "select distinct phong.phong_id, so_phong from rap\n"
                    + "join phong on rap.rap_id = phong.rap_id\n"
                    + "join ghe on ghe.phong_id = ghe.phong_id\n"
                    + "join suat_chieu on suat_chieu.phong_id = phong.phong_id\n"
                    + "join phim on phim.phim_id = suat_chieu.phim_id\n"
                    + "where rap.rap_id = ? and suat_chieu_id = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, rid);
            pstm.setString(2, sid);
            rs = pstm.executeQuery();
            while (rs.next()) {
                phong_id = rs.getInt(1);
                so_phong = rs.getInt(2);
                data.add(new tatca(phong_id, so_phong));
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return data;

    }

    public ArrayList<tatca> getGhe(String phid) {

        ArrayList<tatca> data = new ArrayList<tatca>();
        try {
            String strSelect = "select distinct so_ghe from rap\n"
                    + "join phong on rap.rap_id = phong.rap_id\n"
                    + "join ghe on ghe.phong_id = ghe.phong_id\n"
                    + "join suat_chieu on suat_chieu.phong_id = phong.phong_id\n"
                    + "join phim on phim.phim_id = suat_chieu.phim_id\n"
                    + "where phong.phong_id = ?\n"
                    + "order by so_ghe asc";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, phid);
            rs = pstm.executeQuery();
            while (rs.next()) {
                so_ghe = rs.getInt(1);
                data.add(new tatca(so_ghe));
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return data;

    }

    public tatca getphim(String id) {
        try {
            String strSelect = "select ten_phim, banner from phim where phim_id = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {
                ten_phim = rs.getString(1);
                banner = rs.getString(2);
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return new tatca(ten_phim, banner);
    }

    public tatca getSuat(String id) {
        try {
            String strSelect = "select ngay, bat_dau from suat_chieu where suat_chieu_id = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");
                ngay = "";
                if (rs.getDate(1) != null) {
                    ngay = f.format(rs.getDate(1));
                }
                bat_dau = rs.getString(2);
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return new tatca(ngay, bat_dau);
    }

    public tatca getRap(String id) {
        try {
            String strSelect = "select ten from rap where rap_id = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {

                ten = rs.getString(1);
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return new tatca(ten);
    }

    public tatca getPhong(String id) {
        try {
            String strSelect = "select so_phong from phong where phong_id = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {

                so_phong = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return new tatca(so_phong);
    }

    public int getTongTien(String id) {
        try {
            String strSelect = "select thoi_luong from phim where phim_id = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            rs = pstm.executeQuery();
            while (rs.next()) {
                thoi_luong = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return (500 * thoi_luong);
    }

    public int isOcc(String id) {
        try {
            String strSelect = "select * from ve where suat_chieu_id = ? and so = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, id);
            pstm.setInt(2, so_ghe);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return 1;
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return 0;
    }

    public void addVe(String ngay, int tongtien, String sid, String uid, String soghe) {
        try {
            String strSelect = "insert into ve(ngay_ban, tong_tien, suat_chieu_id, nguoi_dung_id, so)\n"
                    + "values\n"
                    + "(?, ?, ?, ?, ?)";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, ngay);
            pstm.setInt(2, tongtien);
            pstm.setInt(3, Integer.parseInt(sid));
            pstm.setInt(4, Integer.parseInt(uid));
            pstm.setInt(5, Integer.parseInt(soghe));
            pstm.execute();
        } catch (Exception e) {
            System.out.println("Add: " + e.getMessage());
        }
    }

    public int getPid(String rid, String sid) {
        try {
            String strSelect = "select distinct phong.phong_id from suat_chieu\n"
                    + "join phong on suat_chieu.phong_id = phong.phong_id\n"
                    + "join rap on rap.rap_id = phong.rap_id \n"
                    + "where suat_chieu_id = ? and rap.rap_id = ?";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, sid);
            pstm.setString(2, rid);
            rs = pstm.executeQuery();
            while (rs.next()) {
                phong_id = rs.getInt(1);
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }
        return phong_id;
    }

    public boolean kiemTra(String h, String m, String t) {
        int gio = Integer.parseInt(h);
        int phut = Integer.parseInt(m);
        String[] ti = t.split("h");
        if (gio < Integer.parseInt(ti[0])) {
            return true;
        } else if (gio == Integer.parseInt(ti[0])) {
            return phut < Integer.parseInt(ti[1]);
        } else {
            return false;
        }
    }

}
