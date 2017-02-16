package com.springmaven.dao;

import com.springmaven.model.HairTreatment;
import com.springmaven.model.SkinTreatment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Gourav on 1/3/2017.
 */
public class SkinTreatmentDAOImpl {
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    // TO ADD A SKIN TREATMENT ITEM TO DATABASE
    public int addSkinTreatment(SkinTreatment skinTreatment) {
        String insertQuery = "INSERT INTO SKINTREATMENT(stId, vendorEmail, vendorSaloonName, stName, stDesc," +
                "stFor, stPrice, stDiscount, stPics) VALUES(?,?,?,?,?,?,?,?,?);";

        String[] pics = skinTreatment.getStPics();
        String stPics = "";
        for (int i = 0; i < pics.length; i++) {
            stPics += pics[i];
            if (i != pics.length - 1)
                stPics += ",";
        }

        return jdbcTemplate.update(insertQuery, new Object[]{skinTreatment.getStId(), skinTreatment.getVendorEmail(),
                skinTreatment.getVendorSaloonName(), skinTreatment.getStName(), skinTreatment.getStDesc(), skinTreatment.getStFor(),
                skinTreatment.getStPrice(), skinTreatment.getStDiscount(), stPics});
    }

    //Update SKIN TREATMENT DETAILS
    public int updateSkinTreatmentDetails(SkinTreatment skinTreatment){
        String[] pics = skinTreatment.getStPics();
        String stPics = "";
        for (int i = 0; i < pics.length; i++) {
            stPics += pics[i];
            if (i != pics.length - 1)
                stPics += ",";
        }
        String updateSqlQuery = "UPDATE SKINTREATMENT set stName=' "+skinTreatment.getStName()+" ',stDesc=' "+skinTreatment.getStDesc()+" ',stFor=' "+
                skinTreatment.getStFor()+" ',stPrice=' "+skinTreatment.getStPrice()+" ',stDiscount=' "+skinTreatment.getStDiscount()+
                " ',stPics=' "+stPics+" ' WHERE stId="+skinTreatment.getStId();

        return jdbcTemplate.update(updateSqlQuery);
    }

    //DELETE SKIN TREATMENT DETAILS
    public int deleteSkinTreatmentDetails(String stId){
        String query="DELETE FROM SKINTREATMENT where stId="+stId;
        return jdbcTemplate.update(query);
    }

    //RETRIEVING ALL SKIN TREATMENTS OF AN VENDOR
    public List<SkinTreatment> getVendorSkinTreatments(String email) {
        String sqlQuery = "SELECT * FROM skintreatment WHERE vendorEmail='"+email+"'";
        return jdbcTemplate.query(sqlQuery,new SkinTreatmentDAOImpl.SkinTreatmentMapper());
    }

    //TO GET ALL SKIN TREAMENTS FROM DATABASE
    public List<SkinTreatment>  getAllSkintreatments() {
        String sqlQuery = "SELECT * FROM skintreatment";
        return jdbcTemplate.query(sqlQuery,new SkinTreatmentDAOImpl.SkinTreatmentMapper());
    }

    //TO GET DETAILS OF A PARTICULAR SKIN TREATMENT
    public SkinTreatment getSkinTreatmentsDetails(String stId) {
        String sqlQuery = "SELECT * FROM skintreatment WHERE stId="+Integer.parseInt(stId);
        return jdbcTemplate.queryForObject(sqlQuery,new SkinTreatmentDAOImpl.SkinTreatmentMapper());
    }

    //TO GET SKIN TREATMENTS BASED ON GENDER FROM DATABASE
    public List<SkinTreatment> getSkinTreatmentGender(String gender) {
        String sqlQuery = "SELECT * FROM skintreatment WHERE stFor='"+gender+"'";
        return jdbcTemplate.query(sqlQuery,new SkinTreatmentDAOImpl.SkinTreatmentMapper());
    }

    private static final class SkinTreatmentMapper implements RowMapper<SkinTreatment> {

        public SkinTreatment mapRow(ResultSet resultSet, int rowNum) throws SQLException {
            SkinTreatment st = new SkinTreatment();
            st.setStId(resultSet.getInt("stId"));
            st.setVendorEmail(resultSet.getString("vendorEmail"));
            st.setVendorSaloonName(resultSet.getString("vendorSaloonName"));
            st.setStName(resultSet.getString("stName"));
            st.setStDesc(resultSet.getString("stDesc"));
            st.setStFor(resultSet.getString("stFor"));
            st.setStPrice(resultSet.getFloat("stPrice"));
            st.setStDiscount(resultSet.getFloat("stDiscount"));
            String hairPics = resultSet.getString("stPics");
            String[] pics = hairPics.split(",");
            st.setStPics(pics);
            return st;
        }
    }
}