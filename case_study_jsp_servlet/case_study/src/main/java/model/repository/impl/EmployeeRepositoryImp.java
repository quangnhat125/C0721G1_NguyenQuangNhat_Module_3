package model.repository.impl;

import model.bean.Customer;
import model.bean.Employee;
import model.repository.DBConnection;
import model.repository.IEmployeeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmployeeRepositoryImp implements IEmployeeRepository {
    private static final String ADD_EMPLOYEE = "INSERT INTO `furama_case_study`.`employee` (employee_code, employee_name," +
            " employee_birthday, employee_id_card, employee_salary, employee_phone, employee_email, employee_address," +
            " position_id, education_degree_id, division_id, username) " +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
    private static final String SELECT_ALL_EMPLOYEE = "SELECT * FROM employee";
    @Override
    public List<Employee> findAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Employee> employeeList = new ArrayList<>();
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SELECT_ALL_EMPLOYEE);
                resultSet = statement.executeQuery();
                Employee employee = null;
                while (resultSet.next()) {
                    int id = resultSet.getInt("employee_id");
                    String code = resultSet.getString("employee_code");
                    String name = resultSet.getString("employee_name");
                    String birthday = resultSet.getString("employee_birthday");
                    String idCard = resultSet.getString("employee_id_card");
                    Double salary = resultSet.getDouble("employee_salary");
                    String phone = resultSet.getString("employee_phone");
                    String email = resultSet.getString("employee_email");
                    String address = resultSet.getString("employee_address");
                    int positionId = resultSet.getInt("position_id");
                    int degreeId = resultSet.getInt("education_degree_id");
                    int divisionId = resultSet.getInt("division_id");
                    String username =resultSet.getString("username");
                    employee = new Employee(id, code, name, birthday, phone,email,address,idCard,salary,positionId,degreeId,divisionId,username);
                    employeeList.add(employee);

                }

                } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
            return employeeList;
    }

    @Override
    public void addEmployee(Employee employee) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement(ADD_EMPLOYEE);
                statement.setString(1, employee.getPersonCode());
                statement.setString(2, employee.getFullName());
                statement.setString(3, employee.getBirthday());
                statement.setString(4,employee.getIdCard());
                statement.setDouble(5, employee.getEmployeeSalary());
                statement.setString(6, employee.getPhoneNumber());
                statement.setString(7, employee.getEmail());
                statement.setString(8, employee.getAddress());
                statement.setInt(9, employee.getPositionId());
                statement.setInt(10, employee.getEducationDegreeId());
                statement.setInt(11, employee.getDivisionId());
                statement.setString(12, employee.getUsername());
                statement.executeUpdate();

            } catch (SQLException throwables) {
                throwables.printStackTrace();
            } finally {
                try {
                    statement.close();
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
            }
            DBConnection.close();
        }
    }
}
