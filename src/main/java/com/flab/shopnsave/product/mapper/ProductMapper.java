package com.flab.shopnsave.product.mapper;

import com.flab.shopnsave.product.domain.Product;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Optional;

@Mapper
public interface ProductMapper {

    int create(Product product);

    Optional<Product> getById(long id);

    void modifyProduct(Product product);

    List<Product> getByIdList(List<Long> id);
}
