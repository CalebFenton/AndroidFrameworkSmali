.class public Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blockSize:I

.field private cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

.field private data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private forEncryption:Z

.field private initialAssociatedText:[B

.field private keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

.field private macBlock:[B

.field private macSize:I

.field private nonce:[B


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "c"    # Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 33
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@5
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@a
    .line 34
    new-instance v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@c
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>(Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;)V

    #@f
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@11
    .line 43
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@13
    .line 44
    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    #@16
    move-result v0

    #@17
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@19
    .line 45
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@1b
    new-array v0, v0, [B

    #@1d
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@1f
    .line 47
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@21
    const/16 v1, 0x10

    #@23
    if-eq v0, v1, :cond_0

    #@25
    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@27
    const-string/jumbo v1, "cipher required with a block size of 16."

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 41
    :cond_0
    return-void
.end method

.method private calculateMac([BII[B)I
    .locals 11
    .param p1, "data"    # [B
    .param p2, "dataOff"    # I
    .param p3, "dataLen"    # I
    .param p4, "macBlock"    # [B

    #@0
    .prologue
    .line 352
    new-instance v1, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    #@2
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@4
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@6
    mul-int/lit8 v8, v8, 0x8

    #@8
    invoke-direct {v1, v7, v8}, Lcom/android/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;I)V

    #@b
    .line 354
    .local v1, "cMac":Lcom/android/org/bouncycastle/crypto/Mac;
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@d
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@10
    .line 359
    const/16 v7, 0x10

    #@12
    new-array v0, v7, [B

    #@14
    .line 361
    .local v0, "b0":[B
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_0

    #@1a
    .line 363
    const/4 v7, 0x0

    #@1b
    aget-byte v8, v0, v7

    #@1d
    or-int/lit8 v8, v8, 0x40

    #@1f
    int-to-byte v8, v8

    #@20
    aput-byte v8, v0, v7

    #@22
    .line 366
    :cond_0
    const/4 v7, 0x0

    #@23
    aget-byte v8, v0, v7

    #@25
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Mac;->getMacSize()I

    #@28
    move-result v9

    #@29
    add-int/lit8 v9, v9, -0x2

    #@2b
    div-int/lit8 v9, v9, 0x2

    #@2d
    and-int/lit8 v9, v9, 0x7

    #@2f
    shl-int/lit8 v9, v9, 0x3

    #@31
    or-int/2addr v8, v9

    #@32
    int-to-byte v8, v8

    #@33
    aput-byte v8, v0, v7

    #@35
    .line 368
    const/4 v7, 0x0

    #@36
    aget-byte v8, v0, v7

    #@38
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@3a
    array-length v9, v9

    #@3b
    rsub-int/lit8 v9, v9, 0xf

    #@3d
    add-int/lit8 v9, v9, -0x1

    #@3f
    and-int/lit8 v9, v9, 0x7

    #@41
    or-int/2addr v8, v9

    #@42
    int-to-byte v8, v8

    #@43
    aput-byte v8, v0, v7

    #@45
    .line 370
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@47
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@49
    array-length v8, v8

    #@4a
    const/4 v9, 0x0

    #@4b
    const/4 v10, 0x1

    #@4c
    invoke-static {v7, v9, v0, v10, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4f
    .line 372
    move v5, p3

    #@50
    .line 373
    .local v5, "q":I
    const/4 v2, 0x1

    #@51
    .line 374
    .local v2, "count":I
    :goto_0
    if-lez v5, :cond_1

    #@53
    .line 376
    array-length v7, v0

    #@54
    sub-int/2addr v7, v2

    #@55
    and-int/lit16 v8, v5, 0xff

    #@57
    int-to-byte v8, v8

    #@58
    aput-byte v8, v0, v7

    #@5a
    .line 377
    ushr-int/lit8 v5, v5, 0x8

    #@5c
    .line 378
    add-int/lit8 v2, v2, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 381
    :cond_1
    array-length v7, v0

    #@60
    const/4 v8, 0x0

    #@61
    invoke-interface {v1, v0, v8, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@64
    .line 386
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    #@67
    move-result v7

    #@68
    if-eqz v7, :cond_5

    #@6a
    .line 390
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    #@6d
    move-result v6

    #@6e
    .line 391
    .local v6, "textLength":I
    const v7, 0xff00

    #@71
    if-ge v6, v7, :cond_4

    #@73
    .line 393
    shr-int/lit8 v7, v6, 0x8

    #@75
    int-to-byte v7, v7

    #@76
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@79
    .line 394
    int-to-byte v7, v6

    #@7a
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@7d
    .line 396
    const/4 v3, 0x2

    #@7e
    .line 410
    .local v3, "extra":I
    :goto_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    #@80
    if-eqz v7, :cond_2

    #@82
    .line 412
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    #@84
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    #@86
    array-length v8, v8

    #@87
    const/4 v9, 0x0

    #@88
    invoke-interface {v1, v7, v9, v8}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@8b
    .line 414
    :cond_2
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@8d
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    #@90
    move-result v7

    #@91
    if-lez v7, :cond_3

    #@93
    .line 416
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@95
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    #@98
    move-result-object v7

    #@99
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@9b
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    #@9e
    move-result v8

    #@9f
    const/4 v9, 0x0

    #@a0
    invoke-interface {v1, v7, v9, v8}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@a3
    .line 419
    :cond_3
    add-int v7, v3, v6

    #@a5
    rem-int/lit8 v3, v7, 0x10

    #@a7
    .line 420
    if-eqz v3, :cond_5

    #@a9
    .line 422
    move v4, v3

    #@aa
    .local v4, "i":I
    :goto_2
    const/16 v7, 0x10

    #@ac
    if-eq v4, v7, :cond_5

    #@ae
    .line 424
    const/4 v7, 0x0

    #@af
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@b2
    .line 422
    add-int/lit8 v4, v4, 0x1

    #@b4
    goto :goto_2

    #@b5
    .line 400
    .end local v3    # "extra":I
    .end local v4    # "i":I
    :cond_4
    const/4 v7, -0x1

    #@b6
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@b9
    .line 401
    const/4 v7, -0x2

    #@ba
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@bd
    .line 402
    shr-int/lit8 v7, v6, 0x18

    #@bf
    int-to-byte v7, v7

    #@c0
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@c3
    .line 403
    shr-int/lit8 v7, v6, 0x10

    #@c5
    int-to-byte v7, v7

    #@c6
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@c9
    .line 404
    shr-int/lit8 v7, v6, 0x8

    #@cb
    int-to-byte v7, v7

    #@cc
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@cf
    .line 405
    int-to-byte v7, v6

    #@d0
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@d3
    .line 407
    const/4 v3, 0x6

    #@d4
    .restart local v3    # "extra":I
    goto :goto_1

    #@d5
    .line 432
    .end local v3    # "extra":I
    .end local v6    # "textLength":I
    :cond_5
    invoke-interface {v1, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@d8
    .line 434
    const/4 v7, 0x0

    #@d9
    invoke-interface {v1, p4, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    #@dc
    move-result v7

    #@dd
    return v7
.end method

.method private getAssociatedTextLength()I
    .locals 2

    #@0
    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@5
    move-result v1

    #@6
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    #@8
    if-nez v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    add-int/2addr v0, v1

    #@c
    return v0

    #@d
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    #@f
    array-length v0, v0

    #@10
    goto :goto_0
.end method

.method private hasAssociatedText()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 444
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    #@5
    move-result-object v1

    #@6
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@b
    move-result v3

    #@c
    const/4 v2, 0x0

    #@d
    move-object v0, p0

    #@e
    move-object v4, p1

    #@f
    move v5, p2

    #@10
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    #@13
    move-result v6

    #@14
    .line 148
    .local v6, "len":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    #@17
    .line 150
    return v6
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@7
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, "/CCM"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public getMac()[B
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 168
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@3
    new-array v0, v1, [B

    #@5
    .line 170
    .local v0, "mac":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@7
    array-length v2, v0

    #@8
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b
    .line 172
    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2
    .param p1, "len"    # I

    #@0
    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    #@5
    move-result v1

    #@6
    add-int v0, p1, v1

    #@8
    .line 184
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 186
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@e
    add-int/2addr v1, v0

    #@f
    return v1

    #@10
    .line 189
    :cond_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@12
    if-ge v0, v1, :cond_1

    #@14
    const/4 v1, 0x0

    #@15
    :goto_0
    return v1

    #@16
    :cond_1
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@18
    sub-int v1, v0, v1

    #@1a
    goto :goto_0
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/BlockCipher;
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 177
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 67
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    #@3
    .line 70
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

    #@5
    if-eqz v3, :cond_2

    #@7
    move-object v1, p2

    #@8
    .line 72
    nop

    #@9
    nop

    #@a
    .line 74
    .local v1, "param":Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    #@d
    move-result-object v3

    #@e
    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@10
    .line 75
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    #@13
    move-result-object v3

    #@14
    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    #@16
    .line 76
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    #@19
    move-result v3

    #@1a
    div-int/lit8 v3, v3, 0x8

    #@1c
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@1e
    .line 77
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/org/bouncycastle/crypto/params/KeyParameter;

    #@21
    move-result-object v0

    #@22
    .line 94
    .end local v1    # "param":Lcom/android/org/bouncycastle/crypto/params/AEADParameters;
    .local v0, "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    if-eqz v0, :cond_0

    #@24
    .line 96
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@26
    .line 99
    :cond_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@28
    if-eqz v3, :cond_1

    #@2a
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@2c
    array-length v3, v3

    #@2d
    const/4 v4, 0x7

    #@2e
    if-ge v3, v4, :cond_4

    #@30
    .line 101
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v4, "nonce must have length from 7 to 13 octets"

    #@35
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3

    #@39
    .line 79
    .end local v0    # "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    instance-of v3, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@3b
    if-eqz v3, :cond_3

    #@3d
    move-object v2, p2

    #@3e
    .line 81
    nop

    #@3f
    nop

    #@40
    .line 83
    .local v2, "param":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    #@43
    move-result-object v3

    #@44
    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@46
    .line 84
    iput-object v4, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    #@48
    .line 85
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@4a
    array-length v3, v3

    #@4b
    div-int/lit8 v3, v3, 0x2

    #@4d
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@4f
    .line 86
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@52
    move-result-object v0

    #@53
    .restart local v0    # "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    goto :goto_0

    #@54
    .line 90
    .end local v0    # "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    .end local v2    # "param":Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@56
    new-instance v4, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v5, "invalid parameters passed to CCM: "

    #@5e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v4

    #@62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@65
    move-result-object v5

    #@66
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@69
    move-result-object v5

    #@6a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v4

    #@6e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@75
    throw v3

    #@76
    .line 99
    .restart local v0    # "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_4
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@78
    array-length v3, v3

    #@79
    const/16 v4, 0xd

    #@7b
    if-gt v3, v4, :cond_1

    #@7d
    .line 104
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    #@80
    .line 65
    return-void
.end method

.method public processAADByte(B)V
    .locals 1
    .param p1, "in"    # B

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5
    .line 112
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@5
    .line 117
    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@2
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    #@5
    .line 128
    const/4 v0, 0x0

    #@6
    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 134
    array-length v0, p1

    #@1
    add-int v1, p2, p3

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 136
    new-instance v0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    #@7
    const-string/jumbo v1, "Input buffer too short"

    #@a
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@10
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@13
    .line 140
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public processPacket([BII[BI)I
    .locals 21
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;,
            Lcom/android/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@4
    move-object/from16 v17, v0

    #@6
    if-nez v17, :cond_0

    #@8
    .line 245
    new-instance v17, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v18, "CCM cipher unitialized."

    #@d
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v17

    #@11
    .line 248
    :cond_0
    move-object/from16 v0, p0

    #@13
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@15
    move-object/from16 v17, v0

    #@17
    move-object/from16 v0, v17

    #@19
    array-length v13, v0

    #@1a
    .line 249
    .local v13, "n":I
    rsub-int/lit8 v16, v13, 0xf

    #@1c
    .line 250
    .local v16, "q":I
    const/16 v17, 0x4

    #@1e
    move/from16 v0, v16

    #@20
    move/from16 v1, v17

    #@22
    if-ge v0, v1, :cond_1

    #@24
    .line 252
    mul-int/lit8 v17, v16, 0x8

    #@26
    const/16 v18, 0x1

    #@28
    shl-int v12, v18, v17

    #@2a
    .line 253
    .local v12, "limitLen":I
    move/from16 v0, p3

    #@2c
    if-lt v0, v12, :cond_1

    #@2e
    .line 255
    new-instance v17, Ljava/lang/IllegalStateException;

    #@30
    const-string/jumbo v18, "CCM packet too large for choice of q."

    #@33
    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@36
    throw v17

    #@37
    .line 259
    .end local v12    # "limitLen":I
    :cond_1
    move-object/from16 v0, p0

    #@39
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@3b
    move/from16 v17, v0

    #@3d
    move/from16 v0, v17

    #@3f
    new-array v11, v0, [B

    #@41
    .line 260
    .local v11, "iv":[B
    add-int/lit8 v17, v16, -0x1

    #@43
    and-int/lit8 v17, v17, 0x7

    #@45
    move/from16 v0, v17

    #@47
    int-to-byte v0, v0

    #@48
    move/from16 v17, v0

    #@4a
    const/16 v18, 0x0

    #@4c
    aput-byte v17, v11, v18

    #@4e
    .line 261
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@52
    move-object/from16 v17, v0

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@58
    move-object/from16 v18, v0

    #@5a
    move-object/from16 v0, v18

    #@5c
    array-length v0, v0

    #@5d
    move/from16 v18, v0

    #@5f
    const/16 v19, 0x0

    #@61
    const/16 v20, 0x1

    #@63
    move-object/from16 v0, v17

    #@65
    move/from16 v1, v19

    #@67
    move/from16 v2, v20

    #@69
    move/from16 v3, v18

    #@6b
    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6e
    .line 263
    new-instance v7, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    #@70
    move-object/from16 v0, p0

    #@72
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@74
    move-object/from16 v17, v0

    #@76
    move-object/from16 v0, v17

    #@78
    invoke-direct {v7, v0}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@7b
    .line 264
    .local v7, "ctrCipher":Lcom/android/org/bouncycastle/crypto/BlockCipher;
    move-object/from16 v0, p0

    #@7d
    iget-boolean v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    #@7f
    move/from16 v17, v0

    #@81
    new-instance v18, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@83
    move-object/from16 v0, p0

    #@85
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@87
    move-object/from16 v19, v0

    #@89
    move-object/from16 v0, v18

    #@8b
    move-object/from16 v1, v19

    #@8d
    invoke-direct {v0, v1, v11}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@90
    move/from16 v0, v17

    #@92
    move-object/from16 v1, v18

    #@94
    invoke-interface {v7, v0, v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@97
    .line 267
    move/from16 v10, p2

    #@99
    .line 268
    .local v10, "inIndex":I
    move/from16 v14, p5

    #@9b
    .line 270
    .local v14, "outIndex":I
    move-object/from16 v0, p0

    #@9d
    iget-boolean v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    #@9f
    move/from16 v17, v0

    #@a1
    if-eqz v17, :cond_5

    #@a3
    .line 272
    move-object/from16 v0, p0

    #@a5
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@a7
    move/from16 v17, v0

    #@a9
    add-int v15, p3, v17

    #@ab
    .line 273
    .local v15, "outputLen":I
    move-object/from16 v0, p4

    #@ad
    array-length v0, v0

    #@ae
    move/from16 v17, v0

    #@b0
    add-int v18, v15, p5

    #@b2
    move/from16 v0, v17

    #@b4
    move/from16 v1, v18

    #@b6
    if-ge v0, v1, :cond_2

    #@b8
    .line 275
    new-instance v17, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@ba
    const-string/jumbo v18, "Output buffer too short."

    #@bd
    invoke-direct/range {v17 .. v18}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@c0
    throw v17

    #@c1
    .line 278
    :cond_2
    move-object/from16 v0, p0

    #@c3
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@c5
    move-object/from16 v17, v0

    #@c7
    move-object/from16 v0, p0

    #@c9
    move-object/from16 v1, p1

    #@cb
    move/from16 v2, p2

    #@cd
    move/from16 v3, p3

    #@cf
    move-object/from16 v4, v17

    #@d1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    #@d4
    .line 280
    move-object/from16 v0, p0

    #@d6
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@d8
    move/from16 v17, v0

    #@da
    move/from16 v0, v17

    #@dc
    new-array v8, v0, [B

    #@de
    .line 282
    .local v8, "encMac":[B
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@e2
    move-object/from16 v17, v0

    #@e4
    const/16 v18, 0x0

    #@e6
    const/16 v19, 0x0

    #@e8
    move-object/from16 v0, v17

    #@ea
    move/from16 v1, v18

    #@ec
    move/from16 v2, v19

    #@ee
    invoke-interface {v7, v0, v1, v8, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@f1
    .line 284
    :goto_0
    add-int v17, p2, p3

    #@f3
    move-object/from16 v0, p0

    #@f5
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@f7
    move/from16 v18, v0

    #@f9
    sub-int v17, v17, v18

    #@fb
    move/from16 v0, v17

    #@fd
    if-ge v10, v0, :cond_3

    #@ff
    .line 286
    move-object/from16 v0, p1

    #@101
    move-object/from16 v1, p4

    #@103
    invoke-interface {v7, v0, v10, v1, v14}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@106
    .line 287
    move-object/from16 v0, p0

    #@108
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@10a
    move/from16 v17, v0

    #@10c
    add-int v14, v14, v17

    #@10e
    .line 288
    move-object/from16 v0, p0

    #@110
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@112
    move/from16 v17, v0

    #@114
    add-int v10, v10, v17

    #@116
    goto :goto_0

    #@117
    .line 291
    :cond_3
    move-object/from16 v0, p0

    #@119
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@11b
    move/from16 v17, v0

    #@11d
    move/from16 v0, v17

    #@11f
    new-array v5, v0, [B

    #@121
    .line 293
    .local v5, "block":[B
    add-int v17, p3, p2

    #@123
    sub-int v17, v17, v10

    #@125
    const/16 v18, 0x0

    #@127
    move-object/from16 v0, p1

    #@129
    move/from16 v1, v18

    #@12b
    move/from16 v2, v17

    #@12d
    invoke-static {v0, v10, v5, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@130
    .line 295
    const/16 v17, 0x0

    #@132
    const/16 v18, 0x0

    #@134
    move/from16 v0, v17

    #@136
    move/from16 v1, v18

    #@138
    invoke-interface {v7, v5, v0, v5, v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@13b
    .line 297
    add-int v17, p3, p2

    #@13d
    sub-int v17, v17, v10

    #@13f
    const/16 v18, 0x0

    #@141
    move/from16 v0, v18

    #@143
    move-object/from16 v1, p4

    #@145
    move/from16 v2, v17

    #@147
    invoke-static {v5, v0, v1, v14, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14a
    .line 299
    add-int v17, p5, p3

    #@14c
    move-object/from16 v0, p0

    #@14e
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@150
    move/from16 v18, v0

    #@152
    const/16 v19, 0x0

    #@154
    move/from16 v0, v19

    #@156
    move-object/from16 v1, p4

    #@158
    move/from16 v2, v17

    #@15a
    move/from16 v3, v18

    #@15c
    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@15f
    .line 347
    .end local v8    # "encMac":[B
    :cond_4
    return v15

    #@160
    .line 303
    .end local v5    # "block":[B
    .end local v15    # "outputLen":I
    :cond_5
    move-object/from16 v0, p0

    #@162
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@164
    move/from16 v17, v0

    #@166
    move/from16 v0, p3

    #@168
    move/from16 v1, v17

    #@16a
    if-ge v0, v1, :cond_6

    #@16c
    .line 305
    new-instance v17, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@16e
    const-string/jumbo v18, "data too short"

    #@171
    invoke-direct/range {v17 .. v18}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@174
    throw v17

    #@175
    .line 307
    :cond_6
    move-object/from16 v0, p0

    #@177
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@179
    move/from16 v17, v0

    #@17b
    sub-int v15, p3, v17

    #@17d
    .line 308
    .restart local v15    # "outputLen":I
    move-object/from16 v0, p4

    #@17f
    array-length v0, v0

    #@180
    move/from16 v17, v0

    #@182
    add-int v18, v15, p5

    #@184
    move/from16 v0, v17

    #@186
    move/from16 v1, v18

    #@188
    if-ge v0, v1, :cond_7

    #@18a
    .line 310
    new-instance v17, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@18c
    const-string/jumbo v18, "Output buffer too short."

    #@18f
    invoke-direct/range {v17 .. v18}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@192
    throw v17

    #@193
    .line 313
    :cond_7
    add-int v17, p2, v15

    #@195
    move-object/from16 v0, p0

    #@197
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@199
    move-object/from16 v18, v0

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@19f
    move/from16 v19, v0

    #@1a1
    const/16 v20, 0x0

    #@1a3
    move-object/from16 v0, p1

    #@1a5
    move/from16 v1, v17

    #@1a7
    move-object/from16 v2, v18

    #@1a9
    move/from16 v3, v20

    #@1ab
    move/from16 v4, v19

    #@1ad
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1b0
    .line 315
    move-object/from16 v0, p0

    #@1b2
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@1b4
    move-object/from16 v17, v0

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@1ba
    move-object/from16 v18, v0

    #@1bc
    const/16 v19, 0x0

    #@1be
    const/16 v20, 0x0

    #@1c0
    move-object/from16 v0, v17

    #@1c2
    move/from16 v1, v19

    #@1c4
    move-object/from16 v2, v18

    #@1c6
    move/from16 v3, v20

    #@1c8
    invoke-interface {v7, v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@1cb
    .line 317
    move-object/from16 v0, p0

    #@1cd
    iget v9, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@1cf
    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    #@1d1
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@1d3
    move-object/from16 v17, v0

    #@1d5
    move-object/from16 v0, v17

    #@1d7
    array-length v0, v0

    #@1d8
    move/from16 v17, v0

    #@1da
    move/from16 v0, v17

    #@1dc
    if-eq v9, v0, :cond_8

    #@1de
    .line 319
    move-object/from16 v0, p0

    #@1e0
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@1e2
    move-object/from16 v17, v0

    #@1e4
    const/16 v18, 0x0

    #@1e6
    aput-byte v18, v17, v9

    #@1e8
    .line 317
    add-int/lit8 v9, v9, 0x1

    #@1ea
    goto :goto_1

    #@1eb
    .line 322
    :cond_8
    :goto_2
    add-int v17, p2, v15

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@1f1
    move/from16 v18, v0

    #@1f3
    sub-int v17, v17, v18

    #@1f5
    move/from16 v0, v17

    #@1f7
    if-ge v10, v0, :cond_9

    #@1f9
    .line 324
    move-object/from16 v0, p1

    #@1fb
    move-object/from16 v1, p4

    #@1fd
    invoke-interface {v7, v0, v10, v1, v14}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@200
    .line 325
    move-object/from16 v0, p0

    #@202
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@204
    move/from16 v17, v0

    #@206
    add-int v14, v14, v17

    #@208
    .line 326
    move-object/from16 v0, p0

    #@20a
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@20c
    move/from16 v17, v0

    #@20e
    add-int v10, v10, v17

    #@210
    goto :goto_2

    #@211
    .line 329
    :cond_9
    move-object/from16 v0, p0

    #@213
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@215
    move/from16 v17, v0

    #@217
    move/from16 v0, v17

    #@219
    new-array v5, v0, [B

    #@21b
    .line 331
    .restart local v5    # "block":[B
    sub-int v17, v10, p2

    #@21d
    sub-int v17, v15, v17

    #@21f
    const/16 v18, 0x0

    #@221
    move-object/from16 v0, p1

    #@223
    move/from16 v1, v18

    #@225
    move/from16 v2, v17

    #@227
    invoke-static {v0, v10, v5, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@22a
    .line 333
    const/16 v17, 0x0

    #@22c
    const/16 v18, 0x0

    #@22e
    move/from16 v0, v17

    #@230
    move/from16 v1, v18

    #@232
    invoke-interface {v7, v5, v0, v5, v1}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@235
    .line 335
    sub-int v17, v10, p2

    #@237
    sub-int v17, v15, v17

    #@239
    const/16 v18, 0x0

    #@23b
    move/from16 v0, v18

    #@23d
    move-object/from16 v1, p4

    #@23f
    move/from16 v2, v17

    #@241
    invoke-static {v5, v0, v1, v14, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@244
    .line 337
    move-object/from16 v0, p0

    #@246
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@248
    move/from16 v17, v0

    #@24a
    move/from16 v0, v17

    #@24c
    new-array v6, v0, [B

    #@24e
    .line 339
    .local v6, "calculatedMacBlock":[B
    move-object/from16 v0, p0

    #@250
    move-object/from16 v1, p4

    #@252
    move/from16 v2, p5

    #@254
    invoke-direct {v0, v1, v2, v15, v6}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    #@257
    .line 341
    move-object/from16 v0, p0

    #@259
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@25b
    move-object/from16 v17, v0

    #@25d
    move-object/from16 v0, v17

    #@25f
    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@262
    move-result v17

    #@263
    if-nez v17, :cond_4

    #@265
    .line 343
    new-instance v17, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@267
    const-string/jumbo v18, "mac check in CCM failed"

    #@26a
    invoke-direct/range {v17 .. v18}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@26d
    throw v17
.end method

.method public processPacket([BII)[B
    .locals 6
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 209
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@6
    add-int/2addr v0, p3

    #@7
    new-array v4, v0, [B

    #@9
    .line 220
    .local v4, "output":[B
    :goto_0
    const/4 v5, 0x0

    #@a
    move-object v0, p0

    #@b
    move-object v1, p1

    #@c
    move v2, p2

    #@d
    move v3, p3

    #@e
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    #@11
    .line 222
    return-object v4

    #@12
    .line 213
    .end local v4    # "output":[B
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@14
    if-ge p3, v0, :cond_1

    #@16
    .line 215
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@18
    const-string/jumbo v1, "data too short"

    #@1b
    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 217
    :cond_1
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@21
    sub-int v0, p3, v0

    #@23
    new-array v4, v0, [B

    #@25
    .restart local v4    # "output":[B
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@2
    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->reset()V

    #@5
    .line 156
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@a
    .line 157
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@f
    .line 153
    return-void
.end method
