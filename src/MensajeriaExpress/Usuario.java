package MensajeriaExpress;

public class Usuario {
    private int cedula;
    private String nombreCliente;
    private String apellidoCliente;
    private int celular;
    private String correoElectronico;
    private String direccionResidencia;
    private String ciudad;
    public Usuario(int cedula, String nombreCliente, String apellidoCliente, int celular, String correoElectronico, String direccionResidencia, String ciudad) {
        this.cedula = cedula;
        this.nombreCliente = nombreCliente;
        this.apellidoCliente = apellidoCliente;
        this.celular = celular;
        this.correoElectronico = correoElectronico;
        this.direccionResidencia = direccionResidencia;
        this.ciudad = ciudad;
    }


}
