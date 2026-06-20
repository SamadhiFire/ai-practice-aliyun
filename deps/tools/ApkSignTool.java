import com.android.apksig.ApkSigner;
import com.android.apksig.ApkVerifier;

import java.io.File;
import java.security.Key;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ApkSignTool {
    private ApkSignTool() {}

    public static void main(String[] args) throws Exception {
        if (args.length == 0) {
            throw new IllegalArgumentException("Expected sign or verify command");
        }
        if ("sign".equals(args[0])) {
            sign(args);
            return;
        }
        if ("verify".equals(args[0])) {
            verify(args);
            return;
        }
        throw new IllegalArgumentException("Unknown command: " + args[0]);
    }

    private static void sign(String[] args) throws Exception {
        if (args.length != 7) {
            throw new IllegalArgumentException(
                    "sign <input.apk> <output.apk> <keystore> <storePassword> <alias> <keyPassword>"
            );
        }

        char[] storePassword = args[4].toCharArray();
        char[] keyPassword = args[6].toCharArray();
        KeyStore keyStore = KeyStore.getInstance(new File(args[3]), storePassword);
        Key key = keyStore.getKey(args[5], keyPassword);
        if (!(key instanceof PrivateKey)) {
            throw new IllegalStateException("Keystore alias does not contain a private key: " + args[5]);
        }

        Certificate[] chain = keyStore.getCertificateChain(args[5]);
        if (chain == null || chain.length == 0) {
            throw new IllegalStateException("No certificate chain found for alias: " + args[5]);
        }
        List<X509Certificate> certificates = new ArrayList<>();
        for (Certificate certificate : chain) {
            certificates.add((X509Certificate) certificate);
        }

        ApkSigner.SignerConfig signer = new ApkSigner.SignerConfig.Builder(
                args[5],
                (PrivateKey) key,
                certificates
        ).build();

        new ApkSigner.Builder(Collections.singletonList(signer))
                .setInputApk(new File(args[1]))
                .setOutputApk(new File(args[2]))
                .setMinSdkVersion(24)
                .setV1SigningEnabled(true)
                .setV2SigningEnabled(true)
                .setV3SigningEnabled(true)
                .setV4SigningEnabled(false)
                .build()
                .sign();
    }

    private static void verify(String[] args) throws Exception {
        if (args.length != 2) {
            throw new IllegalArgumentException("verify <apk>");
        }
        ApkVerifier.Result result = new ApkVerifier.Builder(new File(args[1]))
                .setMinCheckedPlatformVersion(24)
                .build()
                .verify();
        if (!result.isVerified() || !result.isVerifiedUsingV2Scheme()) {
            throw new IllegalStateException("APK verification failed: " + result.getErrors());
        }
        System.out.printf(
                "Verified APK signatures: v1=%s, v2=%s, v3=%s%n",
                result.isVerifiedUsingV1Scheme(),
                result.isVerifiedUsingV2Scheme(),
                result.isVerifiedUsingV3Scheme()
        );
    }
}
