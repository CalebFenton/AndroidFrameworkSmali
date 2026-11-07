.class public Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "OpenSSLPBEParametersGenerator.java"


# instance fields
.field private blacklist digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 27
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    return-void
.end method

.method private blacklist generateDerivedKey(I)[B
    .registers 10

    .line 55
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v1, v0, [B

    .line 56
    new-array v2, p1, [B

    const/4 v3, 0x0

    move v4, v3

    .line 61
    :goto_c
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->password:[B

    array-length v7, v6

    invoke-interface {v5, v6, v3, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 62
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->salt:[B

    array-length v7, v6

    invoke-interface {v5, v6, v3, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 64
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v5, v1, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-le p1, v0, :cond_25

    move v5, v0

    goto :goto_26

    :cond_25
    move v5, p1

    .line 67
    :goto_26
    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    sub-int/2addr p1, v5

    if-nez p1, :cond_2e

    return-object v2

    .line 78
    :cond_2e
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 79
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v5, v1, v3, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_c
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 2

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p0

    return-object p0
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 4

    .line 96
    div-int/lit8 p1, p1, 0x8

    .line 98
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object p0

    .line 100
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v0
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .registers 6

    .line 117
    div-int/lit8 p1, p1, 0x8

    .line 118
    div-int/lit8 p2, p2, 0x8

    add-int v0, p1, p2

    .line 120
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object p0

    .line 122
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v0
.end method
