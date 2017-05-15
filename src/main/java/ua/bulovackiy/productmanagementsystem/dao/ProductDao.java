package ua.bulovackiy.productmanagementsystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ua.bulovackiy.productmanagementsystem.model.Product;

/**
 * @author Evgeniy Bulovackiy
 * @version 1.0
 */

public interface ProductDao extends JpaRepository<Product, Long>{
    Product findByName(String name);
}
