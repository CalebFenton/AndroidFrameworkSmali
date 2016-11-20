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
    .line 252
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@3
    .line 253
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    #@5
    .line 254
    const/4 v0, -0x1

    #@6
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    #@8
    .line 255
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    #@a
    .line 256
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    #@c
    .line 257
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    #@e
    .line 251
    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 18

    #@0
    .prologue
    .line 262
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    #@4
    .line 263
    .local v13, "spec":Landroid/security/keystore/KeyGenParameterSpec;
    if-nez v13, :cond_0

    #@6
    .line 264
    new-instance v2, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v6, "Not initialized"

    #@b
    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v2

    #@f
    .line 267
    :cond_0
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    #@11
    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@14
    .line 268
    .local v4, "args":Landroid/security/keymaster/KeymasterArguments;
    move-object/from16 v0, p0

    #@16
    iget v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    #@18
    int-to-long v0, v2

    #@19
    move-wide/from16 v16, v0

    #@1b
    const v2, 0x30000003

    #@1e
    move-wide/from16 v0, v16

    #@20
    invoke-virtual {v4, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@23
    .line 269
    move-object/from16 v0, p0

    #@25
    iget v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    #@27
    const v6, 0x10000002

    #@2a
    invoke-virtual {v4, v6, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@2d
    .line 270
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    #@31
    const v6, 0x20000001

    #@34
    invoke-virtual {v4, v6, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@37
    .line 271
    move-object/from16 v0, p0

    #@39
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    #@3b
    const v6, 0x20000004

    #@3e
    invoke-virtual {v4, v6, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@41
    .line 272
    move-object/from16 v0, p0

    #@43
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    #@45
    const v6, 0x20000006

    #@48
    invoke-virtual {v4, v6, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@4b
    .line 273
    move-object/from16 v0, p0

    #@4d
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    #@4f
    const v6, 0x20000005

    #@52
    invoke-virtual {v4, v6, v2}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    #@55
    .line 275
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    #@58
    move-result v2

    #@59
    .line 276
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    #@5c
    move-result v6

    #@5d
    .line 277
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    #@60
    move-result v15

    #@61
    .line 278
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    #@64
    move-result v16

    #@65
    .line 274
    move/from16 v0, v16

    #@67
    invoke-static {v4, v2, v6, v15, v0}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZ)V

    #@6a
    .line 281
    move-object/from16 v0, p0

    #@6c
    iget v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    #@6e
    .line 282
    move-object/from16 v0, p0

    #@70
    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    #@72
    .line 283
    move-object/from16 v0, p0

    #@74
    iget-object v15, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    #@76
    .line 279
    invoke-static {v4, v2, v6, v15}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    #@79
    .line 284
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    #@7c
    move-result-object v2

    #@7d
    const v6, 0x60000190

    #@80
    invoke-virtual {v4, v6, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@83
    .line 286
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    #@86
    move-result-object v2

    #@87
    .line 285
    const v6, 0x60000191

    #@8a
    invoke-virtual {v4, v6, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@8d
    .line 288
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    #@90
    move-result-object v2

    #@91
    .line 287
    const v6, 0x60000192

    #@94
    invoke-virtual {v4, v6, v2}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    #@97
    .line 290
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    #@9a
    move-result v2

    #@9b
    and-int/lit8 v2, v2, 0x1

    #@9d
    if-eqz v2, :cond_1

    #@9f
    .line 291
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    #@a2
    move-result v2

    #@a3
    if-eqz v2, :cond_3

    #@a5
    .line 298
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    #@a7
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    #@a9
    move-object/from16 v0, p0

    #@ab
    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    #@ad
    add-int/lit8 v6, v6, 0x7

    #@af
    div-int/lit8 v6, v6, 0x8

    #@b1
    .line 297
    invoke-static {v2, v6}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    #@b4
    move-result-object v5

    #@b5
    .line 299
    .local v5, "additionalEntropy":[B
    const/4 v7, 0x0

    #@b6
    .line 300
    .local v7, "flags":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@b8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@bb
    const-string/jumbo v6, "USRSKEY_"

    #@be
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v2

    #@c2
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@c5
    move-result-object v6

    #@c6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v2

    #@ca
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v3

    #@ce
    .line 301
    .local v3, "keyAliasInKeystore":Ljava/lang/String;
    new-instance v8, Landroid/security/keymaster/KeyCharacteristics;

    #@d0
    invoke-direct {v8}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    #@d3
    .line 302
    .local v8, "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v14, 0x0

    #@d4
    .line 304
    .local v14, "success":Z
    :try_start_0
    move-object/from16 v0, p0

    #@d6
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@d8
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@db
    move-result-object v6

    #@dc
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    #@df
    move-result v15

    #@e0
    invoke-static {v2, v6, v15}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@e3
    .line 305
    move-object/from16 v0, p0

    #@e5
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@e7
    .line 309
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    #@ea
    move-result v6

    #@eb
    .line 305
    invoke-virtual/range {v2 .. v8}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    #@ee
    move-result v10

    #@ef
    .line 312
    .local v10, "errorCode":I
    const/4 v2, 0x1

    #@f0
    if-eq v10, v2, :cond_4

    #@f2
    .line 313
    new-instance v2, Ljava/security/ProviderException;

    #@f4
    .line 314
    const-string/jumbo v6, "Keystore operation failed"

    #@f7
    invoke-static {v10}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    #@fa
    move-result-object v15

    #@fb
    .line 313
    invoke-direct {v2, v6, v15}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@fe
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ff
    .line 327
    .end local v10    # "errorCode":I
    :catchall_0
    move-exception v2

    #@100
    .line 328
    if-nez v14, :cond_2

    #@102
    .line 330
    move-object/from16 v0, p0

    #@104
    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@106
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@109
    move-result-object v15

    #@10a
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    #@10d
    move-result v16

    #@10e
    .line 329
    move/from16 v0, v16

    #@110
    invoke-static {v6, v15, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@113
    .line 327
    :cond_2
    throw v2

    #@114
    .line 293
    .end local v3    # "keyAliasInKeystore":Ljava/lang/String;
    .end local v5    # "additionalEntropy":[B
    .end local v7    # "flags":I
    .end local v8    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .end local v14    # "success":Z
    :cond_3
    const v2, 0x70000007

    #@117
    invoke-virtual {v4, v2}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    #@11a
    goto :goto_0

    #@11b
    .line 319
    .restart local v3    # "keyAliasInKeystore":Ljava/lang/String;
    .restart local v5    # "additionalEntropy":[B
    .restart local v7    # "flags":I
    .restart local v8    # "resultingKeyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    .restart local v10    # "errorCode":I
    .restart local v14    # "success":Z
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    #@11d
    iget v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    #@11f
    move-object/from16 v0, p0

    #@121
    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    #@123
    .line 318
    invoke-static {v2, v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@126
    move-result-object v11

    #@127
    .line 323
    .local v11, "keyAlgorithmJCA":Ljava/lang/String;
    :try_start_2
    new-instance v12, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@129
    .line 324
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    #@12c
    move-result v2

    #@12d
    .line 323
    invoke-direct {v12, v3, v2, v11}, Landroid/security/keystore/AndroidKeyStoreSecretKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@130
    .line 325
    .local v12, "result":Ljavax/crypto/SecretKey;
    const/4 v14, 0x1

    #@131
    .line 328
    if-nez v14, :cond_5

    #@133
    .line 330
    move-object/from16 v0, p0

    #@135
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    #@137
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    #@13a
    move-result-object v6

    #@13b
    invoke-virtual {v13}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    #@13e
    move-result v15

    #@13f
    .line 329
    invoke-static {v2, v6, v15}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    #@142
    .line 326
    :cond_5
    return-object v12

    #@143
    .line 320
    .end local v11    # "keyAlgorithmJCA":Ljava/lang/String;
    .end local v12    # "result":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v9

    #@144
    .line 321
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    new-instance v2, Ljava/security/ProviderException;

    #@146
    const-string/jumbo v6, "Failed to obtain JCA secret key algorithm name"

    #@149
    invoke-direct {v2, v6, v9}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14c
    throw v2
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
    .line 244
    .end local v4    # "spec":Landroid/security/keystore/KeyGenParameterSpec;
    :catchall_0
    move-exception v6

    #@20
    .line 245
    if-nez v5, :cond_0

    #@22
    .line 246
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    #@25
    .line 244
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
    .line 239
    :catch_0
    move-exception v1

    #@c8
    .line 240
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
    .line 237
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    #@1ae
    move-result v9

    #@1af
    .line 238
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    #@1b2
    move-result v10

    #@1b3
    .line 234
    invoke-static {v6, v7, v8, v9, v10}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZ)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1b6
    .line 243
    const/4 v5, 0x1

    #@1b7
    .line 245
    if-nez v5, :cond_c

    #@1b9
    .line 246
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    #@1bc
    .line 151
    :cond_c
    return-void

    #@1bd
    .line 227
    :cond_d
    :try_start_5
    sget-object v6, Llibcore/util/EmptyArray;->INT:[I

    #@1bf
    iput-object v6, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@1c1
    goto :goto_2
.end method
