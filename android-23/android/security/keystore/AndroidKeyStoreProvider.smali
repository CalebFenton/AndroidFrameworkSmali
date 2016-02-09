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
    .line 64
    const-string/jumbo v0, "AndroidKeyStore"

    #@3
    const-string/jumbo v1, "Android KeyStore security provider"

    #@6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@8
    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    #@b
    .line 67
    const-string/jumbo v0, "KeyStore.AndroidKeyStore"

    #@e
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreSpi"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    .line 70
    const-string/jumbo v0, "KeyPairGenerator.EC"

    #@17
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$EC"

    #@1a
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 71
    const-string/jumbo v0, "KeyPairGenerator.RSA"

    #@20
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyPairGeneratorSpi$RSA"

    #@23
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 74
    const-string/jumbo v0, "EC"

    #@29
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    #@2c
    .line 75
    const-string/jumbo v0, "RSA"

    #@2f
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    #@32
    .line 78
    const-string/jumbo v0, "KeyGenerator.AES"

    #@35
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$AES"

    #@38
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3b
    .line 79
    const-string/jumbo v0, "KeyGenerator.HmacSHA1"

    #@3e
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA1"

    #@41
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    .line 80
    const-string/jumbo v0, "KeyGenerator.HmacSHA224"

    #@47
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA224"

    #@4a
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    .line 81
    const-string/jumbo v0, "KeyGenerator.HmacSHA256"

    #@50
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA256"

    #@53
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@56
    .line 82
    const-string/jumbo v0, "KeyGenerator.HmacSHA384"

    #@59
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA384"

    #@5c
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5f
    .line 83
    const-string/jumbo v0, "KeyGenerator.HmacSHA512"

    #@62
    const-string/jumbo v1, "android.security.keystore.AndroidKeyStoreKeyGeneratorSpi$HmacSHA512"

    #@65
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@68
    .line 86
    const-string/jumbo v0, "AES"

    #@6b
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@6e
    .line 87
    const-string/jumbo v0, "HmacSHA1"

    #@71
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@74
    .line 88
    const-string/jumbo v0, "HmacSHA224"

    #@77
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@7a
    .line 89
    const-string/jumbo v0, "HmacSHA256"

    #@7d
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@80
    .line 90
    const-string/jumbo v0, "HmacSHA384"

    #@83
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@86
    .line 91
    const-string/jumbo v0, "HmacSHA512"

    #@89
    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    #@8c
    .line 63
    return-void
.end method

.method public static getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 4
    .param p0, "publicKey"    # Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@0
    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 196
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string/jumbo v1, "EC"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 197
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;

    #@f
    .line 198
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    check-cast p0, Ljava/security/interfaces/ECKey;

    #@15
    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    #@18
    move-result-object v3

    #@19
    .line 197
    invoke-direct {v1, v2, v3}, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;-><init>(Ljava/lang/String;Ljava/security/spec/ECParameterSpec;)V

    #@1c
    return-object v1

    #@1d
    .line 199
    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_0
    const-string/jumbo v1, "RSA"

    #@20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@23
    move-result v1

    #@24
    if-eqz v1, :cond_1

    #@26
    .line 200
    new-instance v1, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;

    #@28
    .line 201
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStorePublicKey;->getAlias()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    check-cast p0, Ljava/security/interfaces/RSAKey;

    #@2e
    .end local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-interface {p0}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    #@31
    move-result-object v3

    #@32
    .line 200
    invoke-direct {v1, v2, v3}, Landroid/security/keystore/AndroidKeyStoreRSAPrivateKey;-><init>(Ljava/lang/String;Ljava/math/BigInteger;)V

    #@35
    return-object v1

    #@36
    .line 203
    .restart local p0    # "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    :cond_1
    new-instance v1, Ljava/security/ProviderException;

    #@38
    new-instance v2, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v3, "Unsupported Android Keystore public key algorithm: "

    #@40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v1
.end method

.method public static getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 7
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "keyAlgorithm"    # Ljava/lang/String;
    .param p2, "x509EncodedForm"    # [B

    #@0
    .prologue
    .line 174
    :try_start_0
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@3
    move-result-object v2

    #@4
    .line 175
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    #@6
    invoke-direct {v4, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@9
    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v3

    #@d
    .line 182
    .local v3, "publicKey":Ljava/security/PublicKey;
    const-string/jumbo v4, "EC"

    #@10
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    .line 183
    new-instance v4, Landroid/security/keystore/AndroidKeyStoreECPublicKey;

    #@18
    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    #@1a
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v4, p0, v3}, Landroid/security/keystore/AndroidKeyStoreECPublicKey;-><init>(Ljava/lang/String;Ljava/security/interfaces/ECPublicKey;)V

    #@1d
    return-object v4

    #@1e
    .line 179
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    #@1f
    .line 180
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/security/ProviderException;

    #@21
    const-string/jumbo v5, "Invalid X.509 encoding of public key"

    #@24
    invoke-direct {v4, v5, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    throw v4

    #@28
    .line 176
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_1
    move-exception v0

    #@29
    .line 177
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/security/ProviderException;

    #@2b
    .line 178
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
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 177
    invoke-direct {v4, v5, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@49
    throw v4

    #@4a
    .line 184
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "keyFactory":Ljava/security/KeyFactory;
    .restart local v3    # "publicKey":Ljava/security/PublicKey;
    :cond_0
    const-string/jumbo v4, "RSA"

    #@4d
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_1

    #@53
    .line 185
    new-instance v4, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;

    #@55
    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    #@57
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    invoke-direct {v4, p0, v3}, Landroid/security/keystore/AndroidKeyStoreRSAPublicKey;-><init>(Ljava/lang/String;Ljava/security/interfaces/RSAPublicKey;)V

    #@5a
    return-object v4

    #@5b
    .line 187
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
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

.method public static getKeyStoreOperationHandle(Ljava/lang/Object;)J
    .locals 4
    .param p0, "cryptoPrimitive"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 143
    if-nez p0, :cond_0

    #@2
    .line 144
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 147
    :cond_0
    instance-of v1, p0, Ljava/security/Signature;

    #@a
    if-eqz v1, :cond_1

    #@c
    move-object v1, p0

    #@d
    .line 148
    check-cast v1, Ljava/security/Signature;

    #@f
    invoke-virtual {v1}, Ljava/security/Signature;->getCurrentSpi()Ljava/security/SignatureSpi;

    #@12
    move-result-object v0

    #@13
    .line 157
    .local v0, "spi":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_4

    #@15
    .line 158
    new-instance v1, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v2, "Crypto primitive not initialized"

    #@1a
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v1

    #@1e
    .line 149
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_1
    instance-of v1, p0, Ljavax/crypto/Mac;

    #@20
    if-eqz v1, :cond_2

    #@22
    move-object v1, p0

    #@23
    .line 150
    check-cast v1, Ljavax/crypto/Mac;

    #@25
    invoke-virtual {v1}, Ljavax/crypto/Mac;->getCurrentSpi()Ljavax/crypto/MacSpi;

    #@28
    move-result-object v0

    #@29
    .restart local v0    # "spi":Ljava/lang/Object;
    goto :goto_0

    #@2a
    .line 151
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_2
    instance-of v1, p0, Ljavax/crypto/Cipher;

    #@2c
    if-eqz v1, :cond_3

    #@2e
    move-object v1, p0

    #@2f
    .line 152
    check-cast v1, Ljavax/crypto/Cipher;

    #@31
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getCurrentSpi()Ljavax/crypto/CipherSpi;

    #@34
    move-result-object v0

    #@35
    .restart local v0    # "spi":Ljava/lang/Object;
    goto :goto_0

    #@36
    .line 154
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
    .line 155
    const-string/jumbo v3, ". Supported: Signature, Mac, Cipher"

    #@4b
    .line 154
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
    .line 159
    .restart local v0    # "spi":Ljava/lang/Object;
    :cond_4
    instance-of v1, v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    #@59
    if-nez v1, :cond_5

    #@5b
    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@5d
    .line 161
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
    .line 162
    const-string/jumbo v3, ", spi: "

    #@70
    .line 161
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
    .line 160
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v1

    #@80
    .line 164
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
    .line 99
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    #@3
    move-result-object v3

    #@4
    .line 100
    .local v3, "providers":[Ljava/security/Provider;
    const/4 v0, -0x1

    #@5
    .line 101
    .local v0, "bcProviderPosition":I
    const/4 v1, 0x0

    #@6
    .local v1, "position":I
    :goto_0
    array-length v5, v3

    #@7
    if-ge v1, v5, :cond_0

    #@9
    .line 102
    aget-object v2, v3, v1

    #@b
    .line 103
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
    .line 104
    move v0, v1

    #@19
    .line 109
    .end local v2    # "provider":Ljava/security/Provider;
    :cond_0
    new-instance v5, Landroid/security/keystore/AndroidKeyStoreProvider;

    #@1b
    invoke-direct {v5}, Landroid/security/keystore/AndroidKeyStoreProvider;-><init>()V

    #@1e
    invoke-static {v5}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    #@21
    .line 110
    new-instance v4, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;

    #@23
    invoke-direct {v4}, Landroid/security/keystore/AndroidKeyStoreBCWorkaroundProvider;-><init>()V

    #@26
    .line 111
    .local v4, "workaroundProvider":Ljava/security/Provider;
    const/4 v5, -0x1

    #@27
    if-eq v0, v5, :cond_2

    #@29
    .line 113
    invoke-static {v4, v0}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    #@2c
    .line 98
    :goto_1
    return-void

    #@2d
    .line 101
    .end local v4    # "workaroundProvider":Ljava/security/Provider;
    .restart local v2    # "provider":Ljava/security/Provider;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 117
    .end local v2    # "provider":Ljava/security/Provider;
    .restart local v4    # "workaroundProvider":Ljava/security/Provider;
    :cond_2
    invoke-static {v4}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    #@33
    goto :goto_1
.end method

.method public static loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 3
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    invoke-static {p0, p1}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@3
    move-result-object v1

    #@4
    .line 255
    .local v1, "publicKey":Landroid/security/keystore/AndroidKeyStorePublicKey;
    invoke-static {v1}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePrivateKey(Landroid/security/keystore/AndroidKeyStorePublicKey;)Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@7
    move-result-object v0

    #@8
    .line 256
    .local v0, "privateKey":Landroid/security/keystore/AndroidKeyStorePrivateKey;
    new-instance v2, Ljava/security/KeyPair;

    #@a
    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    #@d
    return-object v2
.end method

.method public static loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePrivateKey;
    .locals 2
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 263
    invoke-static {p0, p1}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;

    #@3
    move-result-object v0

    #@4
    .line 264
    .local v0, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@a
    return-object v1
.end method

.method public static loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStorePublicKey;
    .locals 10
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 212
    new-instance v4, Landroid/security/keymaster/KeyCharacteristics;

    #@4
    invoke-direct {v4}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@7
    .line 213
    .local v4, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, p1, v8, v8, v4}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    #@a
    move-result v1

    #@b
    .line 215
    .local v1, "errorCode":I
    if-eq v1, v9, :cond_0

    #@d
    .line 217
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    #@f
    const-string/jumbo v8, "Failed to obtain information about private key"

    #@12
    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@15
    .line 218
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@18
    move-result-object v8

    #@19
    .line 217
    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1c
    move-result-object v7

    #@1d
    .line 216
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    #@1f
    throw v7

    #@20
    .line 221
    :cond_0
    const/4 v7, 0x0

    #@21
    .line 220
    invoke-virtual {p0, p1, v7, v8, v8}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;

    #@24
    move-result-object v2

    #@25
    .line 222
    .local v2, "exportResult":Landroid/security/keymaster/ExportResult;
    iget v7, v2, Landroid/security/keymaster/ExportResult;->resultCode:I

    #@27
    if-eq v7, v9, :cond_1

    #@29
    .line 224
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    #@2b
    const-string/jumbo v8, "Failed to obtain X.509 form of public key"

    #@2e
    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@31
    .line 225
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@34
    move-result-object v8

    #@35
    .line 224
    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@38
    move-result-object v7

    #@39
    .line 223
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    #@3b
    throw v7

    #@3c
    .line 227
    :cond_1
    iget-object v6, v2, Landroid/security/keymaster/ExportResult;->exportData:[B

    #@3e
    .line 229
    .local v6, "x509EncodedPublicKey":[B
    const v7, 0x10000002

    #@41
    invoke-virtual {v4, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    #@44
    move-result-object v5

    #@45
    .line 230
    .local v5, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v5, :cond_2

    #@47
    .line 231
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    #@49
    const-string/jumbo v8, "Key algorithm unknown"

    #@4c
    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v7

    #@50
    .line 237
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@53
    move-result v7

    #@54
    .line 236
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    move-result-object v3

    #@58
    .line 244
    .local v3, "jcaKeyAlgorithm":Ljava/lang/String;
    invoke-static {p1, v3, v6}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;Ljava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@5b
    move-result-object v7

    #@5c
    return-object v7

    #@5d
    .line 238
    .end local v3    # "jcaKeyAlgorithm":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@5e
    .line 240
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    #@60
    const-string/jumbo v8, "Failed to load private key"

    #@63
    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@66
    invoke-virtual {v7, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@69
    move-result-object v7

    #@6a
    .line 239
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    #@6c
    throw v7
.end method

.method public static loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Landroid/security/keystore/AndroidKeyStoreSecretKey;
    .locals 9
    .param p0, "keyStore"    # Landroid/security/KeyStore;
    .param p1, "secretKeyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 271
    new-instance v3, Landroid/security/keymaster/KeyCharacteristics;

    #@3
    invoke-direct {v3}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@6
    .line 272
    .local v3, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    invoke-virtual {p0, p1, v7, v7, v3}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I

    #@9
    move-result v1

    #@a
    .line 274
    .local v1, "errorCode":I
    const/4 v7, 0x1

    #@b
    if-eq v1, v7, :cond_0

    #@d
    .line 276
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    #@f
    const-string/jumbo v8, "Failed to obtain information about key"

    #@12
    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@15
    .line 277
    invoke-static {v1}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@18
    move-result-object v8

    #@19
    .line 276
    invoke-virtual {v7, v8}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@1c
    move-result-object v7

    #@1d
    .line 275
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    #@1f
    throw v7

    #@20
    .line 280
    :cond_0
    const v7, 0x10000002

    #@23
    invoke-virtual {v3, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnum(I)Ljava/lang/Integer;

    #@26
    move-result-object v4

    #@27
    .line 281
    .local v4, "keymasterAlgorithm":Ljava/lang/Integer;
    if-nez v4, :cond_1

    #@29
    .line 282
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    #@2b
    const-string/jumbo v8, "Key algorithm unknown"

    #@2e
    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@31
    throw v7

    #@32
    .line 285
    :cond_1
    const v7, 0x20000005

    #@35
    invoke-virtual {v3, v7}, Landroid/security/keymaster/KeyCharacteristics;->getEnums(I)Ljava/util/List;

    #@38
    move-result-object v6

    #@39
    .line 287
    .local v6, "keymasterDigests":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    #@3c
    move-result v7

    #@3d
    if-eqz v7, :cond_2

    #@3f
    .line 288
    const/4 v5, -0x1

    #@40
    .line 298
    .local v5, "keymasterDigest":I
    :goto_0
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@43
    move-result v7

    #@44
    .line 297
    invoke-static {v7, v5}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@47
    move-result-object v2

    #@48
    .line 304
    .local v2, "keyAlgorithmString":Ljava/lang/String;
    new-instance v7, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@4a
    invoke-direct {v7, p1, v2}, Landroid/security/keystore/AndroidKeyStoreSecretKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4d
    return-object v7

    #@4e
    .line 292
    .end local v2    # "keyAlgorithmString":Ljava/lang/String;
    .end local v5    # "keymasterDigest":I
    :cond_2
    const/4 v7, 0x0

    #@4f
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v7

    #@53
    check-cast v7, Ljava/lang/Integer;

    #@55
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    #@58
    move-result v5

    #@59
    .restart local v5    # "keymasterDigest":I
    goto :goto_0

    #@5a
    .line 299
    :catch_0
    move-exception v0

    #@5b
    .line 301
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/security/UnrecoverableKeyException;

    #@5d
    const-string/jumbo v8, "Unsupported secret key type"

    #@60
    invoke-direct {v7, v8}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    #@63
    invoke-virtual {v7, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@66
    move-result-object v7

    #@67
    .line 300
    check-cast v7, Ljava/security/UnrecoverableKeyException;

    #@69
    throw v7
.end method

.method private putKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
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
    .line 125
    return-void
.end method

.method private putSecretKeyFactoryImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;

    #@0
    .prologue
    .line 122
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
    .line 121
    return-void
.end method
