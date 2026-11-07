.class public Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;
.super Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;
.source "SICBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/CTRModeCipher;


# instance fields
.field private blacklist IV:[B

.field private final blacklist blockSize:I

.field private blacklist byteCount:I

.field private final blacklist cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private blacklist counter:[B

.field private blacklist counterOut:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    .line 48
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/StreamBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    .line 50
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 51
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    .line 52
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 53
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    .line 54
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method

.method private blacklist checkLastIncrement()V
    .registers 4

    .line 210
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    array-length v1, v0

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge v1, v2, :cond_1e

    .line 212
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte p0, p0, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    if-ne p0, v0, :cond_16

    goto :goto_1e

    .line 214
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Counter in CTR/SIC mode out of range."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_1e
    return-void
.end method

.method private blacklist incrementCounter()V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_12

    .line 224
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    aget-byte v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    if-eqz v2, :cond_3

    :cond_12
    return-void
.end method

.method public static blacklist newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CTRModeCipher;
    .registers 2

    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist calculateByte(B)B
    .registers 6

    .line 172
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 174
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->checkLastIncrement()V

    .line 176
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v0, v2, v1, v3, v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 178
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte p0, v0, v1

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    return p0

    .line 181
    :cond_1e
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v0, v2, v0

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    .line 183
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v0, v0

    if-ne v3, v0, :cond_32

    .line 185
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 186
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    :cond_32
    return p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/SIC"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getBlockSize()I
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p0

    return p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7

    .line 63
    instance-of p1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz p1, :cond_70

    .line 65
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 66
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    .line 68
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    array-length v1, p1

    const-string v2, " bytes."

    if-lt v0, v1, :cond_54

    .line 73
    div-int/lit8 v1, v0, 0x2

    const/16 v3, 0x8

    if-le v3, v1, :cond_1f

    div-int/lit8 v3, v0, 0x2

    .line 75
    :cond_1f
    array-length p1, p1

    sub-int/2addr v0, p1

    if-gt v0, v3, :cond_37

    .line 81
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 83
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v0, 0x1

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 86
    :cond_33
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->reset()V

    return-void

    .line 77
    :cond_37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CTR/SIC mode requires IV of at least: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    sub-int/2addr p0, v3

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_54
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CTR/SIC mode requires IV no greater than: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CTR/SIC mode requires ParametersWithIV"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processBlock([BI[BI)I
    .registers 12

    .line 107
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    if-eqz v0, :cond_11

    .line 109
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->processBytes([BII[BI)I

    .line 110
    iget p0, v1, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return p0

    :cond_11
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    .line 113
    iget p0, v1, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    add-int p2, v3, p0

    array-length p1, v2

    if-gt p2, p1, :cond_4f

    add-int p4, v6, p0

    .line 117
    array-length p0, v5

    if-gt p4, p0, :cond_47

    .line 122
    iget-object p0, v1, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object p1, v1, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object p2, v1, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    const/4 p3, 0x0

    invoke-interface {p0, p1, p3, p2, p3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 123
    :goto_2c
    iget p0, v1, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    if-ge p3, p0, :cond_41

    add-int p4, v6, p3

    add-int p2, v3, p3

    .line 125
    aget-byte p0, v2, p2

    iget-object p1, v1, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    aget-byte p1, p1, p3

    xor-int/2addr p0, p1

    int-to-byte p0, p0

    aput-byte p0, v5, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2c

    .line 127
    :cond_41
    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    .line 128
    iget p0, v1, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->blockSize:I

    return p0

    .line 119
    :cond_47
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_4f
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too small"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 12

    add-int v0, p2, p3

    .line 134
    array-length v1, p1

    if-gt v0, v1, :cond_57

    add-int v0, p5, p3

    .line 138
    array-length v1, p4

    if-gt v0, v1, :cond_4f

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, p3, :cond_4e

    .line 147
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    if-nez v2, :cond_2f

    .line 149
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->checkLastIncrement()V

    .line 151
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    invoke-interface {v2, v3, v0, v4, v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int v2, p2, v1

    .line 152
    aget-byte v2, p1, v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    goto :goto_47

    :cond_2f
    add-int v3, p2, v1

    .line 156
    aget-byte v3, p1, v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counterOut:[B

    add-int/lit8 v5, v2, 0x1

    iput v5, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    aget-byte v2, v4, v2

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    .line 157
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v3

    if-ne v5, v3, :cond_47

    .line 159
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    .line 160
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->incrementCounter()V

    :cond_47
    :goto_47
    add-int v3, p5, v1

    .line 163
    aput-byte v2, p4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_4e
    return p3

    .line 140
    :cond_4f
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 136
    :cond_57
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too small"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reset()V
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 331
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->IV:[B

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->counter:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 333
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->byteCount:I

    return-void
.end method
