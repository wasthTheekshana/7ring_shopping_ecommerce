/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Customer;
import model.Orders;
import model.Products;

/**
 *
 * @author wasat
 */
public class DataBase {

    private String username = "root";
    private String password = "123";
    private String dbName = "7ringshop";
    private String url = "jdbc:mysql://localhost:3307/" + dbName;
    private String driver = "com.mysql.jdbc.Driver";

    ArrayList<Products> list = new ArrayList<>();

    private Connection con;

    private void dbConnection() {

        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    private void dbClose() {
        try {
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void addProduct(Products p) throws SQLException {
        dbConnection();
        String sql = "INSERT INTO `products` (`title`, `description`, `price`, `discount`, `quantity`, `mainCate`, `subCate`, `feature`, `default_image`, `sub_image1`, `sub_image2`, `sub_image3`, `stockPrice`, `status`,`material_color`,`stone`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
        PreparedStatement st = con.prepareStatement(sql);

        st.setString(1, p.getTitle());
        st.setString(2, p.getDescription());
        st.setInt(3, p.getPrice());
        st.setInt(4, p.getDiscount());
        st.setInt(5, p.getQuantity());
        st.setString(6, p.getMainCate());
        st.setString(7, p.getSubCate());
        st.setString(8, p.getFeature());
        st.setString(9, p.getDefault_image());
        st.setString(10, p.getSub_image1());
        st.setString(11, p.getSub_image2());
        st.setString(12, p.getSub_image3());
        st.setInt(13, p.getPrice());
        st.setInt(14, 1);
        st.setString(15, p.getMaterial_color());
        st.setString(16, p.getStone());

        st.executeUpdate();
        dbClose();
    }

    public void addtoCArt(Products p) throws SQLException {
        dbConnection();
        String sql = "INSERT INTO `cart` (`productId`, `userId`) VALUES (?,?);";
        PreparedStatement st = con.prepareStatement(sql);

        st.setString(1, p.getTitle());
        st.setString(2, p.getDescription());
        st.executeUpdate();
        dbClose();
    }

    public Customer findByEmail(String str) throws Exception {
        dbConnection();
        Customer user = null;
        String sql = "SELECT * FROM user WHERE email=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, str);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            user = new Customer();
            user.setId(rs.getInt(1));
            user.setFname(rs.getString(2));
            user.setLname(rs.getString(3));
            user.setEmail(rs.getString(4));
            user.setPwd(rs.getString(5));
            user.setPhone(rs.getString(6));
            user.setAddress1(rs.getString(7));
            user.setAddress2(rs.getString(8));
        }
        rs.close();
        pstmt.close();
        return user;
    }

    public boolean doCreate(Customer user) throws Exception {
        dbConnection();
        boolean flag = false;
        String sql = "INSERT INTO user(fname,lname,email,pwd,phone) VALUES (?,?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, user.getFname());
        pstmt.setString(2, user.getLname());
        pstmt.setString(3, user.getEmail());
        pstmt.setString(4, user.getPwd());
        pstmt.setString(5, user.getPhone());
        if (pstmt.executeUpdate() > 0) {
            flag = true;
        }
        pstmt.close();
        return flag;
    }

    public Customer findById(int id) throws Exception {
        dbConnection();
        Customer user = null;
        String sql = "SELECT * FROM user WHERE id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, id);
        System.out.println("iddddd" + +id);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            user = new Customer();
            user.setFname(rs.getString(2));
            user.setLname(rs.getString(3));
            user.setEmail(rs.getString(4));
            user.setPwd(rs.getString(5));
            user.setPhone(rs.getString(6));
        }
        rs.close();
        pstmt.close();
        return user;
    }

    public boolean doSaveShoppingCart(int goodsId) throws Exception {
        dbConnection();
        boolean flag = false;
//        String sql = "select id from shoppingcart where userId=" + userId + " and goodsId=" + goodsId;
//        PreparedStatement pstmt = con.prepareStatement(sql);
//        ResultSet rs = pstmt.executeQuery();
//        if (rs.next()) {
//            return false;
//        }
//        sql = "INSERT INTO shoppingcart(id,goodsId,userId) VALUES (?,?,?)";
//        pstmt = con.prepareStatement(sql);
//        pstmt.setInt(1, goodsNum);
//        pstmt.setInt(2, goodsId);
//        pstmt.setInt(3, userId);
//        if (pstmt.executeUpdate() > 0) {
//            flag = true;
//        }
//        rs.close();
//        pstmt.close();
//        return flag;
        String sql = "INSERT INTO shoppingcart(goodsId,userId) VALUES (?,?)";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, goodsId);
        pstmt.setInt(2, 5);
        if (pstmt.executeUpdate() > 0) {
            flag = true;
        }
        pstmt.close();
        return flag;
    }

    public List<Products> findGoodsByUser(Customer cus) throws Exception {
        dbConnection();
        int userId = cus.getId();
        System.out.println("user Id" + " " + userId);
        List<Products> all = new ArrayList<Products>();
        String sql = "select * from `products` where product_id=any(SELECT goodsId from `shoppingcart`  where userId=?)";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, userId);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            Products good = new Products();
            good.setProduct_id(rs.getInt(1));
            good.setTitle(rs.getString(2));
            good.setDescription(rs.getString(3));
            good.setPrice(rs.getInt(4));
            good.setDiscount(rs.getInt(5));
            good.setQuantity(rs.getInt(6));
            good.setMainCate(rs.getString(7));
            good.setSubCate(rs.getString(8));
            good.setFeature(rs.getString(9));
            good.setDefault_image(rs.getString(10));
            good.setMaterial_color(rs.getString(16));
//            java.sql.Timestamp timeStamp=rs.getTimestamp(8);
//            java.util.Date date=new  java.util.Date(timeStamp.getTime());
//            good.setCreatDate(date);
            all.add(good);
        }
        rs.close();
        pstmt.close();
        return all;
    }

    public boolean removeCartList(int goodId) {
        dbConnection();
        try {
            Boolean flag = false;
            String sql = "DELETE FROM shoppingcart WHERE goodsId=?";
//            DELETE FROM `7ringshop`.`shoppingcart` WHERE  `id`=7;
            PreparedStatement pstmt = con.prepareStatement(sql);
            pstmt.setInt(1, goodId);
            if (pstmt.executeUpdate() > 0) {
                flag = true;
            }
            pstmt.close();
            return flag;
        } catch (SQLException ex) {
            Logger.getLogger(DataBase.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;

    }

    public List<Products> advanceSearch(String c1, String c2) throws Exception {
        dbConnection();
        //int userId=user.getId();
        List<Products> all = new ArrayList<Products>();
        String sql = "SELECT * FROM products WHERE STATUS= 1 AND material_color = '" + c1 + "' OR stone = '" + c2 + "' ";
        PreparedStatement pstmt = con.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            Products good = new Products();
            good.setProduct_id(rs.getInt(1));
            good.setTitle(rs.getString(2));
            good.setDescription(rs.getString(3));
            good.setPrice(rs.getInt(4));
            good.setDiscount(rs.getInt(5));
            good.setQuantity(rs.getInt(6));
            good.setMainCate(rs.getString(7));
            good.setSubCate(rs.getString(8));
            good.setFeature(rs.getString(9));
            good.setDefault_image(rs.getString(10));
//            java.sql.Timestamp timeStamp=rs.getTimestamp(8);
//            java.util.Date date=new  java.util.Date(timeStamp.getTime());
//            good.setCreatDate(date);
            all.add(good);
        }
        rs.close();
        pstmt.close();
        return all;
    }

    public List<Customer> findByUser(int userId) throws Exception {
        dbConnection();
        //int userId=user.getId();
        List<Customer> all = new ArrayList<Customer>();
        String sql = "select * from `user` where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, userId);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            Customer good = new Customer();
            good.setId(rs.getInt(1));
            good.setFname(rs.getString(2));
            good.setLname(rs.getString(3));
            good.setEmail(rs.getString(4));
            good.setPhone(rs.getString(6));
            good.setAddress1(rs.getString(7));
            good.setAddress2(rs.getString(8));
//            java.sql.Timestamp timeStamp=rs.getTimestamp(8);
//            java.util.Date date=new  java.util.Date(timeStamp.getTime());
//            good.setCreatDate(date);
            all.add(good);
        }
        rs.close();
        pstmt.close();
        return all;
    }

    public List<Orders> findByOderDetails(int userId) throws Exception {
        dbConnection();
        //int userId=user.getId();
        List<Orders> orders = new ArrayList<Orders>();
        String sql = "select * from `orders` where id=?";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setInt(1, userId);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            Orders good = new Orders();
            good.setId(rs.getInt(1));
            good.setOrder_num(rs.getString(2));
            good.setFirst_name(rs.getString(3));
            good.setLast_name(rs.getString(4));
            good.setProduct_name(rs.getString(5));
            good.setPrice(rs.getInt(6));
            good.setQTY(rs.getInt(7));
            good.setAddress1(rs.getString(8));
            good.setAddress2(rs.getString(9));
            good.setEmail(rs.getString(10));
            good.setStatus(rs.getString(12));
//            java.sql.Timestamp timeStamp=rs.getTimestamp(8);
//            java.util.Date date=new  java.util.Date(timeStamp.getTime());
//            good.setCreatDate(date);
            orders.add(good);
        }
        rs.close();
        pstmt.close();
        return orders;
    }
    
    
    
        public boolean updateOderStatus(String na, int goodsId) throws Exception {
        dbConnection();
        boolean flag = false;

        String sql = "UPDATE orders SET `status`=? WHERE `id`=?";
        
        try (//        UPDATE `7ringshop`.`orders` SET `status`='Pending' WHERE  `id`=1;
                PreparedStatement pstmt = con.prepareStatement(sql)) {
            pstmt.setString(1, na);
            pstmt.setInt(2, goodsId);
            // pstmt = con.prepareStatement(sql);
            if (pstmt.executeUpdate() > 0) {
                flag = true;
            }
        }
        return flag;
    }
        
            public List<Products> adminTablcateSearch(String c1) throws Exception {
        dbConnection();
        //int userId=user.getId();
        List<Products> all = new ArrayList<Products>();
        String sql = "SELECT * FROM products WHERE STATUS= 1 AND mainCate = '" + c1 + "' ";
        PreparedStatement pstmt = con.prepareStatement(sql);
        ResultSet rs = pstmt.executeQuery();
        while (rs.next()) {
            Products good = new Products();
            good.setProduct_id(rs.getInt(1));
            good.setTitle(rs.getString(2));
            good.setDescription(rs.getString(3));
            good.setPrice(rs.getInt(4));
            good.setDiscount(rs.getInt(5));
            good.setQuantity(rs.getInt(6));
            good.setMainCate(rs.getString(7));
            good.setSubCate(rs.getString(8));
            good.setFeature(rs.getString(9));
            good.setDefault_image(rs.getString(10));
            good.setSub_image1(rs.getString(11));
            good.setSub_image2(rs.getString(12));
            good.setSub_image3(rs.getString(13));    
            good.setStockPrice(rs.getInt(14));    
            good.setMaterial_color(rs.getString(16));    
            good.setStone(rs.getString(17));   
//            java.sql.Timestamp timeStamp=rs.getTimestamp(8);
//            java.util.Date date=new  java.util.Date(timeStamp.getTime());
//            good.setCreatDate(date);
            all.add(good);
        }
        rs.close();
        pstmt.close();
        return all;
    }
}
