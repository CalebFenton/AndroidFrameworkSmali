.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS12ParametersGenerator.java"


# instance fields
.field private blacklist digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field private blacklist u:I

.field private blacklist v:I


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 42
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_18

    .line 44
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    .line 45
    check-cast p1, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/ExtendedDigest;->getByteLength()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    return-void

    .line 49
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Digest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unsupported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist adjust([BI[B)V
    .registers 8

    .line 63
    array-length p0, p3

    add-int/lit8 p0, p0, -0x1

    aget-byte p0, p3, p0

    and-int/lit16 p0, p0, 0xff

    array-length v0, p3

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    .line 65
    array-length v0, p3

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    ushr-int/lit8 p0, p0, 0x8

    .line 68
    array-length v0, p3

    add-int/lit8 v0, v0, -0x2

    :goto_1e
    if-ltz v0, :cond_34

    .line 70
    aget-byte v1, p3, v0

    and-int/lit16 v1, v1, 0xff

    add-int v2, p2, v0

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v1, v3

    add-int/2addr p0, v1

    int-to-byte v1, p0

    .line 71
    aput-byte v1, p1, v2

    ushr-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_34
    return-void
.end method

.method private blacklist generateDerivedKey(II)[B
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 83
    iget v2, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v3, v2, [B

    .line 84
    new-array v4, v1, [B

    const/4 v5, 0x0

    move v6, v5

    :goto_c
    if-eq v6, v2, :cond_16

    move/from16 v7, p1

    int-to-byte v8, v7

    .line 88
    aput-byte v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 93
    :cond_16
    iget-object v6, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    const/4 v7, 0x1

    if-eqz v6, :cond_36

    array-length v8, v6

    if-eqz v8, :cond_36

    .line 95
    iget v8, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    array-length v6, v6

    add-int/2addr v6, v8

    sub-int/2addr v6, v7

    div-int/2addr v6, v8

    mul-int/2addr v8, v6

    new-array v6, v8, [B

    move v9, v5

    :goto_28
    if-eq v9, v8, :cond_38

    .line 99
    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v11, v10

    rem-int v11, v9, v11

    aget-byte v10, v10, v11

    aput-byte v10, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 104
    :cond_36
    new-array v6, v5, [B

    .line 109
    :cond_38
    iget-object v8, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    if-eqz v8, :cond_57

    array-length v9, v8

    if-eqz v9, :cond_57

    .line 111
    iget v9, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    array-length v8, v8

    add-int/2addr v8, v9

    sub-int/2addr v8, v7

    div-int/2addr v8, v9

    mul-int/2addr v9, v8

    new-array v8, v9, [B

    move v10, v5

    :goto_49
    if-eq v10, v9, :cond_59

    .line 115
    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v12, v11

    rem-int v12, v10, v12

    aget-byte v11, v11, v12

    aput-byte v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_49

    .line 120
    :cond_57
    new-array v8, v5, [B

    .line 123
    :cond_59
    array-length v9, v6

    array-length v10, v8

    add-int/2addr v9, v10

    new-array v10, v9, [B

    .line 125
    array-length v11, v6

    invoke-static {v6, v5, v10, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    array-length v6, v6

    array-length v11, v8

    invoke-static {v8, v5, v10, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget v6, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    new-array v8, v6, [B

    .line 129
    iget v11, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    add-int v12, v1, v11

    sub-int/2addr v12, v7

    div-int/2addr v12, v11

    .line 130
    new-array v13, v11, [B

    move v14, v7

    :goto_74
    if-gt v14, v12, :cond_d0

    .line 134
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v15, v3, v5, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 135
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v15, v10, v5, v9}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 136
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v15, v13, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    move v15, v7

    .line 137
    :goto_86
    iget v7, v0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    if-ge v15, v7, :cond_97

    .line 139
    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v7, v13, v5, v11}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 140
    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v7, v13, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v15, v15, 0x1

    goto :goto_86

    :cond_97
    move v7, v5

    :goto_98
    if-eq v7, v6, :cond_a3

    .line 145
    rem-int v15, v7, v11

    aget-byte v15, v13, v15

    aput-byte v15, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_98

    :cond_a3
    move v7, v5

    .line 148
    :goto_a4
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->v:I

    div-int v5, v9, v15

    if-eq v7, v5, :cond_b2

    mul-int/2addr v15, v7

    .line 150
    invoke-direct {v0, v10, v15, v8}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->adjust([BI[B)V

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto :goto_a4

    :cond_b2
    if-ne v14, v12, :cond_c2

    add-int/lit8 v5, v14, -0x1

    .line 155
    iget v7, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int v15, v5, v7

    mul-int/2addr v5, v7

    sub-int v5, v1, v5

    const/4 v7, 0x0

    invoke-static {v13, v7, v4, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_cb

    :cond_c2
    const/4 v7, 0x0

    add-int/lit8 v5, v14, -0x1

    .line 159
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->u:I

    mul-int/2addr v5, v15

    invoke-static {v13, v7, v4, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_cb
    add-int/lit8 v14, v14, 0x1

    move v5, v7

    const/4 v7, 0x1

    goto :goto_74

    :cond_d0
    return-object v4
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 4

    .line 216
    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x3

    .line 218
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object p0

    .line 220
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 4

    .line 176
    div-int/lit8 p1, p1, 0x8

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object p0

    .line 180
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 7

    .line 196
    div-int/lit8 p1, p1, 0x8

    .line 197
    div-int/lit8 p2, p2, 0x8

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 201
    invoke-direct {p0, v1, p2}, Lcom/android/org/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedKey(II)[B

    move-result-object p0

    .line 203
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, p0, v3, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
