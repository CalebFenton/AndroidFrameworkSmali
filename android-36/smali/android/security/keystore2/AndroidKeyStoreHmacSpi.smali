.class public abstract Landroid/security/keystore2/AndroidKeyStoreHmacSpi;
.super Ljavax/crypto/MacSpi;
.source "AndroidKeyStoreHmacSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA512;,
        Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA384;,
        Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA256;,
        Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA224;,
        Landroid/security/keystore2/AndroidKeyStoreHmacSpi$HmacSHA1;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreHmacSpi"


# instance fields
.field private blacklist mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

.field private blacklist mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

.field private final blacklist mKeymasterDigest:I

.field private final blacklist mMacSizeBits:I

.field private blacklist mOperation:Landroid/security/KeyStoreOperation;

.field private blacklist mOperationChallenge:J


# direct methods
.method protected constructor blacklist <init>(I)V
    .registers 5
    .param p1, "keymasterDigest"    # I

    .line 85
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    .line 86
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    .line 87
    invoke-static {p1}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;

    .line 89
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperationChallenge:J

    .line 90
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    .line 91
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    .line 92
    return-void
.end method

.method private blacklist abortOperation()V
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;

    .line 136
    return-void
.end method

.method private blacklist ensureKeystoreOperationInitialized()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    if-eqz v0, :cond_5

    .line 158
    return-void

    .line 160
    :cond_5
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_73

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v1, 0x20000001

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    const v1, 0x10000002

    const/16 v2, 0x80

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const v1, 0x20000005

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    const v1, 0x300003eb

    iget v2, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeInt(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :try_start_3d
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {v1}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    .line 180
    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStoreSecretKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v2

    .line 179
    invoke-virtual {v1, v2, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_4f
    .catch Landroid/security/KeyStoreException; {:try_start_3d .. :try_end_4f} :catch_50

    .line 190
    goto :goto_59

    .line 183
    :catch_50
    move-exception v1

    .line 185
    .local v1, "keyStoreException":Landroid/security/KeyStoreException;
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v2

    .line 187
    .local v2, "e":Ljava/security/InvalidKeyException;
    if-nez v2, :cond_72

    .line 195
    .end local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :goto_59
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-static {v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperationChallenge:J

    .line 198
    new-instance v1, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v2, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-direct {v2, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    invoke-direct {v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    .line 201
    return-void

    .line 188
    .restart local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .restart local v2    # "e":Ljava/security/InvalidKeyException;
    :cond_72
    throw v2

    .line 161
    .end local v0    # "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v1    # "keyStoreException":Landroid/security/KeyStoreException;
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :cond_73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 118
    if-eqz p1, :cond_40

    .line 120
    instance-of v0, p1, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_27

    .line 124
    move-object v0, p1

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    .line 126
    if-nez p2, :cond_e

    .line 131
    return-void

    .line 127
    :cond_e
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported algorithm parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_27
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only Android KeyStore secret keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_40
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist resetAll()V
    .registers 3

    .line 139
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->abortOperation()V

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperationChallenge:J

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    .line 142
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    .line 143
    return-void
.end method

.method private blacklist resetWhilePreservingInitState()V
    .registers 3

    .line 146
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->abortOperation()V

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperationChallenge:J

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    .line 149
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineDoFinal()[B
    .registers 4

    .line 230
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_1a

    .line 233
    nop

    .line 237
    :try_start_4
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->doFinal([BII[B)[B

    move-result-object v0
    :try_end_c
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_c} :catch_11

    .line 242
    .local v0, "result":[B
    nop

    .line 244
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    .line 245
    return-object v0

    .line 240
    .end local v0    # "result":[B
    :catch_11
    move-exception v0

    .line 241
    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Keystore operation failed"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 231
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :catch_1a
    move-exception v0

    .line 232
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to reinitialize MAC"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineGetMacLength()I
    .registers 2

    .line 96
    iget v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected whitelist test-api engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->resetAll()V

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, "success":Z
    :try_start_4
    invoke-direct {p0, p1, p2}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 107
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_11

    .line 108
    const/4 v0, 0x1

    .line 110
    if-nez v0, :cond_10

    .line 111
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->resetAll()V

    .line 114
    :cond_10
    return-void

    .line 110
    :catchall_11
    move-exception v1

    if-nez v0, :cond_17

    .line 111
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->resetAll()V

    .line 113
    :cond_17
    throw v1
.end method

.method protected whitelist test-api engineReset()V
    .registers 1

    .line 153
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    .line 154
    return-void
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 5
    .param p1, "input"    # B

    .line 205
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->engineUpdate([BII)V

    .line 206
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 7
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 211
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_23

    .line 214
    nop

    .line 218
    :try_start_4
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B

    move-result-object v0
    :try_end_a
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_a} :catch_1a

    .line 221
    .local v0, "output":[B
    nop

    .line 222
    if-eqz v0, :cond_19

    array-length v1, v0

    if-nez v1, :cond_11

    goto :goto_19

    .line 223
    :cond_11
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Update operation unexpectedly produced output"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_19
    :goto_19
    return-void

    .line 219
    .end local v0    # "output":[B
    :catch_1a
    move-exception v0

    .line 220
    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Keystore operation failed"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 212
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :catch_23
    move-exception v0

    .line 213
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Failed to reinitialize MAC"

    invoke-direct {v1, v2, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 251
    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->abortOperation()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 253
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 254
    nop

    .line 255
    return-void

    .line 253
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 254
    throw v0
.end method

.method public blacklist getOperationHandle()J
    .registers 3

    .line 259
    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreHmacSpi;->mOperationChallenge:J

    return-wide v0
.end method
