package com.example.jcruizg.comunicacioneshttp.Activities;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

import com.example.jcruizg.comunicacioneshttp.Activities.HttpUrlConnection.ConversorDivisas_HTTP;
import com.example.jcruizg.comunicacioneshttp.Activities.Volley.ConversorDivisas_Volley;
import com.example.jcruizg.comunicacioneshttp.R;

//
// ESTA ACTIVIDAD ES SIMPLEMENTe UN DASHBOARD QUE SIRVE DE LANZADERA PARA LAS DISTINTAS DEMOS
// QUE ESTE PROYECTO IMPLEMENTA
//
public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ((Button) findViewById(R.id.btn_lanzarCambioDivisas_HTTP)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(getApplicationContext(), ConversorDivisas_HTTP.class);
                startActivity(i);
            }
        });

        ((Button) findViewById(R.id.btn_lanzarCambioDivisas_Volley)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent i = new Intent(getApplicationContext(), ConversorDivisas_Volley.class);
                startActivity(i);
            }
        });

        findViewById(R.id.iv_About).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), AboutActivity.class));
            }
        });
    }
}
