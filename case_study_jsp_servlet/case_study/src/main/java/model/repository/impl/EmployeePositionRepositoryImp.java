package model.repository.impl;

import model.bean.EducationDegree;
import model.bean.EmployeePosition;
import model.repository.DBConnection;
import model.repository.IEmployeePositionRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeePositionRepositoryImp implements IEmployeePositionRepository {
    private static final String SELECT_ALL_EMPLOYEE_POSITION = "SELECT * FROM position";
    @Override
    public List<EmployeePosition> findAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<EmployeePosition> employeePositionList = new ArrayList<>();
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SELECT_ALL_EMPLOYEE_POSITION);
                resultSet = statement.executeQuery();
                EmployeePosition employeePosition = null;
                while (resultSet.next()) {
                    int TypeId = resultSet.getInt("position_id");
                    String educationPositionName = resultSet.getString("position_name");
                    employeePosition = new EmployeePosition(TypeId, educationPositionName);
                    employeePositionList.add(employeePosition);
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
        return   employeePositionList;
    }
}
