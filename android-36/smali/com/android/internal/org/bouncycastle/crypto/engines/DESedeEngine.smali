.class public Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;
.super Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;
.source "DESedeEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final blacklist BLOCK_SIZE:I = 0x8


# instance fields
.field private blacklist forEncryption:Z

.field private blacklist workingKey1:[I

.field private blacklist workingKey2:[I

.field private blacklist workingKey3:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESBase;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 23
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 24
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->bitsOfSecurity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 34
    return-void
.end method

.method private blacklist bitsOfSecurity()I
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    if-ne v0, v1, :cond_d

    .line 142
    const/16 v0, 0x50

    return v0

    .line 144
    :cond_d
    const/16 v0, 0x70

    return v0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 86
    const-string v0, "DESede"

    return-object v0
.end method

.method public blacklist getBlockSize()I
    .registers 2

    .line 91
    const/16 v0, 0x8

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 11
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 48
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_68

    .line 53
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 55
    .local v0, "keyMaster":[B
    array-length v1, v0

    const/16 v2, 0x10

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1e

    array-length v1, v0

    if-ne v1, v2, :cond_16

    goto :goto_1e

    .line 57
    :cond_16
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "key size must be 16 or 24 bytes."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1e
    :goto_1e
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    .line 62
    const/16 v1, 0x8

    new-array v4, v1, [B

    .line 63
    .local v4, "key1":[B
    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 66
    new-array v5, v1, [B

    .line 67
    .local v5, "key2":[B
    array-length v7, v5

    invoke-static {v0, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    xor-int/lit8 v7, p1, 0x1

    invoke-virtual {p0, v7, v5}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 70
    array-length v7, v0

    if-ne v7, v3, :cond_4d

    .line 72
    new-array v1, v1, [B

    .line 73
    .local v1, "key3":[B
    array-length v3, v1

    invoke-static {v0, v2, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 75
    .end local v1    # "key3":[B
    goto :goto_51

    .line 78
    :cond_4d
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 81
    :goto_51
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->bitsOfSecurity()I

    move-result v3

    iget-boolean v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v6

    invoke-direct {v1, v2, v3, p2, v6}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 82
    return-void

    .line 50
    .end local v0    # "keyMaster":[B
    .end local v4    # "key1":[B
    .end local v5    # "key2":[B
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to DESede init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    .line 100
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-eqz v0, :cond_5c

    .line 105
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_52

    .line 110
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_48

    .line 115
    const/16 v0, 0x8

    new-array v3, v0, [B

    .line 117
    .local v3, "temp":[B
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    if-eqz v1, :cond_2f

    .line 119
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p2

    move-object v5, v3

    move-object v3, p1

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .local v3, "in":[B
    .local v4, "inOff":I
    .local v5, "temp":[B
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 120
    move-object v3, v5

    .end local v4    # "inOff":I
    .end local v5    # "temp":[B
    .local v3, "temp":[B
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 121
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v5, p3

    move v6, p4

    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v5, "out":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .end local v5    # "out":[B
    .end local v6    # "outOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    goto :goto_47

    .line 125
    :cond_2f
    move-object v1, p0

    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    const/4 v6, 0x0

    move v4, p2

    move-object v5, v3

    move-object v3, p1

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .local v3, "in":[B
    .restart local v4    # "inOff":I
    .local v5, "temp":[B
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 126
    move-object v3, v5

    .end local v4    # "inOff":I
    .end local v5    # "temp":[B
    .local v3, "temp":[B
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 127
    iget-object v2, v1, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v5, p3

    move v6, p4

    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v5, "out":[B
    .restart local v6    # "outOff":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 130
    :goto_47
    return v0

    .line 112
    .end local v3    # "temp":[B
    .end local v5    # "out":[B
    .end local v6    # "outOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    :cond_48
    move-object v5, p3

    move v6, p4

    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .restart local v5    # "out":[B
    .restart local v6    # "outOff":I
    new-instance p3, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string p4, "output buffer too short"

    invoke-direct {p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 107
    .end local v5    # "out":[B
    .end local v6    # "outOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    :cond_52
    move-object v5, p3

    move v6, p4

    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .restart local v5    # "out":[B
    .restart local v6    # "outOff":I
    new-instance p3, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string p4, "input buffer too short"

    invoke-direct {p3, p4}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 102
    .end local v5    # "out":[B
    .end local v6    # "outOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    :cond_5c
    move-object v5, p3

    move v6, p4

    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .restart local v5    # "out":[B
    .restart local v6    # "outOff":I
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "DESede engine not initialised"

    invoke-direct {p3, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public blacklist reset()V
    .registers 1

    .line 135
    return-void
.end method
