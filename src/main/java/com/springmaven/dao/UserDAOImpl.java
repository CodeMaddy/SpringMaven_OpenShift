package com.springmaven.dao;

import com.springmaven.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by Gourav on 12/5/2016.
 */
@Component
public class UserDAOImpl {
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public int insertUserData(User user){

        System.out.println(user.getFirstname()+""+user.getLastname()+""+user.getMail()+""+user.getPassword()+""+user.getMobilenumber());
        String insertQuery = "INSERT INTO user(firstname,lastname,email,password,mobilenumber)" +
                " VALUES(?,?,?,?,?);";

        return jdbcTemplate.update(insertQuery, new Object[]{user.getFirstname(),user.getLastname(),
                user.getMail(),user.getPassword(),user.getMobilenumber() });
    }

    public List<User> getAllUsers() {
        String sqlQuery = "SELECT * FROM user";
        return jdbcTemplate.query(sqlQuery,new UserMapper());
    }

    private static final class UserMapper implements RowMapper<User> {
        public User mapRow(ResultSet resultSet, int rowNum) throws SQLException {
            User u=new User();
            u.setFirstname("firstname");
            u.setLastname("lastname");
            u.setMail("email");
            u.setPassword("password");
            u.setMobilenumber("mobilenumber");
            return u;
        }
    }
    public User authenticateuserLogin(String email, String password) {
        String sqlQuery = "SELECT * FROM user WHERE email= ?";
//        System.out.println(email);
        String sql = "SELECT COUNT(*) FROM user WHERE email= '" + email + "'";
        int i = jdbcTemplate.queryForObject(sql, Integer.class);
        User v;
        if (i < 1)
            return null;
        else {
            v = jdbcTemplate.queryForObject(sqlQuery, new Object[]{email}, new UserMapper());
            if (v.getMail().equals(email) && v.getPassword().equals(password) )//&& v.getIsActivated() == true) {
            {
                return v;
            }
        }
        return null;
    }
}
