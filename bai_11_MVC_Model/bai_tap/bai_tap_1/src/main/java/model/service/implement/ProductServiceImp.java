package model.service.implement;

import model.bean.Product;
import model.repository.ProductRepository;
import model.repository.implement.ProductRepositoryImp;
import model.service.ProductService;

import java.util.List;

public class ProductServiceImp implements ProductService {
    ProductRepository productRepository = new ProductRepositoryImp();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public void save(Product product) {
        productRepository.save(product);
    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id);
    }

    @Override
    public void update(int id, Product product) {
        productRepository.update(id, product);
    }

    @Override
    public void remove(int id) {
        productRepository.remove(id);
    }
}
