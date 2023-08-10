package com.chunjae.test;

import com.chunjae.util.SHA256;

import java.security.NoSuchAlgorithmException;
import java.util.Scanner;

public class SHA256Test {
    public static void main(String[] args) throws NoSuchAlgorithmException {
        String pwd = "1234";
        String cryPwd = SHA256.encrypt(pwd);
        System.out.println("입력된 비밀번호 : "+pwd);
        System.out.println("암호화된 비밀번호 : "+cryPwd);

        Scanner sc = new Scanner(System.in);
        System.out.println("암호입력 : ");
        String inPwd = sc.nextLine();
        String inCryPwd = SHA256.encrypt(inPwd);
        if(inCryPwd.equals(cryPwd)) {
            System.out.println("로그인 성공");
        } else {
            System.out.println("로그인 실패");
        }

    }


}
