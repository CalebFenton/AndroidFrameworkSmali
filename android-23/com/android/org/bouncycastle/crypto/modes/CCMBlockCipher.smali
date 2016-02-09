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
    .line 350
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
    .line 352
    .local v1, "cMac":Lcom/android/org/bouncycastle/crypto/Mac;
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@d
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@10
    .line 357
    const/16 v7, 0x10

    #@12
    new-array v0, v7, [B

    #@14
    .line 359
    .local v0, "b0":[B
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    #@17
    move-result v7

    #@18
    if-eqz v7, :cond_0

    #@1a
    .line 361
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
    .line 364
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
    .line 366
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
    .line 368
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
    .line 370
    move v5, p3

    #@50
    .line 371
    .local v5, "q":I
    const/4 v2, 0x1

    #@51
    .line 372
    .local v2, "count":I
    :goto_0
    if-lez v5, :cond_1

    #@53
    .line 374
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
    .line 375
    ushr-int/lit8 v5, v5, 0x8

    #@5c
    .line 376
    add-int/lit8 v2, v2, 0x1

    #@5e
    goto :goto_0

    #@5f
    .line 379
    :cond_1
    array-length v7, v0

    #@60
    const/4 v8, 0x0

    #@61
    invoke-interface {v1, v0, v8, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@64
    .line 384
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    #@67
    move-result v7

    #@68
    if-eqz v7, :cond_5

    #@6a
    .line 388
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    #@6d
    move-result v6

    #@6e
    .line 389
    .local v6, "textLength":I
    const v7, 0xff00

    #@71
    if-ge v6, v7, :cond_4

    #@73
    .line 391
    shr-int/lit8 v7, v6, 0x8

    #@75
    int-to-byte v7, v7

    #@76
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@79
    .line 392
    int-to-byte v7, v6

    #@7a
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@7d
    .line 394
    const/4 v3, 0x2

    #@7e
    .line 408
    .local v3, "extra":I
    :goto_1
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    #@80
    if-eqz v7, :cond_2

    #@82
    .line 410
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
    .line 412
    :cond_2
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@8d
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    #@90
    move-result v7

    #@91
    if-lez v7, :cond_3

    #@93
    .line 414
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@95
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    #@98
    move-result-object v7

    #@99
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@9b
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    #@9e
    move-result v8

    #@9f
    const/4 v9, 0x0

    #@a0
    invoke-interface {v1, v7, v9, v8}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@a3
    .line 417
    :cond_3
    add-int v7, v3, v6

    #@a5
    rem-int/lit8 v3, v7, 0x10

    #@a7
    .line 418
    if-eqz v3, :cond_5

    #@a9
    .line 420
    move v4, v3

    #@aa
    .local v4, "i":I
    :goto_2
    const/16 v7, 0x10

    #@ac
    if-eq v4, v7, :cond_5

    #@ae
    .line 422
    const/4 v7, 0x0

    #@af
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@b2
    .line 420
    add-int/lit8 v4, v4, 0x1

    #@b4
    goto :goto_2

    #@b5
    .line 398
    .end local v3    # "extra":I
    .end local v4    # "i":I
    :cond_4
    const/4 v7, -0x1

    #@b6
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@b9
    .line 399
    const/4 v7, -0x2

    #@ba
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@bd
    .line 400
    shr-int/lit8 v7, v6, 0x18

    #@bf
    int-to-byte v7, v7

    #@c0
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@c3
    .line 401
    shr-int/lit8 v7, v6, 0x10

    #@c5
    int-to-byte v7, v7

    #@c6
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@c9
    .line 402
    shr-int/lit8 v7, v6, 0x8

    #@cb
    int-to-byte v7, v7

    #@cc
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@cf
    .line 403
    int-to-byte v7, v6

    #@d0
    invoke-interface {v1, v7}, Lcom/android/org/bouncycastle/crypto/Mac;->update(B)V

    #@d3
    .line 405
    const/4 v3, 0x6

    #@d4
    .restart local v3    # "extra":I
    goto :goto_1

    #@d5
    .line 430
    .end local v3    # "extra":I
    .end local v6    # "textLength":I
    :cond_5
    invoke-interface {v1, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Mac;->update([BII)V

    #@d8
    .line 432
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
    .line 437
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

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
    .line 442
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
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

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
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

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
    .locals 5
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
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/AEADParameters;

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
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

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
    const-string/jumbo v4, "invalid parameters passed to CCM"

    #@59
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v3

    #@5d
    .line 99
    .restart local v0    # "cipherParameters":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_4
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@5f
    array-length v3, v3

    #@60
    const/16 v4, 0xd

    #@62
    if-gt v3, v4, :cond_1

    #@64
    .line 104
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    #@67
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
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

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
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

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
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

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
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    #@13
    .line 140
    const/4 v0, 0x0

    #@14
    return v0
.end method

.method public processPacket([BII[BI)I
    .locals 19
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
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@4
    if-nez v15, :cond_0

    #@6
    .line 245
    new-instance v15, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v16, "CCM cipher unitialized."

    #@b
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v15

    #@f
    .line 248
    :cond_0
    move-object/from16 v0, p0

    #@11
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@13
    array-length v11, v15

    #@14
    .line 249
    .local v11, "n":I
    rsub-int/lit8 v14, v11, 0xf

    #@16
    .line 250
    .local v14, "q":I
    const/4 v15, 0x4

    #@17
    if-ge v14, v15, :cond_1

    #@19
    .line 252
    mul-int/lit8 v15, v14, 0x8

    #@1b
    const/16 v16, 0x1

    #@1d
    shl-int v10, v16, v15

    #@1f
    .line 253
    .local v10, "limitLen":I
    move/from16 v0, p3

    #@21
    if-lt v0, v10, :cond_1

    #@23
    .line 255
    new-instance v15, Ljava/lang/IllegalStateException;

    #@25
    const-string/jumbo v16, "CCM packet too large for choice of q."

    #@28
    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v15

    #@2c
    .line 259
    .end local v10    # "limitLen":I
    :cond_1
    move-object/from16 v0, p0

    #@2e
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@30
    new-array v9, v15, [B

    #@32
    .line 260
    .local v9, "iv":[B
    add-int/lit8 v15, v14, -0x1

    #@34
    and-int/lit8 v15, v15, 0x7

    #@36
    int-to-byte v15, v15

    #@37
    const/16 v16, 0x0

    #@39
    aput-byte v15, v9, v16

    #@3b
    .line 261
    move-object/from16 v0, p0

    #@3d
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@3f
    move-object/from16 v0, p0

    #@41
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    #@43
    move-object/from16 v16, v0

    #@45
    move-object/from16 v0, v16

    #@47
    array-length v0, v0

    #@48
    move/from16 v16, v0

    #@4a
    const/16 v17, 0x0

    #@4c
    const/16 v18, 0x1

    #@4e
    move/from16 v0, v17

    #@50
    move/from16 v1, v18

    #@52
    move/from16 v2, v16

    #@54
    invoke-static {v15, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@57
    .line 263
    new-instance v6, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/org/bouncycastle/crypto/BlockCipher;

    #@5d
    invoke-direct {v6, v15}, Lcom/android/org/bouncycastle/crypto/modes/SICBlockCipher;-><init>(Lcom/android/org/bouncycastle/crypto/BlockCipher;)V

    #@60
    .line 264
    .local v6, "ctrCipher":Lcom/android/org/bouncycastle/crypto/BlockCipher;
    move-object/from16 v0, p0

    #@62
    iget-boolean v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    #@64
    new-instance v16, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;

    #@66
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@6a
    move-object/from16 v17, v0

    #@6c
    move-object/from16 v0, v16

    #@6e
    move-object/from16 v1, v17

    #@70
    invoke-direct {v0, v1, v9}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;[B)V

    #@73
    move-object/from16 v0, v16

    #@75
    invoke-interface {v6, v15, v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@78
    .line 267
    move/from16 v8, p2

    #@7a
    .line 268
    .local v8, "inIndex":I
    move/from16 v12, p5

    #@7c
    .line 270
    .local v12, "outIndex":I
    move-object/from16 v0, p0

    #@7e
    iget-boolean v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    #@80
    if-eqz v15, :cond_5

    #@82
    .line 272
    move-object/from16 v0, p0

    #@84
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@86
    add-int v13, p3, v15

    #@88
    .line 273
    .local v13, "outputLen":I
    move-object/from16 v0, p4

    #@8a
    array-length v15, v0

    #@8b
    add-int v16, v13, p5

    #@8d
    move/from16 v0, v16

    #@8f
    if-ge v15, v0, :cond_2

    #@91
    .line 275
    new-instance v15, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@93
    const-string/jumbo v16, "Output buffer too short."

    #@96
    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@99
    throw v15

    #@9a
    .line 278
    :cond_2
    move-object/from16 v0, p0

    #@9c
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@9e
    move-object/from16 v0, p0

    #@a0
    move-object/from16 v1, p1

    #@a2
    move/from16 v2, p2

    #@a4
    move/from16 v3, p3

    #@a6
    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    #@a9
    .line 280
    move-object/from16 v0, p0

    #@ab
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@ad
    move-object/from16 v0, p0

    #@af
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@b1
    move-object/from16 v16, v0

    #@b3
    const/16 v17, 0x0

    #@b5
    const/16 v18, 0x0

    #@b7
    move/from16 v0, v17

    #@b9
    move-object/from16 v1, v16

    #@bb
    move/from16 v2, v18

    #@bd
    invoke-interface {v6, v15, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@c0
    .line 282
    :goto_0
    add-int v15, p2, p3

    #@c2
    move-object/from16 v0, p0

    #@c4
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@c6
    move/from16 v16, v0

    #@c8
    sub-int v15, v15, v16

    #@ca
    if-ge v8, v15, :cond_3

    #@cc
    .line 284
    move-object/from16 v0, p1

    #@ce
    move-object/from16 v1, p4

    #@d0
    invoke-interface {v6, v0, v8, v1, v12}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@d3
    .line 285
    move-object/from16 v0, p0

    #@d5
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@d7
    add-int/2addr v12, v15

    #@d8
    .line 286
    move-object/from16 v0, p0

    #@da
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@dc
    add-int/2addr v8, v15

    #@dd
    goto :goto_0

    #@de
    .line 289
    :cond_3
    move-object/from16 v0, p0

    #@e0
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@e2
    new-array v4, v15, [B

    #@e4
    .line 291
    .local v4, "block":[B
    add-int v15, p3, p2

    #@e6
    sub-int/2addr v15, v8

    #@e7
    const/16 v16, 0x0

    #@e9
    move-object/from16 v0, p1

    #@eb
    move/from16 v1, v16

    #@ed
    invoke-static {v0, v8, v4, v1, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f0
    .line 293
    const/4 v15, 0x0

    #@f1
    const/16 v16, 0x0

    #@f3
    move/from16 v0, v16

    #@f5
    invoke-interface {v6, v4, v15, v4, v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@f8
    .line 295
    add-int v15, p3, p2

    #@fa
    sub-int/2addr v15, v8

    #@fb
    const/16 v16, 0x0

    #@fd
    move/from16 v0, v16

    #@ff
    move-object/from16 v1, p4

    #@101
    invoke-static {v4, v0, v1, v12, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@104
    .line 297
    move-object/from16 v0, p0

    #@106
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@108
    add-int v16, p5, p3

    #@10a
    move-object/from16 v0, p0

    #@10c
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@10e
    move/from16 v17, v0

    #@110
    const/16 v18, 0x0

    #@112
    move/from16 v0, v18

    #@114
    move-object/from16 v1, p4

    #@116
    move/from16 v2, v16

    #@118
    move/from16 v3, v17

    #@11a
    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11d
    .line 345
    :cond_4
    return v13

    #@11e
    .line 301
    .end local v4    # "block":[B
    .end local v13    # "outputLen":I
    :cond_5
    move-object/from16 v0, p0

    #@120
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@122
    move/from16 v0, p3

    #@124
    if-ge v0, v15, :cond_6

    #@126
    .line 303
    new-instance v15, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@128
    const-string/jumbo v16, "data too short"

    #@12b
    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@12e
    throw v15

    #@12f
    .line 305
    :cond_6
    move-object/from16 v0, p0

    #@131
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@133
    sub-int v13, p3, v15

    #@135
    .line 306
    .restart local v13    # "outputLen":I
    move-object/from16 v0, p4

    #@137
    array-length v15, v0

    #@138
    add-int v16, v13, p5

    #@13a
    move/from16 v0, v16

    #@13c
    if-ge v15, v0, :cond_7

    #@13e
    .line 308
    new-instance v15, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    #@140
    const-string/jumbo v16, "Output buffer too short."

    #@143
    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    #@146
    throw v15

    #@147
    .line 311
    :cond_7
    add-int v15, p2, v13

    #@149
    move-object/from16 v0, p0

    #@14b
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@14d
    move-object/from16 v16, v0

    #@14f
    move-object/from16 v0, p0

    #@151
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@153
    move/from16 v17, v0

    #@155
    const/16 v18, 0x0

    #@157
    move-object/from16 v0, p1

    #@159
    move-object/from16 v1, v16

    #@15b
    move/from16 v2, v18

    #@15d
    move/from16 v3, v17

    #@15f
    invoke-static {v0, v15, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@162
    .line 313
    move-object/from16 v0, p0

    #@164
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@166
    move-object/from16 v0, p0

    #@168
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@16a
    move-object/from16 v16, v0

    #@16c
    const/16 v17, 0x0

    #@16e
    const/16 v18, 0x0

    #@170
    move/from16 v0, v17

    #@172
    move-object/from16 v1, v16

    #@174
    move/from16 v2, v18

    #@176
    invoke-interface {v6, v15, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@179
    .line 315
    move-object/from16 v0, p0

    #@17b
    iget v7, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    #@17d
    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    #@17f
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@181
    array-length v15, v15

    #@182
    if-eq v7, v15, :cond_8

    #@184
    .line 317
    move-object/from16 v0, p0

    #@186
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@188
    const/16 v16, 0x0

    #@18a
    aput-byte v16, v15, v7

    #@18c
    .line 315
    add-int/lit8 v7, v7, 0x1

    #@18e
    goto :goto_1

    #@18f
    .line 320
    :cond_8
    :goto_2
    add-int v15, p2, v13

    #@191
    move-object/from16 v0, p0

    #@193
    iget v0, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@195
    move/from16 v16, v0

    #@197
    sub-int v15, v15, v16

    #@199
    if-ge v8, v15, :cond_9

    #@19b
    .line 322
    move-object/from16 v0, p1

    #@19d
    move-object/from16 v1, p4

    #@19f
    invoke-interface {v6, v0, v8, v1, v12}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@1a2
    .line 323
    move-object/from16 v0, p0

    #@1a4
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@1a6
    add-int/2addr v12, v15

    #@1a7
    .line 324
    move-object/from16 v0, p0

    #@1a9
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@1ab
    add-int/2addr v8, v15

    #@1ac
    goto :goto_2

    #@1ad
    .line 327
    :cond_9
    move-object/from16 v0, p0

    #@1af
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@1b1
    new-array v4, v15, [B

    #@1b3
    .line 329
    .restart local v4    # "block":[B
    sub-int v15, v8, p2

    #@1b5
    sub-int v15, v13, v15

    #@1b7
    const/16 v16, 0x0

    #@1b9
    move-object/from16 v0, p1

    #@1bb
    move/from16 v1, v16

    #@1bd
    invoke-static {v0, v8, v4, v1, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c0
    .line 331
    const/4 v15, 0x0

    #@1c1
    const/16 v16, 0x0

    #@1c3
    move/from16 v0, v16

    #@1c5
    invoke-interface {v6, v4, v15, v4, v0}, Lcom/android/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    #@1c8
    .line 333
    sub-int v15, v8, p2

    #@1ca
    sub-int v15, v13, v15

    #@1cc
    const/16 v16, 0x0

    #@1ce
    move/from16 v0, v16

    #@1d0
    move-object/from16 v1, p4

    #@1d2
    invoke-static {v4, v0, v1, v12, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1d5
    .line 335
    move-object/from16 v0, p0

    #@1d7
    iget v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    #@1d9
    new-array v5, v15, [B

    #@1db
    .line 337
    .local v5, "calculatedMacBlock":[B
    move-object/from16 v0, p0

    #@1dd
    move-object/from16 v1, p4

    #@1df
    move/from16 v2, p5

    #@1e1
    invoke-direct {v0, v1, v2, v13, v5}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    #@1e4
    .line 339
    move-object/from16 v0, p0

    #@1e6
    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    #@1e8
    invoke-static {v15, v5}, Lcom/android/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    #@1eb
    move-result v15

    #@1ec
    if-nez v15, :cond_4

    #@1ee
    .line 341
    new-instance v15, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    #@1f0
    const-string/jumbo v16, "mac check in CCM failed"

    #@1f3
    invoke-direct/range {v15 .. v16}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    #@1f6
    throw v15
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
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    #@a
    .line 157
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    #@c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    #@f
    .line 153
    return-void
.end method
