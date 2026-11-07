.class public Landroid/security/keystore2/AndroidKeyStoreProvider;
.super Ljava/security/Provider;
.source "AndroidKeyStoreProvider.java"


# static fields
.field private static final blacklist DESEDE_SYSTEM_PROPERTY:Ljava/lang/String; = "ro.hardware.keystore_desede"

.field private static final blacklist ED25519_OID:Ljava/lang/String; = "1.3.101.112"

.field private static final blacklist PACKAGE_NAME:Ljava/lang/String; = "android.security.keystore2"

.field private static final blacklist PROVIDER_NAME:Ljava/lang/String; = "AndroidKeyStore"

.field private static final blacklist X25519_ALIAS:Ljava/lang/String; = "XDH"


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 78
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string v2, "Android KeyStore security provider"

    const-string v3, "AndroidKeyStore"

    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 80
    const-string/jumbo v0, "ro.hardware.keystore_desede"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    .local v0, "supports3DES":Z
    const-string v1, "KeyStore.AndroidKeyStore"

    const-string v2, "android.security.keystore2.AndroidKeyStoreSpi"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "KeyPairGenerator.EC"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi$EC"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "KeyPairGenerator.RSA"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi$RSA"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "KeyPairGenerator.XDH"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi$XDH"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "KeyPairGenerator.ED25519"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyPairGeneratorSpi$ED25519"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v1, "EC"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 94
    const-string v1, "RSA"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 95
    const-string v1, "XDH"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 96
    const-string v1, "ED25519"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putKeyFactoryImpl(Ljava/lang/String;)V

    .line 99
    const-string v1, "KeyGenerator.AES"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$AES"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v1, "KeyGenerator.HmacSHA1"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA1"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v1, "KeyGenerator.HmacSHA224"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA224"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "KeyGenerator.HmacSHA256"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA256"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v1, "KeyGenerator.HmacSHA384"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA384"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v1, "KeyGenerator.HmacSHA512"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$HmacSHA512"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    if-eqz v0, :cond_81

    .line 107
    const-string v1, "KeyGenerator.DESede"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyGeneratorSpi$DESede"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_81
    const-string v1, "KeyAgreement.ECDH"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyAgreementSpi$ECDH"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v1, "KeyAgreement.XDH"

    const-string v2, "android.security.keystore2.AndroidKeyStoreKeyAgreementSpi$XDH"

    invoke-virtual {p0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v1, "AES"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 116
    if-eqz v0, :cond_9b

    .line 117
    const-string v1, "DESede"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 119
    :cond_9b
    const-string v1, "HmacSHA1"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 120
    const-string v1, "HmacSHA224"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 121
    const-string v1, "HmacSHA256"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 122
    const-string v1, "HmacSHA384"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 123
    const-string v1, "HmacSHA512"

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->putSecretKeyFactoryImpl(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static blacklist getKeyStoreOperationHandle(Ljava/lang/Object;)J
    .registers 5
    .param p0, "cryptoPrimitive"    # Ljava/lang/Object;

    .line 178
    if-eqz p0, :cond_89

    .line 182
    instance-of v0, p0, Ljava/security/Signature;

    if-eqz v0, :cond_e

    .line 183
    move-object v0, p0

    check-cast v0, Ljava/security/Signature;

    invoke-virtual {v0}, Ljava/security/Signature;->getCurrentSpi()Ljava/security/SignatureSpi;

    move-result-object v0

    .local v0, "spi":Ljava/lang/Object;
    goto :goto_31

    .line 184
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_e
    instance-of v0, p0, Ljavax/crypto/Mac;

    if-eqz v0, :cond_1a

    .line 185
    move-object v0, p0

    check-cast v0, Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getCurrentSpi()Ljavax/crypto/MacSpi;

    move-result-object v0

    .restart local v0    # "spi":Ljava/lang/Object;
    goto :goto_31

    .line 186
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_1a
    instance-of v0, p0, Ljavax/crypto/Cipher;

    if-eqz v0, :cond_26

    .line 187
    move-object v0, p0

    check-cast v0, Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getCurrentSpi()Ljavax/crypto/CipherSpi;

    move-result-object v0

    .restart local v0    # "spi":Ljava/lang/Object;
    goto :goto_31

    .line 188
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_26
    instance-of v0, p0, Ljavax/crypto/KeyAgreement;

    if-eqz v0, :cond_6a

    .line 189
    move-object v0, p0

    check-cast v0, Ljavax/crypto/KeyAgreement;

    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->getCurrentSpi()Ljavax/crypto/KeyAgreementSpi;

    move-result-object v0

    .line 194
    .restart local v0    # "spi":Ljava/lang/Object;
    :goto_31
    if-eqz v0, :cond_62

    .line 196
    instance-of v1, v0, Landroid/security/keystore/KeyStoreCryptoOperation;

    if-eqz v1, :cond_3f

    .line 201
    move-object v1, v0

    check-cast v1, Landroid/security/keystore/KeyStoreCryptoOperation;

    invoke-interface {v1}, Landroid/security/keystore/KeyStoreCryptoOperation;->getOperationHandle()J

    move-result-wide v1

    return-wide v1

    .line 197
    :cond_3f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Crypto primitive not backed by AndroidKeyStore provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_62
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Crypto primitive not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 191
    .end local v0    # "spi":Ljava/lang/Object;
    :cond_6a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported crypto primitive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Supported: Signature, Mac, Cipher"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_89
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public static blacklist install()V
    .registers 6

    .line 132
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .line 133
    .local v0, "providers":[Ljava/security/Provider;
    const/4 v1, -0x1

    .line 134
    .local v1, "bcProviderIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_1c

    .line 135
    aget-object v3, v0, v2

    .line 136
    .local v3, "provider":Ljava/security/Provider;
    const-string v4, "BC"

    invoke-virtual {v3}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 137
    move v1, v2

    .line 138
    goto :goto_1c

    .line 134
    .end local v3    # "provider":Ljava/security/Provider;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 142
    .end local v2    # "i":I
    :cond_1c
    :goto_1c
    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreProvider;

    invoke-direct {v2}, Landroid/security/keystore2/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 143
    new-instance v2, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;

    invoke-direct {v2}, Landroid/security/keystore2/AndroidKeyStoreBCWorkaroundProvider;-><init>()V

    .line 144
    .local v2, "workaroundProvider":Ljava/security/Provider;
    const/4 v3, -0x1

    if-eq v1, v3, :cond_32

    .line 147
    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    goto :goto_35

    .line 151
    :cond_32
    invoke-static {v2}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 153
    :goto_35
    return-void
.end method

.method private static blacklist loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;
    .registers 10
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 403
    const/4 v0, 0x0

    .line 405
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, p1}, Landroid/security/KeyStore2;->getKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;

    move-result-object v2
    :try_end_6
    .catch Landroid/security/KeyStoreException; {:try_start_2 .. :try_end_6} :catch_90

    .line 419
    .end local v0    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v2, "response":Landroid/system/keystore2/KeyEntryResponse;
    nop

    .line 421
    iget-object v0, v2, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    if-nez v0, :cond_c

    .line 423
    return-object v1

    .line 426
    :cond_c
    const/4 v0, 0x0

    .line 428
    .local v0, "keymasterAlgorithm":Ljava/lang/Integer;
    const/4 v1, -0x1

    .line 429
    .local v1, "keymasterDigest":I
    iget-object v3, v2, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    iget-object v3, v3, Landroid/system/keystore2/KeyMetadata;->authorizations:[Landroid/system/keystore2/Authorization;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_3c

    aget-object v6, v3, v5

    .line 430
    .local v6, "a":Landroid/system/keystore2/Authorization;
    iget-object v7, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget v7, v7, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    sparse-switch v7, :sswitch_data_b0

    goto :goto_39

    .line 435
    :sswitch_20
    const/4 v7, -0x1

    if-ne v1, v7, :cond_39

    iget-object v7, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v7, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v7}, Landroid/hardware/security/keymint/KeyParameterValue;->getDigest()I

    move-result v1

    goto :goto_39

    .line 432
    :sswitch_2c
    iget-object v7, v6, Landroid/system/keystore2/Authorization;->keyParameter:Landroid/hardware/security/keymint/KeyParameter;

    iget-object v7, v7, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v7}, Landroid/hardware/security/keymint/KeyParameterValue;->getAlgorithm()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 433
    nop

    .line 429
    .end local v6    # "a":Landroid/system/keystore2/Authorization;
    :cond_39
    :goto_39
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 439
    :cond_3c
    const-string v3, "Key algorithm unknown"

    if-eqz v0, :cond_8a

    .line 443
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x80

    if-eq v4, v5, :cond_80

    .line 444
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_80

    .line 445
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x21

    if-ne v4, v5, :cond_59

    goto :goto_80

    .line 448
    :cond_59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6e

    .line 449
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_68

    goto :goto_6e

    .line 454
    :cond_68
    new-instance v4, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v4, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 450
    :cond_6e
    :goto_6e
    iget-object v3, v2, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    new-instance v4, Landroid/security/KeyStoreSecurityLevel;

    iget-object v5, v2, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v4, v5}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    .line 452
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 450
    invoke-static {p1, v3, v4, v5}, Landroid/security/keystore2/AndroidKeyStoreProvider;->makeAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;

    move-result-object v3

    return-object v3

    .line 446
    :cond_80
    :goto_80
    nop

    .line 447
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 446
    invoke-static {p1, v2, v3, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->makeAndroidKeyStoreSecretKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyEntryResponse;II)Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    move-result-object v3

    return-object v3

    .line 440
    :cond_8a
    new-instance v4, Ljava/security/UnrecoverableKeyException;

    invoke-direct {v4, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 406
    .end local v1    # "keymasterDigest":I
    .end local v2    # "response":Landroid/system/keystore2/KeyEntryResponse;
    .local v0, "response":Landroid/system/keystore2/KeyEntryResponse;
    :catch_90
    move-exception v2

    .line 407
    .local v2, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v2}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_ba

    .line 415
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v3, "Failed to obtain information about key"

    invoke-direct {v1, v3}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v1, v2}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/security/UnrecoverableKeyException;

    throw v1

    .line 411
    :sswitch_a6
    new-instance v1, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    const-string v3, "User changed or deleted their auth credentials"

    invoke-direct {v1, v3, v2}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 409
    :sswitch_ae
    return-object v1

    nop

    :sswitch_data_b0
    .sparse-switch
        0x10000002 -> :sswitch_2c
        0x20000005 -> :sswitch_20
    .end sparse-switch

    :sswitch_data_ba
    .sparse-switch
        0x7 -> :sswitch_ae
        0x11 -> :sswitch_a6
    .end sparse-switch
.end method

.method public static blacklist loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;
    .registers 7
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "namespace"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 357
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 358
    const/4 v0, -0x1

    .line 359
    .local v0, "descriptorNamespace":I
    const/4 v1, 0x0

    .local v1, "descriptorDomain":I
    goto :goto_8

    .line 361
    .end local v0    # "descriptorNamespace":I
    .end local v1    # "descriptorDomain":I
    :cond_6
    move v0, p2

    .line 362
    .restart local v0    # "descriptorNamespace":I
    const/4 v1, 0x2

    .line 364
    .restart local v1    # "descriptorDomain":I
    :goto_8
    int-to-long v2, v0

    invoke-static {p0, p1, v2, v3, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;JI)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;JI)Landroid/security/keystore2/AndroidKeyStoreKey;
    .registers 8
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "namespace"    # J
    .param p4, "domain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 386
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 387
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iput-wide p2, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 388
    iput p4, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 389
    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 390
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 392
    invoke-static {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v1

    .line 393
    .local v1, "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    instance-of v2, v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v2, :cond_1e

    .line 394
    move-object v2, v1

    check-cast v2, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object v2

    return-object v2

    .line 396
    :cond_1e
    return-object v1
.end method

.method public static blacklist loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljava/security/KeyPair;
    .registers 6
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 280
    nop

    .line 281
    invoke-static {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0

    .line 282
    .local v0, "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    instance-of v1, v0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v1, :cond_16

    .line 283
    move-object v1, v0

    check-cast v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    .line 284
    .local v1, "publicKey":Landroid/security/keystore2/AndroidKeyStorePublicKey;
    new-instance v2, Ljava/security/KeyPair;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    .line 286
    .end local v1    # "publicKey":Landroid/security/keystore2/AndroidKeyStorePublicKey;
    :cond_16
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "No asymmetric key found by the given alias."

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist loadAndroidKeyStorePrivateKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStorePrivateKey;
    .registers 6
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "namespace"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 295
    nop

    .line 296
    invoke-static {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0

    .line 297
    .local v0, "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    instance-of v1, v0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v1, :cond_11

    .line 298
    move-object v1, v0

    check-cast v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStorePublicKey;->getPrivateKey()Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    move-result-object v1

    return-object v1

    .line 300
    :cond_11
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "No asymmetric key found by the given alias."

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist loadAndroidKeyStorePublicKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;
    .registers 6
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "privateKeyAlias"    # Ljava/lang/String;
    .param p2, "namespace"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 266
    nop

    .line 267
    invoke-static {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Ljava/lang/String;I)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0

    .line 268
    .local v0, "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    instance-of v1, v0, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    if-eqz v1, :cond_d

    .line 269
    move-object v1, v0

    check-cast v1, Landroid/security/keystore2/AndroidKeyStorePublicKey;

    return-object v1

    .line 271
    :cond_d
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "No asymmetric key found by the given alias."

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist loadAndroidKeyStoreSecretKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Ljavax/crypto/SecretKey;
    .registers 5
    .param p0, "keyStore"    # Landroid/security/KeyStore2;
    .param p1, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;,
            Landroid/security/keystore/KeyPermanentlyInvalidatedException;
        }
    .end annotation

    .line 310
    nop

    .line 311
    invoke-static {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore2;Landroid/system/keystore2/KeyDescriptor;)Landroid/security/keystore2/AndroidKeyStoreKey;

    move-result-object v0

    .line 312
    .local v0, "key":Landroid/security/keystore2/AndroidKeyStoreKey;
    instance-of v1, v0, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_d

    .line 313
    move-object v1, v0

    check-cast v1, Ljavax/crypto/SecretKey;

    return-object v1

    .line 315
    :cond_d
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "No secret key found by the given alias."

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist makeAndroidKeyStorePublicKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;I)Landroid/security/keystore2/AndroidKeyStorePublicKey;
    .registers 14
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "metadata"    # Landroid/system/keystore2/KeyMetadata;
    .param p2, "iSecurityLevel"    # Landroid/security/KeyStoreSecurityLevel;
    .param p3, "algorithm"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 225
    iget-object v0, p1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    if-eqz v0, :cond_86

    .line 229
    iget-object v6, p1, Landroid/system/keystore2/KeyMetadata;->certificate:[B

    .line 231
    .local v6, "x509PublicCert":[B
    nop

    .line 232
    invoke-static {v6}, Landroid/security/keystore2/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 233
    .local v7, "parsedX509Certificate":Ljava/security/cert/X509Certificate;
    if-eqz v7, :cond_7e

    .line 238
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    .line 240
    .local v8, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v8}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 242
    .local v9, "jcaKeyAlgorithm":Ljava/lang/String;
    const-string v0, "EC"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 243
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;

    move-object v3, v8

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    invoke-direct {v0, p0, p1, p2, v3}, Landroid/security/keystore2/AndroidKeyStoreECPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;Ljava/security/interfaces/ECPublicKey;)V

    return-object v0

    .line 245
    :cond_26
    const-string v0, "RSA"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 246
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;

    move-object v3, v8

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v0, p0, p1, p2, v3}, Landroid/security/keystore2/AndroidKeyStoreRSAPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Landroid/security/KeyStoreSecurityLevel;Ljava/security/interfaces/RSAPublicKey;)V

    return-object v0

    .line 248
    :cond_37
    const-string v0, "1.3.101.112"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 249
    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    .line 250
    .local v5, "publicKeyEncoded":[B
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;

    const-string v3, "1.3.101.112"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/security/keystore2/AndroidKeyStoreEdECPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V

    return-object v0

    .line 252
    .end local v5    # "publicKeyEncoded":[B
    :cond_4e
    const-string v0, "XDH"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 253
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;

    .line 254
    invoke-interface {v8}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    const-string v3, "XDH"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/security/keystore2/AndroidKeyStoreXDHPublicKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;[B)V

    .line 253
    return-object v0

    .line 256
    :cond_65
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Android Keystore public key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    .end local v8    # "publicKey":Ljava/security/PublicKey;
    .end local v9    # "jcaKeyAlgorithm":Ljava/lang/String;
    :cond_7e
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Failed to parse the X.509 certificate containing the public key. This likely indicates a hardware problem."

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    .end local v6    # "x509PublicCert":[B
    .end local v7    # "parsedX509Certificate":Ljava/security/cert/X509Certificate;
    :cond_86
    new-instance v0, Ljava/security/UnrecoverableKeyException;

    const-string v1, "Failed to obtain X.509 form of public key. Keystore has no public certificate stored."

    invoke-direct {v0, v1}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist makeAndroidKeyStoreSecretKeyFromKeyEntryResponse(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyEntryResponse;II)Landroid/security/keystore2/AndroidKeyStoreSecretKey;
    .registers 9
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "response"    # Landroid/system/keystore2/KeyEntryResponse;
    .param p2, "algorithm"    # I
    .param p3, "digest"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .line 326
    :try_start_0
    invoke-static {p2, p3}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_14

    .line 331
    .local v0, "keyAlgorithmString":Ljava/lang/String;
    nop

    .line 333
    new-instance v1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    iget-object v2, p1, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    new-instance v3, Landroid/security/KeyStoreSecurityLevel;

    iget-object v4, p1, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-direct {v3, v4}, Landroid/security/KeyStoreSecurityLevel;-><init>(Landroid/system/keystore2/IKeystoreSecurityLevel;)V

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;-><init>(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyMetadata;Ljava/lang/String;Landroid/security/KeyStoreSecurityLevel;)V

    return-object v1

    .line 328
    .end local v0    # "keyAlgorithmString":Ljava/lang/String;
    :catch_14
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/UnrecoverableKeyException;

    const-string v2, "Unsupported secret key type"

    invoke-direct {v1, v2}, Ljava/security/UnrecoverableKeyException;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v1, v0}, Ljava/security/UnrecoverableKeyException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/security/UnrecoverableKeyException;

    throw v1
.end method

.method private blacklist putKeyFactoryImpl(Ljava/lang/String;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore2.AndroidKeyStoreKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method private blacklist putSecretKeyFactoryImpl(Ljava/lang/String;)V
    .registers 4
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecretKeyFactory."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.security.keystore2.AndroidKeyStoreSecretKeyFactorySpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore2/AndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    return-void
.end method
