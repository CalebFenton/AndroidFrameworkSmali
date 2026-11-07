.class public abstract Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;
.source "RFC3394WrapEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Wrapper;


# static fields
.field private static final blacklist DEFAULT_IV:[B


# instance fields
.field private final blacklist engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private blacklist forWrapping:Z

.field private final blacklist iv:[B

.field private blacklist param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private final blacklist wrapCipherMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 25
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->DEFAULT_IV:[B

    return-void

    :array_a
    .array-data 1
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
        -0x5at
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Z)V
    .registers 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 30
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    .line 53
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    xor-int/lit8 p1, p2, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    .line 61
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    .line 63
    instance-of p1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_c

    .line 65
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 68
    :cond_c
    instance-of p1, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    .line 70
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 71
    sget-object p1, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->DEFAULT_IV:[B

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 73
    :cond_1f
    instance-of p1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_42

    .line 75
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 77
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    .line 78
    array-length v2, p1

    if-ne v2, v0, :cond_3a

    .line 83
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 84
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 80
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV not equal to 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_42
    return-void
.end method

.method public blacklist unwrap([BII)[B
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 165
    iget-boolean v4, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez v4, :cond_126

    const/16 v4, 0x10

    if-lt v3, v4, :cond_11e

    .line 174
    div-int/lit8 v4, v3, 0x8

    mul-int/lit8 v5, v4, 0x8

    if-ne v5, v3, :cond_116

    .line 181
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v6, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget-object v8, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v5, v6, v8}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 183
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v5

    sub-int v6, v3, v6

    new-array v6, v6, [B

    .line 184
    array-length v8, v5

    new-array v8, v8, [B

    .line 185
    array-length v9, v5

    const/16 v10, 0x8

    add-int/2addr v9, v10

    new-array v9, v9, [B

    sub-int/2addr v4, v7

    const/4 v12, 0x0

    if-ne v4, v7, :cond_49

    .line 191
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5, v1, v2, v9, v12}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 192
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v5, v5

    invoke-static {v9, v12, v8, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v5, v5

    invoke-static {v9, v5, v6, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    move/from16 v17, v7

    goto :goto_a0

    .line 197
    :cond_49
    array-length v5, v5

    invoke-static {v1, v2, v8, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v13, v5

    add-int/2addr v13, v2

    array-length v5, v5

    sub-int v5, v3, v5

    invoke-static {v1, v13, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x5

    :goto_58
    if-ltz v5, :cond_46

    move v13, v4

    :goto_5b
    if-lt v13, v7, :cond_9b

    .line 204
    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v14, v14

    invoke-static {v8, v12, v9, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v13, -0x1

    mul-int/2addr v14, v10

    .line 205
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v15, v15

    invoke-static {v6, v14, v9, v15, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v15, v4, v5

    add-int/2addr v15, v13

    move/from16 v16, v7

    :goto_71
    if-eqz v15, :cond_89

    int-to-byte v11, v15

    move/from16 v17, v7

    .line 212
    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    sub-int v7, v7, v16

    aget-byte v18, v9, v7

    xor-int v11, v18, v11

    int-to-byte v11, v11

    aput-byte v11, v9, v7

    ushr-int/lit8 v15, v15, 0x8

    add-int/lit8 v16, v16, 0x1

    move/from16 v7, v17

    goto :goto_71

    :cond_89
    move/from16 v17, v7

    .line 217
    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v9, v12, v9, v12}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 218
    invoke-static {v9, v12, v8, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    invoke-static {v9, v10, v6, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v13, v13, -0x1

    move/from16 v7, v17

    goto :goto_5b

    :cond_9b
    move/from16 v17, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_58

    .line 224
    :goto_a0
    const-string v5, "checksum failed"

    move/from16 v7, v17

    if-eq v4, v7, :cond_b5

    .line 226
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v8, v0}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_af

    goto :goto_115

    .line 228
    :cond_af
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_b5
    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v8, v7}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v7

    if-nez v7, :cond_115

    .line 236
    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    invoke-static {v1, v2, v8, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v7

    add-int/2addr v2, v11

    array-length v7, v7

    sub-int/2addr v3, v7

    invoke-static {v1, v2, v6, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x5

    :goto_cd
    if-ltz v11, :cond_106

    .line 241
    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    invoke-static {v8, v12, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v1, v1

    invoke-static {v6, v12, v9, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int v1, v4, v11

    const/16 v17, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v7, 0x1

    :goto_e2
    if-eqz v1, :cond_f6

    int-to-byte v2, v1

    .line 249
    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v3, v3

    sub-int/2addr v3, v7

    aget-byte v13, v9, v3

    xor-int/2addr v2, v13

    int-to-byte v2, v2

    aput-byte v2, v9, v3

    ushr-int/lit8 v1, v1, 0x8

    const/16 v17, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_e2

    :cond_f6
    const/16 v17, 0x1

    .line 254
    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, v9, v12, v9, v12}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 255
    invoke-static {v9, v12, v8, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    invoke-static {v9, v10, v6, v12, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v11, -0x1

    goto :goto_cd

    .line 259
    :cond_106
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v8, v0}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_10f

    goto :goto_115

    .line 261
    :cond_10f
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_115
    :goto_115
    return-object v6

    .line 178
    :cond_116
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_11e
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "unwrap data too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist wrap([BII)[B
    .registers 15

    .line 102
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_83

    const/16 v0, 0x8

    if-lt p3, v0, :cond_7b

    .line 111
    div-int/lit8 v1, p3, 0x8

    mul-int/lit8 v2, v1, 0x8

    if-ne v2, p3, :cond_73

    .line 118
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 120
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v3, v2

    add-int/2addr v3, p3

    new-array v3, v3, [B

    .line 121
    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v2, v2

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    if-ne v1, p1, :cond_31

    .line 126
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0, v3, v5, v3, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-object v3

    .line 130
    :cond_31
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length p2, p2

    add-int/2addr p2, v0

    new-array p2, p2, [B

    move p3, v5

    :goto_38
    const/4 v2, 0x6

    if-eq p3, v2, :cond_72

    move v2, p1

    :goto_3c
    if-gt v2, v1, :cond_6f

    .line 136
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v4, v4

    invoke-static {v3, v5, p2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    mul-int/lit8 v4, v2, 0x8

    .line 137
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v6

    invoke-static {v3, v4, p2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, p2, v5, p2, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    mul-int v6, v1, p3

    add-int/2addr v6, v2

    move v7, p1

    :goto_55
    if-eqz v6, :cond_66

    int-to-byte v8, v6

    .line 145
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    sub-int/2addr v9, v7

    aget-byte v10, p2, v9

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, p2, v9

    ushr-int/lit8 v6, v6, 0x8

    add-int/2addr v7, p1

    goto :goto_55

    .line 150
    :cond_66
    invoke-static {p2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    invoke-static {p2, v0, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_6f
    add-int/lit8 p3, p3, 0x1

    goto :goto_38

    :cond_72
    return-object v3

    .line 115
    :cond_73
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "wrap data must be a multiple of 8 bytes"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_7b
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "wrap data must be at least 8 bytes"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_83
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not set for wrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
