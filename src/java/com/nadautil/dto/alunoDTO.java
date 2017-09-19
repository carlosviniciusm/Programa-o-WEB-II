/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nadautil.dto;

/**
 *
 * @author Vinicius
 */
public class alunoDTO {
    private int id;
    private String cpf;
    private String nome;
    private String fone;
   

    public String getCpf() {
        return cpf;
    }

    public String getFone() {
        return fone;
    }

    public int getId() {
        return id;
    }

    public String getNome() {
        return nome;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public void setFone(String fone) {
        this.fone = fone;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
  
}
