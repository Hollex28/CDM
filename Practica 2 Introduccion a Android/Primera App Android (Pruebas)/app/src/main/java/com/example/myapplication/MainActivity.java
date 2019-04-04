package com.example.myapplication;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.util.Log;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TextView s = findViewById(R.id.tvAdsPutitas);
        s.setText(R.string.Puta_Selene);
        Log.d( "MainActivity.LogTest", "esto es un log");
        findViewById(R.id.IV_info).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(getApplicationContext(), Modded_Activity.class));
            }
        });
        findViewById(R.id.Boton_apl).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                EditText ein=(EditText)findViewById(R.id.EditText);
                String texto = ein.getText().toString();
                Toast.makeText(MainActivity.this, texto,
                        Toast.LENGTH_SHORT).show();
            }
        });

            }

    }

