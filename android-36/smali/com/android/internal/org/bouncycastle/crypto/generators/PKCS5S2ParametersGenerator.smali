.class public Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private blacklist hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

.field private blacklist state:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 3
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 42
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 43
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/macs/HMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    .line 44
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    .line 45
    return-void
.end method

.method private blacklist F([BI[B[BI)V
    .registers 12
    .param p1, "S"    # [B
    .param p2, "c"    # I
    .param p3, "iBuf"    # [B
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .line 54
    if-eqz p2, :cond_4d

    .line 59
    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 61
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 64
    :cond_b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    array-length v2, p3

    invoke-interface {v1, p3, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 65
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 67
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v2, v2

    invoke-static {v1, v0, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    const/4 v1, 0x1

    .local v1, "count":I
    :goto_21
    if-ge v1, p2, :cond_4c

    .line 71
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v4, v4

    invoke-interface {v2, v3, v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 72
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    invoke-interface {v2, v3, v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 74
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_35
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    array-length v3, v3

    if-eq v2, v3, :cond_49

    .line 76
    add-int v3, p5, v2

    aget-byte v4, p4, v3

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->state:[B

    aget-byte v5, v5, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p4, v3

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 69
    .end local v2    # "j":I
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 79
    .end local v1    # "count":I
    :cond_4c
    return-void

    .line 56
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iteration count must be at least 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist generateDerivedKey(I)[B
    .registers 13
    .param p1, "dkLen"    # I

    .line 84
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    .line 85
    .local v0, "hLen":I
    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    .line 86
    .local v1, "l":I
    const/4 v2, 0x4

    new-array v6, v2, [B

    .line 87
    .local v6, "iBuf":[B
    mul-int v2, v1, v0

    new-array v7, v2, [B

    .line 88
    .local v7, "outBytes":[B
    const/4 v2, 0x0

    .line 90
    .local v2, "outPos":I
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    move-object v9, v3

    .line 92
    .local v9, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lcom/android/internal/org/bouncycastle/crypto/Mac;

    invoke-interface {v3, v9}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 94
    const/4 v3, 0x1

    move v8, v2

    move v2, v3

    .local v2, "i":I
    .local v8, "outPos":I
    :goto_23
    if-gt v2, v1, :cond_3f

    .line 97
    const/4 v3, 0x3

    move v10, v3

    .line 98
    .local v10, "pos":I
    :goto_27
    aget-byte v3, v6, v10

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v6, v10

    if-nez v3, :cond_33

    .line 100
    add-int/lit8 v10, v10, -0x1

    goto :goto_27

    .line 103
    :cond_33
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([BI[B[BI)V

    .line 104
    add-int/2addr v8, v0

    .line 94
    .end local v10    # "pos":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 107
    .end local v2    # "i":I
    :cond_3f
    return-object v7
.end method


# virtual methods
.method public blacklist generateDerivedMacParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 3
    .param p1, "keySize"    # I

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public blacklist generateDerivedParameters(I)Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .registers 5
    .param p1, "keySize"    # I

    .line 120
    div-int/lit8 p1, p1, 0x8

    .line 122
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 124
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

    .line 140
    div-int/lit8 p1, p1, 0x8

    .line 141
    div-int/lit8 p2, p2, 0x8

    .line 143
    add-int v0, p1, p2

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 145
    .local v0, "dKey":[B
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
