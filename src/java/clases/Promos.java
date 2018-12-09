/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.util.Date;

/**
 *
 * @author Rick
 */
public class Promos {
    private String codigo;
    private String fechaVencimiento;
    private int desc;

    public Promos() {
    }

    public Promos(String codigo, String fechaVencimiento, int desc) {
        this.codigo = codigo;
        this.fechaVencimiento = fechaVencimiento;
        this.desc = desc;
    }

    public String getCodigo() {
        return codigo;
    }

    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

    public String getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(String fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    public int getDesc() {
        return desc;
    }

    public void setDesc(int desc) {
        this.desc = desc;
    }
    
}
