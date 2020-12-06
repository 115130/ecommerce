package DBTool;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class UserTool {
    public static String  getSha (String inputStr){
        byte[] inputData = inputStr.getBytes();
        MessageDigest messageDigest = null;
        try {
            messageDigest = MessageDigest.getInstance("SHA");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        messageDigest.update(inputData);
        return new BigInteger(messageDigest.digest()).toString(32);
    }
}
