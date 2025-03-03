package com.senac.pi.vacinaApp.type;

import java.time.LocalDate;
import java.util.Objects;

import org.springframework.validation.annotation.Validated;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonSetter;
import com.fasterxml.jackson.annotation.Nulls;

import io.swagger.v3.oas.annotations.media.Schema;


public class UserCreateResponse   {
  @JsonProperty("idUsuario")
  private Integer idUsuario = null;

  @JsonProperty("name")
  private String name = null;

  @JsonProperty("dataNascimento")
  private LocalDate dataNascimento = null;

  @JsonProperty("ddd")
  private Integer ddd = null;

  @JsonProperty("telefone")
  private Integer telefone = null;

  @JsonProperty("cpf")
  private String cpf = null;

  @JsonProperty("email")
  private String email = null;


  public UserCreateResponse idUsuario(Integer idUsuario) { 

    this.idUsuario = idUsuario;
    return this;
  }

  /**
   * Get idUsuario
   * @return idUsuario
   **/
  
  @Schema(description = "")
  
  public Integer getIdUsuario() {  
    return idUsuario;
  }



  public void setIdUsuario(Integer idUsuario) { 
    this.idUsuario = idUsuario;
  }

  public UserCreateResponse name(String name) { 

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

  public UserCreateResponse dataNascimento(LocalDate dataNascimento) { 

    this.dataNascimento = dataNascimento;
    return this;
  }

  /**
   * Get dataNascimento
   * @return dataNascimento
   **/
  
  @Schema(description = "")
  
@Validated
  public LocalDate getDataNascimento() {  
    return dataNascimento;
  }



  public void setDataNascimento(LocalDate dataNascimento) { 
    this.dataNascimento = dataNascimento;
  }

  public UserCreateResponse ddd(Integer ddd) { 

    this.ddd = ddd;
    return this;
  }

  /**
   * Get ddd
   * @return ddd
   **/
  
  @Schema(description = "")
  
  public Integer getDdd() {  
    return ddd;
  }



  public void setDdd(Integer ddd) { 
    this.ddd = ddd;
  }

  public UserCreateResponse telefone(Integer telefone) { 

    this.telefone = telefone;
    return this;
  }

  /**
   * Get telefone
   * @return telefone
   **/
  
  @Schema(description = "")
  
  public Integer getTelefone() {  
    return telefone;
  }



  public void setTelefone(Integer telefone) { 
    this.telefone = telefone;
  }

  public UserCreateResponse cpf(String cpf) { 

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

  public UserCreateResponse email(String email) { 

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
    UserCreateResponse userResponse = (UserCreateResponse) o;
    return Objects.equals(this.idUsuario, userResponse.idUsuario) &&
        Objects.equals(this.name, userResponse.name) &&
        Objects.equals(this.dataNascimento, userResponse.dataNascimento) &&
        Objects.equals(this.ddd, userResponse.ddd) &&
        Objects.equals(this.telefone, userResponse.telefone) &&
        Objects.equals(this.cpf, userResponse.cpf) &&
        Objects.equals(this.email, userResponse.email);
  }

  @Override
  public int hashCode() {
    return Objects.hash(idUsuario, name, dataNascimento, ddd, telefone, cpf, email);
  }

  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class UserResponse {\n");
    
    sb.append("    idUsuario: ").append(toIndentedString(idUsuario)).append("\n");
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
}
