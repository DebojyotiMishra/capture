package com.pineapple.capture;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import com.pineapple.capture.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {
    private ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        binding.textViewGreeting.setText("Hello Android!");
    }
} 