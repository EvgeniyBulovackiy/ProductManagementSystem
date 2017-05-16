package ua.bulovackiy.productmanagementsystem.service;

import ua.bulovackiy.productmanagementsystem.model.Product;

import java.util.List;

/**
 * Service class for {@link ua.bulovackiy.productmanagementsystem.model.Product}.
 *
 * @author Evgeniy Bulovackiy
 * @version 1.0
 */

public interface ProductService {
    void save(Product product);
    void delete(Long id);
    Product findByName(String productName);
    Product findById(Long id);
    List<Product> getAllProduct();
}
