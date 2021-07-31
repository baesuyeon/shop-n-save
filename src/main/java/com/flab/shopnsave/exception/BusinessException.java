package com.flab.shopnsave.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public class BusinessException extends RuntimeException {

    public final HttpStatus statusCode;

    public BusinessException(String message, HttpStatus statusCode) {
        super(message);
        this.statusCode = statusCode;
    }
}
