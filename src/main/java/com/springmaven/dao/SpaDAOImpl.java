package com.springmaven.dao;

import com.springmaven.model.Spa;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Gourav on 1/13/2017.
 */
public class SpaDAOImpl {

    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    // TO ADD A SKIN TREATMENT ITEM TO DATABASE
    public int addSpa(Spa spa) {
        String insertQuery = "INSERT INTO spa (spaId, vendorEmail, vendorSaloonName, spaName, spaDesc," +
                "spaFor, spaPrice, spaDiscount, spaPics) VALUES(?,?,?,?,?,?,?,?,?);";

        String[] pics = spa.getSpaPics();
        String spaPics = "";
        for (int i = 0; i < pics.length; i++) {
            spaPics += pics[i];
            if (i != pics.length - 1)
                spaPics += ",";
        }

        return jdbcTemplate.update(insertQuery, new Object[]{spa.getSpaId(), spa.getVendorEmail(),
                spa.getVendorSaloonName(), spa.getSpaName(), spa.getSpaDesc(), spa.getSpaFor(),
                spa.getSpaPrice(), spa.getSpaDiscount(), spaPics});
    }

    //Update SPA DETAILS
    public int updateSpaDetails(Spa spa){
        String[] pics = spa.getSpaPics();
        String spaPics = "";
        for (int i = 0; i < pics.length; i++) {
            spaPics += pics[i];
            if (i != pics.length - 1)
                spaPics += ",";
        }

        String updateSqlQuery = "UPDATE spa set spaName=' "+spa.getSpaName()+" ',spaDesc=' "+spa.getSpaDesc()+" ',spaFor=' "+
                spa.getSpaFor()+" ',spaPrice=' "+spa.getSpaPrice()+" ',spaDiscount=' "+spa.getSpaDiscount()+" ',spaPics=' "+
                spaPics+" ' WHERE spaId="+spa.getSpaId();

        return jdbcTemplate.update(updateSqlQuery);
    }

    //DELETE SPA DETAILS
    public int deleteSpaDetails(String spaId){
        String query="DELETE FROM spa where spaId="+spaId;
        return jdbcTemplate.update(query);
    }

    //RETRIEVING ALL SKIN TREATMENTS OF AN VENDOR
    public List<Spa> getVendorSpas(String email) {
        String sqlQuery = "SELECT * FROM spa WHERE vendorEmail='"+email+"'";
        return jdbcTemplate.query(sqlQuery,new SpaDAOImpl.SpaMapper());
    }

    //TO GET ALL SPAs FROM DATABASE
    public List<Spa>  getAllSpas() {
        String sqlQuery = "SELECT * FROM spa";
        return jdbcTemplate.query(sqlQuery,new SpaDAOImpl.SpaMapper());
    }

    //TO GET DETAILS OF A PARTICULAR SPA
    public Spa getSpaDetails(String spaId) {
        String sqlQuery = "SELECT * FROM spa WHERE spaId="+Integer.parseInt(spaId);
        return jdbcTemplate.queryForObject(sqlQuery,new SpaDAOImpl.SpaMapper());
    }

    //TO GET SPAs BASED ON GENDER FROM DATABASE
    public List<Spa> getSpaGender(String gender) {
        String sqlQuery = "SELECT * FROM spa WHERE spaFor='"+gender+"'";
        return jdbcTemplate.query(sqlQuery,new SpaDAOImpl.SpaMapper());
    }

    private static final class SpaMapper implements RowMapper<Spa> {

        public Spa mapRow(ResultSet resultSet, int rowNum) throws SQLException {
            Spa st = new Spa();
            st.setSpaId(resultSet.getInt("spaId"));
            st.setVendorEmail(resultSet.getString("vendorEmail"));
            st.setVendorSaloonName(resultSet.getString("vendorSaloonName"));
            st.setSpaName(resultSet.getString("spaName"));
            st.setSpaDesc(resultSet.getString("spaDesc"));
            st.setSpaFor(resultSet.getString("spaFor"));
            st.setSpaPrice(resultSet.getFloat("spaPrice"));
            st.setSpaDiscount(resultSet.getFloat("spaDiscount"));
            String hairPics = resultSet.getString("spaPics");
            String[] pics = hairPics.split(",");
            st.setSpaPics(pics);
            return st;
        }
    }

}
