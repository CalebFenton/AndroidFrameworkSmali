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
.field private buf:[B

.field private count:I

.field private pos:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 327
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, v0}, Ljava/util/jar/Manifest$FastInputStream;-><init>(Ljava/io/InputStream;I)V

    #@5
    .line 326
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 331
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@4
    .line 323
    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@6
    .line 324
    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@8
    .line 332
    new-array v0, p2, [B

    #@a
    iput-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    #@c
    .line 330
    return-void
.end method

.method private fill()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 440
    iput v4, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@3
    iput v4, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@5
    .line 441
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    #@7
    iget-object v2, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    #@9
    iget-object v3, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    #@b
    array-length v3, v3

    #@c
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    #@f
    move-result v0

    #@10
    .line 442
    .local v0, "n":I
    if-lez v0, :cond_0

    #@12
    .line 443
    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@14
    .line 439
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 428
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@2
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@4
    sub-int/2addr v0, v1

    #@5
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    #@7
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    #@a
    move-result v1

    #@b
    add-int/2addr v0, v1

    #@c
    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 432
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 433
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    #@7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@a
    .line 434
    iput-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    #@c
    .line 435
    iput-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    #@e
    .line 431
    :cond_0
    return-void
.end method

.method public peek()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 401
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@2
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 402
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    #@9
    .line 403
    :cond_0
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@b
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@d
    if-ne v0, v1, :cond_1

    #@f
    .line 404
    const/4 v0, -0x1

    #@10
    return v0

    #@11
    .line 405
    :cond_1
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    #@13
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@15
    aget-byte v0, v0, v1

    #@17
    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 336
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@2
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 337
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    #@9
    .line 338
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@b
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@d
    if-lt v0, v1, :cond_0

    #@f
    .line 339
    const/4 v0, -0x1

    #@10
    return v0

    #@11
    .line 342
    :cond_0
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    #@13
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@15
    add-int/lit8 v2, v1, 0x1

    #@17
    iput v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@19
    aget-byte v0, v0, v1

    #@1b
    and-int/lit16 v0, v0, 0xff

    #@1d
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 346
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@2
    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 347
    .local v0, "avail":I
    if-gtz v0, :cond_1

    #@8
    .line 348
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    #@a
    array-length v1, v1

    #@b
    if-lt p3, v1, :cond_0

    #@d
    .line 349
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    #@f
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@12
    move-result v1

    #@13
    return v1

    #@14
    .line 351
    :cond_0
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    #@17
    .line 352
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@19
    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@1b
    sub-int v0, v1, v2

    #@1d
    .line 353
    if-gtz v0, :cond_1

    #@1f
    .line 354
    const/4 v1, -0x1

    #@20
    return v1

    #@21
    .line 357
    :cond_1
    if-le p3, v0, :cond_2

    #@23
    .line 358
    move p3, v0

    #@24
    .line 360
    :cond_2
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    #@26
    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@28
    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@2b
    .line 361
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@2d
    add-int/2addr v1, p3

    #@2e
    iput v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@30
    .line 362
    return p3
.end method

.method public readLine([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 409
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/jar/Manifest$FastInputStream;->readLine([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public readLine([BII)I
    .locals 10
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0xa

    #@2
    .line 370
    iget-object v3, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    #@4
    .line 371
    .local v3, "tbuf":[B
    const/4 v4, 0x0

    #@5
    .line 372
    .local v4, "total":I
    :cond_0
    if-ge v4, p3, :cond_5

    #@7
    .line 373
    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@9
    iget v8, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@b
    sub-int v0, v7, v8

    #@d
    .line 374
    .local v0, "avail":I
    if-gtz v0, :cond_1

    #@f
    .line 375
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    #@12
    .line 376
    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@14
    iget v8, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@16
    sub-int v0, v7, v8

    #@18
    .line 377
    if-gtz v0, :cond_1

    #@1a
    .line 378
    const/4 v7, -0x1

    #@1b
    return v7

    #@1c
    .line 381
    :cond_1
    sub-int v2, p3, v4

    #@1e
    .line 382
    .local v2, "n":I
    if-le v2, v0, :cond_2

    #@20
    .line 383
    move v2, v0

    #@21
    .line 385
    :cond_2
    iget v5, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@23
    .line 386
    .local v5, "tpos":I
    add-int v1, v5, v2

    #@25
    .local v1, "maxpos":I
    move v6, v5

    #@26
    .line 387
    .end local v5    # "tpos":I
    .local v6, "tpos":I
    :goto_0
    if-ge v6, v1, :cond_3

    #@28
    add-int/lit8 v5, v6, 0x1

    #@2a
    .end local v6    # "tpos":I
    .restart local v5    # "tpos":I
    aget-byte v7, v3, v6

    #@2c
    if-eq v7, v9, :cond_4

    #@2e
    move v6, v5

    #@2f
    .end local v5    # "tpos":I
    .restart local v6    # "tpos":I
    goto :goto_0

    #@30
    :cond_3
    move v5, v6

    #@31
    .line 388
    .end local v6    # "tpos":I
    .restart local v5    # "tpos":I
    :cond_4
    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@33
    sub-int v2, v5, v7

    #@35
    .line 389
    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@37
    invoke-static {v3, v7, p1, p2, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@3a
    .line 390
    add-int/2addr p2, v2

    #@3b
    .line 391
    add-int/2addr v4, v2

    #@3c
    .line 392
    iput v5, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@3e
    .line 393
    add-int/lit8 v7, v5, -0x1

    #@40
    aget-byte v7, v3, v7

    #@42
    if-ne v7, v9, :cond_0

    #@44
    .line 397
    .end local v0    # "avail":I
    .end local v1    # "maxpos":I
    .end local v2    # "n":I
    .end local v5    # "tpos":I
    :cond_5
    return v4
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 413
    cmp-long v2, p1, v4

    #@4
    if-gtz v2, :cond_0

    #@6
    .line 414
    return-wide v4

    #@7
    .line 416
    :cond_0
    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    #@9
    iget v3, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@b
    sub-int/2addr v2, v3

    #@c
    int-to-long v0, v2

    #@d
    .line 417
    .local v0, "avail":J
    cmp-long v2, v0, v4

    #@f
    if-gtz v2, :cond_1

    #@11
    .line 418
    iget-object v2, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    #@13
    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    #@16
    move-result-wide v2

    #@17
    return-wide v2

    #@18
    .line 420
    :cond_1
    cmp-long v2, p1, v0

    #@1a
    if-lez v2, :cond_2

    #@1c
    .line 421
    move-wide p1, v0

    #@1d
    .line 423
    :cond_2
    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@1f
    int-to-long v2, v2

    #@20
    add-long/2addr v2, p1

    #@21
    long-to-int v2, v2

    #@22
    iput v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    #@24
    .line 424
    return-wide p1
.end method
