.class Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreBCWorkaroundProvider.java"


# static fields
.field private static final KEYSTORE_PRIVATE_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStorePrivateKey"

.field private static final KEYSTORE_PUBLIC_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStorePublicKey"

.field private static final KEYSTORE_SECRET_KEY_CLASS_NAME:Ljava/lang/String; = "android.security.keystore.AndroidKeyStoreSecretKey"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"


# direct methods
.method constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 52
    const-string/jumbo v0, "AndroidKeyStoreBCWorkaround"

    #@3
    .line 54
    const-string/jumbo v1, "Android KeyStore security provider to work around Bouncy Castle"

    #@6
    .line 53
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@8
    .line 52
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@b
    .line 57
    const-string/jumbo v0, "HmacSHA1"

    #@e
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA1"

    #@11
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 58
    const-string/jumbo v0, "Alg.Alias.Mac.1.2.840.113549.2.7"

    #@17
    const-string/jumbo v1, "HmacSHA1"

    #@1a
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 59
    const-string/jumbo v0, "Alg.Alias.Mac.HMAC-SHA1"

    #@20
    const-string/jumbo v1, "HmacSHA1"

    #@23
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 60
    const-string/jumbo v0, "Alg.Alias.Mac.HMAC/SHA1"

    #@29
    const-string/jumbo v1, "HmacSHA1"

    #@2c
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    .line 62
    const-string/jumbo v0, "HmacSHA224"

    #@32
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA224"

    #@35
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 63
    const-string/jumbo v0, "Alg.Alias.Mac.1.2.840.113549.2.9"

    #@3b
    const-string/jumbo v1, "HmacSHA224"

    #@3e
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 64
    const-string/jumbo v0, "Alg.Alias.Mac.HMAC-SHA224"

    #@44
    const-string/jumbo v1, "HmacSHA224"

    #@47
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4a
    .line 65
    const-string/jumbo v0, "Alg.Alias.Mac.HMAC/SHA224"

    #@4d
    const-string/jumbo v1, "HmacSHA224"

    #@50
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@53
    .line 67
    const-string/jumbo v0, "HmacSHA256"

    #@56
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA256"

    #@59
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@5c
    .line 68
    const-string/jumbo v0, "Alg.Alias.Mac.1.2.840.113549.2.9"

    #@5f
    const-string/jumbo v1, "HmacSHA256"

    #@62
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 69
    const-string/jumbo v0, "Alg.Alias.Mac.HMAC-SHA256"

    #@68
    const-string/jumbo v1, "HmacSHA256"

    #@6b
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6e
    .line 70
    const-string/jumbo v0, "Alg.Alias.Mac.HMAC/SHA256"

    #@71
    const-string/jumbo v1, "HmacSHA256"

    #@74
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@77
    .line 72
    const-string/jumbo v0, "HmacSHA384"

    #@7a
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA384"

    #@7d
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@80
    .line 73
    const-string/jumbo v0, "Alg.Alias.Mac.1.2.840.113549.2.10"

    #@83
    const-string/jumbo v1, "HmacSHA384"

    #@86
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    .line 74
    const-string/jumbo v0, "Alg.Alias.Mac.HMAC-SHA384"

    #@8c
    const-string/jumbo v1, "HmacSHA384"

    #@8f
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    .line 75
    const-string/jumbo v0, "Alg.Alias.Mac.HMAC/SHA384"

    #@95
    const-string/jumbo v1, "HmacSHA384"

    #@98
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9b
    .line 77
    const-string/jumbo v0, "HmacSHA512"

    #@9e
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreHmacSpi$HmacSHA512"

    #@a1
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putMacImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@a4
    .line 78
    const-string/jumbo v0, "Alg.Alias.Mac.1.2.840.113549.2.11"

    #@a7
    const-string/jumbo v1, "HmacSHA512"

    #@aa
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ad
    .line 79
    const-string/jumbo v0, "Alg.Alias.Mac.HMAC-SHA512"

    #@b0
    const-string/jumbo v1, "HmacSHA512"

    #@b3
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@b6
    .line 80
    const-string/jumbo v0, "Alg.Alias.Mac.HMAC/SHA512"

    #@b9
    const-string/jumbo v1, "HmacSHA512"

    #@bc
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bf
    .line 83
    const-string/jumbo v0, "AES/ECB/NoPadding"

    #@c2
    .line 84
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$NoPadding"

    #@c5
    .line 83
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@c8
    .line 85
    const-string/jumbo v0, "AES/ECB/PKCS7Padding"

    #@cb
    .line 86
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB$PKCS7Padding"

    #@ce
    .line 85
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@d1
    .line 88
    const-string/jumbo v0, "AES/CBC/NoPadding"

    #@d4
    .line 89
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$NoPadding"

    #@d7
    .line 88
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@da
    .line 90
    const-string/jumbo v0, "AES/CBC/PKCS7Padding"

    #@dd
    .line 91
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC$PKCS7Padding"

    #@e0
    .line 90
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@e3
    .line 93
    const-string/jumbo v0, "AES/CTR/NoPadding"

    #@e6
    .line 94
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR$NoPadding"

    #@e9
    .line 93
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@ec
    .line 96
    const-string/jumbo v0, "AES/GCM/NoPadding"

    #@ef
    .line 97
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreAuthenticatedAESCipherSpi$GCM$NoPadding"

    #@f2
    .line 96
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@f5
    .line 99
    const-string/jumbo v0, "RSA/ECB/NoPadding"

    #@f8
    .line 100
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$NoPadding"

    #@fb
    .line 99
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@fe
    .line 101
    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/NoPadding"

    #@101
    const-string/jumbo v1, "RSA/ECB/NoPadding"

    #@104
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@107
    .line 102
    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    #@10a
    .line 103
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$PKCS1Padding"

    #@10d
    .line 102
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@110
    .line 104
    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    #@113
    const-string/jumbo v1, "RSA/ECB/PKCS1Padding"

    #@116
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@119
    .line 105
    const-string/jumbo v0, "RSA/ECB/OAEPPadding"

    #@11c
    .line 106
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding"

    #@11f
    .line 105
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@122
    .line 107
    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    #@125
    const-string/jumbo v1, "RSA/ECB/OAEPPadding"

    #@128
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12b
    .line 108
    const-string/jumbo v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    #@12e
    .line 109
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA1AndMGF1Padding"

    #@131
    .line 108
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@134
    .line 110
    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    #@137
    .line 111
    const-string/jumbo v1, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    #@13a
    .line 110
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@13d
    .line 112
    const-string/jumbo v0, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    #@140
    .line 113
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA224AndMGF1Padding"

    #@143
    .line 112
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@146
    .line 114
    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    #@149
    .line 115
    const-string/jumbo v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    #@14c
    .line 114
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14f
    .line 116
    const-string/jumbo v0, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    #@152
    .line 117
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA256AndMGF1Padding"

    #@155
    .line 116
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@158
    .line 118
    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    #@15b
    .line 119
    const-string/jumbo v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    #@15e
    .line 118
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@161
    .line 120
    const-string/jumbo v0, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    #@164
    .line 121
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA384AndMGF1Padding"

    #@167
    .line 120
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@16a
    .line 122
    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    #@16d
    .line 123
    const-string/jumbo v1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    #@170
    .line 122
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@173
    .line 124
    const-string/jumbo v0, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    #@176
    .line 125
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSACipherSpi$OAEPWithSHA512AndMGF1Padding"

    #@179
    .line 124
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@17c
    .line 126
    const-string/jumbo v0, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    #@17f
    .line 127
    const-string/jumbo v1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    #@182
    .line 126
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@185
    .line 130
    const-string/jumbo v0, "NONEwithRSA"

    #@188
    .line 131
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$NONEWithPKCS1Padding"

    #@18b
    .line 130
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@18e
    .line 133
    const-string/jumbo v0, "MD5withRSA"

    #@191
    .line 134
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$MD5WithPKCS1Padding"

    #@194
    .line 133
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@197
    .line 135
    const-string/jumbo v0, "Alg.Alias.Signature.MD5WithRSAEncryption"

    #@19a
    const-string/jumbo v1, "MD5withRSA"

    #@19d
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a0
    .line 136
    const-string/jumbo v0, "Alg.Alias.Signature.MD5/RSA"

    #@1a3
    const-string/jumbo v1, "MD5withRSA"

    #@1a6
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a9
    .line 137
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    #@1ac
    const-string/jumbo v1, "MD5withRSA"

    #@1af
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b2
    .line 138
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    #@1b5
    const-string/jumbo v1, "MD5withRSA"

    #@1b8
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1bb
    .line 140
    const-string/jumbo v0, "SHA1withRSA"

    #@1be
    .line 141
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA1WithPKCS1Padding"

    #@1c1
    .line 140
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@1c4
    .line 142
    const-string/jumbo v0, "Alg.Alias.Signature.SHA1WithRSAEncryption"

    #@1c7
    const-string/jumbo v1, "SHA1withRSA"

    #@1ca
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1cd
    .line 143
    const-string/jumbo v0, "Alg.Alias.Signature.SHA1/RSA"

    #@1d0
    const-string/jumbo v1, "SHA1withRSA"

    #@1d3
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d6
    .line 144
    const-string/jumbo v0, "Alg.Alias.Signature.SHA-1/RSA"

    #@1d9
    const-string/jumbo v1, "SHA1withRSA"

    #@1dc
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1df
    .line 145
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    #@1e2
    const-string/jumbo v1, "SHA1withRSA"

    #@1e5
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e8
    .line 146
    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    #@1eb
    const-string/jumbo v1, "SHA1withRSA"

    #@1ee
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f1
    .line 147
    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    #@1f4
    const-string/jumbo v1, "SHA1withRSA"

    #@1f7
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fa
    .line 148
    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.29"

    #@1fd
    const-string/jumbo v1, "SHA1withRSA"

    #@200
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@203
    .line 150
    const-string/jumbo v0, "SHA224withRSA"

    #@206
    .line 151
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA224WithPKCS1Padding"

    #@209
    .line 150
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@20c
    .line 152
    const-string/jumbo v0, "Alg.Alias.Signature.SHA224WithRSAEncryption"

    #@20f
    const-string/jumbo v1, "SHA224withRSA"

    #@212
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@215
    .line 153
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    #@218
    const-string/jumbo v1, "SHA224withRSA"

    #@21b
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21e
    .line 154
    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    #@221
    .line 155
    const-string/jumbo v1, "SHA224withRSA"

    #@224
    .line 154
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@227
    .line 156
    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.11"

    #@22a
    .line 157
    const-string/jumbo v1, "SHA224withRSA"

    #@22d
    .line 156
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@230
    .line 159
    const-string/jumbo v0, "SHA256withRSA"

    #@233
    .line 160
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA256WithPKCS1Padding"

    #@236
    .line 159
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@239
    .line 161
    const-string/jumbo v0, "Alg.Alias.Signature.SHA256WithRSAEncryption"

    #@23c
    const-string/jumbo v1, "SHA256withRSA"

    #@23f
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@242
    .line 162
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    #@245
    const-string/jumbo v1, "SHA256withRSA"

    #@248
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24b
    .line 163
    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    #@24e
    .line 164
    const-string/jumbo v1, "SHA256withRSA"

    #@251
    .line 163
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@254
    .line 165
    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    #@257
    .line 166
    const-string/jumbo v1, "SHA256withRSA"

    #@25a
    .line 165
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25d
    .line 168
    const-string/jumbo v0, "SHA384withRSA"

    #@260
    .line 169
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA384WithPKCS1Padding"

    #@263
    .line 168
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@266
    .line 170
    const-string/jumbo v0, "Alg.Alias.Signature.SHA384WithRSAEncryption"

    #@269
    const-string/jumbo v1, "SHA384withRSA"

    #@26c
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26f
    .line 171
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    #@272
    const-string/jumbo v1, "SHA384withRSA"

    #@275
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@278
    .line 172
    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    #@27b
    .line 173
    const-string/jumbo v1, "SHA384withRSA"

    #@27e
    .line 172
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@281
    .line 175
    const-string/jumbo v0, "SHA512withRSA"

    #@284
    .line 176
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA512WithPKCS1Padding"

    #@287
    .line 175
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@28a
    .line 177
    const-string/jumbo v0, "Alg.Alias.Signature.SHA512WithRSAEncryption"

    #@28d
    const-string/jumbo v1, "SHA512withRSA"

    #@290
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@293
    .line 178
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    #@296
    const-string/jumbo v1, "SHA512withRSA"

    #@299
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29c
    .line 179
    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    #@29f
    .line 180
    const-string/jumbo v1, "SHA512withRSA"

    #@2a2
    .line 179
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a5
    .line 182
    const-string/jumbo v0, "SHA1withRSA/PSS"

    #@2a8
    .line 183
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA1WithPSSPadding"

    #@2ab
    .line 182
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@2ae
    .line 184
    const-string/jumbo v0, "SHA224withRSA/PSS"

    #@2b1
    .line 185
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA224WithPSSPadding"

    #@2b4
    .line 184
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@2b7
    .line 186
    const-string/jumbo v0, "SHA256withRSA/PSS"

    #@2ba
    .line 187
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA256WithPSSPadding"

    #@2bd
    .line 186
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@2c0
    .line 188
    const-string/jumbo v0, "SHA384withRSA/PSS"

    #@2c3
    .line 189
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA384WithPSSPadding"

    #@2c6
    .line 188
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@2c9
    .line 190
    const-string/jumbo v0, "SHA512withRSA/PSS"

    #@2cc
    .line 191
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreRSASignatureSpi$SHA512WithPSSPadding"

    #@2cf
    .line 190
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@2d2
    .line 193
    const-string/jumbo v0, "NONEwithECDSA"

    #@2d5
    .line 194
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$NONE"

    #@2d8
    .line 193
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@2db
    .line 196
    const-string/jumbo v0, "ECDSA"

    #@2de
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA1"

    #@2e1
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@2e4
    .line 197
    const-string/jumbo v0, "Alg.Alias.Signature.SHA1withECDSA"

    #@2e7
    const-string/jumbo v1, "ECDSA"

    #@2ea
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ed
    .line 198
    const-string/jumbo v0, "Alg.Alias.Signature.ECDSAwithSHA1"

    #@2f0
    const-string/jumbo v1, "ECDSA"

    #@2f3
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2f6
    .line 200
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.1"

    #@2f9
    const-string/jumbo v1, "ECDSA"

    #@2fc
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2ff
    .line 201
    const-string/jumbo v0, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    #@302
    const-string/jumbo v1, "ECDSA"

    #@305
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@308
    .line 204
    const-string/jumbo v0, "SHA224withECDSA"

    #@30b
    .line 205
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA224"

    #@30e
    .line 204
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@311
    .line 207
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    #@314
    const-string/jumbo v1, "SHA224withECDSA"

    #@317
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31a
    .line 208
    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    #@31d
    const-string/jumbo v1, "SHA224withECDSA"

    #@320
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@323
    .line 211
    const-string/jumbo v0, "SHA256withECDSA"

    #@326
    .line 212
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA256"

    #@329
    .line 211
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@32c
    .line 214
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    #@32f
    const-string/jumbo v1, "SHA256withECDSA"

    #@332
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@335
    .line 215
    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    #@338
    const-string/jumbo v1, "SHA256withECDSA"

    #@33b
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33e
    .line 217
    const-string/jumbo v0, "SHA384withECDSA"

    #@341
    .line 218
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA384"

    #@344
    .line 217
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@347
    .line 220
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    #@34a
    const-string/jumbo v1, "SHA384withECDSA"

    #@34d
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@350
    .line 221
    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    #@353
    const-string/jumbo v1, "SHA384withECDSA"

    #@356
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@359
    .line 223
    const-string/jumbo v0, "SHA512withECDSA"

    #@35c
    .line 224
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreECDSASignatureSpi$SHA512"

    #@35f
    .line 223
    invoke-direct {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V

    #@362
    .line 226
    const-string/jumbo v0, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    #@365
    const-string/jumbo v1, "SHA512withECDSA"

    #@368
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@36b
    .line 227
    const-string/jumbo v0, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    #@36e
    const-string/jumbo v1, "SHA512withECDSA"

    #@371
    invoke-virtual {p0, v0, v1}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@374
    .line 51
    return-void
.end method

.method public static getSupportedEcdsaSignatureDigests()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 253
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "NONE"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "SHA-1"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "SHA-224"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "SHA-256"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "SHA-384"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    const-string/jumbo v1, "SHA-512"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    return-object v0
.end method

.method public static getSupportedRsaSignatureWithPkcs1PaddingDigests()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 257
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "NONE"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "MD5"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "SHA-1"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "SHA-224"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "SHA-256"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    const-string/jumbo v1, "SHA-384"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    const-string/jumbo v1, "SHA-512"

    #@2a
    const/4 v2, 0x6

    #@2b
    aput-object v1, v0, v2

    #@2d
    return-object v0
.end method

.method private putAsymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "implClass"    # Ljava/lang/String;

    #@0
    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Cipher."

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v1, "Cipher."

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string/jumbo v1, " SupportedKeyClasses"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 243
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStorePrivateKey|android.security.keystore.AndroidKeyStorePublicKey"

    #@35
    .line 242
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 240
    return-void
.end method

.method private putMacImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "implClass"    # Ljava/lang/String;

    #@0
    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Mac."

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v1, "Mac."

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string/jumbo v1, " SupportedKeyClasses"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreSecretKey"

    #@35
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 230
    return-void
.end method

.method private putSignatureImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "implClass"    # Ljava/lang/String;

    #@0
    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Signature."

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v1, "Signature."

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string/jumbo v1, " SupportedKeyClasses"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    .line 249
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStorePrivateKey|android.security.keystore.AndroidKeyStorePublicKey"

    #@35
    .line 248
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 246
    return-void
.end method

.method private putSymmetricCipherImpl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "implClass"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Cipher."

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {p0, v0, p2}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v1, "Cipher."

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string/jumbo v1, " SupportedKeyClasses"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreSecretKey"

    #@35
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 235
    return-void
.end method
