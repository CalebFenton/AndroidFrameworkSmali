.class public abstract Landroid/security/keystore/AndroidKeyStoreHmacSpi;
.super Ljavax/crypto/MacSpi;
.source "AndroidKeyStoreHmacSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA1;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA224;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA256;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA384;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA512;
    }
.end annotation


# instance fields
.field private mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

.field private mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeymasterDigest:I

.field private final mMacSizeBits:I

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "keymasterDigest"    # I

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    #@3
    .line 71
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    #@9
    .line 84
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    #@b
    .line 85
    invoke-static {p1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    #@e
    move-result v0

    #@f
    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    #@11
    .line 83
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
    .line 154
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 155
    return-void

    #@6
    .line 157
    :cond_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@8
    if-nez v0, :cond_1

    #@a
    .line 158
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    const-string/jumbo v1, "Not initialized"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 161
    :cond_1
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    #@15
    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    #@18
    .line 162
    .local v4, "keymasterArgs":Landroid/security/keymaster/KeymasterArguments;
    const v0, 0x10000002

    #@1b
    const/16 v1, 0x80

    #@1d
    invoke-virtual {v4, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@20
    .line 163
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    #@22
    const v1, 0x20000005

    #@25
    invoke-virtual {v4, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@28
    .line 164
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    #@2a
    int-to-long v0, v0

    #@2b
    const v2, 0x300003eb

    #@2e
    invoke-virtual {v4, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    #@31
    .line 166
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    #@33
    .line 167
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@35
    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 168
    const/4 v2, 0x2

    #@3a
    .line 169
    const/4 v3, 0x1

    #@3b
    .line 166
    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    #@3e
    move-result-object v7

    #@3f
    .line 173
    .local v7, "opResult":Landroid/security/keymaster/OperationResult;
    if-nez v7, :cond_2

    #@41
    .line 174
    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    #@43
    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    #@46
    throw v0

    #@47
    .line 179
    :cond_2
    iget-object v0, v7, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    #@49
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    #@4b
    .line 180
    iget-wide v0, v7, Landroid/security/keymaster/OperationResult;->operationHandle:J

    #@4d
    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    #@4f
    .line 184
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    #@51
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@53
    iget v2, v7, Landroid/security/keymaster/OperationResult;->resultCode:I

    #@55
    .line 183
    invoke-static {v0, v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    #@58
    move-result-object v6

    #@59
    .line 185
    .local v6, "e":Ljava/security/InvalidKeyException;
    if-eqz v6, :cond_3

    #@5b
    .line 186
    throw v6

    #@5c
    .line 189
    :cond_3
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    #@5e
    if-nez v0, :cond_4

    #@60
    .line 190
    new-instance v0, Ljava/security/ProviderException;

    #@62
    const-string/jumbo v1, "Keystore returned null operation token"

    #@65
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@68
    throw v0

    #@69
    .line 192
    :cond_4
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    #@6b
    const-wide/16 v2, 0x0

    #@6d
    cmp-long v0, v0, v2

    #@6f
    if-nez v0, :cond_5

    #@71
    .line 193
    new-instance v0, Ljava/security/ProviderException;

    #@73
    const-string/jumbo v1, "Keystore returned invalid operation handle"

    #@76
    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@79
    throw v0

    #@7a
    .line 196
    :cond_5
    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    #@7c
    .line 197
    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    #@7e
    .line 198
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    #@80
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    #@82
    .line 197
    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    #@85
    .line 196
    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    #@88
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    #@8a
    .line 153
    return-void
.end method

.method private init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    if-nez p1, :cond_0

    #@2
    .line 113
    new-instance v0, Ljava/security/InvalidKeyException;

    #@4
    const-string/jumbo v1, "key == null"

    #@7
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 114
    :cond_0
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 115
    new-instance v0, Ljava/security/InvalidKeyException;

    #@11
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Only Android KeyStore secret keys supported. Key: "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 115
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 118
    :cond_1
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@2b
    .end local p1    # "key":Ljava/security/Key;
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@2d
    .line 120
    if-eqz p2, :cond_2

    #@2f
    .line 121
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    #@31
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v2, "Unsupported algorithm parameters: "

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v1

    #@41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 121
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    #@48
    throw v0

    #@49
    .line 111
    :cond_2
    return-void
.end method

.method private resetAll()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 128
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@3
    .line 129
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    #@5
    .line 130
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@7
    .line 131
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    #@9
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    #@c
    .line 133
    :cond_0
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    #@e
    .line 134
    const-wide/16 v2, 0x0

    #@10
    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    #@12
    .line 135
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    #@14
    .line 127
    return-void
.end method

.method private resetWhilePreservingInitState()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 139
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    #@3
    .line 140
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@5
    .line 141
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    #@7
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    #@a
    .line 143
    :cond_0
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    #@c
    .line 144
    const-wide/16 v2, 0x0

    #@e
    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    #@10
    .line 145
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    #@12
    .line 138
    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .locals 9

    #@0
    .prologue
    .line 228
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 235
    :try_start_1
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    #@5
    .line 236
    const/4 v1, 0x0

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x0

    #@8
    .line 237
    const/4 v4, 0x0

    #@9
    .line 238
    const/4 v5, 0x0

    #@a
    .line 235
    invoke-virtual/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->doFinal([BII[B[B)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    #@d
    move-result-object v8

    #@e
    .line 244
    .local v8, "result":[B
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    #@11
    .line 245
    return-object v8

    #@12
    .line 229
    .end local v8    # "result":[B
    :catch_0
    move-exception v7

    #@13
    .line 230
    .local v7, "e":Ljava/security/InvalidKeyException;
    new-instance v0, Ljava/security/ProviderException;

    #@15
    const-string/jumbo v1, "Failed to reinitialize MAC"

    #@18
    invoke-direct {v0, v1, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    throw v0

    #@1c
    .line 240
    .end local v7    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v6

    #@1d
    .line 241
    .local v6, "e":Landroid/security/KeyStoreException;
    new-instance v0, Ljava/security/ProviderException;

    #@1f
    const-string/jumbo v1, "Keystore operation failed"

    #@22
    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@25
    throw v0
.end method

.method protected engineGetMacLength()I
    .locals 1

    #@0
    .prologue
    .line 90
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    #@2
    add-int/lit8 v0, v0, 0x7

    #@4
    div-int/lit8 v0, v0, 0x8

    #@6
    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    #@3
    .line 98
    const/4 v0, 0x0

    #@4
    .line 100
    .local v0, "success":Z
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    #@7
    .line 101
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    .line 102
    const/4 v0, 0x1

    #@b
    .line 104
    if-nez v0, :cond_0

    #@d
    .line 105
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    #@10
    .line 95
    :cond_0
    return-void

    #@11
    .line 103
    :catchall_0
    move-exception v1

    #@12
    .line 104
    if-nez v0, :cond_1

    #@14
    .line 105
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    #@17
    .line 103
    :cond_1
    throw v1
.end method

.method protected engineReset()V
    .locals 0

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    #@3
    .line 149
    return-void
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 203
    new-array v0, v2, [B

    #@4
    aput-byte p1, v0, v1

    #@6
    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->engineUpdate([BII)V

    #@9
    .line 202
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 209
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 216
    :try_start_1
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    #@5
    invoke-virtual {v3, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B
    :try_end_1
    .catch Landroid/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    #@8
    move-result-object v2

    #@9
    .line 220
    .local v2, "output":[B
    if-eqz v2, :cond_0

    #@b
    array-length v3, v2

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 221
    new-instance v3, Ljava/security/ProviderException;

    #@10
    const-string/jumbo v4, "Update operation unexpectedly produced output"

    #@13
    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@16
    throw v3

    #@17
    .line 210
    .end local v2    # "output":[B
    :catch_0
    move-exception v1

    #@18
    .line 211
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/security/ProviderException;

    #@1a
    const-string/jumbo v4, "Failed to reinitialize MAC"

    #@1d
    invoke-direct {v3, v4, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@20
    throw v3

    #@21
    .line 217
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v0

    #@22
    .line 218
    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v3, Ljava/security/ProviderException;

    #@24
    const-string/jumbo v4, "Keystore operation failed"

    #@27
    invoke-direct {v3, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2a
    throw v3

    #@2b
    .line 207
    .end local v0    # "e":Landroid/security/KeyStoreException;
    .restart local v2    # "output":[B
    :cond_0
    return-void
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
    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    #@2
    .line 252
    .local v0, "operationToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    #@4
    .line 253
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    #@6
    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 256
    :cond_0
    invoke-super {p0}, Ljavax/crypto/MacSpi;->finalize()V

    #@c
    .line 249
    return-void

    #@d
    .line 255
    .end local v0    # "operationToken":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    #@e
    .line 256
    invoke-super {p0}, Ljavax/crypto/MacSpi;->finalize()V

    #@11
    .line 255
    throw v1
.end method

.method public getOperationHandle()J
    .locals 2

    #@0
    .prologue
    .line 262
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    #@2
    return-wide v0
.end method
