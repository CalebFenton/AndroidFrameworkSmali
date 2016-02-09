.class public Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "OpenSSLPBEParametersGenerator.java"


# instance fields
.field private digest:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    #@3
    .line 23
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/org/bouncycastle/crypto/Digest;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@9
    .line 29
    return-void
.end method

.method private generateDerivedKey(I)[B
    .locals 8
    .param p1, "bytesNeeded"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 52
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@6
    move-result v4

    #@7
    new-array v0, v4, [B

    #@9
    .line 53
    .local v0, "buf":[B
    new-array v1, p1, [B

    #@b
    .line 54
    .local v1, "key":[B
    const/4 v3, 0x0

    #@c
    .line 58
    .local v3, "offset":I
    :goto_0
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@e
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    #@10
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    #@12
    array-length v6, v6

    #@13
    invoke-interface {v4, v5, v7, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@16
    .line 59
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@18
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    #@1a
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    #@1c
    array-length v6, v6

    #@1d
    invoke-interface {v4, v5, v7, v6}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@20
    .line 61
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@22
    invoke-interface {v4, v0, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@25
    .line 63
    array-length v4, v0

    #@26
    if-le p1, v4, :cond_0

    #@28
    array-length v2, v0

    #@29
    .line 64
    .local v2, "len":I
    :goto_1
    invoke-static {v0, v7, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2c
    .line 65
    add-int/2addr v3, v2

    #@2d
    .line 68
    sub-int/2addr p1, v2

    #@2e
    .line 69
    if-nez p1, :cond_1

    #@30
    .line 79
    return-object v1

    #@31
    .line 63
    .end local v2    # "len":I
    :cond_0
    move v2, p1

    #@32
    .restart local v2    # "len":I
    goto :goto_1

    #@33
    .line 75
    :cond_1
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@35
    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@38
    .line 76
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3a
    array-length v5, v0

    #@3b
    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@3e
    goto :goto_0
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "keySize"    # I

    #@0
    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I

    #@0
    .prologue
    .line 93
    div-int/lit8 p1, p1, 0x8

    #@2
    .line 95
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    #@5
    move-result-object v0

    #@6
    .line 97
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@8
    const/4 v2, 0x0

    #@9
    invoke-direct {v1, v0, v2, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    #@c
    return-object v1
.end method

.method public generateDerivedParameters(II)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 4
    .param p1, "keySize"    # I
    .param p2, "ivSize"    # I

    #@0
    .prologue
    .line 114
    div-int/lit8 p1, p1, 0x8

    #@2
    .line 115
    div-int/lit8 p2, p2, 0x8

    #@4
    .line 117
    add-int v1, p1, p2

    #@6
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    #@9
    move-result-object v0

    #@a
    .line 119
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@c
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@e
    const/4 v3, 0x0

    #@f
    invoke-direct {v2, v0, v3, p1}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    #@12
    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[BII)V

    #@15
    return-object v1
.end method

.method public init([B[B)V
    .locals 1
    .param p1, "password"    # [B
    .param p2, "salt"    # [B

    #@0
    .prologue
    .line 43
    const/4 v0, 0x1

    #@1
    invoke-super {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    #@4
    .line 41
    return-void
.end method
