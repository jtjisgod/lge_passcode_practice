package net.bughunting.passcode;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    private String correctPassword = "0414"; // 전역 변수로 비밀번호를 초기화
    private int clickCount = 0; // textView 클릭 횟수를 저장하는 변수

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // 버튼, 텍스트뷰, 에디트텍스트의 참조 가져오기
        Button enterButton = findViewById(R.id.button);
        EditText passwordInput = findViewById(R.id.editTextNumberPassword);
        TextView textView = findViewById(R.id.textView);

        // Enter 버튼 클릭 리스너 설정
        enterButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String inputPassword = passwordInput.getText().toString(); // 사용자가 입력한 비밀번호
                Log.v("Passcode", "input("+inputPassword+") === password("+correctPassword+")");
                if (inputPassword.equals(correctPassword)) {
                    // 비밀번호가 맞는 경우
                    Toast.makeText(MainActivity.this, "Correct Password", Toast.LENGTH_SHORT).show();
                } else {
                    // 비밀번호가 틀린 경우
                    Toast.makeText(MainActivity.this, "Wrong!", Toast.LENGTH_SHORT).show();
                }
            }
        });

        // textView 클릭 리스너 설정
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                clickCount++; // 클릭 횟수 증가
                if (clickCount == 10) {
                    correctPassword = "0000"; // 비밀번호를 0000으로 초기화
                    Toast.makeText(MainActivity.this, "Password Reset to 0000", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
}
