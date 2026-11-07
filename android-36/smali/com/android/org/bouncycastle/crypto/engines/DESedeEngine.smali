.class public Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;
.super Lcom/android/org/bouncycastle/crypto/engines/DESBase;
.source "DESedeEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BlockCipher;


# instance fields
.field private blacklist forEncryption:Z

.field private blacklist workingKey1:[I

.field private blacklist workingKey2:[I

.field private blacklist workingKey3:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/engines/DESBase;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 23
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 24
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->bitsOfSecurity()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method private blacklist bitsOfSecurity()I
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    if-ne v0, p0, :cond_b

    const/16 p0, 0x50

    return p0

    :cond_b
    const/16 p0, 0x70

    return p0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 86
    const-string p0, "DESede"

    return-object p0
.end method

.method public blacklist getBlockSize()I
    .registers 1

    .line 0
    const/16 p0, 0x8

    return p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 10

    .line 48
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_65

    .line 53
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 55
    array-length v1, v0

    const/16 v2, 0x10

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1e

    array-length v1, v0

    if-ne v1, v2, :cond_16

    goto :goto_1e

    .line 57
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key size must be 16 or 24 bytes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_1e
    :goto_1e
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    const/16 v1, 0x8

    .line 62
    new-array v4, v1, [B

    const/4 v5, 0x0

    .line 63
    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    invoke-virtual {p0, p1, v4}, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 66
    new-array v4, v1, [B

    .line 67
    invoke-static {v0, v1, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    xor-int/lit8 v6, p1, 0x1

    .line 68
    invoke-virtual {p0, v6, v4}, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->generateWorkingKey(Z[B)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 70
    array-length v4, v0

    if-ne v4, v3, :cond_4a

    .line 72
    new-array v3, v1, [B

    .line 73
    invoke-static {v0, v2, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    invoke-virtual {p0, p1, v3}, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->generateWorkingKey(Z[B)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    goto :goto_4e

    .line 78
    :cond_4a
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 81
    :goto_4e
    new-instance p1, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->bitsOfSecurity()I

    move-result v1

    iget-boolean p0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p0

    invoke-direct {p1, v0, v1, p2, p0}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    .line 50
    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameter passed to DESede init - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 12

    .line 100
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-eqz v1, :cond_56

    add-int/lit8 v2, p2, 0x8

    .line 105
    array-length v4, p1

    if-gt v2, v4, :cond_4e

    add-int/lit8 v2, p4, 0x8

    .line 110
    array-length v4, p3

    if-gt v2, v4, :cond_46

    const/16 v6, 0x8

    .line 115
    new-array v2, v6, [B

    .line 117
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    if-eqz v4, :cond_2d

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    move-object v4, v2

    move-object v2, p1

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->desFunc([I[BI[BI)V

    move-object v2, v4

    .line 120
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->desFunc([I[BI[BI)V

    .line 121
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->desFunc([I[BI[BI)V

    goto :goto_45

    .line 125
    :cond_2d
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p2

    move-object v4, v2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->desFunc([I[BI[BI)V

    move-object v2, v4

    .line 126
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->desFunc([I[BI[BI)V

    .line 127
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESBase;->desFunc([I[BI[BI)V

    :goto_45
    return v6

    .line 112
    :cond_46
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_4e
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DESede engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .registers 1

    .line 0
    return-void
.end method
