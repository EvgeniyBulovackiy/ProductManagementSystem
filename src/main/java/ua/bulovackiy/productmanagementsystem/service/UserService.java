package ua.bulovackiy.productmanagementsystem.service;

import ua.bulovackiy.productmanagementsystem.model.User;

/**
 * Service class for {@link User}.
 *
 * @author Evgeniy Bulovackiy
 * @version 1.0
 */

public interface UserService {

    void save(User user);
    User findByUsername(String username);
}
