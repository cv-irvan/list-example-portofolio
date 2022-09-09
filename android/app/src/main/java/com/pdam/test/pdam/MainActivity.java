package com.pdam.test.pdam;

import android.content.ComponentName;
import android.content.Intent;

import androidx.annotation.NonNull;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;

public class MainActivity extends FlutterActivity {

    // private static final String TAG = "MainActivity";

    private final static String CHANNEL_IKI_ALIVE = "asia.cyberlabs.gdc";

    @Override
    public void configureFlutterEngine(@NonNull FlutterEngine flutterEngine) {
        super.configureFlutterEngine(flutterEngine);


        BinaryMessenger messenger = flutterEngine.getDartExecutor().getBinaryMessenger();

        MethodChannel channel = new MethodChannel(messenger, CHANNEL_IKI_ALIVE);

        channel.setMethodCallHandler(new MethodChannel.MethodCallHandler() {
            @Override
            public void onMethodCall(@NonNull MethodCall call, @NonNull MethodChannel.Result result) {
                String namaPackage = call.argument("package");
                String nominal = call.argument("nominal");
                String apps = call.argument("apps");
                switch (call.method) {
                    case "openGDCPay":
                        launchApp2(namaPackage, nominal, apps);
                        break;
                }
            }
        });
    }

    private void launchApp2(String packageName,String nominal, String apps) {
        Intent intent = new Intent();
        intent.setPackage(packageName);

        ComponentName name=new ComponentName("asia.cyberlabs.gdc",
                "id.co.gdc.SplashScreenActivity");
        Intent i=new Intent(Intent.ACTION_MAIN);

        i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK |
                Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
        i.setComponent(name);
        intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        i.putExtra("apps", apps);
        i.putExtra("nominal", nominal);
        startActivity(i);
    }
}
