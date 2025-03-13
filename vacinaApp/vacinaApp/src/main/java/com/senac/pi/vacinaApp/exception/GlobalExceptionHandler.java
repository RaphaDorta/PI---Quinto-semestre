package com.senac.pi.vacinaApp.exception; // Certifique-se de que o pacote está correto

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.time.format.DateTimeParseException;

@RestControllerAdvice // Indica que esta classe é um manipulador global de exceções
public class GlobalExceptionHandler {

    // Manipula exceções de formato de data inválido
    @ExceptionHandler(DateTimeParseException.class)
    public ResponseEntity<String> handleDateTimeParseException(DateTimeParseException ex) {
        return ResponseEntity
                .status(HttpStatus.BAD_REQUEST) // Retorna status HTTP 400 (Bad Request)
                .body("Formato de data inválido. Use o formato dd/MM/yyyy.");
    }

    // Manipula exceções genéricas (caso ocorra algum erro inesperado)
    @ExceptionHandler(Exception.class)
    public ResponseEntity<String> handleGenericException(Exception ex) {
        return ResponseEntity
                .status(HttpStatus.INTERNAL_SERVER_ERROR) // Retorna status HTTP 500 (Internal Server Error)
                .body("Ocorreu um erro inesperado: " + ex.getMessage());
    }
}