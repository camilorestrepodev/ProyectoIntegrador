package MensajeriaExpress;

public class Paquete {
    public Paquete(int identificacionPaquete, String tipoPaquete, float pesoPaquete, int valorDeclarado) {
        this.identificacionPaquete = identificacionPaquete;
        this.tipoPaquete = tipoPaquete;
        this.pesoPaquete = pesoPaquete;
        this.valorDeclarado = valorDeclarado;
    }

    private int identificacionPaquete;
    private String tipoPaquete;
    private float pesoPaquete;
    private int valorDeclarado;
}
