.class public Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private hMac:Lcom/android/org/bouncycastle/crypto/Mac;

.field private state:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    #@3
    .line 40
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/HMac;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    #@a
    .line 41
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    #@c
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    #@f
    move-result v0

    #@10
    new-array v0, v0, [B

    #@12
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    #@14
    .line 38
    return-void
.end method

.method private F([BI[B[BI)V
    .locals 6
    .param p1, "S"    # [B
    .param p2, "c"    # I
    .param p3, "iBuf"    # [B
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 51
    if-nez p2, :cond_0

    #@3
    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "iteration count must be at least 1."

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 56
    :cond_0
    if-eqz p1, :cond_1

    #@e
    .line 58
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    #@10
    array-length v3, p1

    #@11
    invoke-interface {v2, p1, v5, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@14
    .line 61
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    #@16
    array-length v3, p3

    #@17
    invoke-interface {v2, p3, v5, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@1a
    .line 62
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    #@1c
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    #@1e
    invoke-interface {v2, v3, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    #@21
    .line 64
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    #@23
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    #@25
    array-length v3, v3

    #@26
    invoke-static {v2, v5, p4, p5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@29
    .line 66
    const/4 v0, 0x1

    #@2a
    .local v0, "count":I
    :goto_0
    if-ge v0, p2, :cond_3

    #@2c
    .line 68
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    #@2e
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    #@30
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    #@32
    array-length v4, v4

    #@33
    invoke-interface {v2, v3, v5, v4}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@36
    .line 69
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    #@38
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    #@3a
    invoke-interface {v2, v3, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    #@3d
    .line 71
    const/4 v1, 0x0

    #@3e
    .local v1, "j":I
    :goto_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    #@40
    array-length v2, v2

    #@41
    if-eq v1, v2, :cond_2

    #@43
    .line 73
    add-int v2, p5, v1

    #@45
    aget-byte v3, p4, v2

    #@47
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    #@49
    aget-byte v4, v4, v1

    #@4b
    xor-int/2addr v3, v4

    #@4c
    int-to-byte v3, v3

    #@4d
    aput-byte v3, p4, v2

    #@4f
    .line 71
    add-int/lit8 v1, v1, 0x1

    #@51
    goto :goto_1

    #@52
    .line 66
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_0

    #@55
    .line 49
    .end local v1    # "j":I
    :cond_3
    return-void
.end method

.method private generateDerivedKey(I)[B
    .locals 11
    .param p1, "dkLen"    # I

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    #@5
    move-result v6

    #@6
    .line 82
    .local v6, "hLen":I
    add-int v0, p1, v6

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    div-int v8, v0, v6

    #@c
    .line 83
    .local v8, "l":I
    const/4 v0, 0x4

    #@d
    new-array v3, v0, [B

    #@f
    .line 84
    .local v3, "iBuf":[B
    mul-int v0, v8, v6

    #@11
    new-array v4, v0, [B

    #@13
    .line 85
    .local v4, "outBytes":[B
    const/4 v5, 0x0

    #@14
    .line 87
    .local v5, "outPos":I
    new-instance v9, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@16
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    #@18
    invoke-direct {v9, v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    #@1b
    .line 89
    .local v9, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/org/bouncycastle/crypto/Mac;

    #@1d
    invoke-interface {v0, v9}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@20
    .line 91
    const/4 v7, 0x1

    #@21
    .local v7, "i":I
    :goto_0
    if-gt v7, v8, :cond_1

    #@23
    .line 94
    const/4 v10, 0x3

    #@24
    .line 95
    .local v10, "pos":I
    :goto_1
    aget-byte v0, v3, v10

    #@26
    add-int/lit8 v0, v0, 0x1

    #@28
    int-to-byte v0, v0

    #@29
    aput-byte v0, v3, v10

    #@2b
    if-nez v0, :cond_0

    #@2d
    .line 97
    add-int/lit8 v10, v10, -0x1

    #@2f
    goto :goto_1

    #@30
    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    #@32
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    #@34
    move-object v0, p0

    #@35
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([BI[B[BI)V

    #@38
    .line 101
    add-int/2addr v5, v6

    #@39
    .line 91
    add-int/lit8 v7, v7, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 104
    .end local v10    # "pos":I
    :cond_1
    return-object v4
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "keySize"    # I

    #@0
    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/org/bouncycastle/crypto/CipherParameters;

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
    .line 117
    div-int/lit8 p1, p1, 0x8

    #@2
    .line 119
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    #@5
    move-result-object v0

    #@6
    .line 121
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
    .line 137
    div-int/lit8 p1, p1, 0x8

    #@2
    .line 138
    div-int/lit8 p2, p2, 0x8

    #@4
    .line 140
    add-int v1, p1, p2

    #@6
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    #@9
    move-result-object v0

    #@a
    .line 142
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
