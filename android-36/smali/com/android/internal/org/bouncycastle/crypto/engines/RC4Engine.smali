.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;
.source "RC4Engine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/StreamCipher;


# static fields
.field private static final blacklist STATE_LENGTH:I = 0x100


# instance fields
.field private blacklist engineState:[B

.field private blacklist forEncryption:Z

.field private blacklist workingKey:[B

.field private blacklist x:I

.field private blacklist y:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    .line 26
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 27
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 28
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 34
    return-void
.end method

.method private blacklist setKey([B)V
    .registers 9
    .param p1, "keyBytes"    # [B

    .line 130
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 135
    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 137
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/16 v1, 0x100

    if-nez v0, :cond_11

    .line 139
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    .line 143
    :cond_11
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_1c

    .line 145
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    int-to-byte v3, v0

    aput-byte v3, v2, v0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 148
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    .line 149
    .local v0, "i1":I
    const/4 v2, 0x0

    .line 151
    .local v2, "i2":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v1, :cond_45

    .line 153
    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v5, v5, v3

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    and-int/lit16 v2, v4, 0xff

    .line 155
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v4, v4, v3

    .line 156
    .local v4, "tmp":B
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v6, v6, v2

    aput-byte v6, v5, v3

    .line 157
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aput-byte v4, v5, v2

    .line 158
    add-int/lit8 v5, v0, 0x1

    array-length v6, p1

    rem-int v0, v5, v6

    .line 151
    .end local v4    # "tmp":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 160
    .end local v3    # "i":I
    :cond_45
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 69
    const-string v0, "RC4"

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 48
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_27

    .line 55
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 56
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->forEncryption:Z

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    .line 59
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 61
    return-void

    .line 64
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC4 init - "

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

.method public blacklist processBytes([BII[BI)I
    .registers 14
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .line 93
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_63

    .line 98
    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_5b

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, p3, :cond_5a

    .line 105
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 106
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 109
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    .line 110
    .local v1, "tmp":B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    .line 111
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v1, v2, v3

    .line 114
    add-int v2, v0, p5

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v5, v5, v6

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v6, v6, v7

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, v2

    .line 103
    .end local v1    # "tmp":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 118
    .end local v0    # "i":I
    :cond_5a
    return p3

    .line 100
    :cond_5b
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_63
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    .line 124
    return-void
.end method

.method public blacklist returnByte(B)B
    .registers 7
    .param p1, "in"    # B

    .line 74
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 75
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v0, v0, v1

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 78
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v0, v0, v1

    .line 79
    .local v0, "tmp":B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 80
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v0, v1, v2

    .line 83
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v3, v3, v4

    add-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v1, v1

    return v1
.end method
