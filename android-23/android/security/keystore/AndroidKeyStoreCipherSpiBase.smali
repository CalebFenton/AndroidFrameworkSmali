.class abstract Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.super Ljavax/crypto/CipherSpi;
.source "AndroidKeyStoreCipherSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# instance fields
.field private mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mAdditionalAuthenticationDataStreamerClosed:Z

.field private mCachedException:Ljava/lang/Exception;

.field private mEncrypting:Z

.field private mKey:Landroid/security/keystore/AndroidKeyStoreKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterPurposeOverride:I

.field private mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;

.field private mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    #@3
    .line 71
    const/4 v0, -0x1

    #@4
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    #@6
    .line 95
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@c
    .line 94
    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 226
    return-void

    #@5
    .line 228
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 229
    return-void

    #@a
    .line 231
    :cond_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@c
    if-nez v0, :cond_2

    #@e
    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    const-string/jumbo v1, "Not initialized"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 235
    :cond_2
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    #@19
    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@1c
    .line 236
    .local v4, "keymasterInputArgs":Landroid/security/keymaster/KeymasterArguments;
    invoke-virtual {p0, v4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    #@1f
    .line 238
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    #@21
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getAdditionalEntropyAmountForBegin()I

    #@24
    move-result v1

    #@25
    .line 237
    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    #@28
    move-result-object v5

    #@29
    .line 241
    .local v5, "additionalEntropy":[B
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    #@2b
    const/4 v1, -0x1

    #@2c
    if-eq v0, v1, :cond_3

    #@2e
    .line 242
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    #@30
    .line 247
    .local v2, "purpose":I
    :goto_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@32
    .line 248
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@34
    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    .line 250
    const/4 v3, 0x1

    #@39
    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    #@3c
    move-result-object v7

    #@3d
    .line 253
    .local v7, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v7, :cond_5

    #@3f
    .line 254
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    #@41
    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    #@44
    throw v0

    #@45
    .line 244
    .end local v2    # "purpose":I
    .end local v7    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_3
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    #@47
    if-eqz v0, :cond_4

    #@49
    .line 245
    const/4 v2, 0x0

    #@4a
    .restart local v2    # "purpose":I
    goto :goto_0

    #@4b
    .end local v2    # "purpose":I
    :cond_4
    const/4 v2, 0x1

    #@4c
    .restart local v2    # "purpose":I
    goto :goto_0

    #@4d
    .line 259
    .restart local v7    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_5
    iget-object v0, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    #@4f
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@51
    .line 260
    iget-wide v0, v7, Landroid/security/keymaster/OperationResult;->operationHandle:J

    #@53
    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    #@55
    .line 264
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@57
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@59
    iget v3, v7, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@5b
    .line 263
    invoke-static {v0, v1, v3}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getExceptionForCipherInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/GeneralSecurityException;

    #@5e
    move-result-object v6

    #@5f
    .line 265
    .local v6, "e":Ljava/security/GeneralSecurityException;
    if-eqz v6, :cond_8

    #@61
    .line 266
    instance-of v0, v6, Ljava/security/InvalidKeyException;

    #@63
    if-eqz v0, :cond_6

    #@65
    .line 267
    check-cast v6, Ljava/security/InvalidKeyException;

    #@67
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    throw v6

    #@68
    .line 268
    .restart local v6    # "e":Ljava/security/GeneralSecurityException;
    :cond_6
    instance-of v0, v6, Ljava/security/InvalidAlgorithmParameterException;

    #@6a
    if-eqz v0, :cond_7

    #@6c
    .line 269
    check-cast v6, Ljava/security/InvalidAlgorithmParameterException;

    #@6e
    .end local v6    # "e":Ljava/security/GeneralSecurityException;
    throw v6

    #@6f
    .line 271
    .restart local v6    # "e":Ljava/security/GeneralSecurityException;
    :cond_7
    new-instance v0, Ljava/security/ProviderException;

    #@71
    const-string/jumbo v1, "Unexpected exception type"

    #@74
    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@77
    throw v0

    #@78
    .line 275
    :cond_8
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@7a
    if-nez v0, :cond_9

    #@7c
    .line 276
    new-instance v0, Ljava/security/ProviderException;

    #@7e
    const-string/jumbo v1, "Keystore returned null operation token"

    #@81
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@84
    throw v0

    #@85
    .line 278
    :cond_9
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    #@87
    const-wide/16 v8, 0x0

    #@89
    cmp-long v0, v0, v8

    #@8b
    if-nez v0, :cond_a

    #@8d
    .line 279
    new-instance v0, Ljava/security/ProviderException;

    #@8f
    const-string/jumbo v1, "Keystore returned invalid operation handle"

    #@92
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@95
    throw v0

    #@96
    .line 282
    :cond_a
    iget-object v0, v7, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    #@98
    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V

    #@9b
    .line 283
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@9d
    iget-object v1, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    #@9f
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@a2
    move-result-object v0

    #@a3
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@a5
    .line 285
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@a7
    iget-object v1, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    #@a9
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@ac
    move-result-object v0

    #@ad
    .line 284
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@af
    .line 286
    const/4 v0, 0x0

    #@b0
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    #@b2
    .line 224
    return-void
.end method

.method private flushAAD()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 350
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 351
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 349
    :cond_0
    return-void

    #@a
    .line 354
    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@c
    .line 355
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    #@e
    const/4 v2, 0x0

    #@f
    const/4 v3, 0x0

    #@10
    .line 356
    const/4 v4, 0x0

    #@11
    .line 357
    const/4 v5, 0x0

    #@12
    .line 354
    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-object v6

    #@16
    .line 360
    .local v6, "output":[B
    iput-boolean v7, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    #@18
    .line 362
    if-eqz v6, :cond_0

    #@1a
    array-length v0, v6

    #@1b
    if-lez v0, :cond_0

    #@1d
    .line 363
    new-instance v0, Ljava/security/ProviderException;

    #@1f
    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "AAD update unexpectedly returned data: "

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    array-length v2, v6

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string/jumbo v2, " bytes"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    .line 363
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 359
    .end local v6    # "output":[B
    :catchall_0
    move-exception v0

    #@40
    .line 360
    iput-boolean v7, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    #@42
    .line 359
    throw v0
.end method

.method private init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    #@3
    .line 167
    new-instance v0, Ljava/security/InvalidParameterException;

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "Unsupported opmode: "

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 160
    :pswitch_0
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    #@20
    .line 169
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initKey(ILjava/security/Key;)V

    #@23
    .line 170
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@25
    if-nez v0, :cond_0

    #@27
    .line 171
    new-instance v0, Ljava/security/ProviderException;

    #@29
    const-string/jumbo v1, "initKey did not initialize the key"

    #@2c
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v0

    #@30
    .line 164
    :pswitch_1
    const/4 v0, 0x0

    #@31
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    #@33
    goto :goto_0

    #@34
    .line 173
    :cond_0
    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    #@36
    .line 156
    return-void

    #@37
    .line 157
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static opmodeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "opmode"    # I

    #@0
    .prologue
    .line 735
    packed-switch p0, :pswitch_data_0

    #@3
    .line 745
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 737
    :pswitch_0
    const-string/jumbo v0, "ENCRYPT_MODE"

    #@b
    return-object v0

    #@c
    .line 739
    :pswitch_1
    const-string/jumbo v0, "DECRYPT_MODE"

    #@f
    return-object v0

    #@10
    .line 741
    :pswitch_2
    const-string/jumbo v0, "WRAP_MODE"

    #@13
    return-object v0

    #@14
    .line 743
    :pswitch_3
    const-string/jumbo v0, "UNWRAP_MODE"

    #@17
    return-object v0

    #@18
    .line 735
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected abstract addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 1
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 314
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 2
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 298
    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    #@2
    .line 299
    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    #@7
    .line 298
    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    #@a
    return-object v0
.end method

.method protected final engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 514
    invoke-super {p0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected final engineDoFinal([BII[BI)I
    .locals 5
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

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 498
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    #@4
    move-result-object v1

    #@5
    .line 499
    .local v1, "outputCopy":[B
    if-nez v1, :cond_0

    #@7
    .line 500
    return v3

    #@8
    .line 502
    :cond_0
    array-length v2, p4

    #@9
    sub-int v0, v2, p5

    #@b
    .line 503
    .local v0, "outputAvailable":I
    array-length v2, v1

    #@c
    if-le v2, v0, :cond_1

    #@e
    .line 504
    new-instance v2, Ljavax/crypto/ShortBufferException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Output buffer too short. Produced: "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    .line 505
    array-length v4, v1

    #@1d
    .line 504
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    .line 505
    const-string/jumbo v4, ", available: "

    #@24
    .line 504
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 507
    :cond_1
    array-length v2, v1

    #@35
    invoke-static {v1, v3, p4, p5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@38
    .line 508
    array-length v2, v1

    #@39
    return v2
.end method

.method protected final engineDoFinal([BII)[B
    .locals 9
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 456
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 458
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    #@6
    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    #@9
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    #@b
    invoke-virtual {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@e
    move-result-object v0

    #@f
    .line 457
    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    #@11
    throw v0

    #@12
    .line 462
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 469
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    #@18
    .line 472
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    #@1a
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getAdditionalEntropyAmountForFinish()I

    #@1d
    move-result v1

    #@1e
    .line 471
    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    #@21
    move-result-object v5

    #@22
    .line 473
    .local v5, "additionalEntropy":[B
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@24
    .line 475
    const/4 v4, 0x0

    #@25
    move-object v1, p1

    #@26
    move v2, p2

    #@27
    move v3, p3

    #@28
    .line 473
    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    move-result-object v8

    #@2c
    .line 490
    .local v8, "output":[B
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    #@2f
    .line 491
    return-object v8

    #@30
    .line 463
    .end local v5    # "additionalEntropy":[B
    .end local v8    # "output":[B
    :catch_0
    move-exception v7

    #@31
    .line 464
    .local v7, "e":Ljava/security/GeneralSecurityException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    #@33
    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    #@36
    invoke-virtual {v0, v7}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@39
    move-result-object v0

    #@3a
    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    #@3c
    throw v0

    #@3d
    .line 477
    .end local v7    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v6

    #@3e
    .line 478
    .local v6, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v6}, Landroid/security/KeyStoreException;->getErrorCode()I

    #@41
    move-result v0

    #@42
    sparse-switch v0, :sswitch_data_0

    #@45
    .line 486
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    #@47
    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    #@4a
    invoke-virtual {v0, v6}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@4d
    move-result-object v0

    #@4e
    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    #@50
    throw v0

    #@51
    .line 480
    :sswitch_0
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    #@53
    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    #@56
    invoke-virtual {v0, v6}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@59
    move-result-object v0

    #@5a
    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    #@5c
    throw v0

    #@5d
    .line 482
    :sswitch_1
    new-instance v0, Ljavax/crypto/BadPaddingException;

    #@5f
    invoke-direct {v0}, Ljavax/crypto/BadPaddingException;-><init>()V

    #@62
    invoke-virtual {v0, v6}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@65
    move-result-object v0

    #@66
    check-cast v0, Ljavax/crypto/BadPaddingException;

    #@68
    throw v0

    #@69
    .line 484
    :sswitch_2
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    #@6b
    invoke-direct {v0}, Ljavax/crypto/AEADBadTagException;-><init>()V

    #@6e
    invoke-virtual {v0, v6}, Ljavax/crypto/AEADBadTagException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@71
    move-result-object v0

    #@72
    check-cast v0, Ljavax/crypto/AEADBadTagException;

    #@74
    throw v0

    #@75
    .line 478
    nop

    #@76
    :sswitch_data_0
    .sparse-switch
        -0x26 -> :sswitch_1
        -0x1e -> :sswitch_2
        -0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 671
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 2
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

    #@0
    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@3
    .line 125
    const/4 v0, 0x0

    #@4
    .line 127
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    #@7
    .line 128
    invoke-virtual {p0, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V

    #@a
    .line 129
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 130
    const/4 v0, 0x1

    #@e
    .line 132
    if-nez v0, :cond_0

    #@10
    .line 133
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@13
    .line 122
    :cond_0
    return-void

    #@14
    .line 131
    :catchall_0
    move-exception v1

    #@15
    .line 132
    if-nez v0, :cond_1

    #@17
    .line 133
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@1a
    .line 131
    :cond_1
    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@3
    .line 103
    const/4 v1, 0x0

    #@4
    .line 105
    .local v1, "success":Z
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    #@7
    .line 106
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 108
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d
    .line 112
    const/4 v1, 0x1

    #@e
    .line 114
    if-nez v1, :cond_0

    #@10
    .line 115
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@13
    .line 100
    :cond_0
    return-void

    #@14
    .line 109
    :catch_0
    move-exception v0

    #@15
    .line 110
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    :try_start_2
    new-instance v2, Ljava/security/InvalidKeyException;

    #@17
    invoke-direct {v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    #@1a
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    .line 113
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catchall_0
    move-exception v2

    #@1c
    .line 114
    if-nez v1, :cond_1

    #@1e
    .line 115
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@21
    .line 113
    :cond_1
    throw v2
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
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

    #@0
    .prologue
    .line 141
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@3
    .line 143
    const/4 v0, 0x0

    #@4
    .line 145
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    #@7
    .line 146
    invoke-virtual {p0, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    #@a
    .line 147
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 148
    const/4 v0, 0x1

    #@e
    .line 150
    if-nez v0, :cond_0

    #@10
    .line 151
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@13
    .line 140
    :cond_0
    return-void

    #@14
    .line 149
    :catchall_0
    move-exception v1

    #@15
    .line 150
    if-nez v0, :cond_1

    #@17
    .line 151
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@1a
    .line 149
    :cond_1
    throw v1
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 659
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected final engineSetPadding(Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    #@0
    .prologue
    .line 666
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 7
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 601
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@2
    if-nez v4, :cond_0

    #@4
    .line 602
    new-instance v4, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v5, "Not initilized"

    #@9
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v4

    #@d
    .line 605
    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 606
    new-instance v4, Ljava/lang/IllegalStateException;

    #@15
    .line 607
    const-string/jumbo v5, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    #@18
    .line 606
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v4

    #@1c
    .line 610
    :cond_1
    if-nez p1, :cond_2

    #@1e
    .line 611
    new-instance v4, Ljava/lang/NullPointerException;

    #@20
    const-string/jumbo v5, "wrappedKey == null"

    #@23
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@26
    throw v4

    #@27
    .line 616
    :cond_2
    :try_start_0
    array-length v4, p1

    #@28
    const/4 v5, 0x0

    #@29
    invoke-virtual {p0, p1, v5, v4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result-object v2

    #@2d
    .line 621
    .local v2, "encoded":[B
    packed-switch p3, :pswitch_data_0

    #@30
    .line 650
    new-instance v4, Ljava/security/InvalidParameterException;

    #@32
    .line 651
    new-instance v5, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v6, "Unsupported wrappedKeyType: "

    #@3a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v5

    #@3e
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    .line 650
    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    #@49
    throw v4

    #@4a
    .line 617
    .end local v2    # "encoded":[B
    :catch_0
    move-exception v0

    #@4b
    .line 618
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/security/InvalidKeyException;

    #@4d
    const-string/jumbo v5, "Failed to unwrap key"

    #@50
    invoke-direct {v4, v5, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@53
    throw v4

    #@54
    .line 624
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v2    # "encoded":[B
    :pswitch_0
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    #@56
    invoke-direct {v4, v2, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    #@59
    return-object v4

    #@5a
    .line 629
    :pswitch_1
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@5d
    move-result-object v3

    #@5e
    .line 631
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    :try_start_1
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@60
    invoke-direct {v4, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    #@63
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    #@66
    move-result-object v4

    #@67
    return-object v4

    #@68
    .line 632
    :catch_1
    move-exception v1

    #@69
    .line 633
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/security/InvalidKeyException;

    #@6b
    .line 634
    const-string/jumbo v5, "Failed to create private key from its PKCS#8 encoded form"

    #@6e
    .line 633
    invoke-direct {v4, v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@71
    throw v4

    #@72
    .line 640
    .end local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    :pswitch_2
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@75
    move-result-object v3

    #@76
    .line 642
    .restart local v3    # "keyFactory":Ljava/security/KeyFactory;
    :try_start_2
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    #@78
    invoke-direct {v4, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    #@7b
    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    #@7e
    move-result-object v4

    #@7f
    return-object v4

    #@80
    .line 643
    :catch_2
    move-exception v1

    #@81
    .line 644
    .restart local v1    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v4, Ljava/security/InvalidKeyException;

    #@83
    .line 645
    const-string/jumbo v5, "Failed to create public key from its X.509 encoded form"

    #@86
    .line 644
    invoke-direct {v4, v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@89
    throw v4

    #@8a
    .line 621
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    invoke-super {p0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected final engineUpdate([BII[BI)I
    .locals 5
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

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 372
    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    #@4
    move-result-object v1

    #@5
    .line 373
    .local v1, "outputCopy":[B
    if-nez v1, :cond_0

    #@7
    .line 374
    return v3

    #@8
    .line 376
    :cond_0
    array-length v2, p4

    #@9
    sub-int v0, v2, p5

    #@b
    .line 377
    .local v0, "outputAvailable":I
    array-length v2, v1

    #@c
    if-le v2, v0, :cond_1

    #@e
    .line 378
    new-instance v2, Ljavax/crypto/ShortBufferException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Output buffer too short. Produced: "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    .line 379
    array-length v4, v1

    #@1d
    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    .line 379
    const-string/jumbo v4, ", available: "

    #@24
    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 381
    :cond_1
    array-length v2, v1

    #@35
    invoke-static {v1, v3, p4, p5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@38
    .line 382
    array-length v2, v1

    #@39
    return v2
.end method

.method protected final engineUpdate([BII)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 319
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    #@3
    if-eqz v3, :cond_0

    #@5
    .line 320
    return-object v4

    #@6
    .line 323
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 329
    if-nez p3, :cond_1

    #@b
    .line 330
    return-object v4

    #@c
    .line 324
    :catch_0
    move-exception v1

    #@d
    .line 325
    .local v1, "e":Ljava/security/GeneralSecurityException;
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    #@f
    .line 326
    return-object v4

    #@10
    .line 335
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    #@13
    .line 336
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@15
    invoke-interface {v3, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    #@18
    move-result-object v2

    #@19
    .line 342
    .local v2, "output":[B
    array-length v3, v2

    #@1a
    if-nez v3, :cond_2

    #@1c
    .line 343
    return-object v4

    #@1d
    .line 337
    .end local v2    # "output":[B
    :catch_1
    move-exception v0

    #@1e
    .line 338
    .local v0, "e":Landroid/security/KeyStoreException;
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    #@20
    .line 339
    return-object v4

    #@21
    .line 346
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v2    # "output":[B
    :cond_2
    return-object v2
.end method

.method protected final engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 429
    if-nez p1, :cond_0

    #@2
    .line 430
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v4, "src == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 432
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@e
    move-result v3

    #@f
    if-nez v3, :cond_1

    #@11
    .line 433
    return-void

    #@12
    .line 439
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    .line 440
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@1b
    move-result-object v0

    #@1c
    .line 441
    .local v0, "input":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@1f
    move-result v3

    #@20
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@23
    move-result v4

    #@24
    add-int v2, v3, v4

    #@26
    .line 442
    .local v2, "inputOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@29
    move-result v1

    #@2a
    .line 443
    .local v1, "inputLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@2d
    move-result v3

    #@2e
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@31
    .line 450
    :goto_0
    invoke-virtual {p0, v0, v2, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdateAAD([BII)V

    #@34
    .line 428
    return-void

    #@35
    .line 445
    .end local v0    # "input":[B
    .end local v1    # "inputLen":I
    .end local v2    # "inputOffset":I
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@38
    move-result v3

    #@39
    new-array v0, v3, [B

    #@3b
    .line 446
    .restart local v0    # "input":[B
    const/4 v2, 0x0

    #@3c
    .line 447
    .restart local v2    # "inputOffset":I
    array-length v1, v0

    #@3d
    .line 448
    .restart local v1    # "inputLen":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@40
    goto :goto_0
.end method

.method protected final engineUpdateAAD([BII)V
    .locals 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    .line 393
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 394
    return-void

    #@5
    .line 398
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 404
    iget-boolean v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    #@a
    if-eqz v3, :cond_1

    #@c
    .line 405
    new-instance v3, Ljava/lang/IllegalStateException;

    #@e
    .line 406
    const-string/jumbo v4, "AAD can only be provided before Cipher.update is invoked"

    #@11
    .line 405
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v3

    #@15
    .line 399
    :catch_0
    move-exception v1

    #@16
    .line 400
    .local v1, "e":Ljava/security/GeneralSecurityException;
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    #@18
    .line 401
    return-void

    #@19
    .line 409
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@1b
    if-nez v3, :cond_2

    #@1d
    .line 410
    new-instance v3, Ljava/lang/IllegalStateException;

    #@1f
    const-string/jumbo v4, "This cipher does not support AAD"

    #@22
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v3

    #@26
    .line 415
    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@28
    invoke-interface {v3, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    move-result-object v2

    #@2c
    .line 421
    .local v2, "output":[B
    if-eqz v2, :cond_3

    #@2e
    array-length v3, v2

    #@2f
    if-lez v3, :cond_3

    #@31
    .line 422
    new-instance v3, Ljava/security/ProviderException;

    #@33
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "AAD update unexpectedly produced output: "

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 423
    array-length v5, v2

    #@40
    .line 422
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@43
    move-result-object v4

    #@44
    .line 423
    const-string/jumbo v5, " bytes"

    #@47
    .line 422
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@52
    throw v3

    #@53
    .line 416
    .end local v2    # "output":[B
    :catch_1
    move-exception v0

    #@54
    .line 417
    .local v0, "e":Landroid/security/KeyStoreException;
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    #@56
    .line 418
    return-void

    #@57
    .line 392
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v2    # "output":[B
    :cond_3
    return-void
.end method

.method protected final engineWrap(Ljava/security/Key;)[B
    .locals 11
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 520
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@2
    if-nez v8, :cond_0

    #@4
    .line 521
    new-instance v8, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v9, "Not initilized"

    #@9
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v8

    #@d
    .line 524
    :cond_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    #@10
    move-result v8

    #@11
    if-nez v8, :cond_1

    #@13
    .line 525
    new-instance v8, Ljava/lang/IllegalStateException;

    #@15
    .line 526
    const-string/jumbo v9, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    #@18
    .line 525
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v8

    #@1c
    .line 529
    :cond_1
    if-nez p1, :cond_2

    #@1e
    .line 530
    new-instance v8, Ljava/lang/NullPointerException;

    #@20
    const-string/jumbo v9, "key == null"

    #@23
    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@26
    throw v8

    #@27
    .line 532
    :cond_2
    const/4 v2, 0x0

    #@28
    .line 533
    .local v2, "encoded":[B
    instance-of v8, p1, Ljavax/crypto/SecretKey;

    #@2a
    if-eqz v8, :cond_5

    #@2c
    .line 534
    const-string/jumbo v8, "RAW"

    #@2f
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@32
    move-result-object v9

    #@33
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@36
    move-result v8

    #@37
    if-eqz v8, :cond_3

    #@39
    .line 535
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@3c
    move-result-object v2

    #@3d
    .line 537
    .end local v2    # "encoded":[B
    :cond_3
    if-nez v2, :cond_4

    #@3f
    .line 539
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@42
    move-result-object v8

    #@43
    invoke-static {v8}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    #@46
    move-result-object v4

    #@47
    .line 542
    .local v4, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    check-cast p1, Ljavax/crypto/SecretKey;

    #@49
    .end local p1    # "key":Ljava/security/Key;
    const-class v8, Ljavax/crypto/spec/SecretKeySpec;

    #@4b
    .line 541
    invoke-virtual {v4, p1, v8}, Ljavax/crypto/SecretKeyFactory;->getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@4e
    move-result-object v7

    #@4f
    check-cast v7, Ljavax/crypto/spec/SecretKeySpec;

    #@51
    .line 543
    .local v7, "spec":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    #@54
    move-result-object v2

    #@55
    .line 586
    .end local v4    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "spec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_4
    :goto_0
    if-nez v2, :cond_a

    #@57
    .line 587
    new-instance v8, Ljava/security/InvalidKeyException;

    #@59
    .line 588
    const-string/jumbo v9, "Failed to wrap key because it does not export its key material"

    #@5c
    .line 587
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v8

    #@60
    .line 544
    :catch_0
    move-exception v0

    #@61
    .line 545
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@63
    .line 546
    const-string/jumbo v9, "Failed to wrap key because it does not export its key material"

    #@66
    .line 545
    invoke-direct {v8, v9, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@69
    throw v8

    #@6a
    .line 550
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .restart local v2    # "encoded":[B
    .restart local p1    # "key":Ljava/security/Key;
    :cond_5
    instance-of v8, p1, Ljava/security/PrivateKey;

    #@6c
    if-eqz v8, :cond_7

    #@6e
    .line 551
    const-string/jumbo v8, "PKCS8"

    #@71
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@74
    move-result-object v9

    #@75
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@78
    move-result v8

    #@79
    if-eqz v8, :cond_6

    #@7b
    .line 552
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@7e
    move-result-object v2

    #@7f
    .line 554
    .end local v2    # "encoded":[B
    :cond_6
    if-nez v2, :cond_4

    #@81
    .line 556
    :try_start_1
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@84
    move-result-object v8

    #@85
    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@88
    move-result-object v3

    #@89
    .line 558
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    const-class v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@8b
    invoke-virtual {v3, p1, v8}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@8e
    move-result-object v5

    #@8f
    check-cast v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    #@91
    .line 559
    .local v5, "spec":Ljava/security/spec/PKCS8EncodedKeySpec;
    invoke-virtual {v5}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    #@94
    move-result-object v2

    #@95
    .local v2, "encoded":[B
    goto :goto_0

    #@96
    .line 560
    .end local v2    # "encoded":[B
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "spec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :catch_1
    move-exception v0

    #@97
    .line 561
    .restart local v0    # "e":Ljava/security/GeneralSecurityException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@99
    .line 562
    const-string/jumbo v9, "Failed to wrap key because it does not export its key material"

    #@9c
    .line 561
    invoke-direct {v8, v9, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9f
    throw v8

    #@a0
    .line 566
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .local v2, "encoded":[B
    :cond_7
    instance-of v8, p1, Ljava/security/PublicKey;

    #@a2
    if-eqz v8, :cond_9

    #@a4
    .line 567
    const-string/jumbo v8, "X.509"

    #@a7
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    #@aa
    move-result-object v9

    #@ab
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@ae
    move-result v8

    #@af
    if-eqz v8, :cond_8

    #@b1
    .line 568
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    #@b4
    move-result-object v2

    #@b5
    .line 570
    .end local v2    # "encoded":[B
    :cond_8
    if-nez v2, :cond_4

    #@b7
    .line 572
    :try_start_2
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@ba
    move-result-object v8

    #@bb
    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    #@be
    move-result-object v3

    #@bf
    .line 574
    .restart local v3    # "keyFactory":Ljava/security/KeyFactory;
    const-class v8, Ljava/security/spec/X509EncodedKeySpec;

    #@c1
    invoke-virtual {v3, p1, v8}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    #@c4
    move-result-object v6

    #@c5
    check-cast v6, Ljava/security/spec/X509EncodedKeySpec;

    #@c7
    .line 575
    .local v6, "spec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v6}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    #@ca
    move-result-object v2

    #@cb
    .local v2, "encoded":[B
    goto :goto_0

    #@cc
    .line 576
    .end local v2    # "encoded":[B
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v6    # "spec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_2
    move-exception v0

    #@cd
    .line 577
    .restart local v0    # "e":Ljava/security/GeneralSecurityException;
    new-instance v8, Ljava/security/InvalidKeyException;

    #@cf
    .line 578
    const-string/jumbo v9, "Failed to wrap key because it does not export its key material"

    #@d2
    .line 577
    invoke-direct {v8, v9, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@d5
    throw v8

    #@d6
    .line 583
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    .local v2, "encoded":[B
    :cond_9
    new-instance v8, Ljava/security/InvalidKeyException;

    #@d8
    new-instance v9, Ljava/lang/StringBuilder;

    #@da
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@dd
    const-string/jumbo v10, "Unsupported key type: "

    #@e0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v9

    #@e4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e7
    move-result-object v10

    #@e8
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@eb
    move-result-object v10

    #@ec
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v9

    #@f0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v9

    #@f4
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@f7
    throw v8

    #@f8
    .line 592
    .end local v2    # "encoded":[B
    .end local p1    # "key":Ljava/security/Key;
    :cond_a
    :try_start_3
    array-length v8, v2

    #@f9
    const/4 v9, 0x0

    #@fa
    invoke-virtual {p0, v2, v9, v8}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B
    :try_end_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_3} :catch_3

    #@fd
    move-result-object v8

    #@fe
    return-object v8

    #@ff
    .line 593
    :catch_3
    move-exception v1

    #@100
    .line 594
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v8, Ljavax/crypto/IllegalBlockSizeException;

    #@102
    invoke-direct {v8}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    #@105
    invoke-virtual {v8, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@108
    move-result-object v8

    #@109
    check-cast v8, Ljavax/crypto/IllegalBlockSizeException;

    #@10b
    throw v8
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 678
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@2
    .line 679
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@4
    .line 680
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@6
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 683
    :cond_0
    invoke-super {p0}, Ljavax/crypto/CipherSpi;->finalize()V

    #@c
    .line 676
    return-void

    #@d
    .line 682
    .end local v0    # "operationToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    #@e
    .line 683
    invoke-super {p0}, Ljavax/crypto/CipherSpi;->finalize()V

    #@11
    .line 682
    throw v1
.end method

.method protected abstract getAdditionalEntropyAmountForBegin()I
.end method

.method protected abstract getAdditionalEntropyAmountForFinish()I
.end method

.method protected final getConsumedInputSizeBytes()J
    .locals 2

    #@0
    .prologue
    .line 721
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 722
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 724
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@f
    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    #@12
    move-result-wide v0

    #@13
    return-wide v0
.end method

.method protected final getKeyStore()Landroid/security/KeyStore;
    .locals 1

    #@0
    .prologue
    .line 717
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@2
    return-object v0
.end method

.method protected final getKeymasterPurposeOverride()I
    .locals 1

    #@0
    .prologue
    .line 704
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    #@2
    return v0
.end method

.method public final getOperationHandle()J
    .locals 2

    #@0
    .prologue
    .line 689
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    #@2
    return-wide v0
.end method

.method protected final getProducedOutputSizeBytes()J
    .locals 2

    #@0
    .prologue
    .line 728
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 729
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Not initialized"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 731
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@f
    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    #@12
    move-result-wide v0

    #@13
    return-wide v0
.end method

.method protected abstract initAlgorithmSpecificParameters()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initKey(ILjava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected final isEncrypting()Z
    .locals 1

    #@0
    .prologue
    .line 712
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    #@2
    return v0
.end method

.method protected abstract loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected resetAll()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 185
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@4
    .line 186
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@6
    .line 187
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@8
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    #@b
    .line 189
    :cond_0
    iput-boolean v5, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    #@d
    .line 190
    const/4 v1, -0x1

    #@e
    iput v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    #@10
    .line 191
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@12
    .line 192
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    #@14
    .line 193
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@16
    .line 194
    const-wide/16 v2, 0x0

    #@18
    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    #@1a
    .line 195
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@1c
    .line 196
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@1e
    .line 197
    iput-boolean v5, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    #@20
    .line 198
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    #@22
    .line 184
    return-void
.end method

.method protected resetWhilePreservingInitState()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 211
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@3
    .line 212
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@5
    .line 213
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@7
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    #@a
    .line 215
    :cond_0
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@c
    .line 216
    const-wide/16 v2, 0x0

    #@e
    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    #@10
    .line 217
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@12
    .line 218
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@14
    .line 219
    const/4 v1, 0x0

    #@15
    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    #@17
    .line 220
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    #@19
    .line 210
    return-void
.end method

.method protected final setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 0
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;

    #@0
    .prologue
    .line 693
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@2
    .line 692
    return-void
.end method

.method protected final setKeymasterPurposeOverride(I)V
    .locals 0
    .param p1, "keymasterPurpose"    # I

    #@0
    .prologue
    .line 700
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    #@2
    .line 699
    return-void
.end method
