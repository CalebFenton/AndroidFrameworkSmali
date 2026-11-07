.class public Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/DefaultMultiBlockCipher;
.source "CBCBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;


# instance fields
.field private blacklist IV:[B

.field private blacklist blockSize:I

.field private blacklist cbcNextV:[B

.field private blacklist cbcV:[B

.field private blacklist cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private blacklist encrypting:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    .line 45
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/DefaultMultiBlockCipher;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 47
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    .line 49
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    .line 50
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 51
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    return-void
.end method

.method private blacklist decryptBlock([BI[BI)I
    .registers 8

    .line 232
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int v1, p2, v0

    array-length v2, p1

    if-gt v1, v2, :cond_2f

    .line 237
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    .line 244
    :goto_13
    iget p2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v2, p2, :cond_26

    add-int p2, p4, v2

    .line 246
    aget-byte v0, p3, p2

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v1, v1, v2

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p3, p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 254
    :cond_26
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 255
    iget-object p3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    .line 256
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    return p1

    .line 234
    :cond_2f
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist encryptBlock([BI[BI)I
    .registers 10

    .line 189
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_2a

    const/4 v0, 0x0

    move v1, v0

    .line 198
    :goto_8
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ge v1, v2, :cond_1b

    .line 200
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    aget-byte v3, v2, v1

    add-int v4, p2, v1

    aget-byte v4, p1, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 203
    :cond_1b
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    invoke-interface {p1, p2, v0, p3, p4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move-result p1

    .line 208
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length p2, p0

    invoke-static {p3, p4, p0, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p1

    .line 191
    :cond_2a
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;
    .registers 2

    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/CBC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBlockSize()I
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 8

    .line 79
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 81
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    .line 83
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 85
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 86
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 88
    array-length v3, v1

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->blockSize:I

    if-ne v3, v4, :cond_1f

    .line 93
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    array-length v4, v1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    goto :goto_2c

    .line 90
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "initialisation vector must be the same length as block size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_27
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 102
    :goto_2c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->reset()V

    if-eqz p2, :cond_37

    .line 107
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_37
    if-ne v0, p1, :cond_3a

    return-void

    .line 111
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot change encrypting state without providing key."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 6

    .line 155
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encrypting:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->encryptBlock([BI[BI)I

    move-result p0

    return p0

    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->decryptBlock([BI[BI)I

    move-result p0

    return p0
.end method

.method public blacklist reset()V
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcV:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cbcNextV:[B

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 167
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
