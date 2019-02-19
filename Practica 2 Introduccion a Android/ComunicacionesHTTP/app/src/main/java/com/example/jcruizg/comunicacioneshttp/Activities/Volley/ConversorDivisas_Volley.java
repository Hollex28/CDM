package com.example.jcruizg.comunicacioneshttp.Activities.Volley;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.Volley;
import com.example.jcruizg.comunicacioneshttp.R;
import com.example.jcruizg.comunicacioneshttp.Utilidad.Divisas.Divisa;
import com.example.jcruizg.comunicacioneshttp.Utilidad.Divisas.HashDivisas;
import com.example.jcruizg.comunicacioneshttp.Utilidad.Divisas.ProveedorDeDivisasEnFormatoXML;
import com.example.jcruizg.comunicacioneshttp.Utilidad.Divisas.ProveedorDeDivisasPorHTTP;

import java.util.ArrayList;
import java.util.HashMap;

/*******************************************************************************************************
 *
 ** ESTA ACTIVIDAD HACE LO MISMO QUE ConversorDivisas_HTTP y ConversorDivisasHTTP_WR SOLICITANDO EL
 *  SERVICIO A TRAVÉS DE LA LIBRERÍA VOLLEY
 *
 *  NOTA: PARA USAR LA LIBRERÍA VOLLEY ES NECESARIO INCLUIR EN EL FICHERO build.gradle LA SIGUIENTE LÍNEA
 *        implementation 'com.android.volley:volley:1.1.1'
 *  PARA MÁS INFORMACIÓN SOBRE LA LIBRERÍA VOLLEY CONSULTAR https://developer.android.com/training/volley
 */

public class ConversorDivisas_Volley extends AppCompatActivity {
    Spinner sp1 = null, sp2 = null;
    HashDivisas divisas = null;

    ArrayAdapter<String> adapter = null;
    AppCompatActivity autoReferencia = null;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        ArrayList<String> array = new ArrayList<String>();

        //
        //Asociamos el layout a la actividad
        //
        setContentView(R.layout.activity_peticiones_get);

        autoReferencia = this;
        //
        //Lanzamiento de la petición HTTP
        //
        lanzaPeticionWebParaObtencionDeDivisasporconVolley();

        sp1 = findViewById(R.id.sp_currency1);
        sp2 = findViewById(R.id.sp_currency2);
        //
        //Instanciamos el adaptador a utilizar y lo asociamos a los Spinners
        //
        adapter = new ArrayAdapter<String>(autoReferencia, android.R.layout.simple_spinner_item, array);
        adapter.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        sp1.setAdapter(adapter);
        sp2.setAdapter(adapter);

        Button ibUp = findViewById(R.id.btn_Up);
        Button ibDown = findViewById(R.id.btn_Down);

        final EditText et1 = findViewById(R.id.et_value1);
        final EditText et2 = findViewById(R.id.et_Value2);

        ibUp.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (et2.getText().toString().length() > 0) {
                    double d = divisas.dameHash().get(sp2.getSelectedItem().toString()).convierte(
                            Double.valueOf(et2.getText().toString()),
                            divisas.dameHash().get(sp1.getSelectedItem().toString()));
                    et1.setText(Double.valueOf(d).toString(), TextView.BufferType.EDITABLE);

                } else {
                    Toast.makeText(getApplicationContext(), "Conversión imposible. \nDebes introducir algún montante en la divisa B.", Toast.LENGTH_LONG).show();
                }
            }
        });

        ibDown.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                if (et1.getText().toString().length() > 0) {
                    double d = divisas.dameHash().get(sp1.getSelectedItem().toString()).convierte(
                            Double.valueOf(et1.getText().toString()).doubleValue(),
                            divisas.dameHash().get(sp2.getSelectedItem().toString()));
                    et2.setText(Double.valueOf(d).toString(), TextView.BufferType.EDITABLE);

                } else {
                    Toast.makeText(getApplicationContext(), "Conversión imposible.\nDebes introducir algún montante en la divisa A.", Toast.LENGTH_LONG).show();
                }
            }
        });
        et1.requestFocus();

        ((Button) findViewById(R.id.btn_Reset)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                et1.setText("", TextView.BufferType.EDITABLE);
                et2.setText("", TextView.BufferType.EDITABLE);
            }
        });
    }


    public void actualizaAdapterData(String strConDivisasEnFormatoXML) {
        divisas = new ProveedorDeDivisasEnFormatoXML().obtenerDivisas_desdeString(strConDivisasEnFormatoXML);
        //Poblamos el array con las divisas obtenidas
        if (divisas != null) {
            for (HashMap.Entry<String, Divisa> entry : divisas.dameHash().entrySet()) {
                adapter.add(entry.getKey());
            }
        }
        adapter.notifyDataSetChanged();
    }

    private RequestQueue requestQueue = null;

    //
    // USAMOS LOS SERVICIOS DEL ProveedorDeDivisasPorHTTP
    //
    private void lanzaPeticionWebParaObtencionDeDivisasporconVolley() {
        requestQueue = Volley.newRequestQueue(this);
        Response.Listener<String> responseListener = new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                //
                // LO QUE DEBEMOS HACER SI TODO VA BIEN
                //
                actualizaAdapterData(response);
                requestQueue.stop();
            }
        };
        Response.ErrorListener errorListener =new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {

                //
                // LO QUE DEBEMOS HACER EN CASO DE PROBLEMAS CON LA PETICIÓN
                //
                requestQueue.stop();
            }
        };

        new ProveedorDeDivisasPorHTTP().obtenerDivisas(requestQueue, responseListener, errorListener);
    }
}


