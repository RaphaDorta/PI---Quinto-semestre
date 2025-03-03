package com.senac.pi.vacinaApp.api;

import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.senac.pi.vacinaApp.type.UserCreateRequest;
import com.senac.pi.vacinaApp.type.UserCreateResponse;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.enums.ParameterIn;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponse;
import io.swagger.v3.oas.annotations.responses.ApiResponses;

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
    ResponseEntity<UserCreateResponse> criarUsuario(@Parameter(in = ParameterIn.DEFAULT, description = "", required=true, schema=@Schema()) @Validated @RequestBody UserCreateRequest body
);

}


