.class public Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private blacklist defHash:[B

.field private blacklist engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist forEncryption:Z

.field private blacklist mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 63
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 64
    invoke-interface {p2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    .line 66
    invoke-interface {p2}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    const/4 p1, 0x0

    if-eqz p4, :cond_19

    .line 70
    array-length p3, p4

    invoke-interface {p2, p4, p1, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 73
    :cond_19
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, p0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V
    .registers 4

    .line 53
    invoke-direct {p0, p1, p2, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    return-void
.end method

.method private blacklist maskGeneratorFunction1([BIII)[B
    .registers 13

    .line 322
    new-array v0, p4, [B

    .line 323
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x4

    .line 324
    new-array v4, v3, [B

    .line 327
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    const/4 v5, 0x0

    move v6, v5

    .line 329
    :goto_14
    div-int v7, p4, v1

    if-ge v6, v7, :cond_32

    .line 331
    invoke-static {v6, v4, v5}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 333
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v7, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 334
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v7, v4, v5, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 335
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v7, v2, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    mul-int v7, v6, v1

    .line 337
    invoke-static {v2, v5, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_32
    mul-int/2addr v1, v6

    if-ge v1, p4, :cond_4b

    .line 344
    invoke-static {v6, v4, v5}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 346
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v6, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 347
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {p1, v4, v5, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 348
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {p0, v2, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    sub-int/2addr p4, v1

    .line 350
    invoke-static {v2, v5, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4b
    return-object v0
.end method


# virtual methods
.method public blacklist decodeBlock([BII)[B
    .registers 9

    .line 223
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p1

    .line 224
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result p2

    new-array p3, p2, [B

    .line 233
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p2, v0

    shr-int/lit8 v0, v0, 0x1f

    .line 235
    array-length v1, p1

    const/4 v2, 0x0

    if-gt v1, p2, :cond_25

    .line 237
    array-length v1, p1

    sub-int v1, p2, v1

    array-length v3, p1

    invoke-static {p1, v2, p3, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2a

    .line 241
    :cond_25
    invoke-static {p1, v2, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    or-int/lit8 v0, v0, 0x1

    .line 248
    :goto_2a
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, p1

    array-length v3, p1

    sub-int v3, p2, v3

    array-length p1, p1

    invoke-direct {p0, p3, v1, v3, p1}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object p1

    move v1, v2

    .line 251
    :goto_36
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v3

    if-eq v1, v4, :cond_46

    .line 253
    aget-byte v3, p3, v1

    aget-byte v4, p1, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 259
    :cond_46
    array-length p1, v3

    array-length v1, v3

    sub-int v1, p2, v1

    invoke-direct {p0, p3, v2, p1, v1}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object p1

    .line 261
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v1

    :goto_51
    if-eq v1, p2, :cond_63

    .line 263
    aget-byte v3, p3, v1

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    sub-int v4, v1, v4

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_63
    move p1, v2

    .line 270
    :goto_64
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v3, v1

    if-eq p1, v3, :cond_74

    .line 272
    aget-byte v3, v1, p1

    array-length v1, v1

    add-int/2addr v1, p1

    aget-byte v1, p3, v1

    xor-int/2addr v1, v3

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_64

    .line 280
    :cond_74
    array-length p0, v1

    mul-int/lit8 p0, p0, 0x2

    const/4 p1, -0x1

    :goto_78
    if-eq p0, p2, :cond_87

    .line 282
    aget-byte v1, p3, p0

    and-int/lit16 v1, v1, 0xff

    neg-int v1, v1

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x1f

    and-int/2addr v1, p0

    add-int/2addr p1, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_78

    :cond_87
    shr-int/lit8 p0, p1, 0x1f

    or-int/2addr p0, v0

    add-int/lit8 v0, p1, 0x1

    .line 292
    aget-byte v0, p3, v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr p0, v0

    if-nez p0, :cond_9f

    add-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    .line 305
    new-array p0, p2, [B

    .line 307
    invoke-static {p3, p1, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    invoke-static {p3, v2}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    return-object p0

    .line 296
    :cond_9f
    invoke-static {p3, v2}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 297
    new-instance p0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "data wrong"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist encodeBlock([BII)[B
    .registers 9

    .line 151
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_75

    .line 156
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    new-array v2, v0, [B

    sub-int v3, v0, p3

    .line 161
    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v3, v1

    .line 166
    aput-byte v1, v2, v3

    .line 175
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p2, p1

    array-length p3, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v2, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p1, p1

    new-array p2, p1, [B

    .line 182
    iget-object p3, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {p3, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 187
    iget-object p3, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p3, p3

    sub-int p3, v0, p3

    invoke-direct {p0, p2, v1, p1, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object p1

    .line 189
    iget-object p3, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p3, p3

    :goto_3a
    if-eq p3, v0, :cond_4c

    .line 191
    aget-byte v3, v2, p3

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    sub-int v4, p3, v4

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_3a

    .line 197
    :cond_4c
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p1, p1

    invoke-static {p2, v1, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p2, p1

    array-length p3, p1

    sub-int p3, v0, p3

    array-length p1, p1

    invoke-direct {p0, v2, p2, p3, p1}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object p1

    move p2, v1

    .line 205
    :goto_5e
    iget-object p3, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p3, p3

    if-eq p2, p3, :cond_6e

    .line 207
    aget-byte p3, v2, p2

    aget-byte v3, p1, p2

    xor-int/2addr p3, v3

    int-to-byte p3, p3

    aput-byte p3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5e

    .line 210
    :cond_6e
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {p0, v2, v1, v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object p0

    return-object p0

    .line 153
    :cond_75
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input data too long"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getInputBlockSize()I
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 105
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, -0x1

    .line 107
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    :cond_12
    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 119
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, -0x1

    .line 125
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    return v0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4

    .line 85
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_e

    .line 87
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 89
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    goto :goto_14

    .line 93
    :cond_e
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 96
    :goto_14
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 98
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    return-void
.end method

.method public blacklist processBlock([BII)[B
    .registers 5

    .line 135
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object p0

    return-object p0

    .line 141
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object p0

    return-object p0
.end method
