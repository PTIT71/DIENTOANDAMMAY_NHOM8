package com.source.code;

import com.source.model.BanTin;
import com.source.model.DanhMuc;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TestDataBase {
    private static String DB_URL = "jdbc:sqlserver://35.231.53.181:1433;"
                                    + "databaseName=NEWS_SQL;";
    private static String USER_NAME = "sa";
    private static String PASSWORD = "Dieu123456789";
    Connection conn;
    Statement stmt;
    public TestDataBase()
    {


    }

    public List<DanhMuc> GetDanhMuc()
    {
        try {
            // connnect to database 'testdb'
            Connection conn = getConnection(DB_URL, USER_NAME, PASSWORD);
            // crate statement
            Statement stmt = conn.createStatement();
            // get data from table 'student'
            ResultSet rs = stmt.executeQuery("select * from DANHMUC");
            List<DanhMuc> lst = new ArrayList<DanhMuc>();

            // show data
            while (rs.next()) {
                DanhMuc DM = new DanhMuc();
                DM.setID_DanhMuc(rs.getInt(1));
                DM.setTEN_DanhMuc(rs.getString(2));
                DM.setMap(rs.getString(3));
                lst.add(DM);
            }

            // close connection
            conn.close();
            return lst;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public List<BanTin> GetDSTinVan(int start, int end)
    {
        try {
            // connnect to database 'testdb'
            Connection conn = getConnection(DB_URL, USER_NAME, PASSWORD);
            // crate statement
            Statement stmt = conn.createStatement();
            String sql ="select * from BANGTIN WHERE ID_TIN>=? AND  ID_TIN<?";
            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setInt(1,start);
            pstm.setInt(2,end);
            ResultSet rs = pstm.executeQuery();
            List<BanTin> lst = new ArrayList<BanTin>();

            // show data
            while (rs.next()) {
                BanTin BT = new BanTin();
                BT.setSumary(rs.getNString("SUMMARY"));
                BT.setID_Tin(rs.getInt("ID_TIN"));
                BT.setDateNews(rs.getDate("TIME"));
                BT.setImage(rs.getNString("IMAGE"));

                lst.add(BT);
            }

            // close connection
            conn.close();
            return lst;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public BanTin GetNewsTop()
    {
        try {
            // connnect to database 'testdb'
            Connection conn = getConnection(DB_URL, USER_NAME, PASSWORD);
            // crate statement
            Statement stmt = conn.createStatement();
            // get data from table 'student'
            ResultSet rs = stmt.executeQuery("select * from BANGTIN WHERE ID_TIN =1");

            BanTin BT = new BanTin();
            // show data
            while (rs.next()) {

                 BT.setTieuDe(rs.getNString("TITLE"));
                 BT.setSumary(rs.getNString("SUMMARY"));
                 BT.setID_Tin(rs.getInt("ID_TIN"));

            }

            // close connection
            conn.close();
            return BT;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public BanTin getNews(int id)
    {
        try {
            // connnect to database 'testdb'
            Connection conn = getConnection(DB_URL, USER_NAME, PASSWORD);
            // get data from table 'student'
            String sql = "select * from BANGTIN WHERE ID_TIN =?";

            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setInt(1,id);
            ResultSet rs = pstm.executeQuery();

            BanTin BT = new BanTin();
            // show data
            while (rs.next()) {
                BT.setTieuDe(rs.getNString("TITLE"));
                BT.setSumary(rs.getNString("SUMMARY"));
                BT.setID_Tin(rs.getInt("ID_TIN"));
                BT.setAuthor(rs.getNString("TACGIA"));
                BT.setContent(rs.getString("CONTENT"));
                BT.setDateNews(rs.getDate("TIME"));
                BT.setImage(rs.getNString("IMAGE"));
            }

            // close connection
            conn.close();

            return BT;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


    public String GetChuyenMuc(String map)
    {
        try {
            // connnect to database 'testdb'
            Connection conn = getConnection(DB_URL, USER_NAME, PASSWORD);
            // get data from table 'student'
            System.out.println("MAP INPUT " + map );
            String sql = "select * from DANHMUC WHERE MAP =?";

            PreparedStatement pstm = conn.prepareStatement(sql);

            pstm.setString(1,map);
            ResultSet rs = pstm.executeQuery();

            BanTin BT = new BanTin();
            String Chuyenmuc="";
            // show data
            while (rs.next()) {
               Chuyenmuc = rs.getNString("TENDANHMUC");

            }

            // close connection
            conn.close();

            return Chuyenmuc;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }


    public static Connection getConnection(String dbURL, String userName,
                                           String password) {
        Connection conn = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection(dbURL, userName, password);
            System.out.println("connect successfully!");
        } catch (Exception ex) {
            System.out.println("connect failure!");
            ex.printStackTrace();
        }
        return conn;
    }


}
