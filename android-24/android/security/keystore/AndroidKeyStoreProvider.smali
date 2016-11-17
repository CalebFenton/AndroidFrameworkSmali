.class public Landroid/security/keystore/AndroidKeyStoreProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreProvider.java"


# static fields
.field private static final PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "AndroidKeyStore"


# direct methods
.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 68
    const-string/jumbo v0, "AndroidKeyStore"

    #@3
    const-string/jumbo v1, "Android KeyStore security provider"

    #@6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@8
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@b
    .line 71
    const-string/jumbo v0, "KeyStore.AndroidKeyStore"

    #@e
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreSpi"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 74
    const-string/jumbo v0, "KeyPairGenerator.EC"

    #@17
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$EC"

    #@1a
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 75
    const-string/jumbo v0, "KeyPairGenerator.RSA"

    #@20
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$RSA"

    #@23
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 78
    const-string/jumbo v0, "EC"

    #@29
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    #@2c
    .line 79
    const-string/jumbo v0, "RSA"

    #@2f
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    #@32
    .line 82
    const-string/jumbo v0, "KeyGenerator.AES"

    #@35
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$AES"

    #@38
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 83
    const-string/jumbo v0, "KeyGenerator.HmacSHA1"

    #@3e
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA1"

    #@41
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 84
    const-string/jumbo v0, "KeyGenerator.HmacSHA224"

    #@47
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA224"

    #@4a
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    .line 85
    const-string/jumbo v0, "KeyGenerator.HmacSHA256"

    #@50
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA256"

    #@53
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 86
    const-string/jumbo v0, "KeyGenerator.HmacSHA384"

    #@59
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA384"

    #@5c
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 87
    const-string/jumbo v0, "KeyGenerator.HmacSHA512"

    #@62
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA512"

    #@65
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    .line 90
    const-string/jumbo v0, "AES"

    #@6b
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@6e
    .line 91
    const-string/jumbo v0, "HmacSHA1"

    #@71
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@74
    .line 92
    const-string/jumbo v0, "HmacSHA224"

    #@77
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@7a
    .line 93
    const-string/jumbo v0, "HmacSHA256"

    #@7d
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@80
    .line 94
    const-string/jumbo v0, "HmacSHA384"

    #@83
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@86
    .line 95
    const-string/jumbo v0, "HmacSHA512"

    #@89
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@8c
    .line 67
    return-void
.end method

.method public static getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 5
    .param p0, "publicKey"    # Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@0
    .prologue
    .line 201
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 202
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v1, "EC"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 203
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;

    #@f
    .line 204
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getUid()I

    #@16
    move-result v3

    #@17
    check-cast p0, Ljava/security/interfaces/ECKey;

    #@19
    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@1c
    move-result-object v4

    #@1d
    .line 203
    invoke-direct {v1, v2, v3, v4}, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;-><init>(Ljava/lang/String;ILjava/security/spec/ECParameterSpec;)V

    #@20
    return-object v1

    #@21
    .line 205
    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_0
    const-string/jumbo v1, "RSA"

    #@24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 206
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;

    #@2c
    .line 207
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getUid()I

    #@33
    move-result v3

    #@34
    check-cast p0, Ljava/security/interfaces/RSAKey;

    #@36
    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    #@39
    move-result-object v4

    #@3a
    .line 206
    invoke-direct {v1, v2, v3, v4}, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;-><init>(Ljava/lang/String;ILjava/math/BigInteger;)V

    #@3d
    return-object v1

    #@3e
    .line 209
    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_1
    new-instance v1, Ljava/security/ProviderException;

    #@40
    new-instance v2, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v3, "Unsupported Android Keystore public key algorithm: "

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1
.end method

.method public static getAndroidKeyStorePublicKey(Ljava/lang/String;ILjava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 7
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "keyAlgorithm"    # Ljava/lang/String;
    .param p3, "x509EncodedForm"    # [B

    #@0
    .prologue
    .line 180
    :try_start_0
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@3
    move-result-object v2

    #@4
    .line 181
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    #@6
    invoke-direct {v4, p3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@9
    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v3

    #@d
    .line 188
    .local v3, "publicKey":Ljava/security/PublicKey;
    const-string/jumbo v4, "EC"

    #@10
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 189
    new-instance v4, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    #@18
    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    #@1a
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v4, p0, p1, v3}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/ECPublicKey;)V

    #@1d
    return-object v4

    #@1e
    .line 185
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    #@1f
    .line 186
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/security/ProviderException;

    #@21
    const-string/jumbo v5, "Invalid X.509 encoding of public key"

    #@24
    invoke-direct {v4, v5, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    throw v4

    #@28
    .line 182
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v0

    #@29
    .line 183
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/ProviderException;

    #@2b
    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "Failed to obtain "

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    const-string/jumbo v6, " KeyFactory"

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    .line 183
    invoke-direct {v4, v5, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@49
    throw v4

    #@4a
    .line 190
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v3    # "publicKey":Ljava/security/PublicKey;
    :cond_0
    const-string/jumbo v4, "RSA"

    #@4d
    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_1

    #@53
    .line 191
    new-instance v4, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    #@55
    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    #@57
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v4, p0, p1, v3}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;ILjava/security/interfaces/RSAPublicKey;)V

    #@5a
    return-object v4

    #@5b
    .line 193
    .restart local v3    # "publicKey":Ljava/security/PublicKey;
    :cond_1
    new-instance v4, Ljava/security/ProviderException;

    #@5d
    new-instance v5, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v6, "Unsupported Android Keystore public key algorithm: "

    #@65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v5

    #@69
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v5

    #@6d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@74
    throw v4
.end method

.method public static getKeyStoreForUid(I)Ljava/security/KeyStore;
    .locals 5
    .param p0, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    #@0
    .prologue
    .line 326
    const-string/jumbo v2, "AndroidKeyStore"

    #@3
    const-string/jumbo v3, "AndroidKeyStore"

    #@6
    invoke-static {v2, v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    #@9
    move-result-object v1

    #@a
    .line 328
    .local v1, "result":Ljava/security/KeyStore;
    :try_start_0
    new-instance v2, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    #@c
    invoke-direct {v2, p0}, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    #@f
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 333
    return-object v1

    #@13
    .line 329
    :catch_0
    move-exception v0

    #@14
    .line 330
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    #@16
    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "Failed to load AndroidKeyStore KeyStore for UID "

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 330
    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v2
.end method

.method public static getKeyStoreOperationHandle(Ljava/lang/Object;)J
    .locals 4
    .param p0, "cryptoPrimitive"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 148
    if-nez p0, :cond_0

    #@2
    .line 149
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 152
    :cond_0
    instance-of v1, p0, Ljava/security/Signature;

    #@a
    if-eqz v1, :cond_1

    #@c
    move-object v1, p0

    #@d
    .line 153
    check-cast v1, Ljava/security/Signature;

    #@f
    invoke-virtual {v1}, Ljava/security/Signature;->getCurrentSpi()Ljava/security/SignatureSpi;

    #@12
    move-result-object v0

    #@13
    .line 162
    .local v0, "spi":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_4

    #@15
    .line 163
    new-instance v1, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v2, "Crypto primitive not initialized"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 154
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljavax/crypto/Mac;

    #@20
    if-eqz v1, :cond_2

    #@22
    move-object v1, p0

    #@23
    .line 155
    check-cast v1, Ljavax/crypto/Mac;

    #@25
    invoke-virtual {v1}, Ljavax/crypto/Mac;->getCurrentSpi()Ljavax/crypto/MacSpi;

    #@28
    move-result-object v0

    #@29
    .restart local v0    # "spi":Ljava/lang/Object;
    goto :goto_0

    #@2a
    .line 156
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Ljavax/crypto/Cipher;

    #@2c
    if-eqz v1, :cond_3

    #@2e
    move-object v1, p0

    #@2f
    .line 157
    check-cast v1, Ljavax/crypto/Cipher;

    #@31
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getCurrentSpi()Ljavax/crypto/CipherSpi;

    #@34
    move-result-object v0

    #@35
    .restart local v0    # "spi":Ljava/lang/Object;
    goto :goto_0

    #@36
    .line 159
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@38
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "Unsupported crypto primitive: "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    .line 160
    const-string/jumbo v3, ". Supported: Signature, Mac, Cipher"

    #@4b
    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v2

    #@53
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1

    #@57
    .line 164
    .restart local v0    # "spi":Ljava/lang/Object;
    :cond_4
    instance-of v1, v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    #@59
    if-nez v1, :cond_5

    #@5b
    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5d
    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v3, "Crypto primitive not backed by AndroidKeyStore provider: "

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    .line 167
    const-string/jumbo v3, ", spi: "

    #@70
    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v2

    #@78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v2

    #@7c
    .line 165
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v1

    #@80
    .line 169
    :cond_5
    check-cast v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    #@82
    .end local v0    # "spi":Ljava/lang/Object;
    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperation;->getOperationHandle()J

    #@85
    move-result-wide v2

    #@86
    return-wide v2
.end method

.method public static install()V
    .locals 7

    #@0
    .prologue
    .line 103
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@3
    move-result-object v3

    #@4
    .line 104
    .local v3, "providers":[Ljava/security/Provider;
    const/4 v0, -0x1

    #@5
    .line 105
    .local v0, "bcProviderIndex":I
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    array-length v5, v3

    #@7
    if-ge v1, v5, :cond_0

    #@9
    .line 106
    aget-object v2, v3, v1

    #@b
    .line 107
    .local v2, "provider":Ljava/security/Provider;
    const-string/jumbo v5, "BC"

    #@e
    invoke-virtual {v2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v5

    #@16
    if-eqz v5, :cond_1

    #@18
    .line 108
    move v0, v1

    #@19
    .line 113
    .end local v2    # "provider":Ljava/security/Provider;
    :cond_0
    new-instance v5, Landroid/security/keystore/AndroidKeyStoreProvider;

    #@1b
    invoke-direct {v5}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    #@1e
    invoke-static {v5}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    #@21
    .line 114
    new-instance v4, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;

    #@23
    invoke-direct {v4}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;-><init>()V

    #@26
    .line 115
    .local v4, "workaroundProvider":Ljava/security/Provider;
    const/4 v5, -0x1

    #@27
    if-eq v0, v5, :cond_2

    #@29
    .line 118
    add-int/lit8 v5, v0, 0x1

    #@2b
    invoke-static {v4, v5}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    #@2e
    .line 102
    :goto_1
    return-void

    #@2f
    .line 105
    .end local v4    # "workaroundProvider":Ljava/security/Provider;
    .restart local v2    # "provider":Ljava/security/Provider;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 122
    .end local v2    # "provider":Ljava/security/Provider;
    .restart local v4    # "workaroundProvider":Ljava/security/Provider;
    :cond_2
    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    #@35
    goto :goto_1
.end method

.method public static loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Ljava/security/KeyPair;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 259
    invoke-static {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@3
    move-result-object v1

    #@4
    .line 261
    .local v1, "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-static {v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@7
    move-result-object v0

    #@8
    .line 262
    .local v0, "privateKey":Landroid/security/keystore/AndroidKeyStorePrivateKey;
    new-instance v2, Ljava/security/KeyPair;

    #@a
    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    #@d
    return-object v2
.end method

.method public static loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 2
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    invoke-static {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Ljava/security/KeyPair;

    #@3
    move-result-object v0

    #@4
    .line 270
    .local v0, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@a
    return-object v1
.end method

.method public static loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 22
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    new-instance v9, Landroid/security/keymaster/KeyCharacteristics;

    #@2
    invoke-direct {v9}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@5
    .line 220
    .local v9, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v6, 0x0

    #@6
    const/4 v7, 0x0

    #@7
    move-object/from16 v4, p0

    #@9
    move-object/from16 v5, p1

    #@b
    move/from16 v8, p2

    #@d
    .line 219
    invoke-virtual/range {v4 .. v9}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    #@10
    move-result v17

    #@11
    .line 221
    .local v17, "errorCode":I
    const/4 v4, 0x1

    #@12
    move/from16 v0, v17

    #@14
    if-eq v0, v4, :cond_0

    #@16
    .line 223
    new-instance v4, Ljava/security/UnrecoverableKeyException;

    #@18
    const-string/jumbo v5, "Failed to obtain information about private key"

    #@1b
    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@1e
    .line 224
    invoke-static/range {v17 .. v17}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@21
    move-result-object v5

    #@22
    .line 223
    invoke-virtual {v4, v5}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@25
    move-result-object v4

    #@26
    .line 222
    check-cast v4, Ljava/security/UnrecoverableKeyException;

    #@28
    throw v4

    #@29
    .line 227
    :cond_0
    const/4 v12, 0x0

    #@2a
    const/4 v13, 0x0

    #@2b
    const/4 v14, 0x0

    #@2c
    move-object/from16 v10, p0

    #@2e
    move-object/from16 v11, p1

    #@30
    move/from16 v15, p2

    #@32
    .line 226
    invoke-virtual/range {v10 .. v15}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    #@35
    move-result-object v18

    #@36
    .line 228
    .local v18, "exportResult":Landroid/security/keymaster/ExportResult;
    move-object/from16 v0, v18

    #@38
    iget v4, v0, Landroid/security/keymaster/ExportResult;->resultCode:I

    #@3a
    const/4 v5, 0x1

    #@3b
    if-eq v4, v5, :cond_1

    #@3d
    .line 230
    new-instance v4, Ljava/security/UnrecoverableKeyException;

    #@3f
    const-string/jumbo v5, "Failed to obtain X.509 form of public key"

    #@42
    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@45
    .line 231
    invoke-static/range {v17 .. v17}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@48
    move-result-object v5

    #@49
    .line 230
    invoke-virtual {v4, v5}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@4c
    move-result-object v4

    #@4d
    .line 229
    check-cast v4, Ljava/security/UnrecoverableKeyException;

    #@4f
    throw v4

    #@50
    .line 233
    :cond_1
    move-object/from16 v0, v18

    #@52
    iget-object v0, v0, Landroid/security/keymaster/ExportResult;->exportData:[B

    #@54
    move-object/from16 v21, v0

    #@56
    .line 235
    .local v21, "x509EncodedPublicKey":[B
    const v4, 0x10000002

    #@59
    invoke-virtual {v9, v4}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    #@5c
    move-result-object v20

    #@5d
    .line 236
    .local v20, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v20, :cond_2

    #@5f
    .line 237
    new-instance v4, Ljava/security/UnrecoverableKeyException;

    #@61
    const-string/jumbo v5, "Key algorithm unknown"

    #@64
    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@67
    throw v4

    #@68
    .line 243
    :cond_2
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    #@6b
    move-result v4

    #@6c
    .line 242
    invoke-static {v4}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@6f
    move-result-object v19

    #@70
    .line 250
    .local v19, "jcaKeyAlgorithm":Ljava/lang/String;
    move-object/from16 v0, p1

    #@72
    move/from16 v1, p2

    #@74
    move-object/from16 v2, v19

    #@76
    move-object/from16 v3, v21

    #@78
    invoke-static {v0, v1, v2, v3}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;ILjava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@7b
    move-result-object v4

    #@7c
    return-object v4

    #@7d
    .line 244
    .end local v19    # "jcaKeyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v16

    #@7e
    .line 246
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/security/UnrecoverableKeyException;

    #@80
    const-string/jumbo v5, "Failed to load private key"

    #@83
    invoke-direct {v4, v5}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@86
    move-object/from16 v0, v16

    #@88
    invoke-virtual {v4, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@8b
    move-result-object v4

    #@8c
    .line 245
    check-cast v4, Ljava/security/UnrecoverableKeyException;

    #@8e
    throw v4
.end method

.method public static loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreSecretKey;
    .locals 12
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "secretKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 277
    new-instance v5, Landroid/security/keymaster/KeyCharacteristics;

    #@3
    invoke-direct {v5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@6
    .local v5, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    move-object v3, v2

    #@9
    move v4, p2

    #@a
    .line 278
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    #@d
    move-result v7

    #@e
    .line 280
    .local v7, "errorCode":I
    const/4 v0, 0x1

    #@f
    if-eq v7, v0, :cond_0

    #@11
    .line 282
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    #@13
    const-string/jumbo v1, "Failed to obtain information about key"

    #@16
    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@19
    .line 283
    invoke-static {v7}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@1c
    move-result-object v1

    #@1d
    .line 282
    invoke-virtual {v0, v1}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@20
    move-result-object v0

    #@21
    .line 281
    check-cast v0, Ljava/security/UnrecoverableKeyException;

    #@23
    throw v0

    #@24
    .line 286
    :cond_0
    const v0, 0x10000002

    #@27
    invoke-virtual {v5, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    #@2a
    move-result-object v9

    #@2b
    .line 287
    .local v9, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v9, :cond_1

    #@2d
    .line 288
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    #@2f
    const-string/jumbo v1, "Key algorithm unknown"

    #@32
    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 291
    :cond_1
    const v0, 0x20000005

    #@39
    invoke-virtual {v5, v0}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    #@3c
    move-result-object v11

    #@3d
    .line 293
    .local v11, "keymasterDigests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_2

    #@43
    .line 294
    const/4 v10, -0x1

    #@44
    .line 304
    .local v10, "keymasterDigest":I
    :goto_0
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    #@47
    move-result v0

    #@48
    .line 303
    invoke-static {v0, v10}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    move-result-object v8

    #@4c
    .line 310
    .local v8, "keyAlgorithmString":Ljava/lang/String;
    new-instance v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@4e
    invoke-direct {v0, p1, p2, v8}, Landroid/security/keystore/AndroidKeyStoreSecretKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@51
    return-object v0

    #@52
    .line 298
    .end local v8    # "keyAlgorithmString":Ljava/lang/String;
    .end local v10    # "keymasterDigest":I
    :cond_2
    const/4 v0, 0x0

    #@53
    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v0

    #@57
    check-cast v0, Ljava/lang/Integer;

    #@59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@5c
    move-result v10

    #@5d
    .restart local v10    # "keymasterDigest":I
    goto :goto_0

    #@5e
    .line 305
    :catch_0
    move-exception v6

    #@5f
    .line 307
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    #@61
    const-string/jumbo v1, "Unsupported secret key type"

    #@64
    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@67
    invoke-virtual {v0, v6}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@6a
    move-result-object v0

    #@6b
    .line 306
    check-cast v0, Ljava/security/UnrecoverableKeyException;

    #@6d
    throw v0
.end method

.method private putKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "KeyFactory."

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
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyFactorySpi"

    #@17
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 130
    return-void
.end method

.method private putSecretKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "SecretKeyFactory."

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
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreSecretKeyFactorySpi"

    #@17
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 126
    return-void
.end method
