package com.senac.pi.vacinaApp.api;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.senac.pi.vacinaApp.type.UserCreateRequest;
import com.senac.pi.vacinaApp.type.UserCreateResponse;

import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.servlet.http.HttpServletRequest;


@RestController
public class UsuariosApiController implements UsuariosApi {

    private static final Logger log = LoggerFactory.getLogger(UsuariosApiController.class);

    private final ObjectMapper objectMapper;

    private final HttpServletRequest request;

    @org.springframework.beans.factory.annotation.Autowired
    public UsuariosApiController(ObjectMapper objectMapper, HttpServletRequest request) {
        this.objectMapper = objectMapper;
        this.request = request;
    }


    public ResponseEntity<UserCreateResponse> criarUsuario(@Parameter(in = ParameterIn.DEFAULT, description = "", required=true, schema=@Schema()) @Validated @RequestBody UserCreateRequest body
) {
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                return new ResponseEntity<UserCreateResponse>(objectMapper.readValue("{\n  \"telefone\" : 1,\n  \"ddd\" : 6,\n  \"idUsuario\" : 0,\n  \"name\" : \"name\",\n  \"cpf\" : \"cpf\",\n  \"dataNascimento\" : \"2000-01-23\",\n  \"email\" : \"email\"\n}", UserResponse.class), HttpStatus.NOT_IMPLEMENTED);
            } catch (IOException e) {
                log.error("Couldn't serialize response for content type application/json", e);
                return new ResponseEntity<UserCreateResponse>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        return new ResponseEntity<UserCreateResponse>(HttpStatus.NOT_IMPLEMENTED);
    }

   

}

