.class public Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source "DESedeWrapEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Wrapper;


# static fields
.field private static final IV2:[B


# instance fields
.field digest:[B

.field private engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

.field private forWrapping:Z

.field private iv:[B

.field private param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field sha1:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 50
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    #@9
    .line 31
    return-void

    #@a
    .line 50
    :array_0
    .array-data 1
        0x4at
        -0x23t
        -0x5et
        0x2ct
        0x79t
        -0x18t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    #@9
    .line 60
    const/16 v0, 0x14

    #@b
    new-array v0, v0, [B

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    #@f
    .line 31
    return-void
.end method

.method private calculateCMSKeyChecksum([B)[B
    .locals 5
    .param p1, "key"    # [B

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    const/4 v3, 0x0

    #@3
    .line 321
    new-array v0, v4, [B

    #@5
    .line 323
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    #@7
    array-length v2, p1

    #@8
    invoke-interface {v1, p1, v3, v2}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@b
    .line 324
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    #@d
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    #@f
    invoke-interface {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@12
    .line 326
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    #@14
    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@17
    .line 328
    return-object v0
.end method

.method private checkCMSKeyChecksum([B[B)Z
    .locals 1
    .param p1, "key"    # [B
    .param p2, "checksum"    # [B

    #@0
    .prologue
    .line 342
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private static reverse([B)[B
    .locals 4
    .param p0, "bs"    # [B

    #@0
    .prologue
    .line 347
    array-length v2, p0

    #@1
    new-array v1, v2, [B

    #@3
    .line 348
    .local v1, "result":[B
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v2, p0

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 350
    array-length v2, p0

    #@8
    add-int/lit8 v3, v0, 0x1

    #@a
    sub-int/2addr v2, v3

    #@b
    aget-byte v2, p0, v2

    #@d
    aput-byte v2, v1, v0

    #@f
    .line 348
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 352
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 129
    const-string/jumbo v0, "DESede"

    #@3
    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    const/16 v4, 0x8

    #@2
    .line 71
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    #@4
    .line 72
    new-instance v2, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@6
    new-instance v3, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;

    #@8
    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    #@b
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@e
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@10
    .line 75
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@12
    if-eqz v2, :cond_1

    #@14
    move-object v0, p2

    #@15
    .line 77
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@17
    .line 78
    .local v0, "pr":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@1a
    move-result-object p2

    #@1b
    .line 79
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    #@1e
    move-result-object v1

    #@1f
    .line 86
    .end local v0    # "pr":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .local v1, "sr":Ljava/security/SecureRandom;
    :goto_0
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 88
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@25
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@27
    .line 90
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    #@29
    if-eqz v2, :cond_0

    #@2b
    .line 95
    new-array v2, v4, [B

    #@2d
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@2f
    .line 96
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@31
    invoke-virtual {v1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    #@34
    .line 98
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@36
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@38
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@3a
    invoke-direct {v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@3d
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@3f
    .line 68
    :cond_0
    return-void

    #@40
    .line 83
    .end local v1    # "sr":Ljava/security/SecureRandom;
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1
    new-instance v1, Ljava/security/SecureRandom;

    #@42
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@45
    .restart local v1    # "sr":Ljava/security/SecureRandom;
    goto :goto_0

    #@46
    .line 101
    :cond_2
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@48
    if-eqz v2, :cond_0

    #@4a
    .line 103
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@4c
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@4e
    .line 104
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@50
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@53
    move-result-object v2

    #@54
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@56
    .line 105
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@58
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@5b
    move-result-object v2

    #@5c
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@5e
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@60
    .line 107
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    #@62
    if-eqz v2, :cond_4

    #@64
    .line 109
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@66
    if-eqz v2, :cond_3

    #@68
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@6a
    array-length v2, v2

    #@6b
    if-eq v2, v4, :cond_0

    #@6d
    .line 111
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6f
    const-string/jumbo v3, "IV is not 8 octets"

    #@72
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@75
    throw v2

    #@76
    .line 116
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@78
    .line 117
    const-string/jumbo v3, "You should not supply an IV for unwrapping"

    #@7b
    .line 116
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7e
    throw v2
.end method

.method public unwrap([BII)[B
    .locals 14
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
    .line 215
    iget-boolean v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    #@2
    if-eqz v10, :cond_0

    #@4
    .line 217
    new-instance v10, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v11, "Not set for unwrapping"

    #@9
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v10

    #@d
    .line 220
    :cond_0
    if-nez p1, :cond_1

    #@f
    .line 222
    new-instance v10, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@11
    const-string/jumbo v11, "Null pointer as ciphertext"

    #@14
    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@17
    throw v10

    #@18
    .line 225
    :cond_1
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@1a
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    #@1d
    move-result v6

    #@1e
    .line 226
    .local v6, "blockSize":I
    rem-int v10, p3, v6

    #@20
    if-eqz v10, :cond_2

    #@22
    .line 228
    new-instance v10, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@24
    new-instance v11, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v12, "Ciphertext not multiple of "

    #@2c
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v11

    #@30
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v11

    #@34
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v11

    #@38
    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v10

    #@3c
    .line 249
    :cond_2
    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@3e
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@40
    sget-object v11, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    #@42
    invoke-direct {v8, v10, v11}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@45
    .line 251
    .local v8, "param2":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@47
    const/4 v11, 0x0

    #@48
    invoke-virtual {v10, v11, v8}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@4b
    .line 253
    move/from16 v0, p3

    #@4d
    new-array v4, v0, [B

    #@4f
    .line 255
    .local v4, "TEMP3":[B
    const/4 v7, 0x0

    #@50
    .local v7, "currentBytePos":I
    :goto_0
    move/from16 v0, p3

    #@52
    if-eq v7, v0, :cond_3

    #@54
    .line 257
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@56
    add-int v11, p2, v7

    #@58
    invoke-virtual {v10, p1, v11, v4, v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    #@5b
    .line 255
    add-int/2addr v7, v6

    #@5c
    goto :goto_0

    #@5d
    .line 261
    :cond_3
    invoke-static {v4}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    #@60
    move-result-object v3

    #@61
    .line 264
    .local v3, "TEMP2":[B
    const/16 v10, 0x8

    #@63
    new-array v10, v10, [B

    #@65
    iput-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@67
    .line 266
    array-length v10, v3

    #@68
    add-int/lit8 v10, v10, -0x8

    #@6a
    new-array v2, v10, [B

    #@6c
    .line 268
    .local v2, "TEMP1":[B
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@6e
    const/4 v11, 0x0

    #@6f
    const/4 v12, 0x0

    #@70
    const/16 v13, 0x8

    #@72
    invoke-static {v3, v11, v10, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@75
    .line 269
    array-length v10, v3

    #@76
    add-int/lit8 v10, v10, -0x8

    #@78
    const/16 v11, 0x8

    #@7a
    const/4 v12, 0x0

    #@7b
    invoke-static {v3, v11, v2, v12, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@7e
    .line 273
    new-instance v10, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@80
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@82
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@84
    invoke-direct {v10, v11, v12}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@87
    iput-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@89
    .line 275
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@8b
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@8d
    const/4 v12, 0x0

    #@8e
    invoke-virtual {v10, v12, v11}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@91
    .line 277
    array-length v10, v2

    #@92
    new-array v5, v10, [B

    #@94
    .line 279
    .local v5, "WKCKS":[B
    const/4 v7, 0x0

    #@95
    :goto_1
    array-length v10, v5

    #@96
    if-eq v7, v10, :cond_4

    #@98
    .line 281
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@9a
    invoke-virtual {v10, v2, v7, v5, v7}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    #@9d
    .line 279
    add-int/2addr v7, v6

    #@9e
    goto :goto_1

    #@9f
    .line 286
    :cond_4
    array-length v10, v5

    #@a0
    add-int/lit8 v10, v10, -0x8

    #@a2
    new-array v9, v10, [B

    #@a4
    .line 287
    .local v9, "result":[B
    const/16 v10, 0x8

    #@a6
    new-array v1, v10, [B

    #@a8
    .line 289
    .local v1, "CKStoBeVerified":[B
    array-length v10, v5

    #@a9
    add-int/lit8 v10, v10, -0x8

    #@ab
    const/4 v11, 0x0

    #@ac
    const/4 v12, 0x0

    #@ad
    invoke-static {v5, v11, v9, v12, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b0
    .line 290
    array-length v10, v5

    #@b1
    add-int/lit8 v10, v10, -0x8

    #@b3
    const/4 v11, 0x0

    #@b4
    const/16 v12, 0x8

    #@b6
    invoke-static {v5, v10, v1, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b9
    .line 294
    invoke-direct {p0, v9, v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    #@bc
    move-result v10

    #@bd
    if-nez v10, :cond_5

    #@bf
    .line 296
    new-instance v10, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@c1
    .line 297
    const-string/jumbo v11, "Checksum inside ciphertext is corrupted"

    #@c4
    .line 296
    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@c7
    throw v10

    #@c8
    .line 301
    :cond_5
    return-object v9
.end method

.method public wrap([BII)[B
    .locals 16
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    #@0
    .prologue
    .line 142
    move-object/from16 v0, p0

    #@2
    iget-boolean v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    #@4
    if-nez v12, :cond_0

    #@6
    .line 144
    new-instance v12, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v13, "Not initialized for wrapping"

    #@b
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v12

    #@f
    .line 147
    :cond_0
    move/from16 v0, p3

    #@11
    new-array v10, v0, [B

    #@13
    .line 149
    .local v10, "keyToBeWrapped":[B
    const/4 v12, 0x0

    #@14
    move-object/from16 v0, p1

    #@16
    move/from16 v1, p2

    #@18
    move/from16 v2, p3

    #@1a
    invoke-static {v0, v1, v10, v12, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1d
    .line 152
    move-object/from16 v0, p0

    #@1f
    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    #@22
    move-result-object v3

    #@23
    .line 155
    .local v3, "CKS":[B
    array-length v12, v10

    #@24
    array-length v13, v3

    #@25
    add-int/2addr v12, v13

    #@26
    new-array v7, v12, [B

    #@28
    .line 157
    .local v7, "WKCKS":[B
    array-length v12, v10

    #@29
    const/4 v13, 0x0

    #@2a
    const/4 v14, 0x0

    #@2b
    invoke-static {v10, v13, v7, v14, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2e
    .line 158
    array-length v12, v10

    #@2f
    array-length v13, v3

    #@30
    const/4 v14, 0x0

    #@31
    invoke-static {v3, v14, v7, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@34
    .line 163
    move-object/from16 v0, p0

    #@36
    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@38
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    #@3b
    move-result v8

    #@3c
    .line 165
    .local v8, "blockSize":I
    array-length v12, v7

    #@3d
    rem-int/2addr v12, v8

    #@3e
    if-eqz v12, :cond_1

    #@40
    .line 167
    new-instance v12, Ljava/lang/IllegalStateException;

    #@42
    const-string/jumbo v13, "Not multiple of block length"

    #@45
    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@48
    throw v12

    #@49
    .line 170
    :cond_1
    move-object/from16 v0, p0

    #@4b
    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@51
    const/4 v14, 0x1

    #@52
    invoke-virtual {v12, v14, v13}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@55
    .line 172
    array-length v12, v7

    #@56
    new-array v4, v12, [B

    #@58
    .line 174
    .local v4, "TEMP1":[B
    const/4 v9, 0x0

    #@59
    .local v9, "currentBytePos":I
    :goto_0
    array-length v12, v7

    #@5a
    if-eq v9, v12, :cond_2

    #@5c
    .line 176
    move-object/from16 v0, p0

    #@5e
    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@60
    invoke-virtual {v12, v7, v9, v4, v9}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    #@63
    .line 174
    add-int/2addr v9, v8

    #@64
    goto :goto_0

    #@65
    .line 180
    :cond_2
    move-object/from16 v0, p0

    #@67
    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@69
    array-length v12, v12

    #@6a
    array-length v13, v4

    #@6b
    add-int/2addr v12, v13

    #@6c
    new-array v5, v12, [B

    #@6e
    .line 182
    .local v5, "TEMP2":[B
    move-object/from16 v0, p0

    #@70
    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@72
    move-object/from16 v0, p0

    #@74
    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@76
    array-length v13, v13

    #@77
    const/4 v14, 0x0

    #@78
    const/4 v15, 0x0

    #@79
    invoke-static {v12, v14, v5, v15, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@7c
    .line 183
    move-object/from16 v0, p0

    #@7e
    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    #@80
    array-length v12, v12

    #@81
    array-length v13, v4

    #@82
    const/4 v14, 0x0

    #@83
    invoke-static {v4, v14, v5, v12, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@86
    .line 186
    invoke-static {v5}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->reverse([B)[B

    #@89
    move-result-object v6

    #@8a
    .line 191
    .local v6, "TEMP3":[B
    new-instance v11, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@8c
    move-object/from16 v0, p0

    #@8e
    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@90
    sget-object v13, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    #@92
    invoke-direct {v11, v12, v13}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@95
    .line 193
    .local v11, "param2":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    move-object/from16 v0, p0

    #@97
    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@99
    const/4 v13, 0x1

    #@9a
    invoke-virtual {v12, v13, v11}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@9d
    .line 195
    const/4 v9, 0x0

    #@9e
    :goto_1
    array-length v12, v6

    #@9f
    if-eq v9, v12, :cond_3

    #@a1
    .line 197
    move-object/from16 v0, p0

    #@a3
    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@a5
    invoke-virtual {v12, v6, v9, v6, v9}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    #@a8
    .line 195
    add-int/2addr v9, v8

    #@a9
    goto :goto_1

    #@aa
    .line 200
    :cond_3
    return-object v6
.end method
