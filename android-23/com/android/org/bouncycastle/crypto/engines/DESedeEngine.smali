.class public Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;
.super Lcom/android/org/bouncycastle/crypto/engines/DESEngine;
.source "DESedeEngine.java"


# static fields
.field protected static final BLOCK_SIZE:I = 0x8


# instance fields
.field private forEncryption:Z

.field private workingKey1:[I

.field private workingKey2:[I

.field private workingKey3:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 25
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/engines/DESEngine;-><init>()V

    #@4
    .line 16
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    #@6
    .line 17
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    #@8
    .line 18
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    #@a
    .line 25
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 77
    const-string/jumbo v0, "DESede"

    #@3
    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 82
    const/16 v0, 0x8

    #@2
    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 9
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    const/16 v8, 0x18

    #@2
    const/16 v7, 0x10

    #@4
    const/16 v6, 0x8

    #@6
    const/4 v5, 0x0

    #@7
    .line 41
    instance-of v4, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@9
    if-nez v4, :cond_0

    #@b
    .line 43
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v5, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v6, "invalid parameter passed to DESede init - "

    #@15
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@20
    move-result-object v6

    #@21
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 46
    :cond_0
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@2f
    .end local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@32
    move-result-object v3

    #@33
    .line 48
    .local v3, "keyMaster":[B
    array-length v4, v3

    #@34
    if-eq v4, v8, :cond_1

    #@36
    array-length v4, v3

    #@37
    if-eq v4, v7, :cond_1

    #@39
    .line 50
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@3b
    const-string/jumbo v5, "key size must be 16 or 24 bytes."

    #@3e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@41
    throw v4

    #@42
    .line 53
    :cond_1
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    #@44
    .line 55
    new-array v0, v6, [B

    #@46
    .line 56
    .local v0, "key1":[B
    array-length v4, v0

    #@47
    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4a
    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    #@4d
    move-result-object v4

    #@4e
    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    #@50
    .line 59
    new-array v1, v6, [B

    #@52
    .line 60
    .local v1, "key2":[B
    array-length v4, v1

    #@53
    invoke-static {v3, v6, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@56
    .line 61
    if-eqz p1, :cond_2

    #@58
    move v4, v5

    #@59
    :goto_0
    invoke-virtual {p0, v4, v1}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    #@5c
    move-result-object v4

    #@5d
    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    #@5f
    .line 63
    array-length v4, v3

    #@60
    if-ne v4, v8, :cond_3

    #@62
    .line 65
    new-array v2, v6, [B

    #@64
    .line 66
    .local v2, "key3":[B
    array-length v4, v2

    #@65
    invoke-static {v3, v7, v2, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@68
    .line 67
    invoke-virtual {p0, p1, v2}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    #@6b
    move-result-object v4

    #@6c
    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    #@6e
    .line 39
    .end local v2    # "key3":[B
    :goto_1
    return-void

    #@6f
    .line 61
    :cond_2
    const/4 v4, 0x1

    #@70
    goto :goto_0

    #@71
    .line 71
    :cond_3
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    #@73
    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    #@75
    goto :goto_1
.end method

.method public processBlock([BI[BI)I
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I

    #@0
    .prologue
    const/16 v8, 0x8

    #@2
    const/4 v5, 0x0

    #@3
    .line 91
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "DESede engine not initialised"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 96
    :cond_0
    add-int/lit8 v0, p2, 0x8

    #@12
    array-length v1, p1

    #@13
    if-le v0, v1, :cond_1

    #@15
    .line 98
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@17
    const-string/jumbo v1, "input buffer too short"

    #@1a
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 101
    :cond_1
    add-int/lit8 v0, p4, 0x8

    #@20
    array-length v1, p3

    #@21
    if-le v0, v1, :cond_2

    #@23
    .line 103
    new-instance v0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@25
    const-string/jumbo v1, "output buffer too short"

    #@28
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 106
    :cond_2
    new-array v4, v8, [B

    #@2e
    .line 108
    .local v4, "temp":[B
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    #@30
    if-eqz v0, :cond_3

    #@32
    .line 110
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    #@34
    move-object v0, p0

    #@35
    move-object v2, p1

    #@36
    move v3, p2

    #@37
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    #@3a
    .line 111
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    #@3c
    move-object v2, p0

    #@3d
    move-object v6, v4

    #@3e
    move v7, v5

    #@3f
    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    #@42
    .line 112
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    #@44
    move-object v2, p0

    #@45
    move-object v6, p3

    #@46
    move v7, p4

    #@47
    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    #@4a
    .line 121
    :goto_0
    return v8

    #@4b
    .line 116
    :cond_3
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    #@4d
    move-object v0, p0

    #@4e
    move-object v2, p1

    #@4f
    move v3, p2

    #@50
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    #@53
    .line 117
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    #@55
    move-object v2, p0

    #@56
    move-object v6, v4

    #@57
    move v7, v5

    #@58
    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    #@5b
    .line 118
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    #@5d
    move-object v2, p0

    #@5e
    move-object v6, p3

    #@5f
    move v7, p4

    #@60
    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    #@63
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    #@0
    .prologue
    .line 124
    return-void
.end method
