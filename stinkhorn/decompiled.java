import java.security.MessageDigest;
import javax.crypto.SecretKey;
import java.util.Base64;
import java.security.spec.AlgorithmParameterSpec;
import java.security.Key;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.Cipher;
import java.security.spec.KeySpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.SecretKeyFactory;

// 
// Decompiled by Procyon v0.5.36
// 

public class StinkhornEncrypter
{
    public static String PWD;
    public static int COUNT;
    
    public static void main(final String[] args) {
        if (args.length < 2) {
            System.out.println("Usage : java -jar stinkhorn_encrypter.jar <id> '<transaction_to_encrypt>'");
            return;
        }
        String id = args[0];
        String transaction = args[1];
        id = invokedynamic(makeConcatWithConstants:(Ljava/lang/String;)Ljava/lang/String;, id);
        id = id.substring(0, 8);
        transaction = invokedynamic(makeConcatWithConstants:(Ljava/lang/String;)Ljava/lang/String;, transaction);
        final String encrypted = invokedynamic(makeConcatWithConstants:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, getCalculatedID(id), encrypt(transaction, StinkhornEncrypter.PWD, id, StinkhornEncrypter.COUNT));
        System.out.println("Calculated ID\t\tEncrypted transaction");
        System.out.println(encrypted);
    }
    
    public static String encrypt(final String data, final String password, final String salt, final int noIterations) {
        try {
            final String method = "PBEWithMD5AndDES";
            final SecretKeyFactory kf = SecretKeyFactory.getInstance(method);
            final PBEKeySpec keySpec = new PBEKeySpec(password.toCharArray());
            final SecretKey key = kf.generateSecret(keySpec);
            final Cipher cipher = Cipher.getInstance(method);
            final PBEParameterSpec params = new PBEParameterSpec(salt.getBytes(), noIterations);
            cipher.init(1, key, params);
            return Base64.getEncoder().encodeToString(cipher.doFinal(data.getBytes()));
        }
        catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
    
    public static String getCalculatedID(final String id) {
        final String tmpId = invokedynamic(makeConcatWithConstants:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;, StinkhornEncrypter.PWD, id);
        try {
            byte[] calculatedID = tmpId.getBytes("UTF-8");
            final MessageDigest md = MessageDigest.getInstance("MD5");
            for (int i = 0; i < StinkhornEncrypter.COUNT; ++i) {
                calculatedID = md.digest(calculatedID);
            }
            return hex(calculatedID).substring(0, 7);
        }
        catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public static String hex(final byte[] bytes) {
        final StringBuilder result = new StringBuilder();
        for (final byte aByte : bytes) {
            final int decimal = aByte & 0xFF;
            String hex = Integer.toHexString(decimal);
            if (hex.length() % 2 == 1) {
                hex = invokedynamic(makeConcatWithConstants:(Ljava/lang/String;)Ljava/lang/String;, hex);
            }
            result.append(hex);
        }
        return result.toString();
    }
    
    static {
        StinkhornEncrypter.PWD = "We couldn't leak the password...";
        StinkhornEncrypter.COUNT = 11542142;
    }
}
