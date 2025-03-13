package com.senac.pi.vacinaApp.entity;

import java.io.Serial;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "usuario") // Nome da tabela no banco de dados
public class Usuario implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idUsuario") // Nome da coluna no banco de dados
    private Long idUsuario;

    @Column(name = "nome", length = 45, nullable = false) // Nome da coluna no banco de dados
    private String nome;

    @Column(name = "dataNascimento", nullable = false) // Nome da coluna no banco de dados
    private Date dataNascimento;

    @Column(name = "ddd", nullable = false) // Nome da coluna no banco de dados
    private String ddd;

    @Column(name = "telefone", nullable = false) // Nome da coluna no banco de dados
    private String telefone;

    @Column(name = "cpf", length = 11, nullable = false) // Nome da coluna no banco de dados
    private String cpf;

    @Column(name = "email", length = 45, nullable = false) // Nome da coluna no banco de dados
    private String email;

    @OneToMany(mappedBy = "usuario")
    private List<UsuarioVacina> vacinas;

    // Getters e Setters
    public Long getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Long idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getDdd() {
        return ddd;
    }

    public void setDdd(String ddd) {
        this.ddd = ddd;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<UsuarioVacina> getVacinas() {
        return vacinas;
    }

    public void setVacinas(List<UsuarioVacina> vacinas) {
        this.vacinas = vacinas;
    }

    @Override
    public String toString() {
        return "Usuario [idUsuario=" + idUsuario + ", nome=" + nome + ", dataNascimento=" + dataNascimento
                + ", ddd=" + ddd + ", telefone=" + telefone + ", cpf=" + cpf + ", email=" + email + "]";
    }
}