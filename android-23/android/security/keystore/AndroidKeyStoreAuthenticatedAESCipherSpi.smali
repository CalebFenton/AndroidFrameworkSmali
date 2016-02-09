.class abstract Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;,
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;,
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE_BYTES:I = 0x10


# instance fields
.field private mIv:[B

.field private mIvHasBeenUsed:Z

.field private final mKeymasterBlockMode:I

.field private final mKeymasterPadding:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "keymasterBlockMode"    # I
    .param p2, "keymasterPadding"    # I

    #@0
    .prologue
    .line 259
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    #@3
    .line 262
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    #@5
    .line 263
    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterPadding:I

    #@7
    .line 261
    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 2
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->isEncrypting()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    .line 293
    const-string/jumbo v1, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    #@f
    .line 292
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 297
    :cond_0
    const v0, 0x10000002

    #@16
    const/16 v1, 0x20

    #@18
    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@1b
    .line 298
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    #@1d
    const v1, 0x20000004

    #@20
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@23
    .line 299
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterPadding:I

    #@25
    const v1, 0x20000006

    #@28
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    #@2b
    .line 300
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 301
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    #@31
    const v1, -0x6ffffc17

    #@34
    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    #@37
    .line 289
    :cond_1
    return-void
.end method

.method protected final engineGetBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 325
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method protected final engineGetIV()[B
    .locals 1

    #@0
    .prologue
    .line 330
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    #@2
    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected getIv()[B
    .locals 1

    #@0
    .prologue
    .line 338
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    #@2
    return-object v0
.end method

.method protected final initKey(ILjava/security/Key;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 275
    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 276
    new-instance v1, Ljava/security/InvalidKeyException;

    #@6
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Unsupported key: "

    #@e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    if-eqz p2, :cond_0

    #@14
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 276
    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@27
    throw v1

    #@28
    .line 277
    :cond_0
    const-string/jumbo v0, "null"

    #@2b
    goto :goto_0

    #@2c
    .line 279
    :cond_1
    const-string/jumbo v0, "AES"

    #@2f
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@36
    move-result v0

    #@37
    if-nez v0, :cond_2

    #@39
    .line 280
    new-instance v0, Ljava/security/InvalidKeyException;

    #@3b
    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v2, "Unsupported key algorithm: "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v1

    #@4f
    const-string/jumbo v2, ". Only "

    #@52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v1

    #@56
    .line 282
    const-string/jumbo v2, "AES"

    #@59
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    .line 282
    const-string/jumbo v2, " supported"

    #@60
    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    .line 280
    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v0

    #@6c
    .line 284
    :cond_2
    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    #@6e
    .end local p2    # "key":Ljava/security/Key;
    invoke-virtual {p0, p2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    #@71
    .line 274
    return-void
.end method

.method protected final loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .locals 3
    .param p1, "keymasterArgs"    # Landroid/security/keymaster/KeymasterArguments;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 308
    const/4 v1, 0x1

    #@2
    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    #@4
    .line 311
    const v1, -0x6ffffc17

    #@7
    invoke-virtual {p1, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->getBytes(I[B)[B

    #@a
    move-result-object v0

    #@b
    .line 312
    .local v0, "returnedIv":[B
    if-eqz v0, :cond_0

    #@d
    array-length v1, v0

    #@e
    if-nez v1, :cond_0

    #@10
    .line 313
    const/4 v0, 0x0

    #@11
    .line 316
    .end local v0    # "returnedIv":[B
    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    #@13
    if-nez v1, :cond_2

    #@15
    .line 317
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    #@17
    .line 307
    :cond_1
    return-void

    #@18
    .line 318
    :cond_2
    if-eqz v0, :cond_1

    #@1a
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    #@1c
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_1

    #@22
    .line 319
    new-instance v1, Ljava/security/ProviderException;

    #@24
    const-string/jumbo v2, "IV in use differs from provided IV"

    #@27
    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1
.end method

.method protected resetAll()V
    .locals 1

    #@0
    .prologue
    .line 268
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    #@3
    .line 269
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    #@6
    .line 270
    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    #@9
    .line 267
    return-void
.end method

.method protected setIv([B)V
    .locals 0
    .param p1, "iv"    # [B

    #@0
    .prologue
    .line 334
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    #@2
    .line 333
    return-void
.end method
