package com.senac.pi.vacinaApp.api;

import com.senac.pi.vacinaApp.type.UserCreateRequest;
import com.senac.pi.vacinaApp.type.UserCreateResponse;
import com.senac.pi.vacinaApp.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PathVariable;

import jakarta.validation.Valid;

import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Schema;

import jakarta.servlet.http.HttpServletRequest;

@RestController
public class UsuariosApiController implements UsuariosApi {

    private static final Logger log = LoggerFactory.getLogger(UsuariosApiController.class);

    @Autowired
    private UserService userService; // Injeta o serviço para criar usuários

    @Autowired
    private HttpServletRequest request; // Injeta o HttpServletRequest

    @Override
    public ResponseEntity<UserCreateResponse> criarUsuario(@Valid @RequestBody UserCreateRequest body) {
        // Verifica se o cabeçalho "Accept" contém "application/json"
        String accept = request.getHeader("Accept");
        if (accept != null && accept.contains("application/json")) {
            try {
                // Chama o serviço para criar o usuário
                UserCreateResponse userResponse = userService.criarUsuario(body);

                // Retorna a resposta com o status HTTP 201 (CREATED)
                return new ResponseEntity<>(userResponse, HttpStatus.CREATED);
            } catch (Exception e) {
                log.error("Erro ao criar usuário", e);
                return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
            }
        }

        // Se o cabeçalho "Accept" não for "application/json", retorna HTTP 400 (BAD REQUEST)
        return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
    }

    @Override
    public ResponseEntity<UserCreateResponse> buscarUsuarioPorId(@PathVariable Long id) {
        try {
            // Busca o usuário pelo ID
            UserCreateResponse usuario = userService.buscarUsuarioPorId(id);

            if (usuario != null) {
                return new ResponseEntity<>(usuario, HttpStatus.OK);
            } else {
                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
            }
        } catch (Exception e) {
            log.error("Erro ao buscar usuário", e);
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
}