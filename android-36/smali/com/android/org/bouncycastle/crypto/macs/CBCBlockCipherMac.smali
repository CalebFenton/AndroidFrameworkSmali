.class public Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;
.super Ljava/lang/Object;
.source "CBCBlockCipherMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Mac;


# instance fields
.field private blacklist buf:[B

.field private blacklist bufOff:I

.field private blacklist cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private blacklist mac:[B

.field private blacklist macSize:I

.field private blacklist padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 4

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_27

    .line 97
    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lcom/android/org/bouncycastle/crypto/BlockCipher;)Lcom/android/org/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    .line 98
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 99
    div-int/lit8 p2, p2, 0x8

    iput p2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    .line 101
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    .line 103
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    return-void

    .line 94
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "MAC size must be multiple of 8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 7

    .line 178
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x0

    if-nez v1, :cond_18

    .line 185
    :goto_b
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_30

    .line 187
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    .line 188
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    goto :goto_b

    .line 193
    :cond_18
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ne v1, v0, :cond_27

    .line 195
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 196
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 199
    :cond_27
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-interface {v0, v1, v3}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 202
    :cond_30
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v0, v1, v2, v3, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 204
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 208
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMacSize()I
    .registers 1

    .line 122
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return p0
.end method

.method public blacklist init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 3

    .line 115
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 117
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method

.method public blacklist reset()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 219
    :goto_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v3, v2

    if-ge v1, v3, :cond_c

    .line 221
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 224
    :cond_c
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 229
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    return-void
.end method

.method public blacklist update(B)V
    .registers 6

    .line 128
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v2, v1

    if-ne v0, v2, :cond_11

    .line 130
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 131
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 134
    :cond_11
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public blacklist update([BII)V
    .registers 10

    if-ltz p3, :cond_3a

    .line 147
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 148
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    sub-int v2, v0, v1

    if-le p3, v2, :cond_2d

    .line 152
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    invoke-static {p1, p2, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5, v4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 156
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_21
    if-le p3, v0, :cond_2d

    .line 162
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, p1, p2, v2, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_21

    .line 169
    :cond_2d
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget p1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    return-void

    .line 144
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t have a negative input length!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
