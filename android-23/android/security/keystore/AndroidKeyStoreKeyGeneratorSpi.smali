.class public abstract Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$AES;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacBase;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA1;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA224;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA256;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA384;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA512;
    }
.end annotation


# instance fields
.field private final mDefaultKeySizeBits:I

.field protected mKeySizeBits:I

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private final mKeymasterDigest:I

.field private mKeymasterDigests:[I

.field private mKeymasterPaddings:[I

.field private mKeymasterPurposes:[I

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "defaultKeySizeBits"    # I

    #@0
    .prologue
    .line 117
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, v0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;-><init>(III)V

    #@4
    .line 116
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 2
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "keymasterDigest"    # I
    .param p3, "defaultKeySizeBits"    # I

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    #@3
    .line 100
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@9
    .line 124
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    #@b
    .line 125
    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    #@d
    .line 126
    iput p3, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    #@f
    .line 127
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    #@11
    if-gtz v0, :cond_0

    #@13
    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "Default key size must be positive"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 131
    :cond_0
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    #@1e
    const/16 v1, 0x80

    #@20
    if-ne v0, v1, :cond_1

    #@22
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    #@24
    const/4 v1, -0x1

    #@25
    if-ne v0, v1, :cond_1

    #@27
    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@29
    .line 133
    const-string/jumbo v1, "Digest algorithm must be specified for HMAC key"

    #@2c
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 123
    :cond_1
    return-void
.end method

.method private resetAll()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 250
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@3
    .line 251
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    #@5
    .line 252
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    #@8
    .line 253
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    #@a
    .line 254
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    #@c
    .line 255
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    #@e
    .line 249
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 14

    #@0
    .prologue
    .line 260
    iget-object v10, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@2
    .line 261
    .local v10, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    if-nez v10, :cond_0

    #@4
    .line 262
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v12, "Not initialized"

    #@9
    invoke-direct {v0, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 265
    :cond_0
    new-instance v2, Landroid/security/keymaster/KeymasterArguments;

    #@f
    invoke-direct {v2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@12
    .line 266
    .local v2, "args":Landroid/security/keymaster/KeymasterArguments;
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    #@14
    int-to-long v12, v0

    #@15
    const v0, 0x30000003

    #@18
    invoke-virtual {v2, v0, v12, v13}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@1b
    .line 267
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    #@1d
    const v12, 0x10000002

    #@20
    invoke-virtual {v2, v12, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@23
    .line 268
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    #@25
    const v12, 0x20000001

    #@28
    invoke-virtual {v2, v12, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@2b
    .line 269
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    #@2d
    const v12, 0x20000004

    #@30
    invoke-virtual {v2, v12, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@33
    .line 270
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    #@35
    const v12, 0x20000006

    #@38
    invoke-virtual {v2, v12, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@3b
    .line 271
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    #@3d
    const v12, 0x20000005

    #@40
    invoke-virtual {v2, v12, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@43
    .line 273
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    #@46
    move-result v0

    #@47
    .line 274
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    #@4a
    move-result v12

    #@4b
    .line 272
    invoke-static {v2, v0, v12}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V

    #@4e
    .line 277
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    #@50
    .line 278
    iget-object v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    #@52
    .line 279
    iget-object v13, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    #@54
    .line 275
    invoke-static {v2, v0, v12, v13}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    #@57
    .line 280
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    #@5a
    move-result-object v0

    #@5b
    const v12, 0x60000190

    #@5e
    invoke-virtual {v2, v12, v0}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@61
    .line 282
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    #@64
    move-result-object v0

    #@65
    .line 281
    const v12, 0x60000191

    #@68
    invoke-virtual {v2, v12, v0}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@6b
    .line 284
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    #@6e
    move-result-object v0

    #@6f
    .line 283
    const v12, 0x60000192

    #@72
    invoke-virtual {v2, v12, v0}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@75
    .line 286
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    #@78
    move-result v0

    #@79
    and-int/lit8 v0, v0, 0x1

    #@7b
    if-eqz v0, :cond_1

    #@7d
    .line 287
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    #@80
    move-result v0

    #@81
    if-eqz v0, :cond_3

    #@83
    .line 294
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    #@85
    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    #@87
    add-int/lit8 v12, v12, 0x7

    #@89
    div-int/lit8 v12, v12, 0x8

    #@8b
    .line 293
    invoke-static {v0, v12}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    #@8e
    move-result-object v3

    #@8f
    .line 295
    .local v3, "additionalEntropy":[B
    const/4 v4, 0x0

    #@90
    .line 296
    .local v4, "flags":I
    new-instance v0, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v12, "USRSKEY_"

    #@98
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@9f
    move-result-object v12

    #@a0
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v0

    #@a4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v1

    #@a8
    .line 297
    .local v1, "keyAliasInKeystore":Ljava/lang/String;
    new-instance v5, Landroid/security/keymaster/KeyCharacteristics;

    #@aa
    invoke-direct {v5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@ad
    .line 298
    .local v5, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v11, 0x0

    #@ae
    .line 300
    .local v11, "success":Z
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@b0
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@b3
    move-result-object v12

    #@b4
    invoke-static {v0, v12}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@b7
    .line 301
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@b9
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I

    #@bc
    move-result v7

    #@bd
    .line 307
    .local v7, "errorCode":I
    const/4 v0, 0x1

    #@be
    if-eq v7, v0, :cond_4

    #@c0
    .line 308
    new-instance v0, Ljava/security/ProviderException;

    #@c2
    .line 309
    const-string/jumbo v12, "Keystore operation failed"

    #@c5
    invoke-static {v7}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@c8
    move-result-object v13

    #@c9
    .line 308
    invoke-direct {v0, v12, v13}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@cc
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@cd
    .line 321
    .end local v7    # "errorCode":I
    :catchall_0
    move-exception v0

    #@ce
    .line 322
    if-nez v11, :cond_2

    #@d0
    .line 323
    iget-object v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@d2
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@d5
    move-result-object v13

    #@d6
    invoke-static {v12, v13}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@d9
    .line 321
    :cond_2
    throw v0

    #@da
    .line 289
    .end local v1    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v3    # "additionalEntropy":[B
    .end local v4    # "flags":I
    .end local v5    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v11    # "success":Z
    :cond_3
    const v0, 0x70000007

    #@dd
    invoke-virtual {v2, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    #@e0
    goto :goto_0

    #@e1
    .line 314
    .restart local v1    # "keyAliasInKeystore":Ljava/lang/String;
    .restart local v3    # "additionalEntropy":[B
    .restart local v4    # "flags":I
    .restart local v5    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v7    # "errorCode":I
    .restart local v11    # "success":Z
    :cond_4
    :try_start_1
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    #@e3
    iget v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    #@e5
    .line 313
    invoke-static {v0, v12}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e8
    move-result-object v8

    #@e9
    .line 318
    .local v8, "keyAlgorithmJCA":Ljava/lang/String;
    :try_start_2
    new-instance v9, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@eb
    invoke-direct {v9, v1, v8}, Landroid/security/keystore/AndroidKeyStoreSecretKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ee
    .line 319
    .local v9, "result":Ljavax/crypto/SecretKey;
    const/4 v11, 0x1

    #@ef
    .line 322
    if-nez v11, :cond_5

    #@f1
    .line 323
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@f3
    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@f6
    move-result-object v12

    #@f7
    invoke-static {v0, v12}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    #@fa
    .line 320
    :cond_5
    return-object v9

    #@fb
    .line 315
    .end local v8    # "keyAlgorithmJCA":Ljava/lang/String;
    .end local v9    # "result":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v6

    #@fc
    .line 316
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v0, Ljava/security/ProviderException;

    #@fe
    const-string/jumbo v12, "Failed to obtain JCA secret key algorithm name"

    #@101
    invoke-direct {v0, v12, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@104
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .locals 3
    .param p1, "keySize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 145
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Cannot initialize without a "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 146
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    #@10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 146
    const-string/jumbo v2, " parameter"

    #@1b
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Cannot initialize without a "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 140
    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    #@10
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    .line 140
    const-string/jumbo v2, " parameter"

    #@1b
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 11
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 152
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    #@5
    .line 154
    const/4 v5, 0x0

    #@6
    .line 156
    .local v5, "success":Z
    if-eqz p1, :cond_1

    #@8
    :try_start_0
    instance-of v7, p1, Landroid/security/keystore/KeyGenParameterSpec;

    #@a
    if-eqz v7, :cond_1

    #@c
    .line 160
    move-object v0, p1

    #@d
    check-cast v0, Landroid/security/keystore/KeyGenParameterSpec;

    #@f
    move-object v4, v0

    #@10
    .line 161
    .local v4, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    if-nez v7, :cond_2

    #@16
    .line 162
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@18
    const-string/jumbo v7, "KeyStore entry alias not provided"

    #@1b
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    .line 242
    .end local v4    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :catchall_0
    move-exception v6

    #@20
    .line 243
    if-nez v5, :cond_0

    #@22
    .line 244
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    #@25
    .line 242
    :cond_0
    throw v6

    #@26
    .line 157
    :cond_1
    :try_start_1
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@28
    new-instance v7, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v8, "Cannot initialize without a "

    #@30
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v7

    #@34
    .line 158
    const-class v8, Landroid/security/keystore/KeyGenParameterSpec;

    #@36
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@39
    move-result-object v8

    #@3a
    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    .line 158
    const-string/jumbo v8, " parameter"

    #@41
    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v7

    #@49
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v6

    #@4d
    .line 165
    .restart local v4    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :cond_2
    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    #@4f
    .line 166
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@51
    .line 168
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    #@54
    move-result v7

    #@55
    const/4 v8, -0x1

    #@56
    if-eq v7, v8, :cond_3

    #@58
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    #@5b
    move-result v7

    #@5c
    :goto_0
    iput v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    #@5e
    .line 169
    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    #@60
    if-gtz v7, :cond_4

    #@62
    .line 170
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@64
    .line 171
    new-instance v7, Ljava/lang/StringBuilder;

    #@66
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@69
    const-string/jumbo v8, "Key size must be positive: "

    #@6c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v7

    #@70
    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    #@72
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@75
    move-result-object v7

    #@76
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v7

    #@7a
    .line 170
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v6

    #@7e
    .line 168
    :cond_3
    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    #@80
    goto :goto_0

    #@81
    .line 172
    :cond_4
    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    #@83
    rem-int/lit8 v7, v7, 0x8

    #@85
    if-eqz v7, :cond_5

    #@87
    .line 173
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@89
    .line 174
    new-instance v7, Ljava/lang/StringBuilder;

    #@8b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@8e
    const-string/jumbo v8, "Key size must be a multiple of 8: "

    #@91
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    #@97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v7

    #@9b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v7

    #@9f
    .line 173
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a3
    .line 178
    :cond_5
    :try_start_2
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    #@a6
    move-result v7

    #@a7
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    #@aa
    move-result-object v7

    #@ab
    iput-object v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    #@ad
    .line 180
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    #@b0
    move-result-object v7

    #@b1
    .line 179
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    #@b4
    move-result-object v7

    #@b5
    iput-object v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    #@b7
    .line 181
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    #@ba
    move-result-object v7

    #@bb
    array-length v7, v7

    #@bc
    if-lez v7, :cond_6

    #@be
    .line 182
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@c0
    .line 183
    const-string/jumbo v7, "Signature paddings not supported for symmetric key algorithms"

    #@c3
    .line 182
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@c6
    throw v6
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@c7
    .line 237
    :catch_0
    move-exception v1

    #@c8
    .line 238
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@ca
    invoke-direct {v6, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    #@cd
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ce
    .line 185
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_6
    :try_start_4
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    #@d1
    move-result-object v7

    #@d2
    invoke-static {v7}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    #@d5
    move-result-object v7

    #@d6
    iput-object v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    #@d8
    .line 186
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    #@db
    move-result v7

    #@dc
    and-int/lit8 v7, v7, 0x1

    #@de
    if-eqz v7, :cond_8

    #@e0
    .line 187
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    #@e3
    move-result v7

    #@e4
    .line 186
    if-eqz v7, :cond_8

    #@e6
    .line 188
    iget-object v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    #@e8
    array-length v8, v7

    #@e9
    :goto_1
    if-ge v6, v8, :cond_8

    #@eb
    aget v2, v7, v6

    #@ed
    .line 189
    .local v2, "keymasterBlockMode":I
    invoke-static {v2}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    #@f0
    move-result v9

    #@f1
    if-nez v9, :cond_7

    #@f3
    .line 191
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@f5
    .line 192
    new-instance v7, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    const-string/jumbo v8, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    #@fd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v7

    #@101
    .line 194
    invoke-static {v2}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    #@104
    move-result-object v8

    #@105
    .line 192
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    move-result-object v7

    #@109
    .line 195
    const-string/jumbo v8, ". See "

    #@10c
    .line 192
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    move-result-object v7

    #@110
    .line 195
    const-class v8, Landroid/security/keystore/KeyGenParameterSpec;

    #@112
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@115
    move-result-object v8

    #@116
    .line 192
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v7

    #@11a
    .line 196
    const-string/jumbo v8, " documentation."

    #@11d
    .line 192
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v7

    #@121
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v7

    #@125
    .line 191
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@128
    throw v6

    #@129
    .line 188
    :cond_7
    add-int/lit8 v6, v6, 0x1

    #@12b
    goto :goto_1

    #@12c
    .line 201
    .end local v2    # "keymasterBlockMode":I
    :cond_8
    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    #@12e
    const/16 v7, 0x80

    #@130
    if-ne v6, v7, :cond_a

    #@132
    .line 207
    const/4 v6, 0x1

    #@133
    new-array v6, v6, [I

    #@135
    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    #@137
    const/4 v8, 0x0

    #@138
    aput v7, v6, v8

    #@13a
    iput-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    #@13c
    .line 208
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    #@13f
    move-result v6

    #@140
    if-eqz v6, :cond_b

    #@142
    .line 212
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    #@145
    move-result-object v6

    #@146
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@149
    move-result-object v3

    #@14a
    .line 213
    .local v3, "keymasterDigestsFromSpec":[I
    array-length v6, v3

    #@14b
    if-ne v6, v10, :cond_9

    #@14d
    .line 214
    const/4 v6, 0x0

    #@14e
    aget v6, v3, v6

    #@150
    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    #@152
    if-eq v6, v7, :cond_b

    #@154
    .line 215
    :cond_9
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    #@156
    .line 216
    new-instance v7, Ljava/lang/StringBuilder;

    #@158
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@15b
    const-string/jumbo v8, "Unsupported digests specification: "

    #@15e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    move-result-object v7

    #@162
    .line 217
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    #@165
    move-result-object v8

    #@166
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@169
    move-result-object v8

    #@16a
    .line 216
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v7

    #@16e
    .line 217
    const-string/jumbo v8, ". Only "

    #@171
    .line 216
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@174
    move-result-object v7

    #@175
    .line 218
    iget v8, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    #@177
    invoke-static {v8}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    #@17a
    move-result-object v8

    #@17b
    .line 216
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    move-result-object v7

    #@17f
    .line 219
    const-string/jumbo v8, " supported for this HMAC key algorithm"

    #@182
    .line 216
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v7

    #@186
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v7

    #@18a
    .line 215
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@18d
    throw v6

    #@18e
    .line 224
    .end local v3    # "keymasterDigestsFromSpec":[I
    :cond_a
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    #@191
    move-result v6

    #@192
    if-eqz v6, :cond_d

    #@194
    .line 225
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    #@197
    move-result-object v6

    #@198
    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    #@19b
    move-result-object v6

    #@19c
    iput-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    #@19e
    .line 234
    :cond_b
    :goto_2
    new-instance v6, Landroid/security/keymaster/KeymasterArguments;

    #@1a0
    invoke-direct {v6}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@1a3
    .line 235
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    #@1a6
    move-result v7

    #@1a7
    .line 236
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    #@1aa
    move-result v8

    #@1ab
    .line 234
    invoke-static {v6, v7, v8}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZI)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1ae
    .line 241
    const/4 v5, 0x1

    #@1af
    .line 243
    if-nez v5, :cond_c

    #@1b1
    .line 244
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    #@1b4
    .line 151
    :cond_c
    return-void

    #@1b5
    .line 227
    :cond_d
    :try_start_5
    sget-object v6, Llibcore/util/EmptyArray;->INT:[I

    #@1b7
    iput-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1b9
    goto :goto_2
.end method
