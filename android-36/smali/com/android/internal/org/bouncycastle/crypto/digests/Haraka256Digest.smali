.class public Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;
.super Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;
.source "Haraka256Digest.java"


# instance fields
.field private final blacklist buffer:[B

.field private blacklist off:I

.field private final blacklist purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 84
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 85
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 3
    .param p1, "purpose"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 88
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 91
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    .line 93
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {p0, v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lcom/android/internal/org/bouncycastle/crypto/Digest;ILcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 94
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;)V
    .registers 4
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;

    .line 97
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    .line 98
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 100
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    .line 101
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lcom/android/internal/org/bouncycastle/crypto/Digest;ILcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 104
    return-void
.end method

.method private blacklist haraka256256([B[BI)I
    .registers 14
    .param p1, "msg"    # [B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .line 34
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v7, 0x1

    const/16 v2, 0x10

    aput v2, v1, v7

    const/4 v4, 0x0

    aput v0, v1, v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [[B

    .line 35
    .local v8, "s1":[[B
    new-array v1, v0, [I

    aput v2, v1, v7

    aput v0, v1, v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [[B

    .line 37
    .local v9, "s2":[[B
    aget-object v1, v8, v4

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    aget-object v1, v8, v7

    invoke-static {p1, v2, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    aget-object v1, v8, v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v5, v5, v4

    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v8, v4

    .line 41
    aget-object v1, v8, v7

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v5, v5, v7

    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v8, v7

    .line 42
    aget-object v1, v8, v4

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v0, v5, v0

    invoke-static {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 43
    aget-object v0, v8, v7

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 44
    invoke-direct {p0, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    .line 46
    aget-object v0, v9, v4

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v5, 0x4

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 47
    aget-object v0, v9, v7

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v5, 0x5

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 48
    aget-object v0, v8, v4

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v5, 0x6

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 49
    aget-object v0, v8, v7

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/4 v5, 0x7

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 50
    invoke-direct {p0, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    .line 52
    aget-object v0, v9, v4

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0x8

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 53
    aget-object v0, v9, v7

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0x9

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 54
    aget-object v0, v8, v4

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xa

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 55
    aget-object v0, v8, v7

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xb

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 56
    invoke-direct {p0, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    .line 58
    aget-object v0, v9, v4

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xc

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 59
    aget-object v0, v9, v7

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xd

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 60
    aget-object v0, v8, v4

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xe

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 61
    aget-object v0, v8, v7

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v5, 0xf

    aget-object v1, v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 62
    invoke-direct {p0, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    .line 64
    aget-object v0, v9, v4

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 65
    aget-object v0, v9, v7

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v2, 0x11

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 66
    aget-object v0, v8, v4

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v4

    .line 67
    aget-object v0, v8, v7

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->RC:[[B

    const/16 v2, 0x13

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->aesEnc([B[B)[B

    move-result-object v0

    aput-object v0, v8, v7

    .line 68
    invoke-direct {p0, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->mix256([[B[[B)V

    .line 70
    aget-object v1, v9, v4

    const/4 v2, 0x0

    const/16 v0, 0x10

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 71
    aget-object v1, v9, v7

    add-int/lit8 v6, p3, 0x10

    const/16 v4, 0x10

    invoke-static/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 73
    const/16 v0, 0x20

    return v0
.end method

.method private blacklist mix256([[B[[B)V
    .registers 10
    .param p1, "s1"    # [[B
    .param p2, "s2"    # [[B

    .line 21
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    const/4 v3, 0x4

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    const/4 v1, 0x1

    aget-object v2, p1, v1

    aget-object v4, p2, v0

    invoke-static {v2, v0, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 23
    aget-object v2, p1, v0

    aget-object v4, p2, v0

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    aget-object v2, p1, v1

    aget-object v4, p2, v0

    const/16 v6, 0xc

    invoke-static {v2, v3, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    aget-object v2, p1, v0

    aget-object v4, p2, v1

    invoke-static {v2, v5, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    aget-object v2, p1, v1

    aget-object v4, p2, v1

    invoke-static {v2, v5, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    aget-object v0, p1, v0

    aget-object v2, p2, v1

    invoke-static {v0, v6, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    aget-object v0, p1, v1

    aget-object v1, p2, v1

    invoke-static {v0, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 134
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1c

    .line 139
    array-length v0, p1

    sub-int/2addr v0, p2

    if-lt v0, v1, :cond_14

    .line 144
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->haraka256256([B[BI)I

    move-result v0

    .line 146
    .local v0, "rv":I
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->reset()V

    .line 148
    return v0

    .line 141
    .end local v0    # "rv":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output too short to receive digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "input must be exactly 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 108
    const-string v0, "Haraka-256"

    return-object v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    .line 154
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clear([B)V

    .line 155
    return-void
.end method

.method public blacklist update(B)V
    .registers 5
    .param p1, "in"    # B

    .line 113
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_11

    .line 118
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    aput-byte p1, v0, v1

    .line 119
    return-void

    .line 115
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "total input cannot be more than 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist update([BII)V
    .registers 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 123
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    rsub-int/lit8 v1, p3, 0x20

    if-gt v0, v1, :cond_13

    .line 128
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->buffer:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka256Digest;->off:I

    .line 130
    return-void

    .line 125
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "total input cannot be more than 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
