.class public Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/CCMModeCipher;


# instance fields
.field private blacklist associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blacklist blockSize:I

.field private blacklist cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private blacklist data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blacklist forEncryption:Z

.field private blacklist initialAssociatedText:[B

.field private blacklist keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private blacklist macBlock:[B

.field private blacklist macSize:I

.field private blacklist nonce:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 56
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 57
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    .line 58
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/16 p0, 0x10

    if-ne p1, p0, :cond_22

    return-void

    .line 62
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cipher required with a block size of 16."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist calculateMac([BII[B)I
    .registers 15

    .line 365
    new-instance v0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    .line 367
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    const/16 v1, 0x10

    .line 372
    new-array v2, v1, [B

    .line 374
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_22

    .line 376
    aget-byte v3, v2, v4

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 379
    :cond_22
    aget-byte v3, v2, v4

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v5

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    div-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 381
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v7, v5

    rsub-int/lit8 v7, v7, 0xe

    and-int/lit8 v7, v7, 0x7

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 383
    array-length v3, v5

    const/4 v7, 0x1

    invoke-static {v5, v4, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, p3

    move v5, v7

    :goto_45
    if-lez v3, :cond_52

    rsub-int/lit8 v8, v5, 0x10

    and-int/lit16 v9, v3, 0xff

    int-to-byte v9, v9

    .line 389
    aput-byte v9, v2, v8

    ushr-int/lit8 v3, v3, 0x8

    add-int/2addr v5, v7

    goto :goto_45

    .line 394
    :cond_52
    invoke-interface {v0, v2, v4, v1}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 399
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 403
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v2

    const v3, 0xff00

    if-ge v2, v3, :cond_6f

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 406
    invoke-interface {v0, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    int-to-byte v3, v2

    .line 407
    invoke-interface {v0, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    goto :goto_8e

    :cond_6f
    const/4 v3, -0x1

    .line 413
    invoke-interface {v0, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    const/4 v3, -0x2

    .line 414
    invoke-interface {v0, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v3, v2, 0x18

    int-to-byte v3, v3

    .line 415
    invoke-interface {v0, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    .line 416
    invoke-interface {v0, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    shr-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    .line 417
    invoke-interface {v0, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    int-to-byte v3, v2

    .line 418
    invoke-interface {v0, v3}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    const/4 v6, 0x6

    .line 423
    :goto_8e
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-eqz v3, :cond_96

    .line 425
    array-length v5, v3

    invoke-interface {v0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 427
    :cond_96
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-lez v3, :cond_ad

    .line 429
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v3

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    invoke-interface {v0, v3, v4, p0}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    :cond_ad
    add-int/2addr v6, v2

    .line 432
    rem-int/2addr v6, v1

    if-eqz v6, :cond_b9

    :goto_b1
    if-eq v6, v1, :cond_b9

    .line 437
    invoke-interface {v0, v4}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b1

    .line 445
    :cond_b9
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 447
    invoke-interface {v0, p4, v4}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result p0

    return p0
.end method

.method private blacklist getAssociatedTextLength()I
    .registers 2

    .line 462
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-nez p0, :cond_c

    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    array-length p0, p0

    :goto_d
    add-int/2addr v0, p0

    return v0
.end method

.method private blacklist getMacSize(ZI)I
    .registers 3

    if-eqz p1, :cond_17

    const/16 p0, 0x20

    if-lt p2, p0, :cond_f

    const/16 p0, 0x80

    if-gt p2, p0, :cond_f

    and-int/lit8 p0, p2, 0xf

    if-nez p0, :cond_f

    goto :goto_17

    .line 454
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "tag length in octets must be one of {4,6,8,10,12,14,16}"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_17
    ushr-int/lit8 p0, p2, 0x3

    return p0
.end method

.method private blacklist hasAssociatedText()Z
    .registers 1

    .line 467
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CCMModeCipher;
    .registers 2

    .line 45
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 10

    .line 159
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v2

    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    move-result p0

    .line 161
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/CCM"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMac()[B
    .registers 4

    .line 181
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v1, v0, [B

    .line 183
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public blacklist getOutputSize(I)I
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr p1, v0

    .line 197
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_f

    .line 199
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr p1, p0

    return p1

    .line 202
    :cond_f
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge p1, p0, :cond_15

    const/4 p0, 0x0

    return p0

    :cond_15
    sub-int/2addr p1, p0

    return p1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    return-object p0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4

    .line 80
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    .line 83
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_23

    .line 85
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    .line 87
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 88
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 89
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 90
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object p1

    goto :goto_3e

    .line 92
    :cond_23
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_5b

    .line 94
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 96
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    const/16 v0, 0x40

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result p1

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 99
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    :goto_3e
    if-eqz p1, :cond_42

    .line 109
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 112
    :cond_42
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    if-eqz p1, :cond_53

    array-length p2, p1

    const/4 v0, 0x7

    if-lt p2, v0, :cond_53

    array-length p1, p1

    const/16 p2, 0xd

    if-gt p1, p2, :cond_53

    .line 117
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    return-void

    .line 114
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nonce must have length from 7 to 13 octets"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid parameters passed to CCM: "

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

.method public blacklist processAADBytes([BII)V
    .registers 4

    .line 133
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 6

    .line 147
    array-length p4, p1

    add-int p5, p2, p3

    if-lt p4, p5, :cond_c

    .line 151
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p0, 0x0

    return p0

    .line 149
    :cond_c
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "Input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist processPacket([BII[BI)I
    .registers 15

    .line 256
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    if-eqz v0, :cond_ec

    .line 261
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v1, v0

    rsub-int/lit8 v2, v1, 0xf

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1c

    mul-int/lit8 v2, v2, 0x8

    shl-int v2, v4, v2

    if-ge p3, v2, :cond_14

    goto :goto_1c

    .line 268
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CCM packet too large for choice of q."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 272
    :cond_1c
    :goto_1c
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v2, v2, [B

    rsub-int/lit8 v1, v1, 0xe

    and-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    const/4 v3, 0x0

    .line 273
    aput-byte v1, v2, v3

    .line 274
    array-length v1, v0

    invoke-static {v0, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v0

    .line 277
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    invoke-direct {v4, v5, v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v1, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 283
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    const-string v2, "Output buffer too short."

    if-eqz v1, :cond_85

    .line 285
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v1, p3

    .line 286
    array-length v4, p4

    add-int v5, v1, p5

    if-lt v4, v5, :cond_7f

    .line 291
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 293
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v2, v2, [B

    .line 295
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v0, v4, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v4, p2

    move v5, p5

    :goto_5c
    add-int v6, p2, p3

    .line 297
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int v8, v6, v7

    if-ge v4, v8, :cond_6c

    .line 299
    invoke-interface {v0, p1, v4, p4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 300
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v5, v6

    add-int/2addr v4, v6

    goto :goto_5c

    .line 304
    :cond_6c
    new-array p2, v7, [B

    sub-int/2addr v6, v4

    .line 306
    invoke-static {p1, v4, p2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    invoke-interface {v0, p2, v3, p2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 310
    invoke-static {p2, v3, p4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p5, p3

    .line 312
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {v2, v3, p4, p5, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1

    .line 288
    :cond_7f
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_85
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt p3, v1, :cond_e4

    sub-int/2addr p3, v1

    .line 321
    array-length v4, p4

    add-int v5, p3, p5

    if-lt v4, v5, :cond_de

    add-int v2, p2, p3

    .line 326
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {p1, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v0, v1, v3, v1, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 330
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    :goto_9d
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v5, v4

    if-eq v1, v5, :cond_a7

    .line 332
    aput-byte v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9d

    :cond_a7
    move v1, p2

    move v4, p5

    .line 335
    :goto_a9
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int v6, v2, v5

    if-ge v1, v6, :cond_b7

    .line 337
    invoke-interface {v0, p1, v1, p4, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 338
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v4, v5

    add-int/2addr v1, v5

    goto :goto_a9

    .line 342
    :cond_b7
    new-array v2, v5, [B

    sub-int p2, v1, p2

    sub-int p2, p3, p2

    .line 344
    invoke-static {p1, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    invoke-interface {v0, v2, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 348
    invoke-static {v2, v3, p4, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array p1, p1, [B

    .line 352
    invoke-direct {p0, p4, p5, p3, p1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 354
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result p0

    if-eqz p0, :cond_d6

    return p3

    .line 356
    :cond_d6
    new-instance p0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "mac check in CCM failed"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 323
    :cond_de
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 318
    :cond_e4
    new-instance p0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p1, "data too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 258
    :cond_ec
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "CCM cipher unitialized."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist reset()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 169
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 170
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method
