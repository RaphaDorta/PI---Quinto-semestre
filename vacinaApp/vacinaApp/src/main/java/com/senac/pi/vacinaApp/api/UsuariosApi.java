package com.senac.pi.vacinaApp.api;

import com.senac.pi.vacinaApp.type.UserCreateResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;

import com.senac.pi.vacinaApp.type.UserCreateRequest;
import com.senac.pi.vacinaApp.type.UserCreateResponse;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Validated
@RequestMapping("/usuarios")
public interface UsuariosApi {

    @Operation(summary = "Criar um novo usuário", description = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "201", description = "Usuário criado com sucesso", content = @Content(mediaType = "application/json", schema = @Schema(implementation = UserCreateResponse.class))) })
    @RequestMapping(value = "/cadastrar",
        produces = { "application/json" }, 
        consumes = { "application/json" }, 
        method = RequestMethod.POST)
    ResponseEntity<UserCreateResponse> criarUsuario(@Parameter(in = ParameterIn.DEFAULT, description = "", required=true, schema=@Schema()) @Validated @RequestBody UserCreateRequest body);

    @Operation(summary = "Buscar usuário por ID", description = "", tags={  })
    @ApiResponses(value = { 
        @ApiResponse(responseCode = "200", description = "Usuário encontrado", content = @Content(mediaType = "application/json", schema = @Schema(implementation = UserCreateResponse.class))),
        @ApiResponse(responseCode = "404", description = "Usuário não encontrado"),
        @ApiResponse(responseCode = "500", description = "Erro interno do servidor") })
    @RequestMapping(value = "/{id}",
        produces = { "application/json" }, 
        method = RequestMethod.GET)
    ResponseEntity<UserCreateResponse> buscarUsuarioPorId(@Parameter(in = ParameterIn.PATH, description = "ID do usuário", required=true, schema=@Schema()) @PathVariable Long id);
}