.class public Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private blacklist defHash:[B

.field private blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist forEncryption:Z

.field private blacklist mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 38
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V
    .registers 7
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p3, "mgf1Hash"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p4, "encodingParams"    # [B

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 63
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 64
    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    .line 66
    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 68
    const/4 v0, 0x0

    if-eqz p4, :cond_19

    .line 70
    array-length v1, p4

    invoke-interface {p2, p4, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 73
    :cond_19
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 74
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p3, "encodingParams"    # [B

    .line 53
    invoke-direct {p0, p1, p2, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/Digest;[B)V

    .line 54
    return-void
.end method

.method private blacklist maskGeneratorFunction1([BIII)[B
    .registers 13
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I

    .line 322
    new-array v0, p4, [B

    .line 323
    .local v0, "mask":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 324
    .local v1, "hashBuf":[B
    const/4 v2, 0x4

    new-array v2, v2, [B

    .line 325
    .local v2, "C":[B
    const/4 v3, 0x0

    .line 327
    .local v3, "counter":I
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 329
    :goto_13
    array-length v4, v1

    div-int v4, p4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_35

    .line 331
    invoke-static {v3, v2, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 333
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 334
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v4, v2, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 335
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 337
    array-length v4, v1

    mul-int/2addr v4, v3

    array-length v6, v1

    invoke-static {v1, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 342
    :cond_35
    array-length v4, v1

    mul-int/2addr v4, v3

    if-ge v4, p4, :cond_55

    .line 344
    invoke-static {v3, v2, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 346
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 347
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v6, v2

    invoke-interface {v4, v2, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 348
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 350
    array-length v4, v1

    mul-int/2addr v4, v3

    array-length v6, v0

    array-length v7, v1

    mul-int/2addr v7, v3

    sub-int/2addr v6, v7

    invoke-static {v1, v5, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 353
    :cond_55
    return-object v0
.end method


# virtual methods
.method public blacklist decodeBlock([BII)[B
    .registers 14
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 224
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    .line 233
    .local v1, "block":[B
    array-length v2, v1

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1f

    .line 235
    .local v2, "wrongMask":I
    array-length v3, v0

    array-length v4, v1

    const/4 v5, 0x0

    if-gt v3, v4, :cond_26

    .line 237
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2c

    .line 241
    :cond_26
    array-length v3, v1

    invoke-static {v0, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    or-int/lit8 v2, v2, 0x1

    .line 248
    :goto_2c
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    array-length v4, v1

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-direct {p0, v1, v3, v4, v6}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    .line 251
    .local v3, "mask":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3c
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    if-eq v4, v6, :cond_4c

    .line 253
    aget-byte v6, v1, v4

    aget-byte v7, v3, v4

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 259
    .end local v4    # "i":I
    :cond_4c
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    array-length v6, v1

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    sub-int/2addr v6, v7

    invoke-direct {p0, v1, v5, v4, v6}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v3

    .line 261
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    .restart local v4    # "i":I
    :goto_5b
    array-length v6, v1

    if-eq v4, v6, :cond_6e

    .line 263
    aget-byte v6, v1, v4

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    sub-int v7, v4, v7

    aget-byte v7, v3, v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 261
    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    .line 270
    .end local v4    # "i":I
    :cond_6e
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6f
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    if-eq v4, v6, :cond_83

    .line 272
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    aget-byte v6, v6, v4

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v7

    add-int/2addr v7, v4

    aget-byte v7, v1, v7

    xor-int/2addr v6, v7

    or-int/2addr v2, v6

    .line 270
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 278
    .end local v4    # "i":I
    :cond_83
    const/4 v4, -0x1

    .line 280
    .local v4, "start":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    .local v6, "index":I
    :goto_89
    array-length v7, v1

    if-eq v6, v7, :cond_9a

    .line 282
    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    .line 285
    .local v7, "octet":I
    neg-int v8, v7

    and-int/2addr v8, v4

    shr-int/lit8 v8, v8, 0x1f

    .line 287
    .local v8, "shouldSetMask":I
    and-int v9, v6, v8

    add-int/2addr v4, v9

    .line 280
    .end local v7    # "octet":I
    .end local v8    # "shouldSetMask":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_89

    .line 290
    .end local v6    # "index":I
    :cond_9a
    shr-int/lit8 v6, v4, 0x1f

    or-int/2addr v2, v6

    .line 291
    add-int/lit8 v4, v4, 0x1

    .line 292
    aget-byte v6, v1, v4

    xor-int/lit8 v6, v6, 0x1

    or-int/2addr v2, v6

    .line 294
    if-nez v2, :cond_b4

    .line 300
    add-int/lit8 v4, v4, 0x1

    .line 305
    array-length v6, v1

    sub-int/2addr v6, v4

    new-array v6, v6, [B

    .line 307
    .local v6, "output":[B
    array-length v7, v6

    invoke-static {v1, v4, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 310
    return-object v6

    .line 296
    .end local v6    # "output":[B
    :cond_b4
    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 297
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "data wrong"

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public blacklist encodeBlock([BII)[B
    .registers 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_82

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 161
    .local v0, "block":[B
    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    array-length v2, v0

    sub-int/2addr v2, p3

    sub-int/2addr v2, v1

    aput-byte v1, v0, v2

    .line 175
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    new-array v1, v1, [B

    .line 182
    .local v1, "seed":[B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 187
    array-length v2, v1

    array-length v3, v0

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int/2addr v3, v5

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 189
    .local v2, "mask":[B
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    .local v3, "i":I
    :goto_41
    array-length v5, v0

    if-eq v3, v5, :cond_54

    .line 191
    aget-byte v5, v0, v3

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int v6, v3, v6

    aget-byte v6, v2, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 189
    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    .line 197
    .end local v3    # "i":I
    :cond_54
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    invoke-static {v1, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v3

    array-length v5, v0

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-direct {p0, v0, v3, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 205
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6a
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    if-eq v3, v5, :cond_7a

    .line 207
    aget-byte v5, v0, v3

    aget-byte v6, v2, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_6a

    .line 210
    .end local v3    # "i":I
    :cond_7a
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v5, v0

    invoke-interface {v3, v0, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v3

    return-object v3

    .line 153
    .end local v0    # "block":[B
    .end local v1    # "seed":[B
    .end local v2    # "mask":[B
    :cond_82
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input data too long"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getInputBlockSize()I
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 105
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_13

    .line 107
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1

    .line 111
    :cond_13
    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 119
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_b

    .line 121
    return v0

    .line 125
    :cond_b
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 85
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_e

    .line 87
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 89
    .local v0, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 90
    .end local v0    # "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_14

    .line 93
    :cond_e
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 96
    :goto_14
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 98
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    .line 99
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

    .line 135
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    .line 141
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
