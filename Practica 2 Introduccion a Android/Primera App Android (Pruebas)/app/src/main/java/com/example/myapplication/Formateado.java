package com.example.myapplication;

import android.util.Log;
import android.widget.EditText;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/************************************************************************************************
 *
 *** CLASE DE UTILIDAD EN LA QUE DERIVAMOS EL PROCESAMIENTO DE DATOS FORMATEADOS EN XML
 *
 ************************************************************************************************/

public class Formateado {

    //
    // TRANSFORMA UN EDITEXT EN UN STRING CON FORMATO XML QUE LO REPRESENTA
    //
    public static String aXML(EditText ein) {
        String retStr = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n" +
                "<text>\n";
        String texto = ein.getText().toString();
        retStr += texto;
        retStr += "</text>\n";
        return retStr;
    }

    //
    // PROCESAMIENTO DE UNA COMPRA EXPRESADA EN FORMATO XML
    // SE RETORNA UN OBJETO DE TIPO COMPRA
    //
    public static String desdeXML(String XMLString){
        XmlPullParserFactory parserFactory;
        try {
            parserFactory = XmlPullParserFactory.newInstance();
            XmlPullParser parser = parserFactory.newPullParser();
            InputStream is = new ByteArrayInputStream(XMLString.getBytes(StandardCharsets.UTF_8));;
            parser.setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, false);
            parser.setInput(is, null);
            Log.d("[XMLParsing]:"," Processing parsing");

            return processParsing(parser);

        } catch (XmlPullParserException e) {
            Log.d("[XMLParsing:Exception]:",e.toString());
            return null;

        } catch (IOException e) {
            Log.d("[XMLParsing:Exception]:",e.toString());
            return null;
        }
    }

    static final String TEXTO_TAG = "text";
    static final String TAG_PARSING_XML = "[XMLParsing]";

    //
    // LOS DISTINTOS TAGS DEL XML A PROCESAR SON INTERPRETADOS POR UN XmlPullParser EN ESTE MÉTODO
    //
    private static String processParsing(XmlPullParser parser) throws IOException, XmlPullParserException{
        String recuperado = "Fallo";

        int eventType = parser.getEventType();

        while (eventType != XmlPullParser.END_DOCUMENT) {
            String name = null;
            switch (eventType) {
                case XmlPullParser.START_DOCUMENT:
                    break;
                case XmlPullParser.START_TAG:
                    name = parser.getName();
                    if (name.equalsIgnoreCase(TEXTO_TAG)) { //NUEVO Texto
                        Log.d(TAG_PARSING_XML, "Creando nuevo texto de XML");
                        recuperado = parser.nextText();
                    }
                    break;

            }
            eventType = parser.next();
        }

        return recuperado;
    }
}
