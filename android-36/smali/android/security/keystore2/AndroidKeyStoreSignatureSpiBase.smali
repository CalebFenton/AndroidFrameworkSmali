.class abstract Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;
.super Ljava/security/SignatureSpi;
.source "AndroidKeyStoreSignatureSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AndroidKeyStoreSignatureSpiBase"


# instance fields
.field private blacklist mCachedException:Ljava/lang/Exception;

.field private blacklist mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

.field private blacklist mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

.field private blacklist mOperation:Landroid/security/KeyStoreOperation;

.field private blacklist mOperationChallenge:J

.field private blacklist mSignature:Ljava/security/Signature;

.field private blacklist mSigning:Z


# direct methods
.method constructor blacklist <init>()V
    .registers 4

    .line 88
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    .line 90
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    .line 91
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    .line 92
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 93
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    .line 94
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 95
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 96
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    .line 97
    return-void
.end method

.method private blacklist abortOperation()V
    .registers 2

    .line 156
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-static {v0}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->abortOperation(Landroid/security/KeyStoreOperation;)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    .line 158
    return-void
.end method

.method private blacklist ensureKeystoreOperationInitialized()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_5

    .line 196
    return-void

    .line 198
    :cond_5
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_a

    .line 199
    return-void

    .line 201
    :cond_a
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    if-eqz v0, :cond_55

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v0, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V

    .line 208
    iget-boolean v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x3

    .line 210
    .local v1, "purpose":I
    :goto_1d
    const v2, 0x20000001

    invoke-static {v2, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :try_start_27
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-virtual {v2}, Landroid/security/keystore2/AndroidKeyStoreKey;->getSecurityLevel()Landroid/security/KeyStoreSecurityLevel;

    move-result-object v2

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 214
    invoke-virtual {v3}, Landroid/security/keystore2/AndroidKeyStoreKey;->getKeyIdDescriptor()Landroid/system/keystore2/KeyDescriptor;

    move-result-object v3

    .line 213
    invoke-virtual {v2, v3, v0}, Landroid/security/KeyStoreSecurityLevel;->createOperation(Landroid/system/keystore2/KeyDescriptor;Ljava/util/Collection;)Landroid/security/KeyStoreOperation;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;
    :try_end_39
    .catch Landroid/security/KeyStoreException; {:try_start_27 .. :try_end_39} :catch_4d

    .line 219
    nop

    .line 224
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v2, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getOrMakeOperationChallenge(Landroid/security/KeyStoreOperation;Landroid/security/keystore2/AndroidKeyStoreKey;)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    .line 227
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperation:Landroid/security/KeyStoreOperation;

    invoke-virtual {p0, v2}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 228
    return-void

    .line 216
    :catch_4d
    move-exception v2

    .line 217
    .local v2, "keyStoreException":Landroid/security/KeyStoreException;
    iget-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    invoke-static {v3, v2}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getInvalidKeyException(Landroid/security/keystore2/AndroidKeyStoreKey;Landroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v3

    throw v3

    .line 202
    .end local v0    # "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v1    # "purpose":I
    .end local v2    # "keyStoreException":Landroid/security/KeyStoreException;
    :cond_55
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

.method protected blacklist createMainDataStreamer(Landroid/security/KeyStoreOperation;)Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;
    .registers 4
    .param p1, "operation"    # Landroid/security/KeyStoreOperation;

    .line 238
    new-instance v0, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStoreOperation;)V

    invoke-direct {v0, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore2/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method protected final whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3
    .param p1, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 102
    return-void
.end method

.method protected final whitelist test-api engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "success":Z
    if-eqz p1, :cond_3a

    .line 115
    :try_start_6
    instance-of v1, p1, Landroid/security/keystore2/AndroidKeyStorePrivateKey;

    if-eqz v1, :cond_1f

    .line 116
    move-object v1, p1

    check-cast v1, Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 120
    .local v1, "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    .line 121
    invoke-virtual {p0, v1}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    .line 122
    iput-object p2, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    .line 123
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_38

    .line 124
    const/4 v0, 0x1

    .line 126
    .end local v1    # "keystoreKey":Landroid/security/keystore2/AndroidKeyStoreKey;
    if-nez v0, :cond_1e

    .line 127
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    .line 130
    :cond_1e
    return-void

    .line 118
    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported private key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;
    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v1

    .line 126
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;
    .restart local p1    # "privateKey":Ljava/security/PrivateKey;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :catchall_38
    move-exception v1

    goto :goto_42

    .line 112
    :cond_3a
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Unsupported key: null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    .end local v0    # "success":Z
    .end local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;
    .end local p1    # "privateKey":Ljava/security/PrivateKey;
    .end local p2    # "random":Ljava/security/SecureRandom;
    throw v1
    :try_end_42
    .catchall {:try_start_1f .. :try_end_42} :catchall_38

    .line 126
    .restart local v0    # "success":Z
    .restart local p0    # "this":Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;
    .restart local p1    # "privateKey":Ljava/security/PrivateKey;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    :goto_42
    if-nez v0, :cond_47

    .line 127
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    .line 129
    :cond_47
    throw v1
.end method

.method protected final whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .registers 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    .line 137
    :try_start_3
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_d} :catch_14

    .line 140
    nop

    .line 142
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 143
    return-void

    .line 138
    :catch_14
    move-exception v0

    .line 139
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final whitelist test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final whitelist test-api engineSign([BII)I
    .registers 5
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 312
    invoke-super {p0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method protected final whitelist test-api engineSign()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_27

    .line 323
    :try_start_4
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V

    .line 325
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    .line 327
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->getAdditionalEntropyAmountForSign()I

    move-result v1

    .line 326
    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v0

    .line 328
    .local v0, "additionalEntropy":[B
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    sget-object v2, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v4, v3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->doFinal([BII[B)[B

    move-result-object v1
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_4 .. :try_end_1b} :catch_20
    .catch Landroid/security/KeyStoreException; {:try_start_4 .. :try_end_1b} :catch_20

    .line 333
    .end local v0    # "additionalEntropy":[B
    .local v1, "signature":[B
    nop

    .line 335
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    .line 336
    return-object v1

    .line 331
    .end local v1    # "signature":[B
    :catch_20
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_27
    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final whitelist test-api engineUpdate(B)V
    .registers 5
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V

    .line 285
    return-void
.end method

.method protected final whitelist test-api engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .line 291
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 292
    .local v0, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 293
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 294
    .local v1, "b":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    .line 295
    .local v2, "off":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_25

    .line 297
    .end local v1    # "b":[B
    .end local v2    # "off":I
    :cond_1f
    new-array v1, v0, [B

    .line 298
    .restart local v1    # "b":[B
    const/4 v2, 0x0

    .line 299
    .restart local v2    # "off":I
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 303
    :goto_25
    :try_start_25
    invoke-virtual {p0, v1, v2, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V
    :try_end_28
    .catch Ljava/security/SignatureException; {:try_start_25 .. :try_end_28} :catch_29

    .line 306
    goto :goto_2c

    .line 304
    :catch_29
    move-exception v3

    .line 305
    .local v3, "e":Ljava/security/SignatureException;
    iput-object v3, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 307
    .end local v3    # "e":Ljava/security/SignatureException;
    :goto_2c
    return-void
.end method

.method protected final whitelist test-api engineUpdate([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    if-eqz v0, :cond_a

    .line 251
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/Signature;->update([BII)V

    .line 252
    return-void

    .line 255
    :cond_a
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-nez v0, :cond_4e

    .line 260
    :try_start_e
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_11
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_11} :catch_47

    .line 263
    nop

    .line 265
    if-nez p3, :cond_15

    .line 266
    return-void

    .line 271
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0, p1, p2, p3}, Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;->update([BII)[B

    move-result-object v0
    :try_end_1b
    .catch Landroid/security/KeyStoreException; {:try_start_15 .. :try_end_1b} :catch_40

    .line 274
    .local v0, "output":[B
    nop

    .line 276
    array-length v1, v0

    if-nez v1, :cond_20

    .line 280
    return-void

    .line 277
    :cond_20
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update operation unexpectedly produced output: "

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

    .line 272
    .end local v0    # "output":[B
    :catch_40
    move-exception v0

    .line 273
    .local v0, "e":Landroid/security/KeyStoreException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 261
    .end local v0    # "e":Landroid/security/KeyStoreException;
    :catch_47
    move-exception v0

    .line 262
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 256
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :cond_4e
    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final whitelist test-api engineVerify([B)Z
    .registers 4
    .param p1, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    if-eqz v0, :cond_b

    .line 342
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSignature:Ljava/security/Signature;

    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    return v0

    .line 344
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialised."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final whitelist test-api engineVerify([BII)Z
    .registers 5
    .param p1, "sigBytes"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 350
    invoke-static {p1, p2, p3}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->engineVerify([B)Z

    move-result v0

    return v0
.end method

.method protected abstract blacklist getAdditionalEntropyAmountForSign()I
.end method

.method protected abstract blacklist getAlgorithm()Ljava/lang/String;
.end method

.method public final blacklist getOperationHandle()J
    .registers 3

    .line 245
    iget-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    return-wide v0
.end method

.method protected blacklist initKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V
    .registers 2
    .param p1, "key"    # Landroid/security/keystore2/AndroidKeyStoreKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 152
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 153
    return-void
.end method

.method protected final blacklist isSigning()Z
    .registers 2

    .line 378
    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    return v0
.end method

.method protected blacklist resetAll()V
    .registers 3

    .line 169
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->abortOperation()V

    .line 170
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore2/AndroidKeyStoreKey;

    .line 173
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    .line 174
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 175
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 176
    return-void
.end method

.method protected blacklist resetWhilePreservingInitState()V
    .registers 3

    .line 188
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->abortOperation()V

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mOperationChallenge:J

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore2/KeyStoreCryptoOperationStreamer;

    .line 191
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    .line 192
    return-void
.end method
