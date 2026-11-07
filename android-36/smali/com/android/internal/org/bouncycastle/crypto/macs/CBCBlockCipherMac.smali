.class public Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;
.super Ljava/lang/Object;
.source "CBCBlockCipherMac.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Mac;


# instance fields
.field private blacklist buf:[B

.field private blacklist bufOff:I

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist mac:[B

.field private blacklist macSize:I

.field private blacklist padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 36
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ILcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "macSizeInBits"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ILcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 71
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ILcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 6
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "macSizeInBits"    # I
    .param p3, "padding"    # Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_27

    .line 97
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 98
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 99
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    .line 101
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    .line 103
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 105
    return-void

    .line 94
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MAC size must be multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .param p2, "padding"    # Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    .line 50
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;ILcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 8
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 178
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 180
    .local v0, "blockSize":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    const/4 v2, 0x0

    if-nez v1, :cond_1c

    .line 185
    :goto_b
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ge v1, v0, :cond_34

    .line 187
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte v2, v1, v3

    .line 188
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    goto :goto_b

    .line 193
    :cond_1c
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    if-ne v1, v0, :cond_2b

    .line 195
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v3, v2, v4, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 196
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 199
    :cond_2b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-interface {v1, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    .line 202
    :cond_34
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v1, v3, v2, v4, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 204
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 208
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMacSize()I
    .registers 2

    .line 122
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    return v0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4
    .param p1, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    .line 117
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 118
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_e

    .line 221
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    aput-byte v2, v1, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    .end local v0    # "i":I
    :cond_e
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 229
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 230
    return-void
.end method

.method public blacklist update(B)V
    .registers 6
    .param p1, "in"    # B

    .line 128
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_13

    .line 130
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 131
    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 134
    :cond_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    aput-byte p1, v0, v1

    .line 135
    return-void
.end method

.method public blacklist update([BII)V
    .registers 10
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 142
    if-ltz p3, :cond_3c

    .line 147
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    .line 148
    .local v0, "blockSize":I
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    sub-int v1, v0, v1

    .line 150
    .local v1, "gapLen":I
    if-le p3, v1, :cond_2f

    .line 152
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 156
    iput v5, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 157
    sub-int/2addr p3, v1

    .line 158
    add-int/2addr p2, v1

    .line 160
    :goto_23
    if-le p3, v0, :cond_2f

    .line 162
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    invoke-interface {v2, p1, p2, v3, v5}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 164
    sub-int/2addr p3, v0

    .line 165
    add-int/2addr p2, v0

    goto :goto_23

    .line 169
    :cond_2f
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    add-int/2addr v2, p3

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    .line 172
    return-void

    .line 144
    .end local v0    # "blockSize":I
    .end local v1    # "gapLen":I
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a negative input length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
