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
public class HairTreatmentDAOImpl {

    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    // TO ADD A HAIR TREATMENT ITEM TO DATABASE
    public int addHairTreatment(HairTreatment hairTreatment) {

        String insertQuery = "INSERT INTO HAIRTREATMENT(htId, vendorEmail, vendorSaloonName, htName, htDesc, htInstruct, htQty," +
                "htFor, htPrice, htDiscount, htPics)" +
                " VALUES(?,?,?,?,?,?,?,?,?,?,?)";

        String[] pics = hairTreatment.getHtPics();
        String hairPics = "";
        for (int i = 0; i < pics.length; i++) {
            hairPics += pics[i];
            if (i != pics.length - 1)
                hairPics += ",";
        }

//        System.out.println(hairTreatment.getHtId());
//        System.out.println(hairTreatment.getVendorEmail());
//        System.out.println(hairTreatment.getVendorSaloonName());
//        System.out.println(hairTreatment.getHtDesc());
//        System.out.println(hairTreatment.getHtInstruct());
//        System.out.println(hairTreatment.getHtQty());
//        System.out.println(hairTreatment.getHtFor());
//        System.out.println(hairTreatment.getHtPrice());
//        System.out.println(hairTreatment.getHtDiscount());System.out.println(pics[0]+"\t"+pics[1]+"\t"+pics[2]);


        return jdbcTemplate.update(insertQuery, new Object[]{hairTreatment.getHtId(), hairTreatment.getVendorEmail(),
                hairTreatment.getVendorSaloonName(), hairTreatment.getHtName(), hairTreatment.getHtDesc(), hairTreatment.getHtInstruct(),
                hairTreatment.getHtQty(), hairTreatment.getHtFor(), hairTreatment.getHtPrice(), hairTreatment.getHtDiscount(),
                hairPics});
    }

    //UPDATE HAIR TREATMENT DETAILS
    public int updateHairTreatmentDetails(HairTreatment hairTreatment){
        String[] pics = hairTreatment.getHtPics();
        String hairPics = "";
        for (int i = 0; i < pics.length; i++) {
            hairPics += pics[i];
            if (i != pics.length - 1)
                hairPics += ",";
        }
        String updateSqlQuery = "UPDATE HAIRTREATMENT set htName=' "+hairTreatment.getHtName()+" ',htDesc=' "+hairTreatment.getHtDesc()+
                " ',htInstruct=' "+hairTreatment.getHtInstruct()+" ',htQty=' "+hairTreatment.getHtQty()+" ',htFor=' "+
                hairTreatment.getHtFor()+" ',htPrice=' "+hairTreatment.getHtPrice()+" ',htDiscount=' "+hairTreatment.getHtDiscount()+
                " ',htPics=' "+hairPics+" ' WHERE htId="+hairTreatment.getHtId();

        return jdbcTemplate.update(updateSqlQuery);
    }

    //DELETE HAIR TREATMENT DETAILS
    public int deleteHairTreatmentDetails(String stId){
        String query="DELETE FROM HAIRTREATMENT where htId="+stId;
        return jdbcTemplate.update(query);
    }

    //RETRIEVING ALL HAIR TREATMENTS OF AN VENDOR
    public List<HairTreatment> getVendorHairTreatments(String email) {
        String sqlQuery = "SELECT * FROM hairtreatment WHERE vendorEmail='"+email+"'";
        return jdbcTemplate.query(sqlQuery,new HairTreatmentDAOImpl.HairTreatmentMapper());
    }

    //TO GET ALL HAIR TREAMENTS FROM DATABASE
    public List<HairTreatment>  getAllHairtreatments() {
        String sqlQuery = "SELECT * FROM hairtreatment";
        return jdbcTemplate.query(sqlQuery,new HairTreatmentDAOImpl.HairTreatmentMapper());
    }

    //TO GET DETAILS OF A PARTICULAR HAIR TREATMENT
    public HairTreatment getHairTreatmentsDetails(String htId) {
        String sqlQuery = "SELECT * FROM hairtreatment WHERE htId="+Integer.parseInt(htId);
        return jdbcTemplate.queryForObject(sqlQuery,new HairTreatmentDAOImpl.HairTreatmentMapper());
    }

    //TO GET HAIR TREATMENTS BASED ON GENDER FROM DATABASE
    public List<HairTreatment> getHairTreatmentGender(String gender) {
        String sqlQuery = "SELECT * FROM hairtreatment WHERE htFor='"+gender+"'";
        return jdbcTemplate.query(sqlQuery,new HairTreatmentDAOImpl.HairTreatmentMapper());
    }

    private static final class HairTreatmentMapper implements RowMapper<HairTreatment> {

        public HairTreatment mapRow(ResultSet resultSet, int rowNum) throws SQLException {
            HairTreatment h = new HairTreatment();
            h.setHtId(resultSet.getInt("htId"));
            h.setVendorEmail(resultSet.getString("vendorEmail"));
            h.setVendorSaloonName(resultSet.getString("vendorSaloonName"));
            h.setHtName(resultSet.getString("htName"));
            h.setHtDesc(resultSet.getString("htDesc"));
            h.setHtInstruct(resultSet.getString("htInstruct"));
            h.setHtQty(resultSet.getString("htQty"));
            h.setHtFor(resultSet.getString("htFor"));
            h.setHtPrice(resultSet.getFloat("htPrice"));
            h.setHtDiscount(resultSet.getFloat("htDiscount"));
            String hairPics = resultSet.getString("htPics");
            String[] pics = hairPics.split(",");
            h.setHtPics(pics);
            return h;
        }
    }
}
