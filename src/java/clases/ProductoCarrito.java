/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author Rick
 */
public class ProductoCarrito {
    private Producto p;
    private int Cantidad;

    public ProductoCarrito() {
    }

    public ProductoCarrito(Producto p, int Cantidad) {
        this.p = p;
        this.Cantidad = Cantidad;
    }

    public Producto getP() {
        return p;
    }

    public void setP(Producto p) {
        this.p = p;
    }

    public int getCantidad() {
        return Cantidad;
    }

    public void setCantidad(int Cantidad) {
        this.Cantidad = Cantidad;
    }
        
}
