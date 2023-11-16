
package com.Android1;

import android.app.Activity;
import android.widget.TextView;
import android.os.Bundle;

public class Android1 extends Activity
{
    /** Chiamato quando l'attivit� viene creata per la prima volta. */
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);

        /* Crea un oggetto TextView e ne imposta il testo su "Hello world" */
        TextView  tv = new TextView(this);
        tv.setText("Hello World!");
        setContentView(tv);
    }
}
