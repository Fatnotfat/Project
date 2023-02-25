/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package swp391.brand;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.naming.NamingException;
import swp391.utils.DBHelper;

/**
 *
 * @author Chau Nhat Truong
 */
public class BrandDAO implements Serializable {

    public boolean createBrand(BrandDTO dto)
            throws SQLException, NamingException {;
        Connection con = null;
        PreparedStatement stm = null;
        long milis = System.currentTimeMillis();
        Date date = new Date(milis);
        boolean result = false;
        try {
            con = DBHelper.makeConnection();
            if (con != null) {
                String sql = "Insert Into Brand("
                        + "Name, Description, CreateTime "
                        + ") "
                        + "Values(?, ?, ? "
                        + ")";
                stm = con.prepareStatement(sql);
                stm.setString(1, dto.getName());
                stm.setString(2, dto.getDescription());
                stm.setDate(3, date);
                int effectedRows = stm.executeUpdate();
                if (effectedRows > 0) {
                    result = true;
                }
            }
        } finally {
            if (stm != null) {
                stm.close();
            }
            if (con != null) {
                con.close();
            }
        }
        return result;
    }

//    public boolean updateBrand(int brandID, String name, String description)
//            throws SQLException, NamingException {
//        Connection con = null;
//        PreparedStatement stm = null;
//        boolean result = false;
//        try {
//            con = DBHelper.makeConnection();
//            String sql = "Update Brand "
//                    + "Set Name = ?, Description = ? "
//                    + "Where BrandID = ?";
//            //3. Create statement
//            stm = con.prepareStatement(sql);
//            stm.setString(1, name);
//            stm.setString(2, description);
//            stm.setInt(3, brandID);
//            int effectedRows = stm.executeUpdate();
//            if (effectedRows > 0) {
//                result = true;
//            }
//        } finally {
//            if (stm != null) {
//                stm.close();
//            }
//            if (con != null) {
//                con.close();
//            }
//        }
//        return result;
//    }
}