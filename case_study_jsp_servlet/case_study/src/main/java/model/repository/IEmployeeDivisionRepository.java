package model.repository;

import model.bean.EmployeeDivision;

import java.util.List;

public interface IEmployeeDivisionRepository {
    List<EmployeeDivision> findAll();
}
