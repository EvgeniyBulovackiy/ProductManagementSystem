package ua.bulovackiy.productmanagementsystem.service;

/**
 * Service class for security.
 *
 * @author Evgeniy Bulovackiy
 * @version 1.0
 */
public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
