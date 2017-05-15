package ua.bulovackiy.productmanagementsystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ua.bulovackiy.productmanagementsystem.dao.ProductDao;
import ua.bulovackiy.productmanagementsystem.model.Product;

import java.util.List;

/**
 * Implementation of {@link ProductService} interface.
 *
 * @author Evgeniy Bulovackiy
 * @version 1.0
 */

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductDao productDao;

    @Override
    public void save(Product product) {
        productDao.save(product);
    }

    @Override
    public void delete(Long id) {
        productDao.delete(id);
    }

    @Override
    public Product findByName(String name) {
        return productDao.findByName(name);
    }

    @Override
    public List<Product> getAllProduct() {
        return productDao.findAll();
    }
}
