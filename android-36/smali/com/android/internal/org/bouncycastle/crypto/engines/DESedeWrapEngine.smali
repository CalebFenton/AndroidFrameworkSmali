.class public Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source "DESedeWrapEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Wrapper;


# static fields
.field private static final blacklist IV2:[B


# instance fields
.field blacklist digest:[B

.field private blacklist engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

.field private blacklist forWrapping:Z

.field private blacklist iv:[B

.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

.field private blacklist paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

.field blacklist sha1:Lcom/android/internal/org/bouncycastle/crypto/Digest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    return-void

    :array_a
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

.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 62
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    return-void
.end method

.method private blacklist calculateCMSKeyChecksum([B)[B
    .registers 7
    .param p1, "key"    # [B

    .line 323
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 325
    .local v1, "result":[B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 326
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-interface {v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 328
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    return-object v1
.end method

.method private blacklist checkCMSKeyChecksum([B[B)Z
    .registers 4
    .param p1, "key"    # [B
    .param p2, "checksum"    # [B

    .line 344
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 131
    const-string v0, "DESede"

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .param p1, "forWrapping"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 73
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    .line 74
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 77
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1e

    .line 79
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 80
    .local v0, "pr":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    .line 81
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 82
    .local v0, "sr":Ljava/security/SecureRandom;
    goto :goto_22

    .line 85
    .end local v0    # "sr":Ljava/security/SecureRandom;
    :cond_1e
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 88
    .restart local v0    # "sr":Ljava/security/SecureRandom;
    :goto_22
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    const/16 v2, 0x8

    if-eqz v1, :cond_46

    .line 90
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 92
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v1, :cond_7f

    .line 97
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 98
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 100
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    goto :goto_7f

    .line 103
    :cond_46
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v1, :cond_7f

    .line 105
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 106
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 107
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    .line 109
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v1, :cond_77

    .line 111
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v1, v1

    if-ne v1, v2, :cond_6f

    goto :goto_7f

    .line 113
    :cond_6f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IV is not 8 octets"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "You should not supply an IV for unwrapping"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_7f
    :goto_7f
    return-void
.end method

.method public blacklist unwrap([BII)[B
    .registers 14
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 217
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-nez v0, :cond_a4

    .line 222
    if-eqz p1, :cond_9c

    .line 227
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    .line 228
    .local v0, "blockSize":I
    rem-int v1, p3, v0

    if-nez v1, :cond_83

    .line 251
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 253
    .local v1, "param2":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 255
    new-array v2, p3, [B

    .line 257
    .local v2, "TEMP2":[B
    const/4 v4, 0x0

    .local v4, "currentBytePos":I
    :goto_22
    if-eq v4, p3, :cond_2d

    .line 259
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    add-int v6, p2, v4

    invoke-virtual {v5, p1, v6, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 257
    add-int/2addr v4, v0

    goto :goto_22

    .line 263
    .end local v4    # "currentBytePos":I
    :cond_2d
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->reverseInPlace([B)[B

    .line 266
    const/16 v4, 0x8

    new-array v5, v4, [B

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 268
    array-length v5, v2

    sub-int/2addr v5, v4

    new-array v5, v5, [B

    .line 270
    .local v5, "TEMP1":[B
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-static {v2, v3, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    array-length v6, v2

    sub-int/2addr v6, v4

    invoke-static {v2, v4, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 277
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v6, v3, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 279
    array-length v6, v5

    new-array v6, v6, [B

    .line 281
    .local v6, "WKCKS":[B
    const/4 v7, 0x0

    .local v7, "currentBytePos":I
    :goto_5a
    array-length v8, v6

    if-eq v7, v8, :cond_64

    .line 283
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v8, v5, v7, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 281
    add-int/2addr v7, v0

    goto :goto_5a

    .line 288
    .end local v7    # "currentBytePos":I
    :cond_64
    array-length v7, v6

    sub-int/2addr v7, v4

    new-array v7, v7, [B

    .line 289
    .local v7, "result":[B
    new-array v8, v4, [B

    .line 291
    .local v8, "CKStoBeVerified":[B
    array-length v9, v6

    sub-int/2addr v9, v4

    invoke-static {v6, v3, v7, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    array-length v9, v6

    sub-int/2addr v9, v4

    invoke-static {v6, v9, v8, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    invoke-direct {p0, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 303
    return-object v7

    .line 298
    :cond_7b
    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v4, "Checksum inside ciphertext is corrupted"

    invoke-direct {v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    .end local v1    # "param2":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v2    # "TEMP2":[B
    .end local v5    # "TEMP1":[B
    .end local v6    # "WKCKS":[B
    .end local v7    # "result":[B
    .end local v8    # "CKStoBeVerified":[B
    :cond_83
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ciphertext not multiple of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    .end local v0    # "blockSize":I
    :cond_9c
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Null pointer as ciphertext"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_a4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not set for unwrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist wrap([BII)[B
    .registers 14
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .line 144
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v0, :cond_77

    .line 149
    new-array v0, p3, [B

    .line 151
    .local v0, "keyToBeWrapped":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object v2

    .line 157
    .local v2, "CKS":[B
    array-length v3, v0

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 159
    .local v3, "WKCKS":[B
    array-length v4, v0

    invoke-static {v0, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    array-length v4, v0

    array-length v5, v2

    invoke-static {v2, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v4

    .line 167
    .local v4, "blockSize":I
    array-length v5, v3

    rem-int/2addr v5, v4

    if-nez v5, :cond_6f

    .line 172
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 174
    array-length v5, v3

    new-array v5, v5, [B

    .line 176
    .local v5, "TEMP1":[B
    const/4 v6, 0x0

    .local v6, "currentBytePos":I
    :goto_32
    array-length v8, v3

    if-eq v6, v8, :cond_3c

    .line 178
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v8, v3, v6, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 176
    add-int/2addr v6, v4

    goto :goto_32

    .line 182
    .end local v6    # "currentBytePos":I
    :cond_3c
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v6, v6

    array-length v8, v5

    add-int/2addr v6, v8

    new-array v6, v6, [B

    .line 184
    .local v6, "TEMP2":[B
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v9, v9

    invoke-static {v8, v1, v6, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v8, v8

    array-length v9, v5

    invoke-static {v5, v1, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/util/Arrays;->reverseInPlace([B)[B

    .line 193
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    sget-object v9, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v1, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 195
    .local v1, "param2":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v8, v7, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 197
    const/4 v7, 0x0

    .local v7, "currentBytePos":I
    :goto_64
    array-length v8, v6

    if-eq v7, v8, :cond_6e

    .line 199
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v8, v6, v7, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    .line 197
    add-int/2addr v7, v4

    goto :goto_64

    .line 202
    .end local v7    # "currentBytePos":I
    :cond_6e
    return-object v6

    .line 169
    .end local v1    # "param2":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    .end local v5    # "TEMP1":[B
    .end local v6    # "TEMP2":[B
    :cond_6f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "Not multiple of block length"

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    .end local v0    # "keyToBeWrapped":[B
    .end local v2    # "CKS":[B
    .end local v3    # "WKCKS":[B
    .end local v4    # "blockSize":I
    :cond_77
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized for wrapping"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
