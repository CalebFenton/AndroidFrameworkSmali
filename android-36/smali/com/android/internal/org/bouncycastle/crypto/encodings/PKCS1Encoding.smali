.class public Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final blacklist HEADER_LENGTH:I = 0xa

.field public static final blacklist NOT_STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.internal.org.bouncycastle.pkcs1.not_strict"

.field public static final blacklist STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.internal.org.bouncycastle.pkcs1.strict"


# instance fields
.field private blacklist blockBuffer:[B

.field private blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist fallback:[B

.field private blacklist forEncryption:Z

.field private blacklist forPrivateKey:Z

.field private blacklist pLen:I

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist useStrictLength:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 57
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 58
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;I)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "pLen"    # I

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 71
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 72
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 73
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;[B)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "fallback"    # [B

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 87
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 88
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 89
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 90
    array-length v0, p2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 91
    return-void
.end method

.method private static blacklist checkPkcs1Encoding1([B)I
    .registers 9
    .param p0, "buf"    # [B

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "foundZeroMask":I
    const/4 v1, 0x0

    .line 246
    .local v1, "lastPadPos":I
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    xor-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    .line 249
    .local v2, "badPadSign":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_b
    array-length v4, p0

    if-ge v3, v4, :cond_2a

    .line 251
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 252
    .local v4, "padByte":I
    xor-int/lit8 v5, v4, 0x0

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 253
    .local v5, "is0x00Mask":I
    xor-int/lit16 v6, v4, 0xff

    add-int/lit8 v6, v6, -0x1

    shr-int/lit8 v6, v6, 0x1f

    .line 254
    .local v6, "is0xFFMask":I
    not-int v7, v0

    and-int/2addr v7, v3

    and-int/2addr v7, v5

    xor-int/2addr v1, v7

    .line 255
    or-int/2addr v0, v5

    .line 256
    or-int v7, v0, v6

    not-int v7, v7

    or-int/2addr v2, v7

    .line 249
    .end local v4    # "padByte":I
    .end local v5    # "is0x00Mask":I
    .end local v6    # "is0xFFMask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 260
    .end local v3    # "i":I
    :cond_2a
    add-int/lit8 v3, v1, -0x9

    or-int/2addr v2, v3

    .line 262
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    .line 263
    .local v3, "plaintextLength":I
    shr-int/lit8 v4, v2, 0x1f

    or-int/2addr v4, v3

    return v4
.end method

.method private static blacklist checkPkcs1Encoding2([B)I
    .registers 8
    .param p0, "buf"    # [B

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "foundZeroMask":I
    const/4 v1, 0x0

    .line 275
    .local v1, "lastPadPos":I
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    xor-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    .line 278
    .local v2, "badPadSign":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_b
    array-length v4, p0

    if-ge v3, v4, :cond_20

    .line 280
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    .line 281
    .local v4, "padByte":I
    xor-int/lit8 v5, v4, 0x0

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 282
    .local v5, "is0x00Mask":I
    not-int v6, v0

    and-int/2addr v6, v3

    and-int/2addr v6, v5

    xor-int/2addr v1, v6

    .line 283
    or-int/2addr v0, v5

    .line 278
    .end local v4    # "padByte":I
    .end local v5    # "is0x00Mask":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 287
    .end local v3    # "i":I
    :cond_20
    add-int/lit8 v3, v1, -0x9

    or-int/2addr v2, v3

    .line 289
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    .line 290
    .local v3, "plaintextLength":I
    shr-int/lit8 v4, v2, 0x1f

    or-int/2addr v4, v3

    return v4
.end method

.method private static blacklist checkPkcs1Encoding2([BI)I
    .registers 6
    .param p0, "buf"    # [B
    .param p1, "plaintextLength"    # I

    .line 300
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    xor-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    .line 302
    .local v0, "badPadSign":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    .line 305
    .local v1, "lastPadPos":I
    add-int/lit8 v2, v1, -0x9

    or-int/2addr v0, v2

    .line 308
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_1c

    .line 310
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x1

    or-int/2addr v0, v3

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 314
    .end local v2    # "i":I
    :cond_1c
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    neg-int v2, v2

    or-int/2addr v0, v2

    .line 316
    shr-int/lit8 v2, v0, 0x1f

    return v2
.end method

.method private blacklist decodeBlock([BII)[B
    .registers 14
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 388
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 390
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    move-result-object v0

    return-object v0

    .line 393
    :cond_e
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 394
    .local v0, "strictBlockSize":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 396
    .local v1, "block":[B
    iget-boolean v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v3, v1

    const/4 v4, 0x0

    if-eq v3, v0, :cond_22

    const/4 v3, 0x1

    goto :goto_23

    :cond_22
    move v3, v4

    :goto_23
    and-int/2addr v2, v3

    .line 398
    .local v2, "incorrectLength":Z
    move-object v3, v1

    .line 399
    .local v3, "data":[B
    array-length v5, v1

    if-ge v5, v0, :cond_2a

    .line 401
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 404
    :cond_2a
    iget-boolean v5, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v5, :cond_33

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding2([B)I

    move-result v5

    goto :goto_37

    :cond_33
    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding1([B)I

    move-result v5

    .line 408
    .local v5, "plaintextLength":I
    :goto_37
    if-ltz v5, :cond_5d

    .line 412
    if-nez v2, :cond_55

    .line 417
    :try_start_3b
    new-array v6, v5, [B

    .line 418
    .local v6, "result":[B
    array-length v7, v3

    sub-int/2addr v7, v5

    invoke-static {v3, v7, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_65

    .line 419
    nop

    .line 423
    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 424
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    array-length v8, v8

    array-length v9, v1

    sub-int/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v4, v8, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 419
    return-object v6

    .line 414
    .end local v6    # "result":[B
    :cond_55
    :try_start_55
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "block incorrect size"

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .end local v0    # "strictBlockSize":I
    .end local v1    # "block":[B
    .end local v2    # "incorrectLength":Z
    .end local v3    # "data":[B
    .end local v5    # "plaintextLength":I
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;
    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "inLen":I
    throw v6

    .line 410
    .restart local v0    # "strictBlockSize":I
    .restart local v1    # "block":[B
    .restart local v2    # "incorrectLength":Z
    .restart local v3    # "data":[B
    .restart local v5    # "plaintextLength":I
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    .restart local p3    # "inLen":I
    :cond_5d
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v7, "block incorrect"

    invoke-direct {v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    .end local v0    # "strictBlockSize":I
    .end local v1    # "block":[B
    .end local v2    # "incorrectLength":Z
    .end local v3    # "data":[B
    .end local v5    # "plaintextLength":I
    .end local p0    # "this":Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;
    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "inLen":I
    throw v6
    :try_end_65
    .catchall {:try_start_55 .. :try_end_65} :catchall_65

    .line 423
    .restart local v0    # "strictBlockSize":I
    .restart local v1    # "block":[B
    .restart local v2    # "incorrectLength":Z
    .restart local v3    # "data":[B
    .restart local v5    # "plaintextLength":I
    .restart local p0    # "this":Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    .restart local p3    # "inLen":I
    :catchall_65
    move-exception v6

    invoke-static {v1, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 424
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    array-length v8, v8

    array-length v9, v1

    sub-int/2addr v8, v9

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v4, v8, v4}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 425
    throw v6
.end method

.method private blacklist decodeBlockOrRandom([BII)[B
    .registers 16
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 332
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_5c

    .line 337
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 339
    .local v0, "plaintextLength":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 340
    .local v1, "random":[B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v2, :cond_13

    .line 342
    new-array v1, v0, [B

    .line 343
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 346
    :cond_13
    const/4 v2, 0x0

    .line 347
    .local v2, "badPadMask":I
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v3

    .line 348
    .local v3, "strictBlockSize":I
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    .line 350
    .local v4, "block":[B
    move-object v5, v4

    .line 351
    .local v5, "data":[B
    array-length v6, v4

    if-eq v6, v3, :cond_2d

    .line 353
    iget-boolean v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    if-nez v6, :cond_2b

    array-length v6, v4

    if-ge v6, v3, :cond_2d

    .line 355
    :cond_2b
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 359
    :cond_2d
    invoke-static {v5, v0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding2([BI)I

    move-result v6

    or-int/2addr v2, v6

    .line 365
    array-length v6, v5

    sub-int/2addr v6, v0

    .line 366
    .local v6, "dataOff":I
    new-array v7, v0, [B

    .line 367
    .local v7, "result":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_37
    if-ge v8, v0, :cond_49

    .line 369
    add-int v9, v6, v8

    aget-byte v9, v5, v9

    not-int v10, v2

    and-int/2addr v9, v10

    aget-byte v10, v1, v8

    and-int/2addr v10, v2

    or-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 367
    add-int/lit8 v8, v8, 0x1

    goto :goto_37

    .line 372
    .end local v8    # "i":I
    :cond_49
    const/4 v8, 0x0

    invoke-static {v4, v8}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 373
    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    array-length v10, v10

    array-length v11, v4

    sub-int/2addr v10, v11

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v8, v10, v8}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BIIB)V

    .line 375
    return-object v7

    .line 334
    .end local v0    # "plaintextLength":I
    .end local v1    # "random":[B
    .end local v2    # "badPadMask":I
    .end local v3    # "strictBlockSize":I
    .end local v4    # "block":[B
    .end local v5    # "data":[B
    .end local v6    # "dataOff":I
    .end local v7    # "result":[B
    :cond_5c
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v1, "sorry, this method is only for decryption, not for signing"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist encodeBlock([BII)[B
    .registers 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_54

    .line 201
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 203
    .local v0, "block":[B
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_23

    .line 205
    aput-byte v3, v0, v2

    .line 207
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_17
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_22

    .line 209
    const/4 v4, -0x1

    aput-byte v4, v0, v1

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .end local v1    # "i":I
    :cond_22
    goto :goto_42

    .line 214
    :cond_23
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 216
    const/4 v1, 0x2

    aput-byte v1, v0, v2

    .line 222
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2c
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_42

    .line 224
    :goto_31
    aget-byte v4, v0, v1

    if-nez v4, :cond_3f

    .line 226
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_31

    .line 222
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 231
    .end local v1    # "i":I
    :cond_42
    :goto_42
    array-length v1, v0

    sub-int/2addr v1, p3

    sub-int/2addr v1, v3

    aput-byte v2, v0, v1

    .line 232
    array-length v1, v0

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    return-object v1

    .line 198
    .end local v0    # "block":[B
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist useStrict()Z
    .registers 4

    .line 99
    const-string v0, "com.android.internal.org.bouncycastle.pkcs1.not_strict"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 101
    return v2

    .line 104
    :cond_b
    const-string v0, "com.android.internal.org.bouncycastle.pkcs1.strict"

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSetTo(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public blacklist getInputBlockSize()I
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 150
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_d

    .line 152
    add-int/lit8 v1, v0, -0xa

    return v1

    .line 156
    :cond_d
    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .registers 3

    .line 162
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 164
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_b

    .line 166
    return v0

    .line 170
    :cond_b
    add-int/lit8 v1, v0, -0xa

    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 118
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_15

    .line 120
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 122
    .local v0, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 123
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 124
    .local v0, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_26

    .line 127
    .end local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_15
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 128
    .restart local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_26

    if-eqz p1, :cond_26

    .line 130
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 134
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 136
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 137
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    .line 138
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 140
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-lez v1, :cond_52

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    if-eqz v1, :cond_4a

    goto :goto_52

    .line 142
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "encoder requires random"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_52
    :goto_52
    return-void
.end method

.method public blacklist processBlock([BII)[B
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 180
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 182
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    .line 186
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
