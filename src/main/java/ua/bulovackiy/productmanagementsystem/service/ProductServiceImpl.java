package ua.bulovackiy.productmanagementsystem.service;

import org.hibernate.annotations.Proxy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
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
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    @Override
    @Transactional
    public void save(Product product) {
        productDao.save(product);
    }

    @Override
    @Transactional
    public void delete(Long id) {
        productDao.delete(id);
    }

    @Override
    @Transactional
    public Product findByName(String name) {
        return productDao.findByName(name);
    }

    @Override
    @Transactional
    public Product findById(Long id) {
        return productDao.findOne(id);
    }

    @Override
    @Transactional
    public List<Product> getAllProduct() {
        return productDao.findAll();
    }
}
