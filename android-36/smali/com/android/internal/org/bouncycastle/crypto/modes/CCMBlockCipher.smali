.class public Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;
.super Ljava/lang/Object;
.source "CCMBlockCipher.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/CCMModeCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;
    }
.end annotation


# instance fields
.field private blacklist associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blacklist blockSize:I

.field private blacklist cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

.field private blacklist data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

.field private blacklist forEncryption:Z

.field private blacklist initialAssociatedText:[B

.field private blacklist keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

.field private blacklist macBlock:[B

.field private blacklist macSize:I

.field private blacklist nonce:[B


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V
    .registers 4
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 36
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    .line 56
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 57
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    .line 58
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    .line 60
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_26

    .line 64
    return-void

    .line 62
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist calculateMac([BII[B)I
    .registers 15
    .param p1, "data"    # [B
    .param p2, "dataOff"    # I
    .param p3, "dataLen"    # I
    .param p4, "macBlock"    # [B

    .line 365
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;I)V

    .line 367
    .local v0, "cMac":Lcom/android/internal/org/bouncycastle/crypto/Mac;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    invoke-interface {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 372
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 374
    .local v2, "b0":[B
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

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

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    div-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 381
    aget-byte v3, v2, v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v5, v5

    rsub-int/lit8 v5, v5, 0xf

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x7

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 383
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v5, v5

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    move v3, p3

    .line 386
    .local v3, "q":I
    const/4 v5, 0x1

    .line 387
    .local v5, "count":I
    :goto_4d
    if-lez v3, :cond_5b

    .line 389
    array-length v6, v2

    sub-int/2addr v6, v5

    and-int/lit16 v7, v3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v2, v6

    .line 390
    ushr-int/lit8 v3, v3, 0x8

    .line 391
    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 394
    :cond_5b
    array-length v6, v2

    invoke-interface {v0, v2, v4, v6}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->hasAssociatedText()Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 403
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v6

    .line 404
    .local v6, "textLength":I
    const v7, 0xff00

    if-ge v6, v7, :cond_7a

    .line 406
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 407
    int-to-byte v7, v6

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 409
    const/4 v7, 0x2

    .local v7, "extra":I
    goto :goto_99

    .line 413
    .end local v7    # "extra":I
    :cond_7a
    const/4 v7, -0x1

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 414
    const/4 v7, -0x2

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 415
    shr-int/lit8 v7, v6, 0x18

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 416
    shr-int/lit8 v7, v6, 0x10

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 417
    shr-int/lit8 v7, v6, 0x8

    int-to-byte v7, v7

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 418
    int-to-byte v7, v6

    invoke-interface {v0, v7}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 420
    const/4 v7, 0x6

    .line 423
    .restart local v7    # "extra":I
    :goto_99
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-eqz v8, :cond_a5

    .line 425
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v9, v9

    invoke-interface {v0, v8, v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 427
    :cond_a5
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_bc

    .line 429
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v9

    invoke-interface {v0, v8, v4, v9}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 432
    :cond_bc
    add-int v8, v7, v6

    rem-int/2addr v8, v1

    .line 433
    .end local v7    # "extra":I
    .local v8, "extra":I
    if-eqz v8, :cond_ca

    .line 435
    move v7, v8

    .local v7, "i":I
    :goto_c2
    if-eq v7, v1, :cond_ca

    .line 437
    invoke-interface {v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update(B)V

    .line 435
    add-int/lit8 v7, v7, 0x1

    goto :goto_c2

    .line 445
    .end local v6    # "textLength":I
    .end local v7    # "i":I
    .end local v8    # "extra":I
    :cond_ca
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->update([BII)V

    .line 447
    invoke-interface {v0, p4, v4}, Lcom/android/internal/org/bouncycastle/crypto/Mac;->doFinal([BI)I

    move-result v1

    return v1
.end method

.method private blacklist getAssociatedTextLength()I
    .registers 3

    .line 462
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_f

    :cond_c
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    array-length v1, v1

    :goto_f
    add-int/2addr v0, v1

    return v0
.end method

.method private blacklist getMacSize(ZI)I
    .registers 5
    .param p1, "forEncryption"    # Z
    .param p2, "requestedMacBits"    # I

    .line 452
    if-eqz p1, :cond_18

    const/16 v0, 0x20

    if-lt p2, v0, :cond_f

    const/16 v0, 0x80

    if-gt p2, v0, :cond_f

    and-int/lit8 v0, p2, 0xf

    if-nez v0, :cond_f

    goto :goto_18

    .line 454
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tag length in octets must be one of {4,6,8,10,12,14,16}"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_18
    :goto_18
    ushr-int/lit8 v0, p2, 0x3

    return v0
.end method

.method private blacklist hasAssociatedText()Z
    .registers 2

    .line 467
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getAssociatedTextLength()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static blacklist newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CCMModeCipher;
    .registers 2
    .param p0, "cipher"    # Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    .line 45
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;-><init>(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)V

    return-object v0
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 10
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->getBuffer()[B

    move-result-object v2

    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    .local v5, "out":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    move-result p1

    .line 161
    .local p1, "len":I
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 163
    return p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/CCM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMac()[B
    .registers 5

    .line 181
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    new-array v0, v0, [B

    .line 183
    .local v0, "mac":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    return-object v0
.end method

.method public blacklist getOutputSize(I)I
    .registers 4
    .param p1, "len"    # I

    .line 195
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->size()I

    move-result v0

    add-int/2addr v0, p1

    .line 197
    .local v0, "totalData":I
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v1, :cond_f

    .line 199
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v1, v0

    return v1

    .line 202
    :cond_f
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-ge v0, v1, :cond_15

    const/4 v1, 0x0

    goto :goto_19

    :cond_15
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v1, v0, v1

    :goto_19
    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public blacklist getUpdateOutputSize(I)I
    .registers 3
    .param p1, "len"    # I

    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 80
    iput-boolean p1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    .line 83
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_24

    .line 85
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;

    .line 87
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 88
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 89
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 90
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/AEADParameters;->getKey()Lcom/android/internal/org/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 91
    .local v0, "cipherParameters":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    goto :goto_41

    .line 92
    .end local v0    # "cipherParameters":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_24
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_62

    .line 94
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    .line 96
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->initialAssociatedText:[B

    .line 98
    const/16 v1, 0x40

    invoke-direct {p0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->getMacSize(ZI)I

    move-result v1

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .line 99
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    .line 100
    .local v0, "cipherParameters":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    nop

    .line 107
    :goto_41
    if-eqz v0, :cond_45

    .line 109
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 112
    :cond_45
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v1, v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_5a

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v1, v1

    const/16 v2, 0xd

    if-gt v1, v2, :cond_5a

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->reset()V

    .line 118
    return-void

    .line 114
    :cond_5a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "nonce must have length from 7 to 13 octets"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    .end local v0    # "cipherParameters":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameters passed to CCM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processAADByte(B)V
    .registers 3
    .param p1, "in"    # B

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 128
    return-void
.end method

.method public blacklist processAADBytes([BII)V
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 133
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 134
    return-void
.end method

.method public blacklist processByte(B[BI)I
    .registers 5
    .param p1, "in"    # B
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write(I)V

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist processBytes([BII[BI)I
    .registers 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 147
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_c

    .line 151
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->write([BII)V

    .line 153
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_c
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist processPacket([BII[BI)I
    .registers 23
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;,
            Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    if-eqz v6, :cond_120

    .line 261
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v6, v6

    .line 262
    .local v6, "n":I
    rsub-int/lit8 v7, v6, 0xf

    .line 263
    .local v7, "q":I
    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ge v7, v8, :cond_28

    .line 265
    mul-int/lit8 v8, v7, 0x8

    shl-int v8, v9, v8

    .line 266
    .local v8, "limitLen":I
    if-ge v3, v8, :cond_20

    goto :goto_28

    .line 268
    :cond_20
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "CCM packet too large for choice of q."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 272
    .end local v8    # "limitLen":I
    :cond_28
    :goto_28
    iget v8, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v8, v8, [B

    .line 273
    .local v8, "iv":[B
    add-int/lit8 v10, v7, -0x1

    and-int/lit8 v10, v10, 0x7

    int-to-byte v10, v10

    const/4 v11, 0x0

    aput-byte v10, v8, v11

    .line 274
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->nonce:[B

    array-length v12, v12

    invoke-static {v10, v11, v8, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-static {v9}, Lcom/android/internal/org/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;)Lcom/android/internal/org/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v9

    .line 277
    .local v9, "ctrCipher":Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    iget-boolean v10, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    new-instance v12, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;

    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->keyParam:Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    invoke-direct {v12, v13, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v9, v10, v12}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 280
    move/from16 v10, p2

    .line 281
    .local v10, "inIndex":I
    move/from16 v12, p5

    .line 283
    .local v12, "outIndex":I
    iget-boolean v13, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    const-string v14, "Output buffer too short."

    if-eqz v13, :cond_a4

    .line 285
    iget v13, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v13, v3

    .line 286
    .local v13, "outputLen":I
    array-length v15, v4

    add-int v11, v13, v5

    if-lt v15, v11, :cond_9e

    .line 291
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 293
    iget v11, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v11, v11, [B

    .line 295
    .local v11, "encMac":[B
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    const/4 v15, 0x0

    invoke-interface {v9, v14, v15, v11, v15}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 297
    :goto_6f
    add-int v14, v2, v3

    iget v15, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v14, v15

    if-ge v10, v14, :cond_80

    .line 299
    invoke-interface {v9, v1, v10, v4, v12}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 300
    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v14

    .line 301
    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v10, v14

    goto :goto_6f

    .line 304
    :cond_80
    iget v14, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v14, v14, [B

    .line 306
    .local v14, "block":[B
    add-int v15, v3, v2

    sub-int/2addr v15, v10

    const/4 v2, 0x0

    invoke-static {v1, v10, v14, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 308
    invoke-interface {v9, v14, v2, v14, v2}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 310
    add-int v15, v3, p2

    sub-int/2addr v15, v10

    invoke-static {v14, v2, v4, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    add-int v15, v5, v3

    move/from16 v16, v6

    .end local v6    # "n":I
    .local v16, "n":I
    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    invoke-static {v11, v2, v4, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    .end local v11    # "encMac":[B
    .end local v14    # "block":[B
    goto :goto_109

    .line 288
    .end local v16    # "n":I
    .restart local v6    # "n":I
    :cond_9e
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v2, v14}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    .end local v13    # "outputLen":I
    :cond_a4
    move/from16 v16, v6

    .end local v6    # "n":I
    .restart local v16    # "n":I
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt v3, v2, :cond_118

    .line 320
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v13, v3, v2

    .line 321
    .restart local v13    # "outputLen":I
    array-length v2, v4

    add-int v6, v13, v5

    if-lt v2, v6, :cond_112

    .line 326
    add-int v2, p2, v13

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget v11, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    const/4 v15, 0x0

    invoke-static {v1, v2, v6, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 328
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-interface {v9, v2, v15, v6, v15}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 330
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    .local v2, "i":I
    :goto_c6
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    array-length v6, v6

    if-eq v2, v6, :cond_d3

    .line 332
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    aput-byte v15, v6, v2

    .line 330
    add-int/lit8 v2, v2, 0x1

    const/4 v15, 0x0

    goto :goto_c6

    .line 335
    .end local v2    # "i":I
    :cond_d3
    :goto_d3
    add-int v2, p2, v13

    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    sub-int/2addr v2, v6

    if-ge v10, v2, :cond_e4

    .line 337
    invoke-interface {v9, v1, v10, v4, v12}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 338
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v12, v2

    .line 339
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    add-int/2addr v10, v2

    goto :goto_d3

    .line 342
    :cond_e4
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v2, v2, [B

    .line 344
    .local v2, "block":[B
    sub-int v6, v10, p2

    sub-int v6, v13, v6

    const/4 v15, 0x0

    invoke-static {v1, v10, v2, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    invoke-interface {v9, v2, v15, v2, v15}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 348
    sub-int v6, v10, p2

    sub-int v6, v13, v6

    invoke-static {v2, v15, v4, v12, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    iget v6, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->blockSize:I

    new-array v6, v6, [B

    .line 352
    .local v6, "calculatedMacBlock":[B
    invoke-direct {v0, v4, v5, v13, v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->calculateMac([BII[B)I

    .line 354
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macBlock:[B

    invoke-static {v11, v6}, Lcom/android/internal/org/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v11

    if-eqz v11, :cond_10a

    .line 360
    .end local v2    # "block":[B
    .end local v6    # "calculatedMacBlock":[B
    :goto_109
    return v13

    .line 356
    .restart local v2    # "block":[B
    .restart local v6    # "calculatedMacBlock":[B
    :cond_10a
    new-instance v11, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v14, "mac check in CCM failed"

    invoke-direct {v11, v14}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 323
    .end local v2    # "block":[B
    .end local v6    # "calculatedMacBlock":[B
    :cond_112
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v2, v14}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    .end local v13    # "outputLen":I
    :cond_118
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v6, "data too short"

    invoke-direct {v2, v6}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 258
    .end local v7    # "q":I
    .end local v8    # "iv":[B
    .end local v9    # "ctrCipher":Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;
    .end local v10    # "inIndex":I
    .end local v12    # "outIndex":I
    .end local v16    # "n":I
    :cond_120
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v6, "CCM cipher unitialized."

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist processPacket([BII)[B
    .registers 11
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_b

    .line 222
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    add-int/2addr v0, p3

    new-array v0, v0, [B

    move-object v5, v0

    .local v0, "output":[B
    goto :goto_16

    .line 226
    .end local v0    # "output":[B
    :cond_b
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    if-lt p3, v0, :cond_1f

    .line 230
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->macSize:I

    sub-int v0, p3, v0

    new-array v0, v0, [B

    move-object v5, v0

    .line 233
    .local v5, "output":[B
    :goto_16
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .end local p3    # "inLen":I
    .local v2, "in":[B
    .local v3, "inOff":I
    .local v4, "inLen":I
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->processPacket([BII[BI)I

    .line 235
    return-object v5

    .line 228
    .end local v2    # "in":[B
    .end local v3    # "inOff":I
    .end local v4    # "inLen":I
    .end local v5    # "output":[B
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    .restart local p3    # "inLen":I
    :cond_1f
    move-object v2, p1

    move v3, p2

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .restart local v2    # "in":[B
    .restart local v3    # "inOff":I
    new-instance p1, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "data too short"

    invoke-direct {p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist reset()V
    .registers 2

    .line 168
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->cipher:Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/BlockCipher;->reset()V

    .line 169
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->associatedText:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 170
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher;->data:Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/modes/CCMBlockCipher$ExposedByteArrayOutputStream;->reset()V

    .line 171
    return-void
.end method
