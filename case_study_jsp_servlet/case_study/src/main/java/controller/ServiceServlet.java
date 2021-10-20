package controller;

import model.bean.*;
import model.service.IService;
import model.service.IServiceRentType;
import model.service.IServiceType;
import model.service.impl.ServiceImp;
import model.service.impl.ServiceRentTypeImp;
import model.service.impl.ServiceTypeImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServiceServlet", value = "/service")
public class ServiceServlet extends HttpServlet {
    IService Iservice = new ServiceImp();
    IServiceType serviceType = new ServiceTypeImp();
    IServiceRentType serviceRentType = new ServiceRentTypeImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createService(request, response);
                break;
        }
    }

    private void createService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("serviceCode");
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        Double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("maxPeople"));
        int rentType = Integer.parseInt(request.getParameter("rentType"));
        int serviceType = Integer.parseInt(request.getParameter("serviceType"));
        String standardRoom = request.getParameter("standardRoom");
        String description = request.getParameter("description");
        int pool = Integer.parseInt(request.getParameter("pool"));
        int numberFloor = Integer.parseInt(request.getParameter("floor"));
        Service service = new Service(code, name, area, cost, maxPeople, rentType, serviceType, standardRoom, description, pool, numberFloor);
        Iservice.addService(service);
        showListService(request, response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "service":
                showListService(request, response);
                break;
            case "create":
                addService(request, response);
                break;
        }
    }

    private void addService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ServiceType> serviceTypeList = serviceType.findAll();
        List<RentType> rentTypes = serviceRentType.findAll();
        List<Service> serviceList = Iservice.findAll();
        request.setAttribute("service", serviceList);
        request.setAttribute("serviceRentType", rentTypes);
        request.setAttribute("serviceType", serviceTypeList);
        request.getRequestDispatcher("/service/add.jsp").forward(request, response);
    }


    private void showListService(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Service> serviceList = Iservice.findAll();
        request.setAttribute("serviceList", serviceList);
        request.getRequestDispatcher("/service/list.jsp").forward(request, response);
    }
}

