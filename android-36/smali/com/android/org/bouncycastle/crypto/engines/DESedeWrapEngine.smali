.class public Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;
.super Ljava/lang/Object;
.source "DESedeWrapEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Wrapper;


# static fields
.field private static final blacklist IV2:[B


# instance fields
.field blacklist digest:[B

.field private blacklist engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

.field private blacklist forWrapping:Z

.field private blacklist iv:[B

.field private blacklist param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

.field private blacklist paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

.field blacklist sha1:Lcom/android/org/bouncycastle/crypto/Digest;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 52
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

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
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    const/16 v0, 0x14

    .line 62
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    return-void
.end method

.method private blacklist calculateCMSKeyChecksum([B)[B
    .registers 7

    const/16 v0, 0x8

    .line 323
    new-array v1, v0, [B

    .line 325
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 326
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->sha1:Lcom/android/org/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-interface {p1, v2, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 328
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->digest:[B

    invoke-static {p0, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private blacklist checkCMSKeyChecksum([B[B)Z
    .registers 3

    .line 344
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 131
    const-string p0, "DESede"

    return-object p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6

    .line 73
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    .line 74
    new-instance p1, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;-><init>()V

    invoke-direct {p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    .line 77
    instance-of p1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz p1, :cond_20

    .line 79
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 80
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    .line 81
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_24

    .line 85
    :cond_20
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    .line 88
    :goto_24
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    const/16 v1, 0x8

    if-eqz v0, :cond_45

    .line 90
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 92
    iget-boolean p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz p2, :cond_79

    .line 97
    new-array p2, v1, [B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 98
    invoke-virtual {p1, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 100
    new-instance p1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    return-void

    .line 103
    :cond_45
    instance-of p1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_79

    .line 105
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 106
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    .line 107
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    .line 109
    iget-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz p1, :cond_71

    .line 111
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    if-eqz p0, :cond_69

    array-length p0, p0

    if-ne p0, v1, :cond_69

    goto :goto_79

    .line 113
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "IV is not 8 octets"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You should not supply an IV for unwrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_79
    :goto_79
    return-void
.end method

.method public blacklist unwrap([BII)[B
    .registers 10

    .line 217
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-nez v0, :cond_96

    if-eqz p1, :cond_8e

    .line 227
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result v0

    .line 228
    rem-int v1, p3, v0

    if-nez v1, :cond_77

    .line 251
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    sget-object v3, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 253
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 255
    new-array v1, p3, [B

    move v2, v3

    :goto_22
    if-eq v2, p3, :cond_2d

    .line 259
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    add-int v5, p2, v2

    invoke-virtual {v4, p1, v5, v1, v2}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v2, v0

    goto :goto_22

    .line 263
    :cond_2d
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->reverseInPlace([B)[B

    const/16 p1, 0x8

    .line 266
    new-array p2, p1, [B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    add-int/lit8 v2, p3, -0x8

    .line 268
    new-array v4, v2, [B

    .line 270
    invoke-static {v1, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    invoke-static {v1, p1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 275
    new-instance p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    invoke-direct {p2, v1, v5}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 277
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v1, v3, p2}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 279
    new-array p2, v2, [B

    move v1, v3

    :goto_53
    if-eq v1, v2, :cond_5c

    .line 283
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v5, v4, v1, p2, v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v1, v0

    goto :goto_53

    :cond_5c
    add-int/lit8 p3, p3, -0x10

    .line 288
    new-array v0, p3, [B

    .line 289
    new-array v1, p1, [B

    .line 291
    invoke-static {p2, v3, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    invoke-static {p2, p3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    invoke-direct {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->checkCMSKeyChecksum([B[B)Z

    move-result p0

    if-eqz p0, :cond_6f

    return-object v0

    .line 298
    :cond_6f
    new-instance p0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "Checksum inside ciphertext is corrupted"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 230
    :cond_77
    new-instance p0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ciphertext not multiple of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_8e
    new-instance p0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "Null pointer as ciphertext"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 219
    :cond_96
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not set for unwrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist wrap([BII)[B
    .registers 10

    .line 144
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->forWrapping:Z

    if-eqz v0, :cond_6a

    .line 149
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 151
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->calculateCMSKeyChecksum([B)[B

    move-result-object p1

    .line 157
    array-length p2, p1

    add-int/2addr p2, p3

    new-array v2, p2, [B

    .line 159
    invoke-static {v0, v1, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    array-length v0, p1

    invoke-static {p1, v1, v2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->getBlockSize()I

    move-result p1

    .line 167
    rem-int p3, p2, p1

    if-nez p3, :cond_62

    .line 172
    iget-object p3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->paramPlusIV:Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v3, 0x1

    invoke-virtual {p3, v3, v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 174
    new-array p3, p2, [B

    move v0, v1

    :goto_2e
    if-eq v0, p2, :cond_37

    .line 178
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {v4, v2, v0, p3, v0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v0, p1

    goto :goto_2e

    .line 182
    :cond_37
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v2, v0

    add-int/2addr v2, p2

    new-array v4, v2, [B

    .line 184
    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->iv:[B

    array-length v0, v0

    invoke-static {p3, v1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    invoke-static {v4}, Lcom/android/org/bouncycastle/util/Arrays;->reverseInPlace([B)[B

    .line 193
    new-instance p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object p3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->param:Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    sget-object v0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->IV2:[B

    invoke-direct {p2, p3, v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    .line 195
    iget-object p3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p3, v3, p2}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    :goto_58
    if-eq v1, v2, :cond_61

    .line 199
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeWrapEngine;->engine:Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-virtual {p2, v4, v1, v4, v1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->processBlock([BI[BI)I

    add-int/2addr v1, p1

    goto :goto_58

    :cond_61
    return-object v4

    .line 169
    :cond_62
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not multiple of block length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_6a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not initialized for wrapping"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
