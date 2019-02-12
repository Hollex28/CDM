package com.example.myapplication;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.widget.TextView;
import android.util.Log;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        TextView s = findViewById(R.id.tvAdsPutitas);
        s.setText(R.string.Puta_Selene);
        Log.d( "MainActivity.LogTest", "Ñaca Ñacas");
    }
}
