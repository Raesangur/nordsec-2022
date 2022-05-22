
import java.security.MessageDigest;
import javax.crypto.SecretKey;
import java.util.Base64;
import java.security.spec.AlgorithmParameterSpec;
import java.security.Key;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.crypto.Cipher;
import java.security.spec.KeySpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.SecretKeyFactory;

public class StinkhornDecrypter
{
	public static String PWD = "We couldn't leak the password...";
	public static int COUNT  = 11542142;

	public static void main (String[] args)
	{
		if (args.length != 1) {
	        System.out.println("Usage : '<transaction_to_decrypt>'");
			return;
		}

		String transaction = args[0];

		String decrypted = decrypt(transaction);
		System.out.println(decrypted);
	}

	public static String decrypt(String data)
	{
		try{
			String method    = "PBEWithMD5AndDES";
			String salt      = "929188pa";

			
			//String secretKey = "V2UgY291bGRuJ3QgbGVhayB0aGUgcGFzc3dvcmQuLi4=";
			//byte[] keyBytes  = Base64.getDecoder().decode(secretKey);
			//SecretKey key    = new SecretKeySpec(keyBytes, 0, keyBytes.length, "DES");

			SecretKeyFactory kf = SecretKeyFactory.getInstance(method);
			PBEKeySpec keySpec  = new PBEKeySpec(PWD.toCharArray());
			SecretKey  key      = kf.generateSecret(keySpec);

			Cipher cipher = Cipher.getInstance(method);
			PBEParameterSpec params = new PBEParameterSpec(salt.getBytes(), COUNT);

			cipher.init(2, key, params);
			return Base64.getEncoder().encodeToString(cipher.doFinal(data.getBytes()));	
			
		}
		catch(Exception e)
		{
			throw new RuntimeException(e.getMessage());
		}
	}
}
