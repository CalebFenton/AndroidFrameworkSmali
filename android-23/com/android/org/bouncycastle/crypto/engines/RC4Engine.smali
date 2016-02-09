.class public Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;
.source "RC4Engine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final STATE_LENGTH:I = 0x100


# instance fields
.field private engineState:[B

.field private workingKey:[B

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 18
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@7
    .line 19
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@9
    .line 20
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@b
    .line 21
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    #@d
    .line 9
    return-void
.end method

.method private setKey([B)V
    .locals 7
    .param p1, "keyBytes"    # [B

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/16 v6, 0x100

    #@3
    .line 115
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    #@5
    .line 119
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@7
    .line 120
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@9
    .line 122
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@b
    if-nez v4, :cond_0

    #@d
    .line 124
    new-array v4, v6, [B

    #@f
    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@11
    .line 128
    :cond_0
    const/4 v0, 0x0

    #@12
    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_1

    #@14
    .line 130
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@16
    int-to-byte v5, v0

    #@17
    aput-byte v5, v4, v0

    #@19
    .line 128
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 133
    :cond_1
    const/4 v1, 0x0

    #@1d
    .line 134
    .local v1, "i1":I
    const/4 v2, 0x0

    #@1e
    .line 136
    .local v2, "i2":I
    const/4 v0, 0x0

    #@1f
    :goto_1
    if-ge v0, v6, :cond_2

    #@21
    .line 138
    aget-byte v4, p1, v1

    #@23
    and-int/lit16 v4, v4, 0xff

    #@25
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@27
    aget-byte v5, v5, v0

    #@29
    add-int/2addr v4, v5

    #@2a
    add-int/2addr v4, v2

    #@2b
    and-int/lit16 v2, v4, 0xff

    #@2d
    .line 140
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@2f
    aget-byte v3, v4, v0

    #@31
    .line 141
    .local v3, "tmp":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@33
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@35
    aget-byte v5, v5, v2

    #@37
    aput-byte v5, v4, v0

    #@39
    .line 142
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@3b
    aput-byte v3, v4, v2

    #@3d
    .line 143
    add-int/lit8 v4, v1, 0x1

    #@3f
    array-length v5, p1

    #@40
    rem-int v1, v4, v5

    #@42
    .line 136
    add-int/lit8 v0, v0, 0x1

    #@44
    goto :goto_1

    #@45
    .line 113
    .end local v3    # "tmp":B
    :cond_2
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 54
    const-string/jumbo v0, "RC4"

    #@3
    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 36
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 43
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@6
    .end local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    #@c
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    #@e
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    #@11
    .line 46
    return-void

    #@12
    .line 49
    .restart local p2    # "params":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "invalid parameter passed to RC4 init - "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
.end method

.method public processBytes([BII[BI)I
    .locals 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    #@0
    .prologue
    .line 78
    add-int v2, p2, p3

    #@2
    array-length v3, p1

    #@3
    if-le v2, v3, :cond_0

    #@5
    .line 80
    new-instance v2, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@7
    const-string/jumbo v3, "input buffer too short"

    #@a
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@d
    throw v2

    #@e
    .line 83
    :cond_0
    add-int v2, p5, p3

    #@10
    array-length v3, p4

    #@11
    if-le v2, v3, :cond_1

    #@13
    .line 85
    new-instance v2, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@15
    const-string/jumbo v3, "output buffer too short"

    #@18
    invoke-direct {v2, v3}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 88
    :cond_1
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    #@1f
    .line 90
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@21
    add-int/lit8 v2, v2, 0x1

    #@23
    and-int/lit16 v2, v2, 0xff

    #@25
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@27
    .line 91
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@29
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@2b
    aget-byte v2, v2, v3

    #@2d
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@2f
    add-int/2addr v2, v3

    #@30
    and-int/lit16 v2, v2, 0xff

    #@32
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@34
    .line 94
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@36
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@38
    aget-byte v1, v2, v3

    #@3a
    .line 95
    .local v1, "tmp":B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@3c
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@3e
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@40
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@42
    aget-byte v4, v4, v5

    #@44
    aput-byte v4, v2, v3

    #@46
    .line 96
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@48
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@4a
    aput-byte v1, v2, v3

    #@4c
    .line 99
    add-int v2, v0, p5

    #@4e
    add-int v3, v0, p2

    #@50
    aget-byte v3, p1, v3

    #@52
    .line 100
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@54
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@56
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@58
    aget-byte v5, v5, v6

    #@5a
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@5c
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@5e
    aget-byte v6, v6, v7

    #@60
    add-int/2addr v5, v6

    #@61
    and-int/lit16 v5, v5, 0xff

    #@63
    aget-byte v4, v4, v5

    #@65
    .line 99
    xor-int/2addr v3, v4

    #@66
    int-to-byte v3, v3

    #@67
    aput-byte v3, p4, v2

    #@69
    .line 88
    add-int/lit8 v0, v0, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 103
    .end local v1    # "tmp":B
    :cond_2
    return p3
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    #@2
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    #@5
    .line 106
    return-void
.end method

.method public returnByte(B)B
    .locals 5
    .param p1, "in"    # B

    #@0
    .prologue
    .line 59
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@2
    add-int/lit8 v1, v1, 0x1

    #@4
    and-int/lit16 v1, v1, 0xff

    #@6
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@8
    .line 60
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@a
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@c
    aget-byte v1, v1, v2

    #@e
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@10
    add-int/2addr v1, v2

    #@11
    and-int/lit16 v1, v1, 0xff

    #@13
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@15
    .line 63
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@17
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@19
    aget-byte v0, v1, v2

    #@1b
    .line 64
    .local v0, "tmp":B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@1d
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@1f
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@21
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@23
    aget-byte v3, v3, v4

    #@25
    aput-byte v3, v1, v2

    #@27
    .line 65
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@29
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@2b
    aput-byte v0, v1, v2

    #@2d
    .line 68
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@2f
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@31
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    #@33
    aget-byte v2, v2, v3

    #@35
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    #@37
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    #@39
    aget-byte v3, v3, v4

    #@3b
    add-int/2addr v2, v3

    #@3c
    and-int/lit16 v2, v2, 0xff

    #@3e
    aget-byte v1, v1, v2

    #@40
    xor-int/2addr v1, p1

    #@41
    int-to-byte v1, v1

    #@42
    return v1
.end method
