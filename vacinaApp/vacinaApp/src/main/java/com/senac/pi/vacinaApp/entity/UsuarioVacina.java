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
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "UsuarioVacina")
public class UsuarioVacina implements Serializable {
	
	@Serial
	private static final long serialVersionUID = 1l;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idUsuarioVacina")
    private Integer idUsuarioVacina;

    @ManyToOne
    @JoinColumn(name = "idUser", nullable = false)
    private User usuario;

    @ManyToOne
    @JoinColumn(name = "idVacina", nullable = false)
    private Vacina vacina;

    @Column(name = "dataPrimeiraDose", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date dataPrimeiraDose;

    @Column(name = "dataSegundaDose")
    @Temporal(TemporalType.DATE)
    private Date dataSegundaDose;

    @Column(name = "segundaDosePendente", nullable = false)
    private Boolean segundaDosePendente;

	public Integer getIdUsuarioVacina() {
		return idUsuarioVacina;
	}

	public void setIdUsuarioVacina(Integer idUsuarioVacina) {
		this.idUsuarioVacina = idUsuarioVacina;
	}

	public User getUsuario() {
		return usuario;
	}

	public void setUsuario(User usuario) {
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

	@Override
	public String toString() {
		return "UsuarioVacina [idUsuarioVacina=" + idUsuarioVacina + ", usuario=" + usuario + ", vacina=" + vacina
				+ ", dataPrimeiraDose=" + dataPrimeiraDose + ", dataSegundaDose=" + dataSegundaDose
				+ ", segundaDosePendente=" + segundaDosePendente + "]";
	}
    
    
    
}
