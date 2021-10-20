package model.repository.impl;

import model.bean.CustomerType;
import model.bean.EducationDegree;
import model.repository.DBConnection;
import model.repository.IEmployeeEducationRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeEducationRepositoryImp implements IEmployeeEducationRepository {
    private static final String SELECT_ALL_EMPLOYEE_EDUCATION = "SELECT * FROM education_degree";
    @Override
    public List<EducationDegree> findAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<EducationDegree> educationDegreeList = new ArrayList<>();
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SELECT_ALL_EMPLOYEE_EDUCATION);
                resultSet = statement.executeQuery();
                EducationDegree educationDegree = null;
                while (resultSet.next()) {
                    int TypeId = resultSet.getInt("education_degree_id");
                    String educationTypeName = resultSet.getString("education_degree_name");
                    educationDegree = new EducationDegree(TypeId, educationTypeName);
                    educationDegreeList.add(educationDegree);
                }
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    resultSet.close();
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            DBConnection.close();
        }
        return   educationDegreeList;
    }
}
