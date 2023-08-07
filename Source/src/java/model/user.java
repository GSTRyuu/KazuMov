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

/**
 *
 * @author fpt
 */
public class user {

    private int nguoi_dung_id;
    private String ho_ten;
    private String tai_khoan;
    private String mat_khau;
    private String so;
    private String gioi_tinh;

    public user() {
        connect();
    }

    public user(int nguoi_dung_id, String ho_ten, String tai_khoan, String mat_khau, String so, String gioi_tinh) {
        this.nguoi_dung_id = nguoi_dung_id;
        this.ho_ten = ho_ten;
        this.tai_khoan = tai_khoan;
        this.mat_khau = mat_khau;
        this.so = so;
        this.gioi_tinh = gioi_tinh;
        connect();
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

    public user getLogin(String u, String p) {
        try {
            String strSelect = "select * from nguoi_dung where tai_khoan = ? and mat_khau = ? ";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, u);
            pstm.setString(2, p);
            rs = pstm.executeQuery();
            while (rs.next()) {
                nguoi_dung_id = rs.getInt(1);
                ho_ten = rs.getString(2);
                tai_khoan = rs.getString(3);
                SimpleDateFormat f = new SimpleDateFormat("dd-MM-yyyy");

                mat_khau = rs.getString(4);
                so = rs.getString(5);
                gioi_tinh = "Female";
                if (rs.getBoolean(6)) {
                    gioi_tinh = "Male";
                }
                return new user(nguoi_dung_id, ho_ten, tai_khoan, mat_khau, so, gioi_tinh);

            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }

        return null;

    }

    public boolean check(String ten) {
        try {
            String strSelect = "select * from nguoi_dung where tai_khoan = ? ";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, ten);
            rs = pstm.executeQuery();
            while (rs.next()) {
                return true;
            }
        } catch (Exception e) {
            System.out.println("Loi: " + e.getMessage());
        }

        return false;
        
    }

    public void signUp(String ten, String pass) {
        try {
            String strSelect = "insert into nguoi_dung(tai_khoan, mat_khau) values (?, ?)";
            pstm = cnn.prepareStatement(strSelect);
            pstm.setString(1, ten);
            pstm.setString(2, pass);
            pstm.execute();
        } catch (Exception e) {
            System.out.println("Add: " + e.getMessage());
        }
    }

}
