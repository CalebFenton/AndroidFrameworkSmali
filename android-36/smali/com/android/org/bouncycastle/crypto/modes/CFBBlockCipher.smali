.class public Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.source "CFBBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/CFBModeCipher;


# instance fields
.field private blacklist IV:[B

.field private blacklist blockSize:I

.field private blacklist byteCount:I

.field private blacklist cfbOutV:[B

.field private blacklist cfbV:[B

.field private blacklist cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private blacklist encrypting:Z

.field private blacklist inBuf:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 5

    .line 52
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 54
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    if-gt p2, v0, :cond_39

    if-lt p2, v1, :cond_39

    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_39

    .line 59
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 60
    div-int/2addr p2, v1

    iput p2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    .line 62
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    .line 63
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    .line 64
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    .line 65
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    return-void

    .line 56
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CFB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not supported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist decryptByte(B)B
    .registers 6

    .line 165
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 167
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 170
    :cond_e
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte p1, v0, v2

    .line 171
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    .line 173
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v3, v0, :cond_36

    .line 175
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 177
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v2

    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v3, p0

    invoke-static {v0, v1, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    return p1
.end method

.method private blacklist encryptByte(B)B
    .registers 6

    .line 144
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 149
    :cond_e
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbOutV:[B

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aget-byte v0, v0, v2

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    .line 150
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    aput-byte p1, v0, v2

    .line 152
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    if-ne v3, v0, :cond_36

    .line 154
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 156
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v3, v2

    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    sub-int/2addr v3, p0

    invoke-static {v0, v1, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    return p1
.end method

.method public static blacklist newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)Lcom/android/org/bouncycastle/crypto/modes/CFBModeCipher;
    .registers 3

    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;

    invoke-direct {v0, p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    return-object v0
.end method


# virtual methods
.method protected blacklist calculateByte(B)B
    .registers 3

    .line 139
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encryptByte(B)B

    move-result p0

    return p0

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->decryptByte(B)B

    move-result p0

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/CFB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBlockSize()I
    .registers 1

    .line 191
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 9

    .line 84
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->encrypting:Z

    .line 86
    instance-of p1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    const/4 v0, 0x1

    if-eqz p1, :cond_3f

    .line 88
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 89
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    .line 91
    array-length v1, p1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_28

    .line 94
    array-length v1, v2

    array-length v3, p1

    sub-int/2addr v1, v3

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v4

    .line 95
    :goto_1c
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    array-length v3, v2

    array-length v5, p1

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_2c

    .line 97
    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 102
    :cond_28
    array-length v1, v2

    invoke-static {p1, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    :cond_2c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 108
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 110
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void

    .line 115
    :cond_3f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->reset()V

    if-eqz p2, :cond_49

    .line 120
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    :cond_49
    return-void
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 11

    .line 214
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;->processBytes([BII[BI)I

    .line 216
    iget p0, v0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->blockSize:I

    return p0
.end method

.method public blacklist reset()V
    .registers 5

    .line 283
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->IV:[B

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cfbV:[B

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->inBuf:[B

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 285
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->byteCount:I

    .line 287
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CFBBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method
