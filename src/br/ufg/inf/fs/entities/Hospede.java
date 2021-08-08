package br.ufg.inf.fs.entities;

import java.util.Date;

public class Hospede {

    private Integer idHospede;
    private String nmHospede;
    private Date dtNascimento;
    private int cpf;

    public Hospede() {
        super();
    }

    public Hospede(Integer idHospede, String nmHospede, Date dtNascimento, int cpf) {
        super();
        this.idHospede = idHospede;
        this.nmHospede = nmHospede;
        this.dtNascimento = dtNascimento;
        this.cpf = cpf;
    }

    public int getIdHospede() {
        return idHospede;
    }

    public void setIdHospede(int idHospede) {
        this.idHospede = idHospede;
    }

    public String getNmHospede() {
        return nmHospede;
    }

    public void setNmHospede(String nmHospede) {
        this.nmHospede = nmHospede;
    }

    public Date getDtNascimento() {
        return dtNascimento;
    }

    public void setDtNascimento(Date dtNascimento) {
        this.dtNascimento = dtNascimento;
    }

    public int getCpf() {
        return cpf;
    }

    public void setCpf(int cpf) {
        this.cpf = cpf;
    }

    @Override
    public String toString() {
        return "Hospede (CPF=" + cpf + ", Data de Nascimento=" + dtNascimento + ", id=" + idHospede
                + ", Nome do Hospede=" + nmHospede + ")";
    }

}
