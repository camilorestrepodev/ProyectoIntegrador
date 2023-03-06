package MensajeriaExpress;

public class Empleado extends Usuario {
    private String antiguedadEmpresa;
    private String tipoSangre;
    private String tipoEmpleado;


    public Empleado(int cedula, String nombreCliente, String apellidoCliente, int celular, String correoElectronico, String direccionResidencia, String ciudad, String antiguedadEmpresa, String tipoSangre, String tipoEmpleado) {
        super(cedula, nombreCliente, apellidoCliente, celular, correoElectronico, direccionResidencia, ciudad);
        this.antiguedadEmpresa = antiguedadEmpresa;
        this.tipoSangre = tipoSangre;
        this.tipoEmpleado = tipoEmpleado;
    }
}
