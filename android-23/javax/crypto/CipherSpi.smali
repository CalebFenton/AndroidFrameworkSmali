.class public abstract Ljavax/crypto/CipherSpi;
.super Ljava/lang/Object;
.source "CipherSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 517
    if-nez p1, :cond_0

    #@3
    .line 518
    new-instance v6, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v7, "input == null"

    #@8
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v6

    #@c
    .line 520
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 521
    new-instance v6, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v7, "output == null"

    #@13
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v6

    #@17
    .line 523
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@1a
    move-result v5

    #@1b
    .line 524
    .local v5, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@1e
    move-result v3

    #@1f
    .line 526
    .local v3, "limit":I
    sub-int v6, v3, v5

    #@21
    if-gtz v6, :cond_2

    #@23
    .line 527
    return v7

    #@24
    .line 532
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_3

    #@2a
    .line 533
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@2d
    move-result-object v0

    #@2e
    .line 534
    .local v0, "bInput":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@31
    move-result v4

    #@32
    .line 535
    .local v4, "offset":I
    add-int v6, v4, v5

    #@34
    sub-int v7, v3, v5

    #@36
    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    #@39
    move-result-object v1

    #@3a
    .line 536
    .local v1, "bOutput":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@3d
    .line 542
    .end local v4    # "offset":I
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@40
    move-result v6

    #@41
    array-length v7, v1

    #@42
    if-ge v6, v7, :cond_4

    #@44
    .line 543
    new-instance v6, Ljavax/crypto/ShortBufferException;

    #@46
    const-string/jumbo v7, "output buffer too small"

    #@49
    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v6

    #@4d
    .line 538
    .end local v0    # "bInput":[B
    .end local v1    # "bOutput":[B
    :cond_3
    sub-int v6, v3, v5

    #@4f
    new-array v0, v6, [B

    #@51
    .line 539
    .restart local v0    # "bInput":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@54
    .line 540
    sub-int v6, v3, v5

    #@56
    invoke-virtual {p0, v0, v7, v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    #@59
    move-result-object v1

    #@5a
    .restart local v1    # "bOutput":[B
    goto :goto_0

    #@5b
    .line 546
    :cond_4
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    .line 550
    array-length v6, v1

    #@5f
    return v6

    #@60
    .line 547
    :catch_0
    move-exception v2

    #@61
    .line 548
    .local v2, "e":Ljava/nio/BufferOverflowException;
    new-instance v6, Ljavax/crypto/ShortBufferException;

    #@63
    const-string/jumbo v7, "output buffer too small"

    #@66
    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@69
    throw v6
.end method

.method protected abstract engineDoFinal([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineDoFinal([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method protected abstract engineGetBlockSize()I
.end method

.method protected abstract engineGetIV()[B
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 614
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected abstract engineGetOutputSize(I)I
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract engineSetMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method protected abstract engineSetPadding(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 1
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    #@0
    .prologue
    .line 597
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protected engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 9
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 333
    if-nez p1, :cond_0

    #@3
    .line 334
    new-instance v6, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v7, "input == null"

    #@8
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v6

    #@c
    .line 336
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 337
    new-instance v6, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v7, "output == null"

    #@13
    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v6

    #@17
    .line 339
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@1a
    move-result v5

    #@1b
    .line 340
    .local v5, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@1e
    move-result v3

    #@1f
    .line 341
    .local v3, "limit":I
    sub-int v6, v3, v5

    #@21
    if-gtz v6, :cond_2

    #@23
    .line 342
    return v8

    #@24
    .line 346
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_3

    #@2a
    .line 347
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@2d
    move-result-object v0

    #@2e
    .line 348
    .local v0, "bInput":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@31
    move-result v4

    #@32
    .line 349
    .local v4, "offset":I
    add-int v6, v4, v5

    #@34
    sub-int v7, v3, v5

    #@36
    invoke-virtual {p0, v0, v6, v7}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    #@39
    move-result-object v1

    #@3a
    .line 350
    .local v1, "bOutput":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@3d
    .line 356
    .end local v4    # "offset":I
    :goto_0
    if-nez v1, :cond_4

    #@3f
    .line 357
    return v8

    #@40
    .line 352
    .end local v0    # "bInput":[B
    .end local v1    # "bOutput":[B
    :cond_3
    sub-int v6, v3, v5

    #@42
    new-array v0, v6, [B

    #@44
    .line 353
    .restart local v0    # "bInput":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@47
    .line 354
    sub-int v6, v3, v5

    #@49
    invoke-virtual {p0, v0, v8, v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    #@4c
    move-result-object v1

    #@4d
    .restart local v1    # "bOutput":[B
    goto :goto_0

    #@4e
    .line 359
    :cond_4
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    #@51
    move-result v6

    #@52
    array-length v7, v1

    #@53
    if-ge v6, v7, :cond_5

    #@55
    .line 360
    new-instance v6, Ljavax/crypto/ShortBufferException;

    #@57
    const-string/jumbo v7, "output buffer too small"

    #@5a
    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@5d
    throw v6

    #@5e
    .line 363
    :cond_5
    :try_start_0
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    #@61
    .line 367
    array-length v6, v1

    #@62
    return v6

    #@63
    .line 364
    :catch_0
    move-exception v2

    #@64
    .line 365
    .local v2, "e":Ljava/nio/BufferOverflowException;
    new-instance v6, Ljavax/crypto/ShortBufferException;

    #@66
    const-string/jumbo v7, "output buffer too small"

    #@69
    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v6
.end method

.method protected abstract engineUpdate([BII[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected abstract engineUpdate([BII)[B
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 411
    if-nez p1, :cond_0

    #@3
    .line 412
    new-instance v5, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v6, "input == null"

    #@8
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v5

    #@c
    .line 414
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@f
    move-result v4

    #@10
    .line 415
    .local v4, "position":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@13
    move-result v2

    #@14
    .line 416
    .local v2, "limit":I
    sub-int v5, v2, v4

    #@16
    if-gtz v5, :cond_1

    #@18
    .line 417
    return-void

    #@19
    .line 420
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_2

    #@1f
    .line 421
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@22
    move-result-object v0

    #@23
    .line 422
    .local v0, "bInput":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    #@26
    move-result v3

    #@27
    .line 423
    .local v3, "offset":I
    add-int v5, v3, v4

    #@29
    sub-int v6, v2, v4

    #@2b
    invoke-virtual {p0, v0, v5, v6}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    #@2e
    .line 424
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@31
    .line 410
    .end local v3    # "offset":I
    :goto_0
    return-void

    #@32
    .line 426
    .end local v0    # "bInput":[B
    :cond_2
    sub-int v1, v2, v4

    #@34
    .line 427
    .local v1, "len":I
    new-array v0, v1, [B

    #@36
    .line 428
    .restart local v0    # "bInput":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@39
    .line 429
    invoke-virtual {p0, v0, v6, v1}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    #@3c
    goto :goto_0
.end method

.method protected engineUpdateAAD([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    #@0
    .prologue
    .line 393
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 394
    const-string/jumbo v1, "This cipher does not support Authenticated Encryption with Additional Data"

    #@5
    .line 393
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 569
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method
