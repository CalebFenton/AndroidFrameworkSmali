.class abstract Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;
.super Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;,
        Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;,
        Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
    }
.end annotation


# static fields
.field private static final blacklist BLOCK_SIZE_BYTES:I = 0x10


# instance fields
.field private blacklist mIv:[B

.field private blacklist mIvHasBeenUsed:Z

.field private final blacklist mKeymasterBlockMode:I

.field private final blacklist mKeymasterPadding:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3
    .param p1, "keymasterBlockMode"    # I
    .param p2, "keymasterPadding"    # I

    .line 270
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;-><init>()V

    .line 271
    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    .line 272
    iput p2, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterPadding:I

    .line 273
    return-void
.end method


# virtual methods
.method protected blacklist addAlgorithmSpecificParametersToBegin(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p1, "parameters":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/security/keymint/KeyParameter;>;"
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    if-nez v0, :cond_b

    goto :goto_13

    .line 301
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_13
    :goto_13
    const v0, 0x10000002

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    const v0, 0x20000004

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    const v0, 0x20000006

    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterPadding:I

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeEnum(II)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    if-eqz v0, :cond_47

    .line 319
    const v0, -0x6ffffc17

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0, v1}, Landroid/security/keystore2/KeyStore2ParameterUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_47
    return-void
.end method

.method protected final whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 348
    const/16 v0, 0x10

    return v0
.end method

.method protected final whitelist test-api engineGetIV()[B
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getIv()[B
    .registers 2

    .line 361
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    return-object v0
.end method

.method protected final blacklist initKey(ILjava/security/Key;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 284
    instance-of v0, p2, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_2b

    .line 285
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    if-eqz p2, :cond_1c

    invoke-interface {p2}, Ljava/security/Key;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_1c
    const-string/jumbo v2, "null"

    :goto_1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_2b
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AES"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 293
    move-object v0, p2

    check-cast v0, Landroid/security/keystore2/AndroidKeyStoreSecretKey;

    invoke-virtual {p0, v0}, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->setKey(Landroid/security/keystore2/AndroidKeyStoreKey;)V

    .line 294
    return-void

    .line 289
    :cond_3e
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 290
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final blacklist loadAlgorithmSpecificParametersFromBeginResult([Landroid/hardware/security/keymint/KeyParameter;)V
    .registers 8
    .param p1, "parameters"    # [Landroid/hardware/security/keymint/KeyParameter;

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "returnedIv":[B
    if-eqz p1, :cond_1d

    .line 331
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1d

    aget-object v3, p1, v2

    .line 332
    .local v3, "p":Landroid/hardware/security/keymint/KeyParameter;
    iget v4, v3, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const v5, -0x6ffffc17

    if-ne v4, v5, :cond_1a

    .line 333
    iget-object v1, v3, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    invoke-virtual {v1}, Landroid/hardware/security/keymint/KeyParameterValue;->getBlob()[B

    move-result-object v0

    .line 334
    goto :goto_1d

    .line 331
    .end local v3    # "p":Landroid/hardware/security/keymint/KeyParameter;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 339
    :cond_1d
    :goto_1d
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    if-nez v1, :cond_24

    .line 340
    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    goto :goto_37

    .line 341
    :cond_24
    if-eqz v0, :cond_37

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto :goto_37

    .line 342
    :cond_2f
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "IV in use differs from provided IV"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_37
    :goto_37
    return-void
.end method

.method protected blacklist resetAll()V
    .registers 2

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    .line 279
    invoke-super {p0}, Landroid/security/keystore2/AndroidKeyStoreCipherSpiBase;->resetAll()V

    .line 280
    return-void
.end method

.method protected blacklist setIv([B)V
    .registers 2
    .param p1, "iv"    # [B

    .line 357
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    .line 358
    return-void
.end method
