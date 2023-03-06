package MensajeriaExpress;

public class Cliente extends Usuario {


    public Cliente(int cedula, String nombreCliente, String apellidoCliente, int celular, String correoElectronico, String direccionResidencia, String ciudad) {
        super(cedula, nombreCliente, apellidoCliente, celular, correoElectronico, direccionResidencia, ciudad);
    }
}
