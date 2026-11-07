.class abstract Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.super Ljavax/crypto/CipherSpi;
.source "AndroidKeyStoreCipherSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# static fields
.field public static final blacklist DEFAULT_MGF1_DIGEST:Ljava/lang/String; = "SHA-1"

.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreCipherSpiBase"


# instance fields
.field private blacklist mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private blacklist mAdditionalAuthenticationDataStreamerClosed:Z

.field private blacklist mCachedException:Ljava/lang/Exception;

.field private blacklist mCipher:Ljavax/crypto/Cipher;

.field private blacklist mEncrypting:Z

.field private blacklist mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

.field private blacklist mKeymasterPurposeOverride:I

.field private blacklist mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private blacklist mOperation:Landroid/security/KeyStoreOperation;

.field private blacklist mOperationChallenge:J

.field private blacklist mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor blacklist <init>()V
    .registers 6

    .line 111
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    .line 113
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 114
    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 115
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 116
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 117
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 118
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 119
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 120
    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 121
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 122
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 123
    return-void
.end method

.method private blacklist abortOperation()V
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    .line 285
    return-void
.end method

.method private blacklist ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    .registers 8
    .param p1, "keyCharacteristics"    # [Landroid/system/keystore2/Authorization;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_5

    .line 331
    return-void

    .line 333
    :cond_5
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_a

    .line 334
    return-void

    .line 336
    :cond_a
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_8b

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-virtual {p0, v0, p1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;[Landroid/system/keystore2/Authorization;)V

    .line 344
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1f

    .line 345
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .local v1, "purpose":I
    goto :goto_26

    .line 347
    .end local v1    # "purpose":I
    :cond_1f
    iget-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    if-eqz v1, :cond_25

    .line 348
    move v1, v3

    goto :goto_26

    :cond_25
    const/4 v1, 0x1

    .line 351
    .restart local v1    # "purpose":I
    :goto_26
    const v2, 0x20000001

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :try_start_30
    invoke-static {}, Landroid/os/StrictMode;->noteDiskRead()V

    .line 355
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStoreKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v2

    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 356
    invoke-virtual {v4}, Landroid/security/keystore2/AndroidKeyStoreKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v4

    .line 355
    invoke-virtual {v2, v4, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_45
    .catch Landroid/security/KeyStoreException; {:try_start_30 .. :try_end_45} :catch_6c

    .line 369
    nop

    .line 374
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v4, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v2, v4}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 377
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {v2}, Landroid/security/KeyStoreOperation;->getParameters()[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V

    .line 378
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 379
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    .line 380
    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 381
    iput-boolean v3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 382
    return-void

    .line 359
    :catch_6c
    move-exception v2

    .line 360
    .local v2, "keyStoreException":Landroid/security/KeyStoreException;
    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v3, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getExceptionForCipherInit(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/GeneralSecurityException;

    move-result-object v3

    .line 362
    .local v3, "e":Ljava/security/GeneralSecurityException;
    instance-of v4, v3, Ljava/security/InvalidKeyException;

    if-nez v4, :cond_87

    .line 364
    instance-of v4, v3, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v4, :cond_7f

    .line 365
    move-object v4, v3

    check-cast v4, Ljava/security/InvalidAlgorithmParameterException;

    throw v4

    .line 367
    :cond_7f
    new-instance v4, Ljava/security/ProviderException;

    const-string v5, "Unexpected exception type"

    invoke-direct {v4, v5, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 363
    :cond_87
    move-object v4, v3

    check-cast v4, Ljava/security/InvalidKeyException;

    throw v4

    .line 337
    .end local v0    # "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v1    # "purpose":I
    .end local v2    # "keyStoreException":Landroid/security/KeyStoreException;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :cond_8b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist flushAAD()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_40

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v0, :cond_40

    .line 452
    const/4 v0, 0x1

    :try_start_9
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v4, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v1
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_3c

    .line 456
    .local v1, "output":[B
    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 457
    nop

    .line 458
    if-eqz v1, :cond_40

    array-length v0, v1

    if-gtz v0, :cond_1c

    goto :goto_40

    .line 459
    :cond_1c
    new-instance v0, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAD update unexpectedly returned data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 456
    .end local v1    # "output":[B
    :catchall_3c
    move-exception v1

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 457
    throw v1

    .line 463
    :cond_40
    :goto_40
    return-void
.end method

.method private blacklist getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;
    .registers 3
    .param p1, "key"    # Ljava/security/Key;

    .line 126
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreKey;

    if-nez v0, :cond_8

    .line 127
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/system/keystore2/Authorization;

    return-object v0

    .line 130
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v0}, Landroid/security/keystore2/AndroidKeyStoreKey;->getAuthorizations()[Landroid/system/keystore2/Authorization;

    move-result-object v0

    return-object v0
.end method

.method private blacklist init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 263
    packed-switch p1, :pswitch_data_38

    .line 273
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :pswitch_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 271
    goto :goto_24

    .line 266
    :pswitch_20
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 267
    nop

    .line 275
    :goto_24
    invoke-virtual {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initKey(ILjava/security/Key;)V

    .line 276
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_2e

    .line 279
    iput-object p3, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 280
    return-void

    .line 277
    :cond_2e
    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "initKey did not initialize the key"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1c
        :pswitch_20
        :pswitch_1c
    .end packed-switch
.end method

.method static blacklist opmodeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "opmode"    # I

    .line 924
    packed-switch p0, :pswitch_data_14

    .line 934
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 932
    :pswitch_8
    const-string v0, "UNWRAP_MODE"

    return-object v0

    .line 930
    :pswitch_b
    const-string v0, "WRAP_MODE"

    return-object v0

    .line 928
    :pswitch_e
    const-string v0, "DECRYPT_MODE"

    return-object v0

    .line 926
    :pswitch_11
    const-string v0, "ENCRYPT_MODE"

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected abstract blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation
.end method

.method protected blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;[Landroid/system/keystore2/Authorization;)V
    .registers 3
    .param p2, "keyCharacteristics"    # [Landroid/system/keystore2/Authorization;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;[",
            "Landroid/system/keystore2/Authorization;",
            ")V"
        }
    .end annotation

    .line 1045
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-virtual {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V

    .line 1046
    return-void
.end method

.method protected blacklist createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .registers 3
    .param p1, "operation"    # Landroid/security/KeyStoreOperation;

    .line 408
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .registers 5
    .param p1, "operation"    # Landroid/security/KeyStoreOperation;

    .line 393
    new-instance v0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;I)V

    return-object v0
.end method

.method protected final whitelist test-api engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 666
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 667
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 670
    :cond_b
    if-eqz p1, :cond_7a

    .line 673
    if-eqz p2, :cond_71

    .line 677
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 679
    .local v0, "inputSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 680
    nop

    .line 682
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 681
    invoke-virtual {p0, v1, v3, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1

    .line 683
    .local v1, "outputArray":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3f

    .line 685
    .end local v1    # "outputArray":[B
    :cond_35
    new-array v1, v0, [B

    .line 686
    .local v1, "inputArray":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 687
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v3

    move-object v1, v3

    .line 690
    .local v1, "outputArray":[B
    :goto_3f
    if-eqz v1, :cond_42

    array-length v2, v1

    .line 691
    .local v2, "outputSize":I
    :cond_42
    if-lez v2, :cond_70

    .line 692
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 694
    .local v3, "outputBufferAvailable":I
    :try_start_48
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_4b
    .catch Ljava/nio/BufferOverflowException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 699
    goto :goto_70

    .line 695
    :catch_4c
    move-exception v4

    .line 696
    .local v4, "e":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljavax/crypto/ShortBufferException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Output buffer too small. Produced: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 701
    .end local v3    # "outputBufferAvailable":I
    .end local v4    # "e":Ljava/nio/BufferOverflowException;
    :cond_70
    :goto_70
    return v2

    .line 674
    .end local v0    # "inputSize":I
    .end local v1    # "outputArray":[B
    .end local v2    # "outputSize":I
    :cond_71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 671
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api engineDoFinal([BII[BI)I
    .registers 11
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 646
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 647
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result v0

    return v0

    .line 650
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v0

    .line 651
    .local v0, "outputCopy":[B
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 652
    return v1

    .line 654
    :cond_13
    array-length v2, p4

    sub-int/2addr v2, p5

    .line 655
    .local v2, "outputAvailable":I
    array-length v3, v0

    if-gt v3, v2, :cond_1e

    .line 659
    array-length v3, v0

    invoke-static {v0, v1, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    array-length v1, v0

    return v1

    .line 656
    :cond_1e
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final whitelist test-api engineDoFinal([BII)[B
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_16

    .line 603
    if-nez p1, :cond_f

    if-nez p3, :cond_f

    .line 604
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v0

    return-object v0

    .line 606
    :cond_f
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    return-object v0

    .line 610
    :cond_16
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_6c

    .line 616
    :try_start_1a
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_23
    .catch Ljava/security/InvalidKeyException; {:try_start_1a .. :try_end_23} :catch_5f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1a .. :try_end_23} :catch_5f

    .line 619
    nop

    .line 623
    :try_start_24
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 624
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v0
    :try_end_2e
    .catch Landroid/security/KeyStoreException; {:try_start_24 .. :try_end_2e} :catch_33

    .line 636
    .local v0, "output":[B
    nop

    .line 638
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    .line 639
    return-object v0

    .line 627
    .end local v0    # "output":[B
    :catch_33
    move-exception v0

    .line 628
    .local v0, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_7a

    .line 634
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/IllegalBlockSizeException;

    throw v1

    .line 632
    :sswitch_47
    new-instance v1, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v1}, Ljavax/crypto/AEADBadTagException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/AEADBadTagException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/AEADBadTagException;

    throw v1

    .line 630
    :sswitch_53
    new-instance v1, Ljavax/crypto/BadPaddingException;

    invoke-direct {v1}, Ljavax/crypto/BadPaddingException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/BadPaddingException;

    throw v1

    .line 617
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :catch_5f
    move-exception v0

    .line 618
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljavax/crypto/IllegalBlockSizeException;

    throw v1

    .line 611
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_6c
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 612
    invoke-virtual {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0

    :sswitch_data_7a
    .sparse-switch
        -0x26 -> :sswitch_53
        -0x1e -> :sswitch_47
    .end sparse-switch
.end method

.method protected final whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 868
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected final whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 206
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_2b

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_f

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_2b

    .line 209
    :cond_f
    :try_start_f
    const-string v0, "engineInit"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 211
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_23} :catch_24
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_23} :catch_24

    .line 212
    return-void

    .line 213
    :catch_24
    move-exception v0

    .line 214
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 218
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_2b
    const/4 v0, 0x0

    .line 220
    .local v0, "success":Z
    :try_start_2c
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 221
    invoke-virtual {p0, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V

    .line 222
    invoke-direct {p0, p2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_40

    .line 223
    const/4 v0, 0x1

    .line 225
    if-nez v0, :cond_3f

    .line 226
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 229
    :cond_3f
    return-void

    .line 225
    :catchall_40
    move-exception v1

    if-nez v0, :cond_46

    .line 226
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 228
    :cond_46
    throw v1
.end method

.method protected final whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 10
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 139
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_a3

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_f

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_a3

    .line 142
    :cond_f
    :try_start_f
    const-string v0, "engineInit"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 144
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "transform":Ljava/lang/String;
    const-string v1, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_28
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_28} :catch_9c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_28} :catch_9c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_f .. :try_end_28} :catch_9c

    const-string v2, "SHA-1"

    const-string v3, "MGF1"

    if-eqz v1, :cond_42

    .line 147
    :try_start_2e
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-224"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 151
    .local v1, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 152
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    goto :goto_9b

    :cond_42
    const-string v1, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 153
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-256"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 157
    .restart local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 159
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    goto :goto_9b

    :cond_5e
    const-string v1, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 160
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-384"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 164
    .restart local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 166
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    goto :goto_9b

    :cond_7a
    const-string v1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 167
    new-instance v1, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v4, "SHA-512"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v2}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v1, v4, v3, v5, v2}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 171
    .restart local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2, p1, p2, v1, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 172
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    goto :goto_9b

    .line 173
    :cond_96
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_9b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2e .. :try_end_9b} :catch_9c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_2e .. :try_end_9b} :catch_9c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2e .. :try_end_9b} :catch_9c

    .line 175
    :goto_9b
    return-void

    .line 176
    .end local v0    # "transform":Ljava/lang/String;
    :catch_9c
    move-exception v0

    .line 179
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 183
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_a3
    const/4 v0, 0x0

    .line 185
    .local v0, "success":Z
    :try_start_a4
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 186
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters()V
    :try_end_aa
    .catchall {:try_start_a4 .. :try_end_aa} :catchall_c0

    .line 188
    :try_start_aa
    invoke-direct {p0, p2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_b1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_aa .. :try_end_b1} :catch_b9
    .catchall {:try_start_aa .. :try_end_b1} :catchall_c0

    .line 191
    nop

    .line 192
    const/4 v0, 0x1

    .line 194
    if-nez v0, :cond_b8

    .line 195
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 198
    :cond_b8
    return-void

    .line 189
    :catch_b9
    move-exception v1

    .line 190
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    :try_start_ba
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
    .end local p1    # "opmode":I
    .end local p2    # "key":Ljava/security/Key;
    .end local p3    # "random":Ljava/security/SecureRandom;
    throw v2
    :try_end_c0
    .catchall {:try_start_ba .. :try_end_c0} :catchall_c0

    .line 194
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
    .restart local p1    # "opmode":I
    .restart local p2    # "key":Ljava/security/Key;
    .restart local p3    # "random":Ljava/security/SecureRandom;
    :catchall_c0
    move-exception v1

    if-nez v0, :cond_c6

    .line 195
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 197
    :cond_c6
    throw v1
.end method

.method protected final whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 237
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-nez v0, :cond_2b

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_f

    instance-of v0, p2, Ljava/security/PublicKey;

    if-eqz v0, :cond_2b

    .line 240
    :cond_f
    :try_start_f
    const-string v0, "engineInit"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getTransform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 242
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_23} :catch_24
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_f .. :try_end_23} :catch_24

    .line 243
    return-void

    .line 244
    :catch_24
    move-exception v0

    .line 245
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 249
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_2b
    const/4 v0, 0x0

    .line 251
    .local v0, "success":Z
    :try_start_2c
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 252
    invoke-virtual {p0, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 253
    invoke-direct {p0, p2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_40

    .line 254
    const/4 v0, 0x1

    .line 256
    if-nez v0, :cond_3f

    .line 257
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 260
    :cond_3f
    return-void

    .line 256
    :catchall_40
    move-exception v1

    if-nez v0, :cond_46

    .line 257
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 259
    :cond_46
    throw v1
.end method

.method protected final whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 3
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 856
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 3
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 863
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 9
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 793
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 794
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0

    .line 797
    :cond_b
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_8d

    .line 801
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v0

    if-nez v0, :cond_85

    .line 806
    if-eqz p1, :cond_7c

    .line 812
    :try_start_17
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v0
    :try_end_1d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1d} :catch_73
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1d} :catch_73

    .line 815
    .local v0, "encoded":[B
    nop

    .line 817
    const-string v1, "engineUnwrap"

    invoke-static {v1}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 818
    packed-switch p3, :pswitch_data_96

    .line 847
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported wrappedKeyType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    :pswitch_3f
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 826
    :pswitch_45
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 828
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    :try_start_49
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2
    :try_end_52
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_49 .. :try_end_52} :catch_53

    return-object v2

    .line 829
    :catch_53
    move-exception v2

    .line 830
    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Failed to create private key from its PKCS#8 encoded form"

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 837
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :pswitch_5c
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 839
    .restart local v1    # "keyFactory":Ljava/security/KeyFactory;
    :try_start_60
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2
    :try_end_69
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_60 .. :try_end_69} :catch_6a

    return-object v2

    .line 840
    :catch_6a
    move-exception v2

    .line 841
    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Failed to create public key from its X.509 encoded form"

    invoke-direct {v3, v4, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 813
    .end local v0    # "encoded":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_73
    move-exception v0

    .line 814
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Failed to unwrap key"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 807
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_7c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "wrappedKey == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_8d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initilized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_45
        :pswitch_3f
    .end packed-switch
.end method

.method protected final whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 488
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/Cipher;->update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 491
    :cond_b
    if-eqz p1, :cond_7a

    .line 494
    if-eqz p2, :cond_71

    .line 498
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 500
    .local v0, "inputSize":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 501
    nop

    .line 503
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v3, v4

    .line 502
    invoke-virtual {p0, v1, v3, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v1

    .line 504
    .local v1, "outputArray":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3f

    .line 506
    .end local v1    # "outputArray":[B
    :cond_35
    new-array v1, v0, [B

    .line 507
    .local v1, "inputArray":[B
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 508
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v3

    move-object v1, v3

    .line 511
    .local v1, "outputArray":[B
    :goto_3f
    if-eqz v1, :cond_42

    array-length v2, v1

    .line 512
    .local v2, "outputSize":I
    :cond_42
    if-lez v2, :cond_70

    .line 513
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    .line 515
    .local v3, "outputBufferAvailable":I
    :try_start_48
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_4b
    .catch Ljava/nio/BufferOverflowException; {:try_start_48 .. :try_end_4b} :catch_4c

    .line 520
    goto :goto_70

    .line 516
    :catch_4c
    move-exception v4

    .line 517
    .local v4, "e":Ljava/nio/BufferOverflowException;
    new-instance v5, Ljavax/crypto/ShortBufferException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Output buffer too small. Produced: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", available: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 522
    .end local v3    # "outputBufferAvailable":I
    .end local v4    # "e":Ljava/nio/BufferOverflowException;
    :cond_70
    :goto_70
    return v2

    .line 495
    .end local v0    # "inputSize":I
    .end local v1    # "outputArray":[B
    .end local v2    # "outputSize":I
    :cond_71
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_7a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "input == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api engineUpdate([BII[BI)I
    .registers 11
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 468
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 469
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v0

    return v0

    .line 471
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v0

    .line 472
    .local v0, "outputCopy":[B
    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 473
    return v1

    .line 475
    :cond_13
    array-length v2, p4

    sub-int/2addr v2, p5

    .line 476
    .local v2, "outputAvailable":I
    array-length v3, v0

    if-gt v3, v2, :cond_1e

    .line 480
    array-length v3, v0

    invoke-static {v0, v1, p4, p5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    array-length v1, v0

    return v1

    .line 477
    :cond_1e
    new-instance v1, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final whitelist test-api engineUpdate([BII)[B
    .registers 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 413
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 414
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    return-object v0

    .line 417
    :cond_b
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 418
    return-object v1

    .line 421
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_1a
    .catch Ljava/security/InvalidKeyException; {:try_start_11 .. :try_end_1a} :catch_31
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_11 .. :try_end_1a} :catch_31

    .line 425
    nop

    .line 427
    if-nez p3, :cond_1e

    .line 428
    return-object v1

    .line 433
    :cond_1e
    :try_start_1e
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    .line 434
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0
    :try_end_27
    .catch Landroid/security/KeyStoreException; {:try_start_1e .. :try_end_27} :catch_2d

    .line 438
    .local v0, "output":[B
    nop

    .line 440
    array-length v2, v0

    if-nez v2, :cond_2c

    .line 441
    return-object v1

    .line 444
    :cond_2c
    return-object v0

    .line 435
    .end local v0    # "output":[B
    :catch_2d
    move-exception v0

    .line 436
    .local v0, "e":Landroid/security/KeyStoreException;
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 437
    return-object v1

    .line 422
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :catch_31
    move-exception v0

    .line 423
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 424
    return-object v1
.end method

.method protected final whitelist test-api engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 569
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_f

    .line 570
    const-string v0, "engineUpdateAAD"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->updateAAD(Ljava/nio/ByteBuffer;)V

    .line 572
    return-void

    .line 575
    :cond_f
    if-eqz p1, :cond_46

    .line 578
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_18

    .line 579
    return-void

    .line 585
    :cond_18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 586
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 587
    .local v0, "input":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 588
    .local v1, "inputOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 589
    .local v2, "inputLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_42

    .line 591
    .end local v0    # "input":[B
    .end local v1    # "inputOffset":I
    .end local v2    # "inputLen":I
    :cond_37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 592
    .restart local v0    # "input":[B
    const/4 v1, 0x0

    .line 593
    .restart local v1    # "inputOffset":I
    array-length v2, v0

    .line 594
    .restart local v2    # "inputLen":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 596
    :goto_42
    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineUpdateAAD([BII)V

    .line 597
    return-void

    .line 576
    .end local v0    # "input":[B
    .end local v1    # "inputOffset":I
    .end local v2    # "inputLen":I
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api engineUpdateAAD([BII)V
    .registers 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 527
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_f

    .line 528
    const-string v0, "engineUpdateAAD"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 529
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 530
    return-void

    .line 533
    :cond_f
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_14

    .line 534
    return-void

    .line 538
    :cond_14
    :try_start_14
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->getKeyCharacteristics(Ljava/security/Key;)[Landroid/system/keystore2/Authorization;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized([Landroid/system/keystore2/Authorization;)V
    :try_end_1d
    .catch Ljava/security/InvalidKeyException; {:try_start_14 .. :try_end_1d} :catch_68
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_14 .. :try_end_1d} :catch_68

    .line 542
    nop

    .line 544
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-nez v0, :cond_60

    .line 549
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_58

    .line 555
    :try_start_26
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0
    :try_end_2c
    .catch Landroid/security/KeyStoreException; {:try_start_26 .. :try_end_2c} :catch_54

    .line 559
    .local v0, "output":[B
    nop

    .line 561
    if-eqz v0, :cond_53

    array-length v1, v0

    if-gtz v1, :cond_33

    goto :goto_53

    .line 562
    :cond_33
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AAD update unexpectedly produced output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :cond_53
    :goto_53
    return-void

    .line 556
    .end local v0    # "output":[B
    :catch_54
    move-exception v0

    .line 557
    .local v0, "e":Landroid/security/KeyStoreException;
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 558
    return-void

    .line 550
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :cond_58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This cipher does not support AAD"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AAD can only be provided before Cipher.update is invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :catch_68
    move-exception v0

    .line 540
    .local v0, "e":Ljava/security/GeneralSecurityException;
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 541
    return-void
.end method

.method protected final whitelist test-api engineWrap(Ljava/security/Key;)[B
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_b

    .line 708
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0

    .line 711
    :cond_b
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_109

    .line 715
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 720
    if-eqz p1, :cond_f8

    .line 723
    const/4 v0, 0x0

    .line 724
    .local v0, "encoded":[B
    const-string v1, "engineWrap"

    invoke-static {v1}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 725
    instance-of v1, p1, Ljavax/crypto/SecretKey;

    const-string v2, "Failed to wrap key because it does not export its key material"

    if-eqz v1, :cond_55

    .line 726
    const-string v1, "RAW"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 727
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 729
    :cond_33
    if-nez v0, :cond_bb

    .line 731
    :try_start_35
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 732
    .local v1, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    move-object v3, p1

    check-cast v3, Ljavax/crypto/SecretKey;

    const-class v4, Ljavax/crypto/spec/SecretKeySpec;

    .line 733
    invoke-virtual {v1, v3, v4}, Ljavax/crypto/SecretKeyFactory;->getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/SecretKeySpec;

    .line 735
    .local v3, "spec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v3}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v4
    :try_end_4c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_35 .. :try_end_4c} :catch_4e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_35 .. :try_end_4c} :catch_4e

    move-object v0, v4

    .line 740
    .end local v1    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v3    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_bb

    .line 736
    :catch_4e
    move-exception v1

    .line 737
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 742
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_55
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_88

    .line 743
    const-string v1, "PKCS8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 744
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 746
    :cond_69
    if-nez v0, :cond_bb

    .line 748
    :try_start_6b
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 749
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    const-class v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 750
    invoke-virtual {v1, p1, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 751
    .local v3, "spec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v3}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v4
    :try_end_7f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6b .. :try_end_7f} :catch_81
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_6b .. :try_end_7f} :catch_81

    move-object v0, v4

    .line 756
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "spec":Ljava/security/spec/PKCS8EncodedKeySpec;
    goto :goto_bb

    .line 752
    :catch_81
    move-exception v1

    .line 753
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 758
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_88
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_d7

    .line 759
    const-string v1, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9c

    .line 760
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 762
    :cond_9c
    if-nez v0, :cond_bb

    .line 764
    :try_start_9e
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 765
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    const-class v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 766
    invoke-virtual {v1, p1, v3}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/X509EncodedKeySpec;

    .line 767
    .local v3, "spec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v3}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v4
    :try_end_b2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9e .. :try_end_b2} :catch_b4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_9e .. :try_end_b2} :catch_b4

    move-object v0, v4

    .line 772
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "spec":Ljava/security/spec/X509EncodedKeySpec;
    goto :goto_bb

    .line 768
    :catch_b4
    move-exception v1

    .line 769
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v2, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 778
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_bb
    :goto_bb
    if-eqz v0, :cond_d1

    .line 784
    :try_start_bd
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1
    :try_end_c3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_bd .. :try_end_c3} :catch_c4

    return-object v1

    .line 785
    :catch_c4
    move-exception v1

    .line 786
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v2, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljavax/crypto/IllegalBlockSizeException;

    throw v2

    .line 779
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :cond_d1
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 775
    :cond_d7
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/Key;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    .end local v0    # "encoded":[B
    :cond_f8
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initilized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 875
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 877
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 878
    nop

    .line 879
    return-void

    .line 877
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 878
    throw v0
.end method

.method protected abstract blacklist getAdditionalEntropyAmountForBegin()I
.end method

.method protected abstract blacklist getAdditionalEntropyAmountForFinish()I
.end method

.method protected final blacklist getConsumedInputSizeBytes()J
    .registers 3

    .line 910
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_b

    .line 913
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    move-result-wide v0

    return-wide v0

    .line 911
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist getKeymasterPurposeOverride()I
    .registers 2

    .line 898
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    return v0
.end method

.method public final blacklist getOperationHandle()J
    .registers 3

    .line 883
    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    return-wide v0
.end method

.method protected final blacklist getProducedOutputSizeBytes()J
    .registers 3

    .line 917
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_b

    .line 920
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    move-result-wide v0

    return-wide v0

    .line 918
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract blacklist getTransform()Ljava/lang/String;
.end method

.method protected abstract blacklist initAlgorithmSpecificParameters()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract blacklist initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract blacklist initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract blacklist initKey(ILjava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected final blacklist isEncrypting()Z
    .registers 2

    .line 906
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    return v0
.end method

.method protected abstract blacklist loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
.end method

.method protected blacklist resetAll()V
    .registers 5

    .line 296
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    .line 298
    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 299
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 300
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    .line 301
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 302
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 303
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 304
    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 305
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 306
    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCipher:Ljavax/crypto/Cipher;

    .line 307
    return-void
.end method

.method protected blacklist resetWhilePreservingInitState()V
    .registers 3

    .line 319
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->abortOperation()V

    .line 320
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mOperationChallenge:J

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 322
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 323
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    .line 324
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 325
    return-void
.end method

.method protected final blacklist setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V
    .registers 2
    .param p1, "key"    # Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 887
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 888
    return-void
.end method

.method protected final blacklist setKeymasterPurposeOverride(I)V
    .registers 2
    .param p1, "keymasterPurpose"    # I

    .line 894
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    .line 895
    return-void
.end method
