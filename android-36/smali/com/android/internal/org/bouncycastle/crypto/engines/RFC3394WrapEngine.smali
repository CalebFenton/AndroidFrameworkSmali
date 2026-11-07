.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;
.source "RFC3394WrapEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Wrapper;


# static fields
.field private static final blacklist DEFAULT_IV:[B


# instance fields
.field private final blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist forWrapping:Z

.field private final blacklist iv:[B

.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field private final blacklist wrapCipherMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->DEFAULT_IV:[B

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

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Z)V
    .registers 4
    .param p1, "engine"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "useReverseDirection"    # Z

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    .line 53
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 54
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    .line 55
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 8
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 61
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    .line 63
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_d

    .line 65
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 68
    :cond_d
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    .line 70
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 71
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->DEFAULT_IV:[B

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_45

    .line 73
    :cond_21
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_45

    .line 75
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 77
    .local v0, "withIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    .line 78
    .local v3, "iv":[B
    array-length v4, v3

    if-ne v4, v1, :cond_3d

    .line 83
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 84
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v3, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_45

    .line 80
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV not equal to 8"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    .end local v0    # "withIV":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v3    # "iv":[B
    :cond_45
    :goto_45
    return-void
.end method

.method public blacklist unwrap([BII)[B
    .registers 22
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-boolean v4, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-nez v4, :cond_132

    .line 169
    const/16 v4, 0x10

    if-lt v3, v4, :cond_129

    .line 174
    div-int/lit8 v4, v3, 0x8

    .line 176
    .local v4, "n":I
    mul-int/lit8 v5, v4, 0x8

    if-ne v5, v3, :cond_120

    .line 181
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v5, v6, v8}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 183
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v5, v5

    sub-int v5, v3, v5

    new-array v5, v5, [B

    .line 184
    .local v5, "block":[B
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v6, v6

    new-array v6, v6, [B

    .line 185
    .local v6, "a":[B
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    const/16 v9, 0x8

    add-int/2addr v8, v9

    new-array v8, v8, [B

    .line 187
    .local v8, "buf":[B
    sub-int/2addr v4, v7

    .line 189
    const/4 v10, 0x0

    if-ne v4, v7, :cond_4b

    .line 191
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v11, v1, v2, v8, v10}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 192
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v8, v10, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v8, v11, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_a8

    .line 197
    :cond_4b
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v1, v2, v6, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    add-int/2addr v11, v2

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v12, v12

    sub-int v12, v3, v12

    invoke-static {v1, v11, v5, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    const/4 v11, 0x5

    .local v11, "j":I
    :goto_5e
    if-ltz v11, :cond_a8

    .line 202
    move v12, v4

    .local v12, "i":I
    :goto_61
    if-lt v12, v7, :cond_a2

    .line 204
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v13, v13

    invoke-static {v6, v10, v8, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    add-int/lit8 v13, v12, -0x1

    mul-int/2addr v13, v9

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v14, v14

    invoke-static {v5, v13, v8, v14, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    mul-int v13, v4, v11

    add-int/2addr v13, v12

    .line 208
    .local v13, "t":I
    const/4 v14, 0x1

    .local v14, "k":I
    :goto_76
    if-eqz v13, :cond_8c

    .line 210
    int-to-byte v15, v13

    .line 212
    .local v15, "v":B
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    sub-int/2addr v7, v14

    aget-byte v17, v8, v7

    xor-int v9, v17, v15

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    .line 214
    ushr-int/lit8 v13, v13, 0x8

    .line 208
    .end local v15    # "v":B
    add-int/lit8 v14, v14, 0x1

    const/4 v7, 0x1

    const/16 v9, 0x8

    goto :goto_76

    .line 217
    .end local v14    # "k":I
    :cond_8c
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v8, v10, v8, v10}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 218
    const/16 v7, 0x8

    invoke-static {v8, v10, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 219
    add-int/lit8 v9, v12, -0x1

    mul-int/2addr v9, v7

    invoke-static {v8, v7, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 202
    .end local v13    # "t":I
    add-int/lit8 v12, v12, -0x1

    const/4 v7, 0x1

    const/16 v9, 0x8

    goto :goto_61

    .line 200
    .end local v12    # "i":I
    :cond_a2
    add-int/lit8 v11, v11, -0x1

    const/4 v7, 0x1

    const/16 v9, 0x8

    goto :goto_5e

    .line 224
    .end local v11    # "j":I
    :cond_a8
    :goto_a8
    const-string v7, "checksum failed"

    const/4 v9, 0x1

    if-eq v4, v9, :cond_bc

    .line 226
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v6, v9}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v9

    if-eqz v9, :cond_b6

    goto :goto_11f

    .line 228
    :cond_b6
    new-instance v9, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v9, v7}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 234
    :cond_bc
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v6, v9}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v9

    if-nez v9, :cond_11f

    .line 236
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    invoke-static {v1, v2, v6, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v9, v9

    add-int/2addr v9, v2

    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    sub-int v11, v3, v11

    invoke-static {v1, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    const/4 v9, 0x5

    .local v9, "j":I
    :goto_d7
    if-ltz v9, :cond_110

    .line 241
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    invoke-static {v6, v10, v8, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 242
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v11, v11

    const/16 v12, 0x8

    invoke-static {v5, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    mul-int v11, v4, v9

    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 245
    .local v11, "t":I
    const/4 v12, 0x1

    .local v12, "k":I
    :goto_ee
    if-eqz v11, :cond_100

    .line 247
    int-to-byte v13, v11

    .line 249
    .local v13, "v":B
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v14, v14

    sub-int/2addr v14, v12

    aget-byte v15, v8, v14

    xor-int/2addr v15, v13

    int-to-byte v15, v15

    aput-byte v15, v8, v14

    .line 251
    ushr-int/lit8 v11, v11, 0x8

    .line 245
    .end local v13    # "v":B
    add-int/lit8 v12, v12, 0x1

    goto :goto_ee

    .line 254
    .end local v12    # "k":I
    :cond_100
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v12, v8, v10, v8, v10}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 255
    const/16 v12, 0x8

    invoke-static {v8, v10, v6, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    invoke-static {v8, v12, v5, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    .end local v11    # "t":I
    add-int/lit8 v9, v9, -0x1

    goto :goto_d7

    .line 259
    .end local v9    # "j":I
    :cond_110
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    invoke-static {v6, v9}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v9

    if-eqz v9, :cond_119

    goto :goto_11f

    .line 261
    :cond_119
    new-instance v9, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    invoke-direct {v9, v7}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 266
    :cond_11f
    :goto_11f
    return-object v5

    .line 178
    .end local v5    # "block":[B
    .end local v6    # "a":[B
    .end local v8    # "buf":[B
    :cond_120
    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v6, "unwrap data must be a multiple of 8 bytes"

    invoke-direct {v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 171
    .end local v4    # "n":I
    :cond_129
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v5, "unwrap data too short"

    invoke-direct {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_132
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "not set for unwrapping"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist wrap([BII)[B
    .registers 16
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .line 102
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    if-eqz v0, :cond_8c

    .line 106
    const/16 v0, 0x8

    if-lt p3, v0, :cond_83

    .line 111
    div-int/lit8 v1, p3, 0x8

    .line 113
    .local v1, "n":I
    mul-int/lit8 v2, v1, 0x8

    if-ne v2, p3, :cond_7a

    .line 118
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 120
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v2, v2

    add-int/2addr v2, p3

    new-array v2, v2, [B

    .line 121
    .local v2, "block":[B
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v3, v3

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    const/4 v3, 0x1

    if-ne v1, v3, :cond_35

    .line 126
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v2, v5, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    goto :goto_79

    .line 130
    :cond_35
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v3, v3

    add-int/2addr v3, v0

    new-array v3, v3, [B

    .line 132
    .local v3, "buf":[B
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3c
    const/4 v6, 0x6

    if-eq v4, v6, :cond_79

    .line 134
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_40
    if-gt v6, v1, :cond_76

    .line 136
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v7, v7

    invoke-static {v2, v5, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    mul-int/lit8 v7, v6, 0x8

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v8, v8

    invoke-static {v2, v7, v3, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v3, v5, v3, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 140
    mul-int v7, v1, v4

    add-int/2addr v7, v6

    .line 141
    .local v7, "t":I
    const/4 v8, 0x1

    .local v8, "k":I
    :goto_59
    if-eqz v7, :cond_6b

    .line 143
    int-to-byte v9, v7

    .line 145
    .local v9, "v":B
    iget-object v10, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    array-length v10, v10

    sub-int/2addr v10, v8

    aget-byte v11, v3, v10

    xor-int/2addr v11, v9

    int-to-byte v11, v11

    aput-byte v11, v3, v10

    .line 147
    ushr-int/lit8 v7, v7, 0x8

    .line 141
    .end local v9    # "v":B
    add-int/lit8 v8, v8, 0x1

    goto :goto_59

    .line 150
    .end local v8    # "k":I
    :cond_6b
    invoke-static {v3, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    mul-int/lit8 v8, v6, 0x8

    invoke-static {v3, v0, v2, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    .end local v7    # "t":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_40

    .line 132
    .end local v6    # "i":I
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 156
    .end local v3    # "buf":[B
    .end local v4    # "j":I
    :cond_79
    :goto_79
    return-object v2

    .line 115
    .end local v2    # "block":[B
    :cond_7a
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v2, "wrap data must be a multiple of 8 bytes"

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    .end local v1    # "n":I
    :cond_83
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v1, "wrap data must be at least 8 bytes"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_8c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not set for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
