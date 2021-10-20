package model.repository.impl;

import model.bean.RentType;
import model.bean.ServiceType;
import model.repository.DBConnection;
import model.repository.IServiceRentTypeRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ServiceRentTypeRepositoryImp implements IServiceRentTypeRepository {
    private static final String SELECT_SERVICE_TYPE = "SELECT * FROM rent_type;";

    @Override
    public List<RentType> findAll() {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<RentType> rentTypesList = new ArrayList<>();
        if (connection != null) {
            try {
                statement = connection.prepareStatement(SELECT_SERVICE_TYPE);
                resultSet = statement.executeQuery();
                RentType rentType = null;
                while (resultSet.next()) {
                    int TypeId = resultSet.getInt("rent_type_id");
                    String rentTypeName = resultSet.getString("rent_type_name");
                    rentType = new RentType(TypeId, rentTypeName);
                    rentTypesList.add(rentType);
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
        return rentTypesList;
    }
}
