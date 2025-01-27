/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package swp391.product;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.naming.NamingException;
import swp391.utils.DBHelper;

/**
 *
 * @author nguye
 */
public class ProductDAO implements Serializable {

    private List<ProductDTO> listProduct;

    public List<ProductDTO> getListProduct() {
        return listProduct;
    }

    private List<ProductDTO> listProductByFilter;

    public List<ProductDTO> getListProductByFilter() {
        return listProductByFilter;
    }

    public int searchProduct(String searchValue)
            throws NamingException, SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;

        try {
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "SELECT ProductID, Name, Description, Quantity, Price,p.CateID, p.Status, ps.Size, CreateTime, Avatar, Avatar2 \n"
                        + "from Product p join ProductSize ps on p.SizeID = ps.SizeID\n"
                        + "where p.Name like ? and p.Status = 1";

                stm = con.prepareStatement(sql);
                stm.setString(1, "%" + searchValue + "%");
                rs = stm.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("ProductID");
                    String name = rs.getString("Name");
                    String descr = rs.getString("Description");
                    int quantity = rs.getInt("Quantity");
                    double price = rs.getDouble("Price");
                    int cateID = rs.getInt("CateID");
                    boolean status = rs.getBoolean("Status");
                    int size = rs.getInt("Size");
                    Date date = rs.getDate("CreateTime");
                    String avatar = rs.getString("Avatar");
                    ProductDTO dto = new ProductDTO(id, name, descr, quantity, price,cateID, status, size, date, avatar);

                    if (this.listProduct == null) {
                        this.listProduct = new ArrayList<>();
                    }
                    this.listProduct.add(dto);
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }

            if (stm != null) {
                stm.close();
            }

            if (con != null) {
                con.close();
            }
        }
        return this.listProduct.size();
    }

    public void searchByFilter(int cateID, double priceFrom, double priceTo, int size)
            throws SQLException, NamingException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        try {
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "Select ProductID, Name, Description, Quantity, Price, ps.Size, Avatar, Avatar2 "
                        + "From Product p, ProductSize ps "
                        + "Where ";
                if (cateID > 0) {
                    sql += " CateID = ? AND p.Status = 1 and p.SizeID = ps.SizeID";
                }
                if (priceFrom >= 0) {
                    sql += " And Price >= ? AND p.Status = 1 and p.SizeID = ps.SizeID";
                }
                if (priceTo != 0) {
                    sql += " And Price <= ? AND p.Status = 1 and p.SizeID = ps.SizeID";
                }
                if (size != 0) {
                    sql += " And ps.Size = ? AND p.Status = 1 and p.SizeID = ps.SizeID";
                }
                stm = con.prepareStatement(sql);
                stm.setInt(1, cateID);
                if (priceFrom >= 0 && priceTo != 0 && size != 0) {
                    stm.setDouble(2, priceFrom);
                    stm.setDouble(3, priceTo);
                    stm.setInt(4, size);
                } else if (priceFrom >= 0 && priceTo != 0) {
                    stm.setDouble(2, priceFrom);
                    stm.setDouble(3, priceTo);
                } else if (priceFrom >= 0 && size != 0) {
                    stm.setDouble(2, priceFrom);
                    stm.setInt(3, size);
                } else if (priceFrom >= 0) {
                    stm.setDouble(2, priceFrom);
                } else if (priceTo != 0 && size != 0) {
                    stm.setDouble(2, priceTo);
                    stm.setInt(3, size);
                } else if (priceTo != 0) {
                    stm.setDouble(2, priceTo);
                } else if (size != 0) {
                    stm.setInt(2, size);
                }
                rs = stm.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("ProductID");
                    String name = rs.getString("Name");
                    String description = rs.getString("Description");
//                    description = URLEncoder.encode(description, "UTF-8");
                    int quantity = rs.getInt("Quantity");
                    double price = rs.getDouble("Price");
                    size = rs.getInt("Size");
                    String avatar = rs.getString("Avatar");
                    ProductDTO dto = new ProductDTO(
                            id, name, description, quantity, price, size, avatar);
                    if (this.listProductByFilter == null) {
                        this.listProductByFilter = new ArrayList<>();
                    }
                    this.listProductByFilter.add(dto);
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
    }

    public ProductDTO getItemByID(String ID)
            throws NamingException, SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        ProductDTO dto = null;
        try {
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "SELECT ProductID, Name, Description, Quantity, Price, p.Status, Size,p.CateID, CreateTime, Avatar, Avatar2\n"
                        + " FROM Product p, ProductSize ps\n"
                        + " WHERE ProductID = ? and p.SizeID = ps.SizeID";
                stm = con.prepareStatement(sql);
                stm.setInt(1, Integer.parseInt(ID));
                rs = stm.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("ProductID");
                    String name = rs.getString("Name");
                    String descr = rs.getString("Description");
                    int quantity = rs.getInt("Quantity");
                    double price = rs.getDouble("Price");
                    boolean status = rs.getBoolean("Status");
                    int size = rs.getInt("Size");
                    int cateID = rs.getInt("CateID");
                    Date date = rs.getDate("CreateTime");
                    String avatar = rs.getString("Avatar");
                    dto = new ProductDTO(id, name, descr, quantity, price,cateID, status, size, date, avatar);
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return dto;
    }

    public List<ProductDTO> getNewestProduct()
            throws NamingException, SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        ProductDTO dto = null;
        List<ProductDTO> list = null;
        try {
            con = DBHelper.makeConnection();
            if (con != null) {

                String sql = "select ProductID, Name, Description, Price, ps.Size, Avatar, Avatar2\n"
                        + "                        from Product p, ProductSize ps\n"
                        + "                        where Name LIKE (select Name from Product where ProductID = (select max(ProductID) from Product)) and p.SizeID = ps.SizeID";
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("ProductID");
                    String name = rs.getString("Name");
                    String descr = rs.getString("Description");
//                    int quantity = rs.getInt("Quantity");
                    double price = rs.getDouble("Price");
//                    boolean status = rs.getBoolean("Status");
                    int size = rs.getInt("Size");
//                    Date date = rs.getDate("CreateTime");
                    String avatar = rs.getString("Avatar");
                    dto = new ProductDTO(id, name, price, descr, size, avatar);

                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    list.add(dto);
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return list;
    }

    public List<ProductDTO> getSecondNewestProduct()
            throws NamingException, SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        ProductDTO dto = null;
        List<ProductDTO> list = null;
        try {
            con = DBHelper.makeConnection();
            if (con != null) {

                String sql = "SELECT ProductID, Name, Description, Price, ps.Size, Avatar, Avatar2 \n"
                        + "                        FROM Product p, ProductSize ps\n"
                        + "                        WHERE Name = (\n"
                        + "                        SELECT TOP 1 Name\n"
                        + "                        FROM Product\n"
                        + "                        WHERE ProductID < (SELECT MAX(ProductID) FROM Product) \n"
                        + "                        AND Name not like (select Name from Product where ProductID = (SELECT MAX(ProductID) FROM Product))\n"
                        + "                        ORDER BY ProductID DESC\n"
                        + "                        ) and p.SizeID = ps.SizeID";
                stm = con.prepareStatement(sql);
                rs = stm.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("ProductID");
                    String name = rs.getString("Name");
                    String descr = rs.getString("Description");
//                    int quantity = rs.getInt("Quantity");
                    double price = rs.getDouble("Price");
//                    boolean status = rs.getBoolean("Status");
                    int size = rs.getInt("Size");
//                    Date date = rs.getDate("CreateTime");
                    String avatar = rs.getString("Avatar");
                    dto = new ProductDTO(id, name, price, descr, size, avatar);

                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    list.add(dto);
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return list;
    }
    
    
    public List<ProductDTO> searchRelatedProduct(int cateID)
            throws NamingException, SQLException {
        Connection con = null;
        PreparedStatement stm = null;
        ResultSet rs = null;
        List<ProductDTO> list = null;
        try {
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "SELECT ProductID, Name, Description, Quantity, Price,p.CateID, p.Status, ps.Size, CreateTime, Avatar, Avatar2 \n"
                        + "from Product p join ProductSize ps on p.SizeID = ps.SizeID\n"
                        + "where p.CateID = ? and p.Status = 1";

                stm = con.prepareStatement(sql);
                stm.setInt(1, cateID);
                rs = stm.executeQuery();
                while (rs.next()) {
                    int id = rs.getInt("ProductID");
                    String name = rs.getString("Name");
                    String descr = rs.getString("Description");
                    int quantity = rs.getInt("Quantity");
                    double price = rs.getDouble("Price");
                    boolean status = rs.getBoolean("Status");
                    int size = rs.getInt("Size");
                    Date date = rs.getDate("CreateTime");
                    String avatar = rs.getString("Avatar");
                    ProductDTO dto = new ProductDTO(id, name, descr, quantity, price,cateID, status, size, date, avatar);

                    if (list == null) {
                        list = new ArrayList<>();
                    }
                    list.add(dto);
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }

            if (stm != null) {
                stm.close();
            }

            if (con != null) {
                con.close();
            }
        }
        return list;
    }
}
