.class public Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;
.super Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;
.source "Haraka512Digest.java"


# instance fields
.field private final blacklist buffer:[B

.field private blacklist off:I

.field private final blacklist purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 27
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 3
    .param p1, "purpose"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 29
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 32
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;)V
    .registers 3
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;

    .line 36
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    .line 37
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 39
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    .line 40
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    .line 41
    return-void
.end method

.method private blacklist haraka512256([B[BI)I
    .registers 23
    .param p1, "msg"    # [B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    const/4 v10, 0x2

    new-array v1, v10, [I

    const/4 v11, 0x1

    const/16 v2, 0x10

    aput v2, v1, v11

    const/4 v12, 0x0

    const/4 v3, 0x4

    aput v3, v1, v12

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [[B

    .line 69
    .local v13, "s1":[[B
    new-array v1, v10, [I

    aput v2, v1, v11

    aput v3, v1, v12

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [[B

    .line 73
    .local v14, "s2":[[B
    aget-object v1, v13, v12

    invoke-static {v4, v12, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    aget-object v1, v13, v11

    invoke-static {v4, v2, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    aget-object v1, v13, v10

    const/16 v15, 0x20

    invoke-static {v4, v15, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    const/16 v16, 0x3

    aget-object v1, v13, v16

    const/16 v5, 0x30

    invoke-static {v4, v5, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    aget-object v1, v13, v12

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v5, v5, v12

    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    .line 79
    aget-object v1, v13, v11

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v5, v5, v11

    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    .line 80
    aget-object v1, v13, v10

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v5, v5, v10

    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    .line 81
    aget-object v1, v13, v16

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v5, v5, v16

    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    .line 82
    aget-object v1, v13, v12

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v3, v5, v3

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    .line 83
    aget-object v1, v13, v11

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v5, 0x5

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    .line 84
    aget-object v1, v13, v10

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v5, 0x6

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    .line 85
    aget-object v1, v13, v16

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v5, 0x7

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    .line 86
    invoke-direct {v0, v13, v14}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    .line 88
    aget-object v1, v14, v12

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v5, 0x8

    aget-object v3, v3, v5

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    .line 89
    aget-object v1, v14, v11

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0x9

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    .line 90
    aget-object v1, v14, v10

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xa

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    .line 91
    aget-object v1, v14, v16

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xb

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    .line 92
    aget-object v1, v13, v12

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xc

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    .line 93
    aget-object v1, v13, v11

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xd

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    .line 94
    aget-object v1, v13, v10

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xe

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    .line 95
    aget-object v1, v13, v16

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v6, 0xf

    aget-object v3, v3, v6

    invoke-static {v1, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    .line 96
    invoke-direct {v0, v13, v14}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    .line 98
    aget-object v1, v14, v12

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v2, v3, v2

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    .line 99
    aget-object v1, v14, v11

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x11

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    .line 100
    aget-object v1, v14, v10

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x12

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    .line 101
    aget-object v1, v14, v16

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x13

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    .line 102
    aget-object v1, v13, v12

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x14

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    .line 103
    aget-object v1, v13, v11

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x15

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    .line 104
    aget-object v1, v13, v10

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x16

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    .line 105
    aget-object v1, v13, v16

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x17

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    .line 106
    invoke-direct {v0, v13, v14}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    .line 108
    aget-object v1, v14, v12

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x18

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    .line 109
    aget-object v1, v14, v11

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x19

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    .line 110
    aget-object v1, v14, v10

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1a

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    .line 111
    aget-object v1, v14, v16

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1b

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    .line 112
    aget-object v1, v13, v12

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    .line 113
    aget-object v1, v13, v11

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1d

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    .line 114
    aget-object v1, v13, v10

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1e

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    .line 115
    aget-object v1, v13, v16

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    .line 116
    invoke-direct {v0, v13, v14}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    .line 118
    aget-object v1, v14, v12

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v2, v2, v15

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    .line 119
    aget-object v1, v14, v11

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x21

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    .line 120
    aget-object v1, v14, v10

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x22

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    .line 121
    aget-object v1, v14, v16

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x23

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    .line 122
    aget-object v1, v13, v12

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x24

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v12

    .line 123
    aget-object v1, v13, v11

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x25

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v11

    .line 124
    aget-object v1, v13, v10

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x26

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v10

    .line 125
    aget-object v1, v13, v16

    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v3, 0x27

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v13, v16

    .line 126
    invoke-direct {v0, v13, v14}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    .line 128
    aget-object v2, v14, v12

    aget-object v6, v13, v12

    const/4 v7, 0x0

    const/16 v1, 0x10

    const/4 v3, 0x0

    move/from16 v17, v5

    const/4 v5, 0x0

    move/from16 v18, v10

    move/from16 v10, v17

    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 129
    aget-object v2, v14, v11

    aget-object v6, v13, v11

    const/16 v5, 0x10

    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 130
    aget-object v2, v14, v18

    aget-object v6, v13, v18

    const/16 v5, 0x20

    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 131
    aget-object v2, v14, v16

    aget-object v6, v13, v16

    const/16 v5, 0x30

    invoke-static/range {v1 .. v7}, Lcom/android/internal/org/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 133
    aget-object v1, v13, v12

    invoke-static {v1, v10, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    aget-object v1, v13, v11

    add-int/lit8 v2, v9, 0x8

    invoke-static {v1, v10, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    aget-object v1, v13, v18

    add-int/lit8 v2, v9, 0x10

    invoke-static {v1, v12, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    aget-object v1, v13, v16

    add-int/lit8 v2, v9, 0x18

    invoke-static {v1, v12, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    return v15
.end method

.method private blacklist mix512([[B[[B)V
    .registers 12
    .param p1, "s1"    # [[B
    .param p2, "s2"    # [[B

    .line 45
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    const/16 v3, 0xc

    const/4 v4, 0x4

    invoke-static {v1, v3, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    const/4 v1, 0x2

    aget-object v2, p1, v1

    aget-object v5, p2, v0

    invoke-static {v2, v3, v5, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    const/4 v2, 0x1

    aget-object v5, p1, v2

    aget-object v6, p2, v0

    const/16 v7, 0x8

    invoke-static {v5, v3, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    const/4 v5, 0x3

    aget-object v6, p1, v5

    aget-object v8, p2, v0

    invoke-static {v6, v3, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    aget-object v6, p1, v1

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    aget-object v6, p1, v0

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    aget-object v6, p1, v5

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    aget-object v6, p1, v2

    aget-object v8, p2, v2

    invoke-static {v6, v0, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    aget-object v6, p1, v1

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    aget-object v6, p1, v0

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    aget-object v6, p1, v5

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    aget-object v6, p1, v2

    aget-object v8, p2, v1

    invoke-static {v6, v4, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    aget-object v6, p1, v0

    aget-object v8, p2, v5

    invoke-static {v6, v7, v8, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    aget-object v0, p1, v1

    aget-object v1, p2, v5

    invoke-static {v0, v7, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    aget-object v0, p1, v2

    aget-object v1, p2, v5

    invoke-static {v0, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    aget-object v0, p1, v5

    aget-object v1, p2, v5

    invoke-static {v0, v7, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 169
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1e

    .line 174
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x20

    if-lt v0, v1, :cond_16

    .line 179
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->haraka512256([B[BI)I

    move-result v0

    .line 181
    .local v0, "rv":I
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->reset()V

    .line 183
    return v0

    .line 176
    .end local v0    # "rv":I
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output too short to receive digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "input must be exactly 64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 143
    const-string v0, "Haraka-512"

    return-object v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    .line 189
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clear([B)V

    .line 190
    return-void
.end method

.method public blacklist update(B)V
    .registers 5
    .param p1, "in"    # B

    .line 148
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_11

    .line 153
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    aput-byte p1, v0, v1

    .line 154
    return-void

    .line 150
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "total input cannot be more than 64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist update([BII)V
    .registers 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 158
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    rsub-int/lit8 v1, p3, 0x40

    if-gt v0, v1, :cond_13

    .line 163
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    .line 165
    return-void

    .line 160
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "total input cannot be more than 64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
