package MensajeriaExpress;

import java.util.Date;

public class Envio {
    private int numeroGuia;
    private Cliente cliente;
    private Paquete paquete;
    private String ciudadOrigen;
    private String ciudadDestino;
    private String direccionDestino;
    private String personaRecibe;
    private String celularRecibe;
    private Date horaEntrega;
    private String estadoEnvio;
    private int valorEnvio;

    public Envio(int numeroGuia, Cliente cliente, Paquete paquete, String ciudadOrigen, String ciudadDestino, String direccionDestino, String personaRecibe, String celularRecibe, Date horaEntrega, String estadoEnvio, int valorEnvio) {
        this.numeroGuia = numeroGuia;
        this.cliente = cliente;
        this.paquete = paquete;
        this.ciudadOrigen = ciudadOrigen;
        this.ciudadDestino = ciudadDestino;
        this.direccionDestino = direccionDestino;
        this.personaRecibe = personaRecibe;
        this.celularRecibe = celularRecibe;
        this.horaEntrega = horaEntrega;
        this.estadoEnvio = estadoEnvio;
        this.valorEnvio = valorEnvio;
    }
}
