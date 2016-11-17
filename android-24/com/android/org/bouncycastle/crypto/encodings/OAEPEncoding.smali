.class public Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private defHash:[B

.field private engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@0
    .prologue
    .line 31
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    #@8
    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/org/bouncycastle/crypto/Digest;

    #@0
    .prologue
    .line 39
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    #@4
    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V
    .locals 2
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p3, "mgf1Hash"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p4, "encodingParams"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 56
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@6
    .line 57
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    #@8
    .line 58
    invoke-interface {p2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@b
    move-result v0

    #@c
    new-array v0, v0, [B

    #@e
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@10
    .line 60
    invoke-interface {p2}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@13
    .line 62
    if-eqz p4, :cond_0

    #@15
    .line 64
    array-length v0, p4

    #@16
    invoke-interface {p2, p4, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@19
    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@1b
    invoke-interface {p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@1e
    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V
    .locals 0
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p3, "encodingParams"    # [B

    #@0
    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    #@3
    .line 45
    return-void
.end method

.method private ItoOSP(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "sp"    # [B

    #@0
    .prologue
    .line 313
    ushr-int/lit8 v0, p1, 0x18

    #@2
    int-to-byte v0, v0

    #@3
    const/4 v1, 0x0

    #@4
    aput-byte v0, p2, v1

    #@6
    .line 314
    ushr-int/lit8 v0, p1, 0x10

    #@8
    int-to-byte v0, v0

    #@9
    const/4 v1, 0x1

    #@a
    aput-byte v0, p2, v1

    #@c
    .line 315
    ushr-int/lit8 v0, p1, 0x8

    #@e
    int-to-byte v0, v0

    #@f
    const/4 v1, 0x2

    #@10
    aput-byte v0, p2, v1

    #@12
    .line 316
    ushr-int/lit8 v0, p1, 0x0

    #@14
    int-to-byte v0, v0

    #@15
    const/4 v1, 0x3

    #@16
    aput-byte v0, p2, v1

    #@18
    .line 311
    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .locals 8
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 328
    new-array v3, p4, [B

    #@3
    .line 329
    .local v3, "mask":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@8
    move-result v4

    #@9
    new-array v2, v4, [B

    #@b
    .line 330
    .local v2, "hashBuf":[B
    const/4 v4, 0x4

    #@c
    new-array v0, v4, [B

    #@e
    .line 331
    .local v0, "C":[B
    const/4 v1, 0x0

    #@f
    .line 333
    .local v1, "counter":I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    #@11
    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@14
    .line 335
    :goto_0
    array-length v4, v2

    #@15
    div-int v4, p4, v4

    #@17
    if-ge v1, v4, :cond_0

    #@19
    .line 337
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    #@1c
    .line 339
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    #@1e
    invoke-interface {v4, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@21
    .line 340
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    #@23
    array-length v5, v0

    #@24
    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@27
    .line 341
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    #@29
    invoke-interface {v4, v2, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@2c
    .line 343
    array-length v4, v2

    #@2d
    mul-int/2addr v4, v1

    #@2e
    array-length v5, v2

    #@2f
    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@32
    .line 345
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 348
    :cond_0
    array-length v4, v2

    #@36
    mul-int/2addr v4, v1

    #@37
    if-ge v4, p4, :cond_1

    #@39
    .line 350
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    #@3c
    .line 352
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3e
    invoke-interface {v4, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@41
    .line 353
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    #@43
    array-length v5, v0

    #@44
    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@47
    .line 354
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    #@49
    invoke-interface {v4, v2, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@4c
    .line 356
    array-length v4, v2

    #@4d
    mul-int/2addr v4, v1

    #@4e
    array-length v5, v3

    #@4f
    array-length v6, v2

    #@50
    mul-int/2addr v6, v1

    #@51
    sub-int/2addr v5, v6

    #@52
    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@55
    .line 359
    :cond_1
    return-object v3
.end method


# virtual methods
.method public decodeBlock([BII)[B
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
    const/4 v10, 0x0

    #@1
    .line 212
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@3
    invoke-interface {v7, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    #@6
    move-result-object v1

    #@7
    .line 220
    .local v1, "data":[B
    array-length v7, v1

    #@8
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@a
    invoke-interface {v8}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    #@d
    move-result v8

    #@e
    if-ge v7, v8, :cond_0

    #@10
    .line 222
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@12
    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    #@15
    move-result v7

    #@16
    new-array v0, v7, [B

    #@18
    .line 224
    .local v0, "block":[B
    array-length v7, v0

    #@19
    array-length v8, v1

    #@1a
    sub-int/2addr v7, v8

    #@1b
    array-length v8, v1

    #@1c
    invoke-static {v1, v10, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1f
    .line 231
    :goto_0
    array-length v7, v0

    #@20
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@22
    array-length v8, v8

    #@23
    mul-int/lit8 v8, v8, 0x2

    #@25
    add-int/lit8 v8, v8, 0x1

    #@27
    if-ge v7, v8, :cond_1

    #@29
    .line 233
    new-instance v7, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@2b
    const-string/jumbo v8, "data too short"

    #@2e
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@31
    throw v7

    #@32
    .line 228
    .end local v0    # "block":[B
    :cond_0
    move-object v0, v1

    #@33
    .restart local v0    # "block":[B
    goto :goto_0

    #@34
    .line 240
    :cond_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@36
    array-length v7, v7

    #@37
    array-length v8, v0

    #@38
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@3a
    array-length v9, v9

    #@3b
    sub-int/2addr v8, v9

    #@3c
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@3e
    array-length v9, v9

    #@3f
    .line 239
    invoke-direct {p0, v0, v7, v8, v9}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    #@42
    move-result-object v4

    #@43
    .line 242
    .local v4, "mask":[B
    const/4 v3, 0x0

    #@44
    .local v3, "i":I
    :goto_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@46
    array-length v7, v7

    #@47
    if-eq v3, v7, :cond_2

    #@49
    .line 244
    aget-byte v7, v0, v3

    #@4b
    aget-byte v8, v4, v3

    #@4d
    xor-int/2addr v7, v8

    #@4e
    int-to-byte v7, v7

    #@4f
    aput-byte v7, v0, v3

    #@51
    .line 242
    add-int/lit8 v3, v3, 0x1

    #@53
    goto :goto_1

    #@54
    .line 250
    :cond_2
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@56
    array-length v7, v7

    #@57
    array-length v8, v0

    #@58
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@5a
    array-length v9, v9

    #@5b
    sub-int/2addr v8, v9

    #@5c
    invoke-direct {p0, v0, v10, v7, v8}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    #@5f
    move-result-object v4

    #@60
    .line 252
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@62
    array-length v3, v7

    #@63
    :goto_2
    array-length v7, v0

    #@64
    if-eq v3, v7, :cond_3

    #@66
    .line 254
    aget-byte v7, v0, v3

    #@68
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@6a
    array-length v8, v8

    #@6b
    sub-int v8, v3, v8

    #@6d
    aget-byte v8, v4, v8

    #@6f
    xor-int/2addr v7, v8

    #@70
    int-to-byte v7, v7

    #@71
    aput-byte v7, v0, v3

    #@73
    .line 252
    add-int/lit8 v3, v3, 0x1

    #@75
    goto :goto_2

    #@76
    .line 261
    :cond_3
    const/4 v2, 0x0

    #@77
    .line 263
    .local v2, "defHashWrong":Z
    const/4 v3, 0x0

    #@78
    :goto_3
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@7a
    array-length v7, v7

    #@7b
    if-eq v3, v7, :cond_5

    #@7d
    .line 265
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@7f
    aget-byte v7, v7, v3

    #@81
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@83
    array-length v8, v8

    #@84
    add-int/2addr v8, v3

    #@85
    aget-byte v8, v0, v8

    #@87
    if-eq v7, v8, :cond_4

    #@89
    .line 267
    const/4 v2, 0x1

    #@8a
    .line 263
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@8c
    goto :goto_3

    #@8d
    .line 271
    :cond_5
    if-eqz v2, :cond_6

    #@8f
    .line 273
    new-instance v7, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@91
    const-string/jumbo v8, "data hash wrong"

    #@94
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@97
    throw v7

    #@98
    .line 281
    :cond_6
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@9a
    array-length v7, v7

    #@9b
    mul-int/lit8 v6, v7, 0x2

    #@9d
    .local v6, "start":I
    :goto_4
    array-length v7, v0

    #@9e
    if-eq v6, v7, :cond_7

    #@a0
    .line 283
    aget-byte v7, v0, v6

    #@a2
    if-eqz v7, :cond_9

    #@a4
    .line 289
    :cond_7
    array-length v7, v0

    #@a5
    add-int/lit8 v7, v7, -0x1

    #@a7
    if-ge v6, v7, :cond_8

    #@a9
    aget-byte v7, v0, v6

    #@ab
    const/4 v8, 0x1

    #@ac
    if-eq v7, v8, :cond_a

    #@ae
    .line 291
    :cond_8
    new-instance v7, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@b0
    new-instance v8, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v9, "data start wrong "

    #@b8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v8

    #@bc
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v8

    #@c0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v8

    #@c4
    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@c7
    throw v7

    #@c8
    .line 281
    :cond_9
    add-int/lit8 v6, v6, 0x1

    #@ca
    goto :goto_4

    #@cb
    .line 294
    :cond_a
    add-int/lit8 v6, v6, 0x1

    #@cd
    .line 299
    array-length v7, v0

    #@ce
    sub-int/2addr v7, v6

    #@cf
    new-array v5, v7, [B

    #@d1
    .line 301
    .local v5, "output":[B
    array-length v7, v5

    #@d2
    invoke-static {v0, v6, v5, v10, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@d5
    .line 303
    return-object v5
.end method

.method public encodeBlock([BII)[B
    .locals 8
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
    const/4 v7, 0x0

    #@1
    .line 145
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    #@4
    move-result v4

    #@5
    add-int/lit8 v4, v4, 0x1

    #@7
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@9
    array-length v5, v5

    #@a
    mul-int/lit8 v5, v5, 0x2

    #@c
    add-int/2addr v4, v5

    #@d
    new-array v0, v4, [B

    #@f
    .line 150
    .local v0, "block":[B
    array-length v4, v0

    #@10
    sub-int/2addr v4, p3

    #@11
    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14
    .line 155
    array-length v4, v0

    #@15
    sub-int/2addr v4, p3

    #@16
    add-int/lit8 v4, v4, -0x1

    #@18
    const/4 v5, 0x1

    #@19
    aput-byte v5, v0, v4

    #@1b
    .line 164
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@1d
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@1f
    array-length v5, v5

    #@20
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@22
    array-length v6, v6

    #@23
    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@26
    .line 169
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@28
    array-length v4, v4

    #@29
    new-array v3, v4, [B

    #@2b
    .line 171
    .local v3, "seed":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    #@2d
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@30
    .line 176
    array-length v4, v3

    #@31
    array-length v5, v0

    #@32
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@34
    array-length v6, v6

    #@35
    sub-int/2addr v5, v6

    #@36
    invoke-direct {p0, v3, v7, v4, v5}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    #@39
    move-result-object v2

    #@3a
    .line 178
    .local v2, "mask":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@3c
    array-length v1, v4

    #@3d
    .local v1, "i":I
    :goto_0
    array-length v4, v0

    #@3e
    if-eq v1, v4, :cond_0

    #@40
    .line 180
    aget-byte v4, v0, v1

    #@42
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@44
    array-length v5, v5

    #@45
    sub-int v5, v1, v5

    #@47
    aget-byte v5, v2, v5

    #@49
    xor-int/2addr v4, v5

    #@4a
    int-to-byte v4, v4

    #@4b
    aput-byte v4, v0, v1

    #@4d
    .line 178
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 186
    :cond_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@52
    array-length v4, v4

    #@53
    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@56
    .line 192
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@58
    array-length v4, v4

    #@59
    array-length v5, v0

    #@5a
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@5c
    array-length v6, v6

    #@5d
    sub-int/2addr v5, v6

    #@5e
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@60
    array-length v6, v6

    #@61
    .line 191
    invoke-direct {p0, v0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    #@64
    move-result-object v2

    #@65
    .line 194
    const/4 v1, 0x0

    #@66
    :goto_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@68
    array-length v4, v4

    #@69
    if-eq v1, v4, :cond_1

    #@6b
    .line 196
    aget-byte v4, v0, v1

    #@6d
    aget-byte v5, v2, v1

    #@6f
    xor-int/2addr v4, v5

    #@70
    int-to-byte v4, v4

    #@71
    aput-byte v4, v0, v1

    #@73
    .line 194
    add-int/lit8 v1, v1, 0x1

    #@75
    goto :goto_1

    #@76
    .line 199
    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@78
    array-length v5, v0

    #@79
    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    #@7c
    move-result-object v4

    #@7d
    return-object v4
.end method

.method public getInputBlockSize()I
    .locals 3

    #@0
    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    #@5
    move-result v0

    #@6
    .line 99
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 101
    add-int/lit8 v1, v0, -0x1

    #@c
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@e
    array-length v2, v2

    #@f
    mul-int/lit8 v2, v2, 0x2

    #@11
    sub-int/2addr v1, v2

    #@12
    return v1

    #@13
    .line 105
    :cond_0
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 3

    #@0
    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    #@5
    move-result v0

    #@6
    .line 113
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 115
    return v0

    #@b
    .line 119
    :cond_0
    add-int/lit8 v1, v0, -0x1

    #@d
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    #@f
    array-length v2, v2

    #@10
    mul-int/lit8 v2, v2, 0x2

    #@12
    sub-int/2addr v1, v2

    #@13
    return v1
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@2
    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 79
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p2

    #@5
    .line 81
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@7
    .line 83
    .local v0, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    #@a
    move-result-object v1

    #@b
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    #@d
    .line 90
    .end local v0    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    #@f
    invoke-interface {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@12
    .line 92
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    #@14
    .line 77
    return-void

    #@15
    .line 87
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    #@17
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@1a
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    #@1c
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
    .line 129
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 131
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 135
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
