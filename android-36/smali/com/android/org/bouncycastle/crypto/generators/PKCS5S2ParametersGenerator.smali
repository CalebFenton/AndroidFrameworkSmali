.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private blacklist hMac:Lcom/android/org/bouncycastle/crypto/Mac;

.field private blacklist state:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 43
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    .line 44
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    return-void
.end method

.method private blacklist F([BI[B[BI)V
    .registers 10

    if-eqz p2, :cond_47

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 61
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 64
    :cond_b
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    array-length v1, p3

    invoke-interface {p1, p3, v0, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 65
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget-object p3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {p1, p3, v0}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 67
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length p3, p1

    invoke-static {p1, v0, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x1

    :goto_1f
    if-ge p1, p2, :cond_46

    .line 71
    iget-object p3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v2, v1

    invoke-interface {p3, v1, v0, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 72
    iget-object p3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {p3, v1, v0}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    move p3, v0

    .line 74
    :goto_31
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v2, v1

    if-eq p3, v2, :cond_43

    add-int v2, p5, p3

    .line 76
    aget-byte v3, p4, v2

    aget-byte v1, v1, p3

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p4, v2

    add-int/lit8 p3, p3, 0x1

    goto :goto_31

    :cond_43
    add-int/lit8 p1, p1, 0x1

    goto :goto_1f

    :cond_46
    return-void

    .line 56
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "iteration count must be at least 1."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist generateDerivedKey(I)[B
    .registers 11

    .line 84
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    add-int/2addr p1, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 85
    div-int/2addr p1, v0

    const/4 v2, 0x4

    .line 86
    new-array v6, v2, [B

    mul-int v2, p1, v0

    .line 87
    new-array v7, v2, [B

    .line 90
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 92
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    invoke-interface {v3, v2}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    const/4 v2, 0x0

    move v8, v2

    move v2, v1

    :goto_20
    if-gt v2, p1, :cond_3a

    const/4 v3, 0x3

    .line 98
    :goto_23
    aget-byte v4, v6, v3

    add-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v6, v3

    if-nez v4, :cond_2e

    add-int/lit8 v3, v3, -0x1

    goto :goto_23

    .line 103
    :cond_2e
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->iterationCount:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([BI[B[BI)V

    add-int/2addr v8, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_3a
    return-object v7
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    return-object p0
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 4

    .line 120
    div-int/lit8 p1, p1, 0x8

    .line 122
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object p0

    .line 124
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 6

    .line 140
    div-int/lit8 p1, p1, 0x8

    .line 141
    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    .line 143
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object p0

    .line 145
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v0
.end method
