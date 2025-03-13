package com.senac.pi.vacinaApp.entity;

import java.io.Serial;
import java.io.Serializable;
import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "usuario_vacina")
public class UsuarioVacina implements Serializable {

    @Serial
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idUsuarioVacina")
    private Integer idUsuarioVacina;

    @ManyToOne
    @JoinColumn(name = "idUsuario", nullable = false)
    private Usuario usuario; // Usando a classe Usuario

    @ManyToOne
    @JoinColumn(name = "idVacina", nullable = false)
    private Vacina vacina;

    @Column(name = "data_primeira_dose", nullable = false)
    private Date dataPrimeiraDose;

    @Column(name = "data_segunda_dose")
    private Date dataSegundaDose;

    @Column(name = "segunda_dose_pendente", nullable = false)
    private Boolean segundaDosePendente;

    // Getters e Setters
    public Integer getIdUsuarioVacina() {
        return idUsuarioVacina;
    }

    public void setIdUsuarioVacina(Integer idUsuarioVacina) {
        this.idUsuarioVacina = idUsuarioVacina;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Vacina getVacina() {
        return vacina;
    }

    public void setVacina(Vacina vacina) {
        this.vacina = vacina;
    }

    public Date getDataPrimeiraDose() {
        return dataPrimeiraDose;
    }

    public void setDataPrimeiraDose(Date dataPrimeiraDose) {
        this.dataPrimeiraDose = dataPrimeiraDose;
    }

    public Date getDataSegundaDose() {
        return dataSegundaDose;
    }

    public void setDataSegundaDose(Date dataSegundaDose) {
        this.dataSegundaDose = dataSegundaDose;
    }

    public Boolean getSegundaDosePendente() {
        return segundaDosePendente;
    }

    public void setSegundaDosePendente(Boolean segundaDosePendente) {
        this.segundaDosePendente = segundaDosePendente;
    }
}