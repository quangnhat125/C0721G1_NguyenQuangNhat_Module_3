package controller;

import model.bean.Customer;
import model.bean.CustomerType;
import model.service.ICustomerService;
import model.service.ICustomerTypeService;
import model.service.impl.CustomerServiceImp;
import model.service.impl.CustomerTypeServiceImp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = {"/customer"})
public class CustomerServlet extends HttpServlet {
    ICustomerTypeService customerTypeService = new CustomerTypeServiceImp();
    ICustomerService customerService = new CustomerServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createCustomer(request, response);
                break;
            case "delete":
                deleteCustomer(request, response);
                break;
            case "edit":
                updateCustomer(request, response);
                break;
        }
    }

    private void updateCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String code = request.getParameter("personCode");
        int customerTypeId = Integer.parseInt(request.getParameter("customer_type_id"));
        String customerName = request.getParameter("name");
        String customerBirthday = request.getParameter("birthday");
        int customerGender = Integer.parseInt(request.getParameter("gender"));
        String customerIdCard = request.getParameter("idCard");
        String customerPhone = request.getParameter("phone");
        String customerEmail = request.getParameter("email");
        String customerAddress = request.getParameter("address");
        Customer customer = new Customer(id, code, customerName, customerBirthday, customerPhone, customerEmail, customerAddress, customerGender, customerIdCard, customerTypeId);
        customerService.editCustomer(customer);
//        request.getRequestDispatcher("/customer/update.jsp").forward(request,response);
        request.setAttribute("message", "Edit Completed!");
        showListCustomer(request, response);
    }

    private void createCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String code = request.getParameter("personCode");
        int customerTypeId = Integer.parseInt(request.getParameter("customer_type_id"));
        String customerName = request.getParameter("name");
        String customerBirthday = request.getParameter("birthday");
        int customerGender = Integer.parseInt(request.getParameter("gender"));
        String customerIdCard = request.getParameter("idCard");
        String customerPhone = request.getParameter("phone");
        String customerEmail = request.getParameter("email");
        String customerAddress = request.getParameter("address");

        Customer customer = new Customer(code, customerName, customerBirthday, customerPhone, customerEmail, customerAddress, customerGender, customerIdCard, customerTypeId);
        customerService.addCustomer(customer);
        request.setAttribute("message", "Add Completed!");
        showListCustomer(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "customer":
                showListCustomer(request, response);
                break;
            case "create":
                addCustomer(request, response);
                break;
            case "delete":
                deleteCustomer(request, response);
                break;
            case "edit":
                showEditCustomerForm(request, response);
                break;
            case "search":
                search(request, response);
            default:
                showListCustomer(request, response);
                break;
        }
    }

    private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int keySearch = Integer.parseInt(request.getParameter("idSearch"));
        String valueSearch = request.getParameter("search");
        List<Customer> customerList = customerService.searchCustomer(keySearch, valueSearch);
        request.setAttribute("customerList", customerList);
        request.setAttribute("messageFind", "Found " + customerList.size() + " customer !");
        RequestDispatcher dispatcher = request.getRequestDispatcher("customer/list.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditCustomerForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id_edit"));
        Customer customer = customerService.getCustomerById(id);
        List<CustomerType> customerTypeList = customerTypeService.findAll();
        request.setAttribute("customerType", customerTypeList);
        request.setAttribute("customerEdit", customer);
        request.getRequestDispatcher("/customer/update.jsp").forward(request, response);
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("idCustomer"));
        customerService.deleteCustomer(id);
        request.setAttribute("message", "Delete Completed!");
        showListCustomer(request, response);
    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CustomerType> customerTypeList = customerTypeService.findAll();
        request.setAttribute("customerType", customerTypeList);
        request.getRequestDispatcher("/customer/add.jsp").forward(request, response);
    }

    private void showListCustomer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = customerService.findAll();
        request.setAttribute("customerList", customerList);
        request.getRequestDispatcher("/customer/list.jsp").forward(request, response);
    }
}
