.class public Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;
.super Ljava/lang/Object;
.source "RFC3394WrapEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Wrapper;


# instance fields
.field private engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private wrapCipherMode:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 1
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    .line 39
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Z)V

    #@4
    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Z)V
    .locals 1
    .param p1, "engine"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "useReverseDirection"    # Z

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    const/16 v0, 0x8

    #@5
    new-array v0, v0, [B

    #@7
    fill-array-data v0, :array_0

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@c
    .line 50
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@e
    .line 51
    if-eqz p2, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    :goto_0
    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    #@13
    .line 48
    return-void

    #@14
    .line 51
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 28
    :array_0
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


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    #@2
    .line 60
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 62
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@8
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@b
    move-result-object p2

    #@c
    .line 65
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 67
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@12
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@14
    .line 56
    :cond_1
    return-void

    #@15
    .line 69
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@17
    if-eqz v0, :cond_1

    #@19
    move-object v0, p2

    #@1a
    .line 71
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@1c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@22
    .line 72
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@24
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@2a
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@2c
    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@2e
    array-length v0, v0

    #@2f
    const/16 v1, 0x8

    #@31
    if-eq v0, v1, :cond_1

    #@33
    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@35
    const-string/jumbo v1, "IV not equal to 8"

    #@38
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0
.end method

.method public unwrap([BII)[B
    .locals 12
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
    .line 142
    iget-boolean v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    #@2
    if-eqz v9, :cond_0

    #@4
    .line 144
    new-instance v9, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v10, "not set for unwrapping"

    #@9
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v9

    #@d
    .line 147
    :cond_0
    div-int/lit8 v6, p3, 0x8

    #@f
    .line 149
    .local v6, "n":I
    mul-int/lit8 v9, v6, 0x8

    #@11
    if-eq v9, p3, :cond_1

    #@13
    .line 151
    new-instance v9, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@15
    const-string/jumbo v10, "unwrap data must be a multiple of 8 bytes"

    #@18
    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v9

    #@1c
    .line 154
    :cond_1
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@1e
    array-length v9, v9

    #@1f
    sub-int v9, p3, v9

    #@21
    new-array v1, v9, [B

    #@23
    .line 155
    .local v1, "block":[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@25
    array-length v9, v9

    #@26
    new-array v0, v9, [B

    #@28
    .line 156
    .local v0, "a":[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@2a
    array-length v9, v9

    #@2b
    add-int/lit8 v9, v9, 0x8

    #@2d
    new-array v2, v9, [B

    #@2f
    .line 158
    .local v2, "buf":[B
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@31
    array-length v9, v9

    #@32
    const/4 v10, 0x0

    #@33
    invoke-static {p1, p2, v0, v10, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@36
    .line 159
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@38
    array-length v9, v9

    #@39
    add-int/2addr v9, p2

    #@3a
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@3c
    array-length v10, v10

    #@3d
    sub-int v10, p3, v10

    #@3f
    const/4 v11, 0x0

    #@40
    invoke-static {p1, v9, v1, v11, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@43
    .line 161
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@45
    iget-boolean v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    #@47
    if-eqz v9, :cond_2

    #@49
    const/4 v9, 0x0

    #@4a
    :goto_0
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@4c
    invoke-interface {v10, v9, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@4f
    .line 163
    add-int/lit8 v6, v6, -0x1

    #@51
    .line 165
    const/4 v4, 0x5

    #@52
    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_5

    #@54
    .line 167
    move v3, v6

    #@55
    .local v3, "i":I
    :goto_2
    const/4 v9, 0x1

    #@56
    if-lt v3, v9, :cond_4

    #@58
    .line 169
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@5a
    array-length v9, v9

    #@5b
    const/4 v10, 0x0

    #@5c
    const/4 v11, 0x0

    #@5d
    invoke-static {v0, v10, v2, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@60
    .line 170
    add-int/lit8 v9, v3, -0x1

    #@62
    mul-int/lit8 v9, v9, 0x8

    #@64
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@66
    array-length v10, v10

    #@67
    const/16 v11, 0x8

    #@69
    invoke-static {v1, v9, v2, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6c
    .line 172
    mul-int v9, v6, v4

    #@6e
    add-int v7, v9, v3

    #@70
    .line 173
    .local v7, "t":I
    const/4 v5, 0x1

    #@71
    .local v5, "k":I
    :goto_3
    if-eqz v7, :cond_3

    #@73
    .line 175
    int-to-byte v8, v7

    #@74
    .line 177
    .local v8, "v":B
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@76
    array-length v9, v9

    #@77
    sub-int/2addr v9, v5

    #@78
    aget-byte v10, v2, v9

    #@7a
    xor-int/2addr v10, v8

    #@7b
    int-to-byte v10, v10

    #@7c
    aput-byte v10, v2, v9

    #@7e
    .line 179
    ushr-int/lit8 v7, v7, 0x8

    #@80
    .line 173
    add-int/lit8 v5, v5, 0x1

    #@82
    goto :goto_3

    #@83
    .line 161
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v7    # "t":I
    .end local v8    # "v":B
    :cond_2
    const/4 v9, 0x1

    #@84
    goto :goto_0

    #@85
    .line 182
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v7    # "t":I
    :cond_3
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@87
    const/4 v10, 0x0

    #@88
    const/4 v11, 0x0

    #@89
    invoke-interface {v9, v2, v10, v2, v11}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@8c
    .line 183
    const/4 v9, 0x0

    #@8d
    const/4 v10, 0x0

    #@8e
    const/16 v11, 0x8

    #@90
    invoke-static {v2, v9, v0, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@93
    .line 184
    add-int/lit8 v9, v3, -0x1

    #@95
    mul-int/lit8 v9, v9, 0x8

    #@97
    const/16 v10, 0x8

    #@99
    const/16 v11, 0x8

    #@9b
    invoke-static {v2, v10, v1, v9, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@9e
    .line 167
    add-int/lit8 v3, v3, -0x1

    #@a0
    goto :goto_2

    #@a1
    .line 165
    .end local v5    # "k":I
    .end local v7    # "t":I
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@a3
    goto :goto_1

    #@a4
    .line 188
    .end local v3    # "i":I
    :cond_5
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@a6
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@a9
    move-result v9

    #@aa
    if-nez v9, :cond_6

    #@ac
    .line 190
    new-instance v9, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@ae
    const-string/jumbo v10, "checksum failed"

    #@b1
    invoke-direct {v9, v10}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v9

    #@b5
    .line 193
    :cond_6
    return-object v1
.end method

.method public wrap([BII)[B
    .locals 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    #@0
    .prologue
    .line 90
    iget-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->forWrapping:Z

    #@2
    if-nez v8, :cond_0

    #@4
    .line 92
    new-instance v8, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v9, "not set for wrapping"

    #@9
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v8

    #@d
    .line 95
    :cond_0
    div-int/lit8 v5, p3, 0x8

    #@f
    .line 97
    .local v5, "n":I
    mul-int/lit8 v8, v5, 0x8

    #@11
    if-eq v8, p3, :cond_1

    #@13
    .line 99
    new-instance v8, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@15
    const-string/jumbo v9, "wrap data must be a multiple of 8 bytes"

    #@18
    invoke-direct {v8, v9}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v8

    #@1c
    .line 102
    :cond_1
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@1e
    array-length v8, v8

    #@1f
    add-int/2addr v8, p3

    #@20
    new-array v0, v8, [B

    #@22
    .line 103
    .local v0, "block":[B
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@24
    array-length v8, v8

    #@25
    add-int/lit8 v8, v8, 0x8

    #@27
    new-array v1, v8, [B

    #@29
    .line 105
    .local v1, "buf":[B
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@2b
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@2d
    array-length v9, v9

    #@2e
    const/4 v10, 0x0

    #@2f
    const/4 v11, 0x0

    #@30
    invoke-static {v8, v10, v0, v11, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@33
    .line 106
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@35
    array-length v8, v8

    #@36
    invoke-static {p1, p2, v0, v8, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@39
    .line 108
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@3b
    iget-boolean v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->wrapCipherMode:Z

    #@3d
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@3f
    invoke-interface {v8, v9, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@42
    .line 110
    const/4 v3, 0x0

    #@43
    .local v3, "j":I
    :goto_0
    const/4 v8, 0x6

    #@44
    if-eq v3, v8, :cond_4

    #@46
    .line 112
    const/4 v2, 0x1

    #@47
    .local v2, "i":I
    :goto_1
    if-gt v2, v5, :cond_3

    #@49
    .line 114
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@4b
    array-length v8, v8

    #@4c
    const/4 v9, 0x0

    #@4d
    const/4 v10, 0x0

    #@4e
    invoke-static {v0, v9, v1, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@51
    .line 115
    mul-int/lit8 v8, v2, 0x8

    #@53
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@55
    array-length v9, v9

    #@56
    const/16 v10, 0x8

    #@58
    invoke-static {v0, v8, v1, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5b
    .line 116
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@5d
    const/4 v9, 0x0

    #@5e
    const/4 v10, 0x0

    #@5f
    invoke-interface {v8, v1, v9, v1, v10}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@62
    .line 118
    mul-int v8, v5, v3

    #@64
    add-int v6, v8, v2

    #@66
    .line 119
    .local v6, "t":I
    const/4 v4, 0x1

    #@67
    .local v4, "k":I
    :goto_2
    if-eqz v6, :cond_2

    #@69
    .line 121
    int-to-byte v7, v6

    #@6a
    .line 123
    .local v7, "v":B
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/engines/RFC3394WrapEngine;->iv:[B

    #@6c
    array-length v8, v8

    #@6d
    sub-int/2addr v8, v4

    #@6e
    aget-byte v9, v1, v8

    #@70
    xor-int/2addr v9, v7

    #@71
    int-to-byte v9, v9

    #@72
    aput-byte v9, v1, v8

    #@74
    .line 125
    ushr-int/lit8 v6, v6, 0x8

    #@76
    .line 119
    add-int/lit8 v4, v4, 0x1

    #@78
    goto :goto_2

    #@79
    .line 128
    .end local v7    # "v":B
    :cond_2
    const/4 v8, 0x0

    #@7a
    const/4 v9, 0x0

    #@7b
    const/16 v10, 0x8

    #@7d
    invoke-static {v1, v8, v0, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@80
    .line 129
    mul-int/lit8 v8, v2, 0x8

    #@82
    const/16 v9, 0x8

    #@84
    const/16 v10, 0x8

    #@86
    invoke-static {v1, v9, v0, v8, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@89
    .line 112
    add-int/lit8 v2, v2, 0x1

    #@8b
    goto :goto_1

    #@8c
    .line 110
    .end local v4    # "k":I
    .end local v6    # "t":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@8e
    goto :goto_0

    #@8f
    .line 133
    .end local v2    # "i":I
    :cond_4
    return-object v0
.end method
