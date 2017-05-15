CREATE TABLE IF NOT EXISTS users (
  id       INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS roles (
  id   INT         NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45) NOT NULL
)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS user_roles (
  user_id INT NOT NULL,
  role_id INT NOT NULL,

  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (role_id) REFERENCES roles (id),

  UNIQUE (user_id, role_id)

)
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS products (
  id            INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name          VARCHAR(255) NOT NULL,
  manufacturer  VARCHAR(255) NOT NULL,
  cost          DOUBLE       NOT NULL,
  specification VARCHAR(1000)
)
  ENGINE = InnoDB;

INSERT INTO roles VALUE (1, 'ROLE_USER');
INSERT INTO roles VALUE (2, 'ROLE_ADMIN');