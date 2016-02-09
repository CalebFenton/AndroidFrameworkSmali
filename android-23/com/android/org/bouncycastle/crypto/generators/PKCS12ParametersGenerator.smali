.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS12ParametersGenerator.java"


# static fields
.field public static final IV_MATERIAL:I = 0x2

.field public static final KEY_MATERIAL:I = 0x1

.field public static final MAC_MATERIAL:I = 0x3


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private u:I

.field private v:I


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 3
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    #@3
    .line 39
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    .line 40
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 42
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    #@f
    .line 43
    check-cast p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    #@11
    .end local p1    # "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    #@14
    move-result v0

    #@15
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    #@17
    .line 37
    return-void

    #@18
    .line 47
    .restart local p1    # "digest":Lcom/android/org/bouncycastle/crypto/Digest;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "Digest "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    const-string/jumbo v2, " unsupported"

    #@31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v0
.end method

.method private adjust([BI[B)V
    .locals 4
    .param p1, "a"    # [B
    .param p2, "aOff"    # I
    .param p3, "b"    # [B

    #@0
    .prologue
    .line 61
    array-length v2, p3

    #@1
    add-int/lit8 v2, v2, -0x1

    #@3
    aget-byte v2, p3, v2

    #@5
    and-int/lit16 v2, v2, 0xff

    #@7
    array-length v3, p3

    #@8
    add-int/2addr v3, p2

    #@9
    add-int/lit8 v3, v3, -0x1

    #@b
    aget-byte v3, p1, v3

    #@d
    and-int/lit16 v3, v3, 0xff

    #@f
    add-int/2addr v2, v3

    #@10
    add-int/lit8 v1, v2, 0x1

    #@12
    .line 63
    .local v1, "x":I
    array-length v2, p3

    #@13
    add-int/2addr v2, p2

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    int-to-byte v3, v1

    #@17
    aput-byte v3, p1, v2

    #@19
    .line 64
    ushr-int/lit8 v1, v1, 0x8

    #@1b
    .line 66
    array-length v2, p3

    #@1c
    add-int/lit8 v0, v2, -0x2

    #@1e
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@20
    .line 68
    aget-byte v2, p3, v0

    #@22
    and-int/lit16 v2, v2, 0xff

    #@24
    add-int v3, p2, v0

    #@26
    aget-byte v3, p1, v3

    #@28
    and-int/lit16 v3, v3, 0xff

    #@2a
    add-int/2addr v2, v3

    #@2b
    add-int/2addr v1, v2

    #@2c
    .line 69
    add-int v2, p2, v0

    #@2e
    int-to-byte v3, v1

    #@2f
    aput-byte v3, p1, v2

    #@31
    .line 70
    ushr-int/lit8 v1, v1, 0x8

    #@33
    .line 66
    add-int/lit8 v0, v0, -0x1

    #@35
    goto :goto_0

    #@36
    .line 59
    :cond_0
    return-void
.end method

.method private generateDerivedKey(II)[B
    .locals 15
    .param p1, "idByte"    # I
    .param p2, "n"    # I

    #@0
    .prologue
    .line 81
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    #@2
    new-array v3, v11, [B

    #@4
    .line 82
    .local v3, "D":[B
    move/from16 v0, p2

    #@6
    new-array v8, v0, [B

    #@8
    .line 84
    .local v8, "dKey":[B
    const/4 v9, 0x0

    #@9
    .local v9, "i":I
    :goto_0
    array-length v11, v3

    #@a
    if-eq v9, v11, :cond_0

    #@c
    .line 86
    move/from16 v0, p1

    #@e
    int-to-byte v11, v0

    #@f
    aput-byte v11, v3, v9

    #@11
    .line 84
    add-int/lit8 v9, v9, 0x1

    #@13
    goto :goto_0

    #@14
    .line 91
    :cond_0
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    #@16
    if-eqz v11, :cond_1

    #@18
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    #@1a
    array-length v11, v11

    #@1b
    if-eqz v11, :cond_1

    #@1d
    .line 93
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    #@1f
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    #@21
    array-length v12, v12

    #@22
    iget v13, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    #@24
    add-int/2addr v12, v13

    #@25
    add-int/lit8 v12, v12, -0x1

    #@27
    iget v13, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    #@29
    div-int/2addr v12, v13

    #@2a
    mul-int/2addr v11, v12

    #@2b
    new-array v6, v11, [B

    #@2d
    .line 95
    .local v6, "S":[B
    const/4 v9, 0x0

    #@2e
    :goto_1
    array-length v11, v6

    #@2f
    if-eq v9, v11, :cond_2

    #@31
    .line 97
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    #@33
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->salt:[B

    #@35
    array-length v12, v12

    #@36
    rem-int v12, v9, v12

    #@38
    aget-byte v11, v11, v12

    #@3a
    aput-byte v11, v6, v9

    #@3c
    .line 95
    add-int/lit8 v9, v9, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 102
    .end local v6    # "S":[B
    :cond_1
    const/4 v11, 0x0

    #@40
    new-array v6, v11, [B

    #@42
    .line 107
    .restart local v6    # "S":[B
    :cond_2
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    #@44
    if-eqz v11, :cond_3

    #@46
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    #@48
    array-length v11, v11

    #@49
    if-eqz v11, :cond_3

    #@4b
    .line 109
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    #@4d
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    #@4f
    array-length v12, v12

    #@50
    iget v13, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    #@52
    add-int/2addr v12, v13

    #@53
    add-int/lit8 v12, v12, -0x1

    #@55
    iget v13, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    #@57
    div-int/2addr v12, v13

    #@58
    mul-int/2addr v11, v12

    #@59
    new-array v5, v11, [B

    #@5b
    .line 111
    .local v5, "P":[B
    const/4 v9, 0x0

    #@5c
    :goto_2
    array-length v11, v5

    #@5d
    if-eq v9, v11, :cond_4

    #@5f
    .line 113
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    #@61
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->password:[B

    #@63
    array-length v12, v12

    #@64
    rem-int v12, v9, v12

    #@66
    aget-byte v11, v11, v12

    #@68
    aput-byte v11, v5, v9

    #@6a
    .line 111
    add-int/lit8 v9, v9, 0x1

    #@6c
    goto :goto_2

    #@6d
    .line 118
    .end local v5    # "P":[B
    :cond_3
    const/4 v11, 0x0

    #@6e
    new-array v5, v11, [B

    #@70
    .line 121
    .restart local v5    # "P":[B
    :cond_4
    array-length v11, v6

    #@71
    array-length v12, v5

    #@72
    add-int/2addr v11, v12

    #@73
    new-array v4, v11, [B

    #@75
    .line 123
    .local v4, "I":[B
    array-length v11, v6

    #@76
    const/4 v12, 0x0

    #@77
    const/4 v13, 0x0

    #@78
    invoke-static {v6, v12, v4, v13, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@7b
    .line 124
    array-length v11, v6

    #@7c
    array-length v12, v5

    #@7d
    const/4 v13, 0x0

    #@7e
    invoke-static {v5, v13, v4, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@81
    .line 126
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    #@83
    new-array v2, v11, [B

    #@85
    .line 127
    .local v2, "B":[B
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    #@87
    add-int v11, v11, p2

    #@89
    add-int/lit8 v11, v11, -0x1

    #@8b
    iget v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    #@8d
    div-int v7, v11, v12

    #@8f
    .line 128
    .local v7, "c":I
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    #@91
    new-array v1, v11, [B

    #@93
    .line 130
    .local v1, "A":[B
    const/4 v9, 0x1

    #@94
    :goto_3
    if-gt v9, v7, :cond_9

    #@96
    .line 132
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@98
    array-length v12, v3

    #@99
    const/4 v13, 0x0

    #@9a
    invoke-interface {v11, v3, v13, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@9d
    .line 133
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@9f
    array-length v12, v4

    #@a0
    const/4 v13, 0x0

    #@a1
    invoke-interface {v11, v4, v13, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@a4
    .line 134
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@a6
    const/4 v12, 0x0

    #@a7
    invoke-interface {v11, v1, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@aa
    .line 135
    const/4 v10, 0x1

    #@ab
    .local v10, "j":I
    :goto_4
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->iterationCount:I

    #@ad
    if-ge v10, v11, :cond_5

    #@af
    .line 137
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@b1
    array-length v12, v1

    #@b2
    const/4 v13, 0x0

    #@b3
    invoke-interface {v11, v1, v13, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@b6
    .line 138
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@b8
    const/4 v12, 0x0

    #@b9
    invoke-interface {v11, v1, v12}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@bc
    .line 135
    add-int/lit8 v10, v10, 0x1

    #@be
    goto :goto_4

    #@bf
    .line 141
    :cond_5
    const/4 v10, 0x0

    #@c0
    :goto_5
    array-length v11, v2

    #@c1
    if-eq v10, v11, :cond_6

    #@c3
    .line 143
    array-length v11, v1

    #@c4
    rem-int v11, v10, v11

    #@c6
    aget-byte v11, v1, v11

    #@c8
    aput-byte v11, v2, v10

    #@ca
    .line 141
    add-int/lit8 v10, v10, 0x1

    #@cc
    goto :goto_5

    #@cd
    .line 146
    :cond_6
    const/4 v10, 0x0

    #@ce
    :goto_6
    array-length v11, v4

    #@cf
    iget v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    #@d1
    div-int/2addr v11, v12

    #@d2
    if-eq v10, v11, :cond_7

    #@d4
    .line 148
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    #@d6
    mul-int/2addr v11, v10

    #@d7
    invoke-direct {p0, v4, v11, v2}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    #@da
    .line 146
    add-int/lit8 v10, v10, 0x1

    #@dc
    goto :goto_6

    #@dd
    .line 151
    :cond_7
    if-ne v9, v7, :cond_8

    #@df
    .line 153
    add-int/lit8 v11, v9, -0x1

    #@e1
    iget v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    #@e3
    mul-int/2addr v11, v12

    #@e4
    array-length v12, v8

    #@e5
    add-int/lit8 v13, v9, -0x1

    #@e7
    iget v14, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    #@e9
    mul-int/2addr v13, v14

    #@ea
    sub-int/2addr v12, v13

    #@eb
    const/4 v13, 0x0

    #@ec
    invoke-static {v1, v13, v8, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@ef
    .line 130
    :goto_7
    add-int/lit8 v9, v9, 0x1

    #@f1
    goto :goto_3

    #@f2
    .line 157
    :cond_8
    add-int/lit8 v11, v9, -0x1

    #@f4
    iget v12, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    #@f6
    mul-int/2addr v11, v12

    #@f7
    array-length v12, v1

    #@f8
    const/4 v13, 0x0

    #@f9
    invoke-static {v1, v13, v8, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@fc
    goto :goto_7

    #@fd
    .line 161
    .end local v10    # "j":I
    :cond_9
    return-object v8
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I

    #@0
    .prologue
    .line 214
    div-int/lit8 p1, p1, 0x8

    #@2
    .line 216
    const/4 v1, 0x3

    #@3
    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    #@6
    move-result-object v0

    #@7
    .line 218
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    #@d
    return-object v1
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I

    #@0
    .prologue
    .line 174
    div-int/lit8 p1, p1, 0x8

    #@2
    .line 176
    const/4 v1, 0x1

    #@3
    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    #@6
    move-result-object v0

    #@7
    .line 178
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@9
    const/4 v2, 0x0

    #@a
    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    #@d
    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 5
    .param p1, "keySize"    # I
    .param p2, "ivSize"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 194
    div-int/lit8 p1, p1, 0x8

    #@3
    .line 195
    div-int/lit8 p2, p2, 0x8

    #@5
    .line 197
    const/4 v2, 0x1

    #@6
    invoke-direct {p0, v2, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    #@9
    move-result-object v0

    #@a
    .line 199
    .local v0, "dKey":[B
    const/4 v2, 0x2

    #@b
    invoke-direct {p0, v2, p2}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    #@e
    move-result-object v1

    #@f
    .line 201
    .local v1, "iv":[B
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@11
    new-instance v3, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@13
    invoke-direct {v3, v0, v4, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    #@16
    invoke-direct {v2, v3, v1, v4, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    #@19
    return-object v2
.end method
