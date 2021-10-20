package model.repository.implement;

import model.bean.Product;
import model.repository.ProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepositoryImp implements ProductRepository {
    static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Iphone11", 15000000, "New", "Apple"));
        productList.add(new Product(2, "Iphone12", 20000000, "Like New", "Apple"));
        productList.add(new Product(3, "Samsung Fold", 30000000, "New", "SamSung"));
        productList.add(new Product(4, "Iphone13", 35000000, "New", "Apple"));
    }

    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public Product findById(int id) {
        Product product = null;
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getIdProduct() == id) {
                product = productList.get(i);
                break;
            }
        }
        return product;
    }

    @Override
    public void update(int id, Product product) {
        productList.add(id, product);
    }

    @Override
    public void remove(int id) {
        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getIdProduct() == id) {
                productList.remove(productList.get(i));
                break;
            }
        }

    }
}
