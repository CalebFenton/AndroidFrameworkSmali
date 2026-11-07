.class public Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
.source "OpenSSLPBEParametersGenerator.java"


# instance fields
.field private blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 27
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 34
    return-void
.end method

.method private blacklist generateDerivedKey(I)[B
    .registers 9
    .param p1, "bytesNeeded"    # I

    .line 55
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 56
    .local v0, "buf":[B
    new-array v1, p1, [B

    .line 57
    .local v1, "key":[B
    const/4 v2, 0x0

    .line 61
    .local v2, "offset":I
    :goto_b
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->password:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 62
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->salt:[B

    array-length v5, v5

    invoke-interface {v3, v4, v6, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 64
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v3, v0, v6}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 66
    array-length v3, v0

    if-le p1, v3, :cond_2a

    array-length v3, v0

    goto :goto_2b

    :cond_2a
    move v3, p1

    .line 67
    .local v3, "len":I
    :goto_2b
    invoke-static {v0, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    add-int/2addr v2, v3

    .line 71
    sub-int/2addr p1, v3

    .line 72
    if-nez p1, :cond_34

    .line 74
    nop

    .line 82
    .end local v3    # "len":I
    return-object v1

    .line 78
    .restart local v3    # "len":I
    :cond_34
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 79
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v6, v5}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 80
    .end local v3    # "len":I
    goto :goto_b
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 3
    .param p1, "keySize"    # I

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 5
    .param p1, "keySize"    # I

    .line 96
    div-int/lit8 p1, p1, 0x8

    .line 98
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 100
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public blacklist generateDerivedParameters(II)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 7
    .param p1, "keySize"    # I
    .param p2, "ivSize"    # I

    .line 117
    div-int/lit8 p1, p1, 0x8

    .line 118
    div-int/lit8 p2, p2, 0x8

    .line 120
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 122
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method

.method public blacklist init([B[B)V
    .registers 4
    .param p1, "password"    # [B
    .param p2, "salt"    # [B

    .line 46
    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 47
    return-void
.end method
