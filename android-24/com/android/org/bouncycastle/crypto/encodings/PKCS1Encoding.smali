.class public Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final HEADER_LENGTH:I = 0xa

.field public static final NOT_STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs1.not_strict"

.field public static final STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs1.strict"


# instance fields
.field private engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private fallback:[B

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private pLen:I

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    #@6
    .line 43
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    #@9
    .line 52
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@b
    .line 53
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    #@e
    move-result v0

    #@f
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    #@11
    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;I)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "pLen"    # I

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    #@6
    .line 43
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    #@9
    .line 66
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@b
    .line 67
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    #@e
    move-result v0

    #@f
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    #@11
    .line 68
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    #@13
    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;[B)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "fallback"    # [B

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    #@6
    .line 43
    const/4 v0, 0x0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    #@9
    .line 84
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@b
    .line 85
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    #@e
    move-result v0

    #@f
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    #@11
    .line 86
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    #@13
    .line 87
    array-length v0, p2

    #@14
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    #@16
    .line 82
    return-void
.end method

.method private static checkPkcs1Encoding([BI)I
    .locals 6
    .param p0, "encoded"    # [B
    .param p1, "pLen"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 258
    aget-byte v4, p0, v4

    #@3
    xor-int/lit8 v4, v4, 0x2

    #@5
    or-int/lit8 v0, v4, 0x0

    #@7
    .line 263
    .local v0, "correct":I
    array-length v4, p0

    #@8
    add-int/lit8 v5, p1, 0x1

    #@a
    sub-int v2, v4, v5

    #@c
    .line 268
    .local v2, "plen":I
    const/4 v1, 0x1

    #@d
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@f
    .line 269
    aget-byte v3, p0, v1

    #@11
    .line 270
    .local v3, "tmp":I
    shr-int/lit8 v4, v3, 0x1

    #@13
    or-int/2addr v3, v4

    #@14
    .line 271
    shr-int/lit8 v4, v3, 0x2

    #@16
    or-int/2addr v3, v4

    #@17
    .line 272
    shr-int/lit8 v4, v3, 0x4

    #@19
    or-int/2addr v3, v4

    #@1a
    .line 273
    and-int/lit8 v4, v3, 0x1

    #@1c
    add-int/lit8 v4, v4, -0x1

    #@1e
    or-int/2addr v0, v4

    #@1f
    .line 268
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 279
    .end local v3    # "tmp":I
    :cond_0
    array-length v4, p0

    #@23
    add-int/lit8 v5, p1, 0x1

    #@25
    sub-int/2addr v4, v5

    #@26
    aget-byte v4, p0, v4

    #@28
    or-int/2addr v0, v4

    #@29
    .line 284
    shr-int/lit8 v4, v0, 0x1

    #@2b
    or-int/2addr v0, v4

    #@2c
    .line 285
    shr-int/lit8 v4, v0, 0x2

    #@2e
    or-int/2addr v0, v4

    #@2f
    .line 286
    shr-int/lit8 v4, v0, 0x4

    #@31
    or-int/2addr v0, v4

    #@32
    .line 287
    and-int/lit8 v4, v0, 0x1

    #@34
    add-int/lit8 v4, v4, -0x1

    #@36
    not-int v4, v4

    #@37
    return v4
.end method

.method private decodeBlock([BII)[B
    .locals 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x2

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 373
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    #@6
    if-eq v5, v9, :cond_0

    #@8
    .line 375
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    #@b
    move-result-object v5

    #@c
    return-object v5

    #@d
    .line 378
    :cond_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@f
    invoke-interface {v5, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    #@12
    move-result-object v0

    #@13
    .line 380
    .local v0, "block":[B
    array-length v5, v0

    #@14
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    #@17
    move-result v6

    #@18
    if-ge v5, v6, :cond_1

    #@1a
    .line 382
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@1c
    const-string/jumbo v6, "block truncated"

    #@1f
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@22
    throw v5

    #@23
    .line 385
    :cond_1
    aget-byte v4, v0, v7

    #@25
    .line 387
    .local v4, "type":B
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    #@27
    if-eqz v5, :cond_2

    #@29
    .line 389
    if-eq v4, v10, :cond_3

    #@2b
    .line 391
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@2d
    const-string/jumbo v6, "unknown block type"

    #@30
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@33
    throw v5

    #@34
    .line 396
    :cond_2
    if-eq v4, v8, :cond_3

    #@36
    .line 398
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@38
    const-string/jumbo v6, "unknown block type"

    #@3b
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v5

    #@3f
    .line 402
    :cond_3
    if-ne v4, v8, :cond_4

    #@41
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    #@43
    if-nez v5, :cond_6

    #@45
    :cond_4
    if-ne v4, v10, :cond_5

    #@47
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    #@49
    if-eqz v5, :cond_6

    #@4b
    .line 408
    :cond_5
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    #@4d
    if-eqz v5, :cond_7

    #@4f
    array-length v5, v0

    #@50
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@52
    invoke-interface {v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    #@55
    move-result v6

    #@56
    if-eq v5, v6, :cond_7

    #@58
    .line 410
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@5a
    const-string/jumbo v6, "block incorrect size"

    #@5d
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@60
    throw v5

    #@61
    .line 404
    :cond_6
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@63
    new-instance v6, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v7, "invalid block type "

    #@6b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v6

    #@73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v6

    #@77
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v5

    #@7b
    .line 418
    :cond_7
    const/4 v3, 0x1

    #@7c
    .local v3, "start":I
    :goto_0
    array-length v5, v0

    #@7d
    if-eq v3, v5, :cond_8

    #@7f
    .line 420
    aget-byte v1, v0, v3

    #@81
    .line 422
    .local v1, "pad":B
    if-nez v1, :cond_a

    #@83
    .line 432
    .end local v1    # "pad":B
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@85
    .line 434
    array-length v5, v0

    #@86
    if-gt v3, v5, :cond_9

    #@88
    const/16 v5, 0xa

    #@8a
    if-ge v3, v5, :cond_c

    #@8c
    .line 436
    :cond_9
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@8e
    const-string/jumbo v6, "no data in block"

    #@91
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@94
    throw v5

    #@95
    .line 426
    .restart local v1    # "pad":B
    :cond_a
    if-ne v4, v8, :cond_b

    #@97
    if-eq v1, v9, :cond_b

    #@99
    .line 428
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@9b
    const-string/jumbo v6, "block padding incorrect"

    #@9e
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@a1
    throw v5

    #@a2
    .line 418
    :cond_b
    add-int/lit8 v3, v3, 0x1

    #@a4
    goto :goto_0

    #@a5
    .line 439
    .end local v1    # "pad":B
    :cond_c
    array-length v5, v0

    #@a6
    sub-int/2addr v5, v3

    #@a7
    new-array v2, v5, [B

    #@a9
    .line 441
    .local v2, "result":[B
    array-length v5, v2

    #@aa
    invoke-static {v0, v3, v2, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@ad
    .line 443
    return-object v2
.end method

.method private decodeBlockOrRandom([BII)[B
    .locals 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    #@0
    .prologue
    .line 305
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    #@2
    if-nez v5, :cond_0

    #@4
    .line 307
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@6
    const-string/jumbo v6, "sorry, this method is only for decryption, not for signing"

    #@9
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@c
    throw v5

    #@d
    .line 310
    :cond_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@f
    invoke-interface {v5, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    #@12
    move-result-object v0

    #@13
    .line 311
    .local v0, "block":[B
    const/4 v3, 0x0

    #@14
    .line 312
    .local v3, "random":[B
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    #@16
    if-nez v5, :cond_1

    #@18
    .line 314
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    #@1a
    new-array v3, v5, [B

    #@1c
    .line 315
    .local v3, "random":[B
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    #@1e
    invoke-virtual {v5, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@21
    .line 328
    :goto_0
    array-length v5, v0

    #@22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    #@25
    move-result v6

    #@26
    if-ge v5, v6, :cond_2

    #@28
    .line 330
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@2a
    const-string/jumbo v6, "block truncated"

    #@2d
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@30
    throw v5

    #@31
    .line 319
    .local v3, "random":[B
    :cond_1
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    #@33
    .local v3, "random":[B
    goto :goto_0

    #@34
    .line 337
    :cond_2
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    #@36
    if-eqz v5, :cond_3

    #@38
    array-length v5, v0

    #@39
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@3b
    invoke-interface {v6}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    #@3e
    move-result v6

    #@3f
    if-eq v5, v6, :cond_3

    #@41
    .line 339
    new-instance v5, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@43
    const-string/jumbo v6, "block incorrect size"

    #@46
    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@49
    throw v5

    #@4a
    .line 345
    :cond_3
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    #@4c
    invoke-static {v0, v5}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding([BI)I

    #@4f
    move-result v1

    #@50
    .line 351
    .local v1, "correct":I
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    #@52
    new-array v4, v5, [B

    #@54
    .line 352
    .local v4, "result":[B
    const/4 v2, 0x0

    #@55
    .local v2, "i":I
    :goto_1
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    #@57
    if-ge v2, v5, :cond_4

    #@59
    .line 354
    array-length v5, v0

    #@5a
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    #@5c
    sub-int/2addr v5, v6

    #@5d
    add-int/2addr v5, v2

    #@5e
    aget-byte v5, v0, v5

    #@60
    not-int v6, v1

    #@61
    and-int/2addr v5, v6

    #@62
    aget-byte v6, v3, v2

    #@64
    and-int/2addr v6, v1

    #@65
    or-int/2addr v5, v6

    #@66
    int-to-byte v5, v5

    #@67
    aput-byte v5, v4, v2

    #@69
    .line 352
    add-int/lit8 v2, v2, 0x1

    #@6b
    goto :goto_1

    #@6c
    .line 357
    :cond_4
    return-object v4
.end method

.method private encodeBlock([BII)[B
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 204
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    #@4
    move-result v2

    #@5
    if-le p3, v2, :cond_0

    #@7
    .line 206
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v3, "input data too large"

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 209
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@12
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    #@15
    move-result v2

    #@16
    new-array v0, v2, [B

    #@18
    .line 211
    .local v0, "block":[B
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 213
    const/4 v2, 0x1

    #@1d
    aput-byte v2, v0, v4

    #@1f
    .line 215
    const/4 v1, 0x1

    #@20
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@21
    sub-int/2addr v2, p3

    #@22
    add-int/lit8 v2, v2, -0x1

    #@24
    if-eq v1, v2, :cond_3

    #@26
    .line 217
    const/4 v2, -0x1

    #@27
    aput-byte v2, v0, v1

    #@29
    .line 215
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 222
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    #@2e
    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@31
    .line 224
    const/4 v2, 0x2

    #@32
    aput-byte v2, v0, v4

    #@34
    .line 230
    const/4 v1, 0x1

    #@35
    .restart local v1    # "i":I
    :goto_1
    array-length v2, v0

    #@36
    sub-int/2addr v2, p3

    #@37
    add-int/lit8 v2, v2, -0x1

    #@39
    if-eq v1, v2, :cond_3

    #@3b
    .line 232
    :goto_2
    aget-byte v2, v0, v1

    #@3d
    if-nez v2, :cond_2

    #@3f
    .line 234
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    #@41
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    #@44
    move-result v2

    #@45
    int-to-byte v2, v2

    #@46
    aput-byte v2, v0, v1

    #@48
    goto :goto_2

    #@49
    .line 230
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@4b
    goto :goto_1

    #@4c
    .line 239
    :cond_3
    array-length v2, v0

    #@4d
    sub-int/2addr v2, p3

    #@4e
    add-int/lit8 v2, v2, -0x1

    #@50
    aput-byte v4, v0, v2

    #@52
    .line 240
    array-length v2, v0

    #@53
    sub-int/2addr v2, p3

    #@54
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@57
    .line 242
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@59
    array-length v3, v0

    #@5a
    invoke-interface {v2, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    #@5d
    move-result-object v2

    #@5e
    return-object v2
.end method

.method private useStrict()Z
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 98
    new-instance v3, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;

    #@3
    invoke-direct {v3, p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;-><init>(Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;)V

    #@6
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/String;

    #@c
    .line 105
    .local v1, "strict":Ljava/lang/String;
    new-instance v3, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$2;

    #@e
    invoke-direct {v3, p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$2;-><init>(Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;)V

    #@11
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/String;

    #@17
    .line 113
    .local v0, "notStrict":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@19
    .line 115
    const-string/jumbo v3, "true"

    #@1c
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    const/4 v2, 0x0

    #@23
    :cond_0
    return v2

    #@24
    .line 118
    :cond_1
    if-eqz v1, :cond_2

    #@26
    const-string/jumbo v2, "true"

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    :cond_2
    return v2
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    #@0
    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    #@5
    move-result v0

    #@6
    .line 158
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 160
    add-int/lit8 v1, v0, -0xa

    #@c
    return v1

    #@d
    .line 164
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    #@0
    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    #@5
    move-result v0

    #@6
    .line 172
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 174
    return v0

    #@b
    .line 178
    :cond_0
    add-int/lit8 v1, v0, -0xa

    #@d
    return v1
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2
    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 132
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@2
    if-eqz v2, :cond_1

    #@4
    move-object v1, p2

    #@5
    .line 134
    nop

    #@6
    nop

    #@7
    .line 136
    .local v1, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    #@d
    .line 137
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@13
    .line 148
    .end local v1    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .local v0, "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@15
    invoke-interface {v2, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@18
    .line 150
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    #@1b
    move-result v2

    #@1c
    iput-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    #@1e
    .line 151
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    #@20
    .line 128
    return-void

    #@21
    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_1
    move-object v0, p2

    #@22
    .line 141
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@24
    .line 142
    .restart local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_0

    #@2a
    if-eqz p1, :cond_0

    #@2c
    .line 144
    new-instance v2, Ljava/security/SecureRandom;

    #@2e
    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    #@31
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    #@33
    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    #@0
    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 194
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
