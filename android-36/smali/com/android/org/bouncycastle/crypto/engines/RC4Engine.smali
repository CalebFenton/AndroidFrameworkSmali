.class public Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;
.source "RC4Engine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/StreamCipher;


# instance fields
.field private blacklist engineState:[B

.field private blacklist forEncryption:Z

.field private blacklist workingKey:[B

.field private blacklist x:I

.field private blacklist y:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/4 v1, 0x0

    .line 26
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 27
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 28
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method private blacklist setKey([B)V
    .registers 9

    .line 130
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 135
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 137
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    const/16 v2, 0x100

    if-nez v1, :cond_11

    .line 139
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    :cond_11
    move v1, v0

    :goto_12
    if-ge v1, v2, :cond_1c

    .line 145
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_1c
    move v1, v0

    move v3, v1

    :goto_1e
    if-ge v0, v2, :cond_39

    .line 153
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v6, v5, v0

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    and-int/lit16 v3, v4, 0xff

    .line 156
    aget-byte v4, v5, v3

    aput-byte v4, v5, v0

    .line 157
    aput-byte v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    .line 158
    array-length v4, p1

    rem-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_39
    return-void
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 69
    const-string p0, "RC4"

    return-object p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    .line 48
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_25

    .line 55
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    .line 56
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->forEncryption:Z

    .line 57
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    .line 59
    new-instance v0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x14

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object p1

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    .line 64
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameter passed to RC4 init - "

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

.method public blacklist processBytes([BII[BI)I
    .registers 12

    add-int v0, p2, p3

    .line 93
    array-length v1, p1

    if-gt v0, v1, :cond_43

    add-int v0, p5, p3

    .line 98
    array-length v1, p4

    if-gt v0, v1, :cond_3b

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p3, :cond_3a

    .line 105
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->x:I

    .line 106
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->engineState:[B

    aget-byte v3, v2, v1

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v4, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->y:I

    .line 110
    aget-byte v5, v2, v4

    aput-byte v5, v2, v1

    .line 111
    aput-byte v3, v2, v4

    add-int v4, v0, p5

    add-int v5, v0, p2

    .line 114
    aget-byte v5, p1, v5

    aget-byte v1, v2, v1

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    xor-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p4, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_3a
    return p3

    .line 100
    :cond_3b
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_43
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reset()V
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->workingKey:[B

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/engines/RC4Engine;->setKey([B)V

    return-void
.end method
