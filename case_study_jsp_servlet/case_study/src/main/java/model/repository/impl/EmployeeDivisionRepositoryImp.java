package model.repository.impl;

import model.bean.EducationDegree;
import model.bean.EmployeeDivision;
import model.repository.DBConnection;
import model.repository.IEmployeeDivisionRepository;
import model.service.IEmployeeDivisionService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDivisionRepositoryImp implements IEmployeeDivisionRepository {
    private static final String SELECT_ALL_EMPLOYEE_DIVISION = "SELECT * FROM division";

    @Override
    public List<EmployeeDivision> findAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<EmployeeDivision> employeeDivisionList = new ArrayList<>();
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SELECT_ALL_EMPLOYEE_DIVISION);
                resultSet = statement.executeQuery();
                EmployeeDivision employeeDivision = null;
                while (resultSet.next()) {
                    int TypeId = resultSet.getInt("division_id");
                    String division = resultSet.getString("division_name");
                    employeeDivision = new EmployeeDivision(TypeId, division);
                    employeeDivisionList.add(employeeDivision);
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
        return employeeDivisionList;
    }
}

