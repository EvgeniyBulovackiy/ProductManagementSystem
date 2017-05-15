package ua.bulovackiy.productmanagementsystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.bulovackiy.productmanagementsystem.model.User;

/**
 * @author Evgeniy Bulovackiy
 * @version 1.0
 */


public interface UserDao extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
