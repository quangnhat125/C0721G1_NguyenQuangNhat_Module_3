package model.repository.impl;

import model.bean.Customer;
import model.bean.Service;
import model.bean.ServiceType;
import model.repository.DBConnection;
import model.repository.IServiceRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiceRepositoryImp implements IServiceRepository {
    private static final String SELECT_SERVICE = "SELECT * FROM service;";
    private static final String ADD_SERVICE = "INSERT INTO service(service_code, service_name, service_area, service_cost," +
            " service_max_people, rent_type_id, service_type_id, standard_room, description_other_convenience, pool_area, number_of_floor)\n" +
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";

    @Override
    public List<Service> findAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<Service> serviceList = new ArrayList<>();
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SELECT_SERVICE);
                resultSet = statement.executeQuery();
                Service service = null;
                while (resultSet.next()) {
                    int id = resultSet.getInt("service_id");
                    String serviceCode = resultSet.getString("service_code");
                    String serviceName = resultSet.getString("service_name");
                    int serviceArea = resultSet.getInt("service_area");
                    int serviceCost = resultSet.getInt("service_cost");
                    int serviceMaxPeople = resultSet.getInt("service_max_people");
                    int rentTypeId = resultSet.getInt("rent_type_id");
                    int serviceTypeId = resultSet.getInt("service_type_id");
                    String standardRoom = resultSet.getString("standard_room");
                    String descriptionConvenience = resultSet.getString("description_other_convenience");
                    Double poolArea = resultSet.getDouble("pool_area");
                    int numberFloor = resultSet.getInt("number_of_floor");
                    service = new Service(id, serviceCode, serviceName, serviceArea, serviceCost, serviceMaxPeople, rentTypeId, serviceTypeId, standardRoom, descriptionConvenience, poolArea, numberFloor);
                    serviceList.add(service);
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

        return serviceList;
    }


    @Override
    public void addService(Service service) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        if (connection != null) {
            try {
                statement = connection.prepareStatement(ADD_SERVICE);
                statement.setString(1, service.getServiceCode());
                statement.setString(2, service.getServiceName());
                statement.setInt(3, service.getServiceArea());
                statement.setDouble(4, service.getServiceCost());
                statement.setInt(5, service.getServiceMaxPeople());
                statement.setInt(6, service.getRentTypeId());
                statement.setInt(7, service.getServiceType());
                statement.setString(8, service.getStandardRoom());
                statement.setString(9, service.getDescriptionConvenience());
                statement.setDouble(10, service.getPoolArea());
                statement.setInt(11, service.getNumberFloor());
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

