.class public Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;
.super Ljava/lang/Object;
.source "CBCBlockCipherMac.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Mac;


# instance fields
.field private buf:[B

.field private bufOff:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private mac:[B

.field private macSize:I

.field private padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    .line 34
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x8

    #@6
    div-int/lit8 v0, v0, 0x2

    #@8
    const/4 v1, 0x0

    #@9
    invoke-direct {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    #@c
    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "macSizeInBits"    # I

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    #@4
    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 2
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "macSizeInBits"    # I
    .param p3, "padding"    # Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 90
    rem-int/lit8 v0, p2, 0x8

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "MAC size must be multiple of 8"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 95
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;

    #@13
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@16
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@18
    .line 96
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    #@1a
    .line 97
    div-int/lit8 v0, p2, 0x8

    #@1c
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    #@1e
    .line 99
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@21
    move-result v0

    #@22
    new-array v0, v0, [B

    #@24
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    #@26
    .line 101
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@29
    move-result v0

    #@2a
    new-array v0, v0, [B

    #@2c
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@2e
    .line 102
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@30
    .line 88
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V
    .locals 1
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .param p2, "padding"    # Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    #@0
    .prologue
    .line 48
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x8

    #@6
    div-int/lit8 v0, v0, 0x2

    #@8
    invoke-direct {p0, p1, v0, p2}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;ILcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;)V

    #@b
    .line 46
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 176
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@3
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@6
    move-result v0

    #@7
    .line 178
    .local v0, "blockSize":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    #@9
    if-nez v1, :cond_0

    #@b
    .line 183
    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@d
    if-ge v1, v0, :cond_2

    #@f
    .line 185
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@11
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@13
    aput-byte v4, v1, v2

    #@15
    .line 186
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@17
    add-int/lit8 v1, v1, 0x1

    #@19
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@1b
    goto :goto_0

    #@1c
    .line 191
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@1e
    if-ne v1, v0, :cond_1

    #@20
    .line 193
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@22
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@24
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    #@26
    invoke-interface {v1, v2, v4, v3, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@29
    .line 194
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@2b
    .line 197
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->padding:Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;

    #@2d
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@2f
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@31
    invoke-interface {v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/paddings/BlockCipherPadding;->addPadding([BI)I

    #@34
    .line 200
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@36
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@38
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    #@3a
    invoke-interface {v1, v2, v4, v3, v4}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@3d
    .line 202
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    #@3f
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    #@41
    invoke-static {v1, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@44
    .line 204
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    #@47
    .line 206
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    #@49
    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    #@0
    .prologue
    .line 120
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->macSize:I

    #@2
    return v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->reset()V

    #@3
    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@5
    const/4 v1, 0x1

    #@6
    invoke-interface {v0, v1, p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@9
    .line 111
    return-void
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 217
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 219
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@9
    aput-byte v2, v1, v0

    #@b
    .line 217
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 222
    :cond_0
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@10
    .line 227
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@12
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    #@15
    .line 212
    return-void
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 126
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@3
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@5
    array-length v1, v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 128
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@a
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@c
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    #@e
    invoke-interface {v0, v1, v3, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@11
    .line 129
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@13
    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@15
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@17
    add-int/lit8 v2, v1, 0x1

    #@19
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@1b
    aput-byte p1, v0, v1

    #@1d
    .line 124
    return-void
.end method

.method public update([BII)V
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 140
    if-gez p3, :cond_0

    #@3
    .line 142
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5
    const-string/jumbo v3, "Can\'t have a negative input length!"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 145
    :cond_0
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@e
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@11
    move-result v0

    #@12
    .line 146
    .local v0, "blockSize":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@14
    sub-int v1, v0, v2

    #@16
    .line 148
    .local v1, "gapLen":I
    if-le p3, v1, :cond_1

    #@18
    .line 150
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@1a
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@1c
    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1f
    .line 152
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@21
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@23
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    #@25
    invoke-interface {v2, v3, v5, v4, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@28
    .line 154
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@2a
    .line 155
    sub-int/2addr p3, v1

    #@2b
    .line 156
    add-int/2addr p2, v1

    #@2c
    .line 158
    :goto_0
    if-le p3, v0, :cond_1

    #@2e
    .line 160
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@30
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->mac:[B

    #@32
    invoke-interface {v2, p1, p2, v3, v5}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@35
    .line 162
    sub-int/2addr p3, v0

    #@36
    .line 163
    add-int/2addr p2, v0

    #@37
    goto :goto_0

    #@38
    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->buf:[B

    #@3a
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@3c
    invoke-static {p1, p2, v2, v3, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3f
    .line 169
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@41
    add-int/2addr v2, p3

    #@42
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;->bufOff:I

    #@44
    .line 138
    return-void
.end method
