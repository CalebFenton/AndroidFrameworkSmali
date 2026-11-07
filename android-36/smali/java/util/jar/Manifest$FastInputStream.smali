.class Ljava/util/jar/Manifest$FastInputStream;
.super Ljava/io/FilterInputStream;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastInputStream"
.end annotation


# instance fields
.field private greylist-max-o buf:[B

.field private greylist-max-o count:I

.field private greylist-max-o pos:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 426
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/util/jar/Manifest$FastInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 427
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .line 430
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 422
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    .line 423
    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    .line 431
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    .line 432
    return-void
.end method

.method private greylist-max-o fill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 564
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    .line 565
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    iget-object v3, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 566
    .local v0, "n":I
    if-lez v0, :cond_14

    .line 567
    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    .line 569
    :cond_14
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 552
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 556
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    .line 557
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 558
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    .line 559
    iput-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    .line 561
    :cond_e
    return-void
.end method

.method public greylist-max-o peek()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-ne v0, v1, :cond_9

    .line 526
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    .line 527
    :cond_9
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-ne v0, v1, :cond_11

    .line 528
    const/4 v0, -0x1

    return v0

    .line 529
    :cond_11
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-lt v0, v1, :cond_11

    .line 436
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    .line 437
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-lt v0, v1, :cond_11

    .line 438
    const/4 v0, -0x1

    return v0

    .line 441
    :cond_11
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 446
    .local v0, "avail":I
    if-gtz v0, :cond_20

    .line 447
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    array-length v1, v1

    if-lt p3, v1, :cond_13

    .line 448
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    return v1

    .line 450
    :cond_13
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    .line 451
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v0, v1, v2

    .line 452
    if-gtz v0, :cond_20

    .line 453
    const/4 v1, -0x1

    return v1

    .line 456
    :cond_20
    if-le p3, v0, :cond_23

    .line 457
    move p3, v0

    .line 459
    :cond_23
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    .line 461
    return p3
.end method

.method public greylist-max-o readLine([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 533
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/jar/Manifest$FastInputStream;->readLine([BII)I

    move-result v0

    return v0
.end method

.method public greylist-max-o readLine([BII)I
    .registers 14
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    .line 470
    .local v0, "tbuf":[B
    const/4 v1, 0x0

    .line 471
    .local v1, "total":I
    :goto_3
    if-ge v1, p3, :cond_80

    .line 472
    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v3, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v2, v3

    .line 473
    .local v2, "avail":I
    if-gtz v2, :cond_19

    .line 474
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    .line 475
    iget v3, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v4, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v2, v3, v4

    .line 476
    if-gtz v2, :cond_19

    .line 477
    const/4 v3, -0x1

    return v3

    .line 480
    :cond_19
    sub-int v3, p3, v1

    .line 481
    .local v3, "n":I
    if-le v3, v2, :cond_1e

    .line 482
    move v3, v2

    .line 484
    :cond_1e
    iget v4, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    .line 485
    .local v4, "tpos":I
    add-int v5, v4, v3

    .line 486
    .local v5, "maxpos":I
    const/4 v6, 0x0

    .line 488
    .local v6, "c":B
    :goto_23
    const/16 v7, 0xd

    const/16 v8, 0xa

    if-ge v4, v5, :cond_35

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "tpos":I
    .local v9, "tpos":I
    aget-byte v4, v0, v4

    move v6, v4

    if-eq v4, v8, :cond_34

    if-eq v6, v7, :cond_34

    move v4, v9

    goto :goto_23

    .line 489
    :cond_34
    move v4, v9

    .end local v9    # "tpos":I
    .restart local v4    # "tpos":I
    :cond_35
    if-ne v6, v7, :cond_3f

    if-ge v4, v5, :cond_3f

    aget-byte v9, v0, v4

    if-ne v9, v8, :cond_3f

    .line 490
    add-int/lit8 v4, v4, 0x1

    .line 492
    :cond_3f
    iget v9, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v3, v4, v9

    .line 493
    iget v9, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    invoke-static {v0, v9, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    add-int/2addr p2, v3

    .line 495
    add-int/2addr v1, v3

    .line 496
    iput v4, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    .line 497
    add-int/lit8 v9, v4, -0x1

    aget-byte v6, v0, v9

    .line 498
    if-ne v6, v8, :cond_53

    .line 499
    goto :goto_80

    .line 501
    :cond_53
    if-ne v6, v7, :cond_7f

    .line 502
    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v9, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    if-ne v7, v9, :cond_80

    .line 504
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    .line 505
    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v9, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-ge v7, v9, :cond_80

    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    aget-byte v7, v0, v7

    if-ne v7, v8, :cond_80

    .line 506
    if-ge v1, p3, :cond_74

    .line 507
    add-int/lit8 v7, p2, 0x1

    .end local p2    # "off":I
    .local v7, "off":I
    aput-byte v8, p1, p2

    .line 508
    add-int/lit8 v1, v1, 0x1

    move p2, v7

    goto :goto_78

    .line 513
    .end local v7    # "off":I
    .restart local p2    # "off":I
    :cond_74
    add-int/lit8 v7, p2, -0x1

    aput-byte v8, p1, v7

    .line 515
    :goto_78
    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    goto :goto_80

    .line 520
    .end local v2    # "avail":I
    .end local v3    # "n":I
    .end local v4    # "tpos":I
    .end local v5    # "maxpos":I
    .end local v6    # "c":B
    :cond_7f
    goto :goto_3

    .line 521
    :cond_80
    :goto_80
    return v1
.end method

.method public whitelist test-api skip(J)J
    .registers 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    .line 538
    return-wide v0

    .line 540
    :cond_7
    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v3, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 541
    .local v2, "avail":J
    cmp-long v0, v2, v0

    if-gtz v0, :cond_18

    .line 542
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0

    .line 544
    :cond_18
    cmp-long v0, p1, v2

    if-lez v0, :cond_1d

    .line 545
    move-wide p1, v2

    .line 547
    :cond_1d
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    .line 548
    return-wide p1
.end method
