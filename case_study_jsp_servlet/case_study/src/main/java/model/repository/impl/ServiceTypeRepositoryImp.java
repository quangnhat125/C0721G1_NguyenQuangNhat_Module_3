package model.repository.impl;

import model.bean.CustomerType;
import model.bean.ServiceType;
import model.repository.DBConnection;
import model.repository.IServiceTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiceTypeRepositoryImp implements IServiceTypeRepository {
    private static final String SELECT_SERVICE_TYPE = "SELECT * FROM service_type;";

    @Override
    public List<ServiceType> findAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<ServiceType> serviceTypeList = new ArrayList<>();
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SELECT_SERVICE_TYPE);
                resultSet = statement.executeQuery();
                ServiceType serviceType = null;
                while (resultSet.next()) {
                    int TypeId = resultSet.getInt("service_type_id");
                    String serviceTypeName = resultSet.getString("service_type_name");
                    serviceType = new ServiceType(TypeId, serviceTypeName);
                    serviceTypeList.add(serviceType);
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
        return serviceTypeList;
    }
}

