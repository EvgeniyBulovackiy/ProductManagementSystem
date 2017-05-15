package ua.bulovackiy.productmanagementsystem.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.bulovackiy.productmanagementsystem.model.Role;

/**
 * @author Evgeniy Bulovackiy
 * @version 1.0
 */

public interface RoleDao extends JpaRepository<Role, Long>{

}
