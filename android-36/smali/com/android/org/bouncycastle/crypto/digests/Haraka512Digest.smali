.class public Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;
.source "Haraka512Digest.java"


# instance fields
.field private final blacklist buffer:[B

.field private blacklist off:I

.field private final blacklist purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;-><init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const/16 p1, 0x40

    .line 32
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    .line 37
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 39
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    .line 40
    iget p1, p1, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    return-void
.end method

.method private blacklist haraka512256([B[BI)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    const/4 v9, 0x2

    .line 68
    new-array v1, v9, [I

    const/4 v10, 0x1

    const/16 v2, 0x10

    aput v2, v1, v10

    const/4 v11, 0x0

    const/4 v4, 0x4

    aput v4, v1, v11

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [[B

    .line 69
    new-array v1, v9, [I

    aput v2, v1, v10

    aput v4, v1, v11

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [[B

    .line 73
    aget-object v1, v12, v11

    invoke-static {v3, v11, v1, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    aget-object v1, v12, v10

    invoke-static {v3, v2, v1, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    aget-object v1, v12, v9

    const/16 v14, 0x20

    invoke-static {v3, v14, v1, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v15, 0x3

    .line 76
    aget-object v1, v12, v15

    const/16 v5, 0x30

    invoke-static {v3, v5, v1, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    aget-object v1, v12, v11

    sget-object v5, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->RC:[[B

    aget-object v6, v5, v11

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v11

    .line 79
    aget-object v1, v12, v10

    aget-object v6, v5, v10

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v10

    .line 80
    aget-object v1, v12, v9

    aget-object v6, v5, v9

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v9

    .line 81
    aget-object v1, v12, v15

    aget-object v6, v5, v15

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v15

    .line 82
    aget-object v1, v12, v11

    aget-object v4, v5, v4

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v11

    .line 83
    aget-object v1, v12, v10

    const/4 v4, 0x5

    aget-object v4, v5, v4

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v10

    .line 84
    aget-object v1, v12, v9

    const/4 v4, 0x6

    aget-object v4, v5, v4

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v9

    .line 85
    aget-object v1, v12, v15

    const/4 v4, 0x7

    aget-object v4, v5, v4

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v15

    .line 86
    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    .line 88
    aget-object v1, v13, v11

    const/16 v4, 0x8

    aget-object v6, v5, v4

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v11

    .line 89
    aget-object v1, v13, v10

    const/16 v6, 0x9

    aget-object v6, v5, v6

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v10

    .line 90
    aget-object v1, v13, v9

    const/16 v6, 0xa

    aget-object v6, v5, v6

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v9

    .line 91
    aget-object v1, v13, v15

    const/16 v6, 0xb

    aget-object v6, v5, v6

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v15

    .line 92
    aget-object v1, v12, v11

    const/16 v6, 0xc

    aget-object v6, v5, v6

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v11

    .line 93
    aget-object v1, v12, v10

    const/16 v6, 0xd

    aget-object v6, v5, v6

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v10

    .line 94
    aget-object v1, v12, v9

    const/16 v6, 0xe

    aget-object v6, v5, v6

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v9

    .line 95
    aget-object v1, v12, v15

    const/16 v6, 0xf

    aget-object v6, v5, v6

    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v15

    .line 96
    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    .line 98
    aget-object v1, v13, v11

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v11

    .line 99
    aget-object v1, v13, v10

    const/16 v2, 0x11

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v10

    .line 100
    aget-object v1, v13, v9

    const/16 v2, 0x12

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v9

    .line 101
    aget-object v1, v13, v15

    const/16 v2, 0x13

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v15

    .line 102
    aget-object v1, v12, v11

    const/16 v2, 0x14

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v11

    .line 103
    aget-object v1, v12, v10

    const/16 v2, 0x15

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v10

    .line 104
    aget-object v1, v12, v9

    const/16 v2, 0x16

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v9

    .line 105
    aget-object v1, v12, v15

    const/16 v2, 0x17

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v15

    .line 106
    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    .line 108
    aget-object v1, v13, v11

    const/16 v16, 0x18

    aget-object v2, v5, v16

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v11

    .line 109
    aget-object v1, v13, v10

    const/16 v2, 0x19

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v10

    .line 110
    aget-object v1, v13, v9

    const/16 v2, 0x1a

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v9

    .line 111
    aget-object v1, v13, v15

    const/16 v2, 0x1b

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v15

    .line 112
    aget-object v1, v12, v11

    const/16 v2, 0x1c

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v11

    .line 113
    aget-object v1, v12, v10

    const/16 v2, 0x1d

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v10

    .line 114
    aget-object v1, v12, v9

    const/16 v2, 0x1e

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v9

    .line 115
    aget-object v1, v12, v15

    const/16 v2, 0x1f

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v15

    .line 116
    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    .line 118
    aget-object v1, v13, v11

    aget-object v2, v5, v14

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v11

    .line 119
    aget-object v1, v13, v10

    const/16 v2, 0x21

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v10

    .line 120
    aget-object v1, v13, v9

    const/16 v2, 0x22

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v9

    .line 121
    aget-object v1, v13, v15

    const/16 v2, 0x23

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v15

    .line 122
    aget-object v1, v12, v11

    const/16 v2, 0x24

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v11

    .line 123
    aget-object v1, v12, v10

    const/16 v2, 0x25

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v10

    .line 124
    aget-object v1, v12, v9

    const/16 v2, 0x26

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v9

    .line 125
    aget-object v1, v12, v15

    const/16 v2, 0x27

    aget-object v2, v5, v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/HarakaBase;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v12, v15

    .line 126
    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    .line 128
    aget-object v1, v13, v11

    aget-object v5, v12, v11

    const/4 v6, 0x0

    const/16 v0, 0x10

    const/4 v2, 0x0

    move/from16 v17, v4

    const/4 v4, 0x0

    move/from16 v18, v9

    move/from16 v9, v17

    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 129
    aget-object v1, v13, v10

    aget-object v5, v12, v10

    const/16 v4, 0x10

    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 130
    aget-object v1, v13, v18

    aget-object v5, v12, v18

    const/16 v4, 0x20

    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 131
    aget-object v1, v13, v15

    aget-object v5, v12, v15

    const/16 v4, 0x30

    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    .line 133
    aget-object v0, v12, v11

    invoke-static {v0, v9, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    aget-object v0, v12, v10

    add-int/lit8 v1, v8, 0x8

    invoke-static {v0, v9, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    aget-object v0, v12, v18

    add-int/lit8 v1, v8, 0x10

    invoke-static {v0, v11, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    aget-object v0, v12, v15

    add-int/lit8 v1, v8, 0x18

    invoke-static {v0, v11, v7, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v14
.end method

.method private blacklist mix512([[B[[B)V
    .registers 11

    const/4 p0, 0x0

    .line 45
    aget-object v0, p1, p0

    aget-object v1, p2, p0

    const/16 v2, 0xc

    const/4 v3, 0x4

    invoke-static {v0, v2, v1, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x2

    .line 46
    aget-object v1, p1, v0

    aget-object v4, p2, p0

    invoke-static {v1, v2, v4, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    .line 47
    aget-object v4, p1, v1

    aget-object v5, p2, p0

    const/16 v6, 0x8

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x3

    .line 48
    aget-object v5, p1, v4

    aget-object v7, p2, p0

    invoke-static {v5, v2, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    aget-object v5, p1, v0

    aget-object v7, p2, v1

    invoke-static {v5, p0, v7, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    aget-object v5, p1, p0

    aget-object v7, p2, v1

    invoke-static {v5, p0, v7, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    aget-object v5, p1, v4

    aget-object v7, p2, v1

    invoke-static {v5, p0, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    aget-object v5, p1, v1

    aget-object v7, p2, v1

    invoke-static {v5, p0, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    aget-object v5, p1, v0

    aget-object v7, p2, v0

    invoke-static {v5, v3, v7, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    aget-object v5, p1, p0

    aget-object v7, p2, v0

    invoke-static {v5, v3, v7, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    aget-object v5, p1, v4

    aget-object v7, p2, v0

    invoke-static {v5, v3, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    aget-object v5, p1, v1

    aget-object v7, p2, v0

    invoke-static {v5, v3, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    aget-object v5, p1, p0

    aget-object v7, p2, v4

    invoke-static {v5, v6, v7, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    aget-object p0, p1, v0

    aget-object v0, p2, v4

    invoke-static {p0, v6, v0, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    aget-object p0, p1, v1

    aget-object v0, p2, v4

    invoke-static {p0, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    aget-object p0, p1, v4

    aget-object p1, p2, v4

    invoke-static {p0, v6, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 5

    .line 169
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1e

    .line 174
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x20

    if-lt v0, v1, :cond_16

    .line 179
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->haraka512256([B[BI)I

    move-result p1

    .line 181
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->reset()V

    return p1

    .line 176
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "output too short to receive digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "input must be exactly 64 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 143
    const-string p0, "Haraka-512"

    return-object p0
.end method

.method public blacklist reset()V
    .registers 2

    const/4 v0, 0x0

    .line 188
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    .line 189
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clear([B)V

    return-void
.end method

.method public blacklist update(B)V
    .registers 5

    .line 148
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_f

    .line 153
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    aput-byte p1, v1, v0

    return-void

    .line 150
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "total input cannot be more than 64 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist update([BII)V
    .registers 6

    .line 158
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    rsub-int/lit8 v1, p3, 0x40

    if-gt v0, v1, :cond_11

    .line 163
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    return-void

    .line 160
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "total input cannot be more than 64 bytes"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
