package com.springmaven.dao;

import com.springmaven.model.HairStyle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import javax.sql.DataSource;
import java.io.File;
import java.nio.file.Files;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Gourav on 11/21/2016.
 */
public class HairStyleDAOImpl {

    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    // TO ADD A HAIRSTYLE ITEM TO DATABASE
    public int addHairStyle(HairStyle hairStyle) {
        String insertQuery = "INSERT INTO HAIRSTYLE(hairstyleId,hairstyleName,hairstyleFor,hairstylePics,saloonName," +
                "saloonEmail,suitableFor,actualPrice, discount,hairstyleDescription)" +
                " VALUES(?,?,?,?,?,?,?,?,?,?);";

        String[] pics = hairStyle.getHairstylePics();
        String hairPics = "";
        for (int i = 0; i < pics.length; i++) {
            hairPics += pics[i];
            if (i != pics.length - 1)
                hairPics += ",";
        }

        String[] suit = hairStyle.getSuitableFor();
        String suitablefor = "";
        for (int i = 0; i < suit.length; i++) {
            suitablefor += suit[i];
            if (i != suit.length - 1)
                suitablefor += ",";
        }
        return jdbcTemplate.update(insertQuery, new Object[]{hairStyle.getHairstyleId(), hairStyle.getHairstyleName(),
                hairStyle.getHairstyleFor(), hairPics, hairStyle.getSaloonName(), hairStyle.getSaloonEmail(),
                suitablefor, hairStyle.getActualPrice(), hairStyle.getDiscount(), hairStyle.getHairstyleDescription()});
    }

    //UPDATE HAIRSTYLE DETAILS
    public int updateHairStyleDetails(HairStyle hairStyle){
        String[] pics = hairStyle.getHairstylePics();

        String hairPics = "";
        for (int i = 0; i < pics.length; i++) {
            System.out.println(pics[i]);
            hairPics += pics[i];
            if (i != pics.length - 1)
                hairPics += ",";
        }
        String[] suit = hairStyle.getSuitableFor();
        String suitablefor = "";
        for (int i = 0; i < suit.length; i++) {
            System.out.println(suit[i]);
            suitablefor += suit[i];
            if (i != suit.length - 1)
                suitablefor += ",";
        }

        String updateSqlQuery = "UPDATE hairstyle set hairstyleName=' "+hairStyle.getHairstyleName()+
                " ',hairstyleFor=' "+hairStyle.getHairstyleFor()+" ',hairstylePics=' "+hairPics+" ',suitableFor='"+suitablefor+
                " ',actualPrice=' "+hairStyle.getActualPrice()+" ',discount=' "+hairStyle.getDiscount()+
                " ',hairstyleDescription=' "+hairStyle.getHairstyleDescription()+" ' WHERE hairstyleId="+hairStyle.getHairstyleId();

        return jdbcTemplate.update(updateSqlQuery);
    }

    //DELETE HAIRSTYLE DETAILS
    public int deleteHairStyleDetails(String htId){
        String query="DELETE FROM hairstyle where hairstyleId="+htId;
        return jdbcTemplate.update(query);
    }

    //RETRIEVING ALL HAIRSTYLES OF AN VENDOR
    public List<HairStyle> getAllVendorhairstyles(String email) {
        String sqlQuery = "SELECT * FROM hairstyle WHERE saloonEmail='"+email+"'";
        return jdbcTemplate.query(sqlQuery,new HairStyleMapper());
    }

    //RETRIEVING ALL HAIRSTYLES BASED ON GENDER
    public List<HairStyle> getAllGenderHairstyles(String gender) {
        String sqlQuery = "SELECT * FROM hairstyle WHERE hairstyleFor='"+gender+"'";
        return jdbcTemplate.query(sqlQuery,new HairStyleMapper());
    }

    // RETRIEVING ALL HAIRSTYLES
    public List<HairStyle> getAllHairstyles() {
        String sqlQuery = "SELECT * FROM hairstyle";
        return jdbcTemplate.query(sqlQuery,new HairStyleMapper());
    }

    //TO GET DETAILS OF A PARTICULAR HAIRSTYLE
    public HairStyle getHairstyleDetails(String hairstyleId){
        String sqlQuery = "SELECT * FROM hairstyle WHERE hairstyleId="+Integer.parseInt(hairstyleId);
        return jdbcTemplate.queryForObject(sqlQuery,new HairStyleMapper());
    }

    private static final class HairStyleMapper implements RowMapper<HairStyle> {

        public HairStyle mapRow(ResultSet resultSet, int rowNum) throws SQLException {
            HairStyle h = new HairStyle();
            h.setHairstyleId(resultSet.getInt("hairstyleId"));
            h.setHairstyleName(resultSet.getString("hairstyleName"));
            h.setHairstyleFor(resultSet.getString("hairstyleFor"));
            String hairPics = resultSet.getString("hairstylePics");
            String[] pics = hairPics.split(",");
//            for(int i=0; i<pics.length; i++){
//                System.out.println(pics[i]);
//            }
            h.setHairstylePics(pics);
            h.setSaloonName(resultSet.getString("saloonName"));
            h.setSaloonEmail(resultSet.getString("saloonEmail"));
            String suit = resultSet.getString("suitableFor");
            String[] suitableFor = suit.split(",");
            h.setSuitableFor(suitableFor);
            h.setActualPrice(resultSet.getFloat("actualPrice"));
            h.setDiscount(resultSet.getFloat("discount"));
            h.setHairstyleDescription(resultSet.getString("hairstyleDescription"));

            return h;
        }
    }
}
