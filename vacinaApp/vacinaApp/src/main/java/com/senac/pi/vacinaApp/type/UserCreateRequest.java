package com.senac.pi.vacinaApp.type;

import java.util.Date;
import java.util.Objects;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

import org.springframework.validation.annotation.Validated;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.senac.pi.vacinaApp.entity.User;

import io.swagger.v3.oas.annotations.media.Schema;

public class UserCreateRequest {
    @JsonProperty("name")
    private String name = null;

    @JsonProperty("dataNascimento")
    private Date dataNascimento = null;

    @JsonProperty("ddd")
    private String ddd = null; // Alterado para String

    @JsonProperty("telefone")
    private String telefone = null; // Alterado para String

    @JsonProperty("cpf")
    private String cpf = null;

    @JsonProperty("email")
    private String email = null;

    public UserCreateRequest name(String name) {
        this.name = name;
        return this;
    }

    /**
     * Get name
     * @return name
     **/
    @Schema(description = "")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public UserCreateRequest dataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
        return this;
    }

    /**
     * Get dataNascimento
     * @return dataNascimento
     **/
    @Schema(description = "")
    @Validated
    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public UserCreateRequest ddd(String ddd) { // Alterado para String
        this.ddd = ddd;
        return this;
    }

    /**
     * Get ddd
     * @return ddd
     **/
    @Schema(description = "")
    public String getDdd() { // Alterado para String
        return ddd;
    }

    public void setDdd(String ddd) { // Alterado para String
        this.ddd = ddd;
    }

    public UserCreateRequest telefone(String telefone) { // Alterado para String
        this.telefone = telefone;
        return this;
    }

    /**
     * Get telefone
     * @return telefone
     **/
    @Schema(description = "")
    public String getTelefone() { // Alterado para String
        return telefone;
    }

    public void setTelefone(String telefone) { // Alterado para String
        this.telefone = telefone;
    }

    public UserCreateRequest cpf(String cpf) {
        this.cpf = cpf;
        return this;
    }

    /**
     * Get cpf
     * @return cpf
     **/
    @Schema(description = "")
    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public UserCreateRequest email(String email) {
        this.email = email;
        return this;
    }

    /**
     * Get email
     * @return email
     **/
    @Schema(description = "")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public boolean equals(java.lang.Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        UserCreateRequest userCreateRequest = (UserCreateRequest) o;
        return Objects.equals(this.name, userCreateRequest.name) &&
                Objects.equals(this.dataNascimento, userCreateRequest.dataNascimento) &&
                Objects.equals(this.ddd, userCreateRequest.ddd) &&
                Objects.equals(this.telefone, userCreateRequest.telefone) &&
                Objects.equals(this.cpf, userCreateRequest.cpf) &&
                Objects.equals(this.email, userCreateRequest.email);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name, dataNascimento, ddd, telefone, cpf, email);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("class UserCreateRequest {\n");
        sb.append("    name: ").append(toIndentedString(name)).append("\n");
        sb.append("    dataNascimento: ").append(toIndentedString(dataNascimento)).append("\n");
        sb.append("    ddd: ").append(toIndentedString(ddd)).append("\n");
        sb.append("    telefone: ").append(toIndentedString(telefone)).append("\n");
        sb.append("    cpf: ").append(toIndentedString(cpf)).append("\n");
        sb.append("    email: ").append(toIndentedString(email)).append("\n");
        sb.append("}");
        return sb.toString();
    }

    /**
     * Convert the given object to string with each line indented by 4 spaces
     * (except the first line).
     */
    private String toIndentedString(java.lang.Object o) {
        if (o == null) {
            return "null";
        }
        return o.toString().replace("\n", "\n    ");
    }

    public static User convert(UserCreateRequest dados) {
        User usuario = new User();
        usuario.setName(dados.getName());
        usuario.setDataNascimento(dados.getDataNascimento());
        usuario.setCpf(dados.getCpf());
        usuario.setEmail(dados.getEmail());
        usuario.setDdd(dados.getDdd()); // Alterado para String
        usuario.setTelefone(dados.getTelefone()); // Alterado para String
        return usuario;
    }
}
