.class abstract Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;
.super Ljava/security/SignatureSpi;
.source "AndroidKeyStoreSignatureSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# instance fields
.field private mCachedException:Ljava/lang/Exception;

.field private mKey:Landroid/security/keystore/AndroidKeyStoreKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;

.field private mSigning:Z


# direct methods
.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 72
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@9
    .line 71
    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 189
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 190
    return-void

    #@6
    .line 192
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 193
    return-void

    #@b
    .line 195
    :cond_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@d
    if-nez v0, :cond_2

    #@f
    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v1, "Not initialized"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 199
    :cond_2
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    #@1a
    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@1d
    .line 200
    .local v4, "keymasterInputArgs":Landroid/security/keymaster/KeymasterArguments;
    invoke-virtual {p0, v4}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    #@20
    .line 202
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@22
    .line 203
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@24
    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    .line 204
    iget-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    #@2a
    if-eqz v2, :cond_3

    #@2c
    const/4 v2, 0x2

    #@2d
    .line 205
    :goto_0
    const/4 v3, 0x1

    #@2e
    .line 202
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    #@31
    move-result-object v7

    #@32
    .line 209
    .local v7, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v7, :cond_4

    #@34
    .line 210
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    #@36
    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    #@39
    throw v0

    #@3a
    .line 204
    .end local v7    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_3
    const/4 v2, 0x3

    #@3b
    goto :goto_0

    #@3c
    .line 215
    .restart local v7    # "opResult":Landroid/security/keymaster/OperationResult;
    :cond_4
    iget-object v0, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    #@3e
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@40
    .line 216
    iget-wide v0, v7, Landroid/security/keymaster/OperationResult;->operationHandle:J

    #@42
    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    #@44
    .line 220
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@46
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@48
    iget v2, v7, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@4a
    .line 219
    invoke-static {v0, v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    #@4d
    move-result-object v6

    #@4e
    .line 221
    .local v6, "e":Ljava/security/InvalidKeyException;
    if-eqz v6, :cond_5

    #@50
    .line 222
    throw v6

    #@51
    .line 225
    :cond_5
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@53
    if-nez v0, :cond_6

    #@55
    .line 226
    new-instance v0, Ljava/security/ProviderException;

    #@57
    const-string/jumbo v1, "Keystore returned null operation token"

    #@5a
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v0

    #@5e
    .line 228
    :cond_6
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    #@60
    const-wide/16 v2, 0x0

    #@62
    cmp-long v0, v0, v2

    #@64
    if-nez v0, :cond_7

    #@66
    .line 229
    new-instance v0, Ljava/security/ProviderException;

    #@68
    const-string/jumbo v1, "Keystore returned invalid operation handle"

    #@6b
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v0

    #@6f
    .line 232
    :cond_7
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@71
    iget-object v1, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    #@73
    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@76
    move-result-object v0

    #@77
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@79
    .line 188
    return-void
.end method


# virtual methods
.method protected abstract addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .locals 2
    .param p1, "keyStore"    # Landroid/security/KeyStore;
    .param p2, "operationToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 243
    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    #@2
    .line 244
    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    #@4
    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    #@7
    .line 243
    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    #@a
    return-object v0
.end method

.method protected final engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 388
    new-instance v0, Ljava/security/InvalidParameterException;

    #@2
    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    #@5
    throw v0
.end method

.method protected final engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    #@4
    .line 76
    return-void
.end method

.method protected final engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    #@3
    .line 85
    const/4 v2, 0x0

    #@4
    .line 87
    .local v2, "success":Z
    if-nez p1, :cond_1

    #@6
    .line 88
    :try_start_0
    new-instance v3, Ljava/security/InvalidKeyException;

    #@8
    const-string/jumbo v4, "Unsupported key: null"

    #@b
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 101
    :catchall_0
    move-exception v3

    #@10
    .line 102
    if-nez v2, :cond_0

    #@12
    .line 103
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    #@15
    .line 101
    :cond_0
    throw v3

    #@16
    .line 91
    :cond_1
    :try_start_1
    instance-of v3, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    #@18
    if-eqz v3, :cond_3

    #@1a
    .line 92
    move-object v0, p1

    #@1b
    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    #@1d
    move-object v1, v0

    #@1e
    .line 96
    .local v1, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    const/4 v3, 0x1

    #@1f
    iput-boolean v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    #@21
    .line 97
    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    #@24
    .line 98
    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    #@26
    .line 99
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    .line 100
    const/4 v2, 0x1

    #@2a
    .line 102
    if-nez v2, :cond_2

    #@2c
    .line 103
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    #@2f
    .line 82
    :cond_2
    return-void

    #@30
    .line 94
    .end local v1    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_3
    :try_start_2
    new-instance v3, Ljava/security/InvalidKeyException;

    #@32
    new-instance v4, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v5, "Unsupported private key type: "

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v4

    #@46
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@49
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected final engineInitVerify(Ljava/security/PublicKey;)V
    .locals 6
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    #@3
    .line 112
    const/4 v2, 0x0

    #@4
    .line 114
    .local v2, "success":Z
    if-nez p1, :cond_1

    #@6
    .line 115
    :try_start_0
    new-instance v3, Ljava/security/InvalidKeyException;

    #@8
    const-string/jumbo v4, "Unsupported key: null"

    #@b
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .line 128
    :catchall_0
    move-exception v3

    #@10
    .line 129
    if-nez v2, :cond_0

    #@12
    .line 130
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    #@15
    .line 128
    :cond_0
    throw v3

    #@16
    .line 118
    :cond_1
    :try_start_1
    instance-of v3, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@18
    if-eqz v3, :cond_3

    #@1a
    .line 119
    move-object v0, p1

    #@1b
    check-cast v0, Landroid/security/keystore/AndroidKeyStorePublicKey;

    #@1d
    move-object v1, v0

    #@1e
    .line 123
    .local v1, "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    const/4 v3, 0x0

    #@1f
    iput-boolean v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    #@21
    .line 124
    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    #@24
    .line 125
    const/4 v3, 0x0

    #@25
    iput-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    #@27
    .line 126
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2a
    .line 127
    const/4 v2, 0x1

    #@2b
    .line 129
    if-nez v2, :cond_2

    #@2d
    .line 130
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    #@30
    .line 109
    :cond_2
    return-void

    #@31
    .line 121
    .end local v1    # "keystoreKey":Landroid/security/keystore/AndroidKeyStoreKey;
    :cond_3
    :try_start_2
    new-instance v3, Ljava/security/InvalidKeyException;

    #@33
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v5, "Unsupported public key type: "

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected final engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 395
    new-instance v0, Ljava/security/InvalidParameterException;

    #@2
    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    #@5
    throw v0
.end method

.method protected final engineSign([BII)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 312
    invoke-super {p0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected final engineSign()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 317
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 318
    new-instance v0, Ljava/security/SignatureException;

    #@6
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    #@8
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v0

    #@c
    .line 323
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V

    #@f
    .line 327
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    #@11
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->getAdditionalEntropyAmountForSign()I

    #@14
    move-result v1

    #@15
    .line 326
    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    #@18
    move-result-object v5

    #@19
    .line 328
    .local v5, "additionalEntropy":[B
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@1b
    .line 329
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    #@1d
    const/4 v2, 0x0

    #@1e
    const/4 v3, 0x0

    #@1f
    .line 330
    const/4 v4, 0x0

    #@20
    .line 328
    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    move-result-object v7

    #@24
    .line 336
    .local v7, "signature":[B
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    #@27
    .line 337
    return-object v7

    #@28
    .line 332
    .end local v5    # "additionalEntropy":[B
    .end local v7    # "signature":[B
    :catch_0
    move-exception v6

    #@29
    .line 333
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/security/SignatureException;

    #@2b
    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@2e
    throw v0
.end method

.method protected final engineUpdate(B)V
    .locals 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 284
    new-array v0, v2, [B

    #@4
    aput-byte p1, v0, v1

    #@6
    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V

    #@9
    .line 283
    return-void
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 291
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v2

    #@4
    .line 292
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    .line 293
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@d
    move-result-object v0

    #@e
    .line 294
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@11
    move-result v4

    #@12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@15
    move-result v5

    #@16
    add-int v3, v4, v5

    #@18
    .line 295
    .local v3, "off":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@1b
    move-result v4

    #@1c
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@1f
    .line 303
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, v3, v2}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 288
    :goto_1
    return-void

    #@23
    .line 297
    .end local v0    # "b":[B
    .end local v3    # "off":I
    :cond_0
    new-array v0, v2, [B

    #@25
    .line 298
    .restart local v0    # "b":[B
    const/4 v3, 0x0

    #@26
    .line 299
    .restart local v3    # "off":I
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@29
    goto :goto_0

    #@2a
    .line 304
    :catch_0
    move-exception v1

    #@2b
    .line 305
    .local v1, "e":Ljava/security/SignatureException;
    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    #@2d
    goto :goto_1
.end method

.method protected final engineUpdate([BII)V
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 255
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 256
    new-instance v3, Ljava/security/SignatureException;

    #@6
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    #@8
    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v3

    #@c
    .line 260
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 265
    if-nez p3, :cond_1

    #@11
    .line 266
    return-void

    #@12
    .line 261
    :catch_0
    move-exception v1

    #@13
    .line 262
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/security/SignatureException;

    #@15
    invoke-direct {v3, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@18
    throw v3

    #@19
    .line 271
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@1b
    invoke-interface {v3, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    #@1e
    move-result-object v2

    #@1f
    .line 276
    .local v2, "output":[B
    array-length v3, v2

    #@20
    if-eqz v3, :cond_2

    #@22
    .line 277
    new-instance v3, Ljava/security/ProviderException;

    #@24
    .line 278
    new-instance v4, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "Update operation unexpectedly produced output: "

    #@2c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    array-length v5, v2

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    const-string/jumbo v5, " bytes"

    #@38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 277
    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@43
    throw v3

    #@44
    .line 272
    .end local v2    # "output":[B
    :catch_1
    move-exception v0

    #@45
    .line 273
    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v3, Ljava/security/SignatureException;

    #@47
    invoke-direct {v3, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@4a
    throw v3

    #@4b
    .line 254
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v2    # "output":[B
    :cond_2
    return-void
.end method

.method protected final engineVerify([B)Z
    .locals 10
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 342
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 343
    new-instance v0, Ljava/security/SignatureException;

    #@6
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    #@8
    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@b
    throw v0

    #@c
    .line 347
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    #@f
    .line 354
    :try_start_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@11
    .line 355
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    #@13
    const/4 v2, 0x0

    #@14
    const/4 v3, 0x0

    #@15
    .line 357
    const/4 v5, 0x0

    #@16
    move-object v4, p1

    #@17
    .line 354
    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    #@1a
    move-result-object v8

    #@1b
    .line 359
    .local v8, "output":[B
    array-length v0, v8

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 360
    new-instance v0, Ljava/security/ProviderException;

    #@20
    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v2, "Signature verification unexpected produced output: "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    array-length v2, v8

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    .line 362
    const-string/jumbo v2, " bytes"

    #@34
    .line 361
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 360
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v0
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    #@40
    .line 365
    .end local v8    # "output":[B
    :catch_0
    move-exception v6

    #@41
    .line 366
    .local v6, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v6}, Landroid/security/KeyStoreException;->getErrorCode()I

    #@44
    move-result v0

    #@45
    packed-switch v0, :pswitch_data_0

    #@48
    .line 371
    new-instance v0, Ljava/security/SignatureException;

    #@4a
    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@4d
    throw v0

    #@4e
    .line 348
    .end local v6    # "e":Landroid/security/KeyStoreException;
    :catch_1
    move-exception v7

    #@4f
    .line 349
    .local v7, "e":Ljava/security/InvalidKeyException;
    new-instance v0, Ljava/security/SignatureException;

    #@51
    invoke-direct {v0, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    #@54
    throw v0

    #@55
    .line 364
    .end local v7    # "e":Ljava/security/InvalidKeyException;
    .restart local v8    # "output":[B
    :cond_1
    const/4 v9, 0x1

    #@56
    .line 375
    .end local v8    # "output":[B
    .local v9, "verified":Z
    :goto_0
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    #@59
    .line 376
    return v9

    #@5a
    .line 368
    .end local v9    # "verified":Z
    .restart local v6    # "e":Landroid/security/KeyStoreException;
    :pswitch_0
    const/4 v9, 0x0

    #@5b
    .line 369
    .restart local v9    # "verified":Z
    goto :goto_0

    #@5c
    .line 366
    :pswitch_data_0
    .packed-switch -0x1e
        :pswitch_0
    .end packed-switch
.end method

.method protected final engineVerify([BII)Z
    .locals 1
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    invoke-static {p1, p2, p3}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineVerify([B)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected abstract getAdditionalEntropyAmountForSign()I
.end method

.method protected final getKeyStore()Landroid/security/KeyStore;
    .locals 1

    #@0
    .prologue
    .line 399
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@2
    return-object v0
.end method

.method public final getOperationHandle()J
    .locals 2

    #@0
    .prologue
    .line 250
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    #@2
    return-wide v0
.end method

.method protected initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .locals 0
    .param p1, "key"    # Landroid/security/keystore/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@2
    .line 141
    return-void
.end method

.method protected final isSigning()Z
    .locals 1

    #@0
    .prologue
    .line 407
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    #@2
    return v0
.end method

.method protected resetAll()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 154
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@3
    .line 155
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@5
    .line 156
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@7
    .line 157
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@9
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    #@c
    .line 159
    :cond_0
    const/4 v1, 0x0

    #@d
    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    #@f
    .line 160
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    #@11
    .line 161
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    #@13
    .line 162
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@15
    .line 163
    const-wide/16 v2, 0x0

    #@17
    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    #@19
    .line 164
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@1b
    .line 165
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    #@1d
    .line 153
    return-void
.end method

.method protected resetWhilePreservingInitState()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 178
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@3
    .line 179
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@5
    .line 180
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    #@7
    .line 181
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    #@9
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    #@c
    .line 183
    :cond_0
    const-wide/16 v2, 0x0

    #@e
    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    #@10
    .line 184
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    #@12
    .line 185
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    #@14
    .line 177
    return-void
.end method
