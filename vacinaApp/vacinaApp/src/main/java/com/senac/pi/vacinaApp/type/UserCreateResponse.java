package com.senac.pi.vacinaApp.type;

import java.time.LocalDate;

public class UserCreateResponse {
    private Long idUser; // Changed from idUsuario to idUser
    private String name;
    private LocalDate dataNascimento;
    private String cpf;
    private String email;
    private String ddd;
    private String telefone;

    // Construtor vazio necessário para permitir criação do objeto sem argumentos
    public UserCreateResponse() {}

    // Construtor com parâmetros
    public UserCreateResponse(Long idUser, String name, LocalDate dataNascimento, String cpf, String email, String ddd, String telefone) {
        this.idUser = idUser;
        this.name = name;
        this.dataNascimento = dataNascimento;
        this.cpf = cpf;
        this.email = email;
        this.ddd = ddd;
        this.telefone = telefone;
    }

    // Getters e Setters
    public Long getIdUser() { return idUser; } // Changed from getIdUsuario to getIdUser
    public void setIdUser(Long idUser) { this.idUser = idUser; } // Changed from setIdUsuario to setIdUser

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public LocalDate getDataNascimento() { return dataNascimento; }
    public void setDataNascimento(LocalDate dataNascimento) { this.dataNascimento = dataNascimento; }

    public String getCpf() { return cpf; }
    public void setCpf(String cpf) { this.cpf = cpf; }

    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    public String getDdd() { return ddd; }
    public void setDdd(String ddd) { this.ddd = ddd; }

    public String getTelefone() { return telefone; }
    public void setTelefone(String telefone) { this.telefone = telefone; }
}