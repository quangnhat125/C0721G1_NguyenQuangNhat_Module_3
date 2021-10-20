package model.repository;

import model.bean.EducationDegree;
import model.bean.Employee;

import java.util.List;

public interface IEmployeeEducationRepository {
    List<EducationDegree> findAll();
}
