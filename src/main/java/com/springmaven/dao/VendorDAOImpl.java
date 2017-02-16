package com.springmaven.dao;

import com.springmaven.model.Vendor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Gourav on 11/15/2016.
 */
@Component
public class VendorDAOImpl {

    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public int insertVendorData(Vendor vendor) {
        String insertQuery = "INSERT INTO VENDOR(id,saloonName,ownername,saloonpic,description,services,servicesfor,email," +
                "password,phoneno,addr1,landmark,street,city,state,pincode,isactivated)" +
                " VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";

        String[] ser1 = vendor.getServices();
        String services = "";
        for (int i = 0; i < ser1.length; i++) {
            services += ser1[i];
            if (i != ser1.length - 1)
                services += ",";
        }
        String[] ser2 = vendor.getServicesfor();
        String servicesfor = "";
        for (int i = 0; i < ser2.length; i++) {
            servicesfor += ser2[i];
            if (i != ser2.length - 1)
                servicesfor += ",";
        }
        return jdbcTemplate.update(insertQuery, new Object[]{vendor.getId(), vendor.getSaloonName(), vendor.getOwnerName(),
                vendor.getSaloonPic(), vendor.getDescription(), services, servicesfor, vendor.getEmail(), vendor.getPassword(),
                vendor.getPhoneNo(), vendor.getAddr1(), vendor.getLandmark(), vendor.getStreet(), vendor.getCity(), vendor.getState(),
                vendor.getPincode(), vendor.getIsActivated()});
    }

    public void delete(String email) {

    }

    public boolean activateVendorAccount(String email, String passToken) {
        String query = "SELECT * FROM VENDOR WHERE EMAIL='" + email + "'";
        String sql = "SELECT COUNT(*) FROM VENDOR WHERE EMAIL= '" + email + "'";
        int i = jdbcTemplate.queryForObject(sql, Integer.class);
        if (i < 1)
            return false;
        else {
            Vendor v = jdbcTemplate.queryForObject(query, new VendorMapper());
            if (v.getEmail().equals(email) && v.getPassword().equals(passToken)) {
                String updateQuery = "UPDATE VENDOR SET isActivated=1 WHERE EMAIL='" + email + "'";
                jdbcTemplate.update(updateQuery);
                return true;
            }
        }
        return false;
    }

    public boolean updatePassword(String email, String pass) {
        String query = "SELECT * FROM VENDOR WHERE EMAIL='" + email + "'";
        String sql = "SELECT COUNT(*) FROM VENDOR WHERE EMAIL= '" + email + "'";
        int i = jdbcTemplate.queryForObject(sql, Integer.class);
        if (i < 1)
            return false;
        else {
            Vendor v = jdbcTemplate.queryForObject(query, new VendorMapper());
            if (v.getEmail().equals(email)) {
                String updateQuery = "UPDATE VENDOR SET password='"+pass+"' WHERE EMAIL='" + email + "'";
                jdbcTemplate.update(updateQuery);
                return true;
            }
        }
        return false;
    }

    public Vendor getVendorDetails(String email) {
        String sqlQuery = "SELECT * FROM VENDOR WHERE EMAIL= ?";
        Vendor v;
        v = jdbcTemplate.queryForObject(sqlQuery, new Object[]{email}, new VendorMapper());
        return v;
    }

    public Vendor authenticateVendorLogin(String email, String password) {
        String sqlQuery = "SELECT * FROM VENDOR WHERE EMAIL= ?";
        String sql = "SELECT COUNT(*) FROM VENDOR WHERE EMAIL= '" + email + "'";
        int i = jdbcTemplate.queryForObject(sql, Integer.class);
        Vendor v;
        if (i < 1)
            return null;
        else {
            v = jdbcTemplate.queryForObject(sqlQuery, new Object[]{email}, new VendorMapper());
            if (v.getEmail().equals(email) && v.getPassword().equals(password))
            {
                return v;
            }
        }
        return null;
    }

    public Vendor getVendorData(String email) {
        String sqlQuery = "SELECT * FROM VENDOR WHERE EMAIL= ?";
        Vendor v = jdbcTemplate.queryForObject(sqlQuery, new Object[]{email}, new VendorMapper());
        return v;
    }

    public List<Vendor> getAllVendors() {
        String sqlQuery = "SELECT * FROM VENDOR";
        return jdbcTemplate.query(sqlQuery, new VendorMapper());
    }

    private static final class VendorMapper implements RowMapper<Vendor> {

        public Vendor mapRow(ResultSet resultSet, int rowNum) throws SQLException {
            Vendor v = new Vendor();
            v.setId(resultSet.getInt("id"));
            v.setSaloonName(resultSet.getString("saloonName"));
            v.setOwnerName(resultSet.getString("ownername"));
            v.setSaloonPic(resultSet.getString("saloonpic"));
            v.setDescription(resultSet.getString("description"));//
            String s = resultSet.getString("services");
            String[] st = s.split(",");
            v.setServices(st);
            String s1 = resultSet.getString("servicesfor");
            String[] st1 = s1.split(",");
            v.setServicesfor(st1);
            v.setEmail(resultSet.getString("email"));
            v.setPassword(resultSet.getString("password"));
            v.setPhoneNo(Integer.parseInt(resultSet.getString("phoneno")));
            v.setAddr1(resultSet.getString("addr1"));
            v.setLandmark(resultSet.getString("landmark"));
            v.setStreet(resultSet.getString("street"));
            v.setCity(resultSet.getString("city"));
            v.setState(resultSet.getString("state"));
            v.setPincode(Integer.parseInt(resultSet.getString("pincode")));
            v.setIsActivated(Boolean.parseBoolean(resultSet.getString("isactivated")));
            System.out.println(v.getIsActivated());
            return v;
        }
    }
}
