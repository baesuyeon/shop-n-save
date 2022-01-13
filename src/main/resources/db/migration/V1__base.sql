create table MEMBER_INFO (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255),
  password VARCHAR(64),
  name VARCHAR(30),
  create_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  role TINYINT DEFAULT 3,
  address VARCHAR(255) NOT NULL,
  UNIQUE INDEX (email)
)engine=InnoDB default character set = utf8;

CREATE TABLE product (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(50) NOT NULL,
  sales_count INT NOT NULL,
  seller_id BIGINT NOT NULL,
  FOREIGN KEY(seller_id)
    REFERENCES member_info(id) ON DELETE CASCADE,
  sales_yn CHAR(1) NOT NULL DEFAULT 'Y',
  create_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  INDEX (product_name)
) engine=InnoDB default character set = utf8;

CREATE TABLE product_detail (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  sales_count INT NOT NULL DEFAULT 0,
  content VARCHAR(800),
  rating TINYINT,
  product_id BIGINT NOT NULL,
  FOREIGN KEY(product_id)
    REFERENCES product(id) ON DELETE CASCADE,
  create_date DATETIME DEFAULT CURRENT_TIMESTAMP
) engine=InnoDB default character set = utf8;

CREATE TABLE category (
  id INT AUTO_INCREMENT PRIMARY KEY,
  parent_id INT,
  category_name VARCHAR(30),
  FOREIGN KEY(parent_id) REFERENCES category(id),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) engine=InnoDB default character set = utf8;

CREATE TABLE order_info (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  order_status TINYINT,
  orderer_id BIGINT NOT NULL,
  receiver_name VARCHAR(30) NOT NULL,
  receiver_phone VARCHAR(30) NOT NULL,
  receiver_address varchar(255) NOT NULL,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP
) engine=InnoDB default character set = utf8;

CREATE TABLE order_product (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  order_id BIGINT NOT NULL,
  product_id BIGINT NOT NULL,
  count INT,
  order_price BIGINT,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY(order_id)
    REFERENCES order_info(id),
  FOREIGN KEY(product_id)
    REFERENCES product(id)
) engine=InnoDB default character set = utf8;