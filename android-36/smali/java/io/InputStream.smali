.class public abstract Ljava/io/InputStream;
.super Ljava/lang/Object;
.source "InputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final blacklist DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final blacklist MAX_BUFFER_SIZE:I = 0x7ffffff7

.field private static final greylist-max-o MAX_SKIP_BUFFER_SIZE:I = 0x800


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist test-api nullInputStream()Ljava/io/InputStream;
    .registers 1

    .line 86
    new-instance v0, Ljava/io/InputStream$1;

    invoke-direct {v0}, Ljava/io/InputStream$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 646
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 658
    return-void
.end method

.method public declared-synchronized whitelist test-api mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 686
    monitor-exit p0

    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 749
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist test-api read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 280
    if-nez p3, :cond_8

    .line 281
    const/4 v0, 0x0

    return v0

    .line 284
    :cond_8
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 285
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 286
    return v1

    .line 288
    :cond_10
    int-to-byte v2, v0

    aput-byte v2, p1, p2

    .line 290
    const/4 v2, 0x1

    .line 292
    .local v2, "i":I
    :goto_14
    if-ge v2, p3, :cond_28

    .line 293
    :try_start_16
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    move v0, v3

    .line 294
    if-ne v0, v1, :cond_1e

    .line 295
    goto :goto_28

    .line 297
    :cond_1e
    add-int v3, p2, v2

    int-to-byte v4, v0

    aput-byte v4, p1, v3
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_26

    .line 292
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 299
    :catch_26
    move-exception v1

    goto :goto_29

    .line 300
    :cond_28
    :goto_28
    nop

    .line 301
    :goto_29
    return v2
.end method

.method public whitelist test-api readAllBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->readNBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api readNBytes([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "n":I
    :goto_5
    if-ge v0, p3, :cond_14

    .line 506
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 507
    .local v1, "count":I
    if-gez v1, :cond_12

    .line 508
    goto :goto_14

    .line 509
    :cond_12
    add-int/2addr v0, v1

    .line 510
    .end local v1    # "count":I
    goto :goto_5

    .line 511
    :cond_14
    :goto_14
    return v0
.end method

.method public whitelist test-api readNBytes(I)[B
    .registers 12
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    if-ltz p1, :cond_80

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "bufs":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x0

    .line 401
    .local v1, "result":[B
    const/4 v2, 0x0

    .line 402
    .local v2, "total":I
    move v3, p1

    .line 405
    .local v3, "remaining":I
    :cond_6
    const/16 v4, 0x2000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v4, v4, [B

    .line 406
    .local v4, "buf":[B
    const/4 v5, 0x0

    .line 409
    .local v5, "nread":I
    :goto_f
    array-length v6, v4

    sub-int/2addr v6, v5

    .line 410
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 409
    invoke-virtual {p0, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v7, v6

    .local v7, "n":I
    if-lez v6, :cond_1f

    .line 411
    add-int/2addr v5, v7

    .line 412
    sub-int/2addr v3, v7

    goto :goto_f

    .line 415
    :cond_1f
    const/4 v6, 0x0

    if-lez v5, :cond_4b

    .line 416
    const v8, 0x7ffffff7

    sub-int/2addr v8, v2

    if-lt v8, v5, :cond_43

    .line 419
    array-length v8, v4

    if-ge v5, v8, :cond_2f

    .line 420
    invoke-static {v4, v6, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 422
    :cond_2f
    add-int/2addr v2, v5

    .line 423
    if-nez v1, :cond_34

    .line 424
    move-object v1, v4

    goto :goto_4b

    .line 426
    :cond_34
    if-nez v0, :cond_3f

    .line 427
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    .line 428
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_3f
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4b

    .line 417
    :cond_43
    new-instance v6, Ljava/lang/OutOfMemoryError;

    const-string v8, "Required array size too large"

    invoke-direct {v6, v8}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v6

    .line 435
    .end local v4    # "buf":[B
    .end local v5    # "nread":I
    :cond_4b
    :goto_4b
    if-ltz v7, :cond_4f

    if-gtz v3, :cond_6

    .line 437
    :cond_4f
    if-nez v0, :cond_60

    .line 438
    if-nez v1, :cond_56

    .line 439
    new-array v4, v6, [B

    return-object v4

    .line 441
    :cond_56
    array-length v4, v1

    if-ne v4, v2, :cond_5b

    .line 442
    move-object v4, v1

    goto :goto_5f

    :cond_5b
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v4

    .line 441
    :goto_5f
    return-object v4

    .line 445
    :cond_60
    new-array v1, v2, [B

    .line 446
    const/4 v4, 0x0

    .line 447
    .local v4, "offset":I
    move v3, v2

    .line 448
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_68
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    .line 449
    .local v8, "b":[B
    array-length v9, v8

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 450
    .local v9, "count":I
    invoke-static {v8, v6, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    add-int/2addr v4, v9

    .line 452
    sub-int/2addr v3, v9

    .line 453
    .end local v8    # "b":[B
    .end local v9    # "count":I
    goto :goto_68

    .line 455
    :cond_7f
    return-object v1

    .line 396
    .end local v0    # "bufs":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v1    # "result":[B
    .end local v2    # "total":I
    .end local v3    # "remaining":I
    .end local v4    # "offset":I
    .end local v7    # "n":I
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "len < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 733
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    .end local p0    # "this":Ljava/io/InputStream;
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 537
    move-wide v0, p1

    .line 540
    .local v0, "remaining":J
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_8

    .line 541
    return-wide v2

    .line 544
    :cond_8
    const-wide/16 v4, 0x800

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 545
    .local v4, "size":I
    new-array v5, v4, [B

    .line 546
    .local v5, "skipBuffer":[B
    :goto_11
    cmp-long v6, v0, v2

    if-lez v6, :cond_26

    .line 547
    int-to-long v6, v4

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 548
    .local v6, "nr":I
    if-gez v6, :cond_23

    .line 549
    goto :goto_26

    .line 551
    :cond_23
    int-to-long v7, v6

    sub-long/2addr v0, v7

    goto :goto_11

    .line 554
    .end local v6    # "nr":I
    :cond_26
    :goto_26
    sub-long v2, p1, v0

    return-wide v2
.end method

.method public whitelist test-api skipNBytes(J)V
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 601
    nop

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_32

    .line 602
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 603
    .local v2, "ns":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_15

    cmp-long v4, v2, p1

    if-gtz v4, :cond_15

    .line 605
    sub-long/2addr p1, v2

    goto :goto_23

    .line 606
    :cond_15
    cmp-long v0, v2, v0

    if-nez v0, :cond_2a

    .line 608
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 612
    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    .line 616
    .end local v2    # "ns":J
    :goto_23
    goto :goto_1

    .line 609
    .restart local v2    # "ns":J
    :cond_24
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 614
    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to skip exactly"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    .end local v2    # "ns":J
    :cond_32
    return-void
.end method

.method public whitelist test-api transferTo(Ljava/io/OutputStream;)J
    .registers 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    const-string v0, "out"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 779
    const-wide/16 v0, 0x0

    .line 780
    .local v0, "transferred":J
    const/16 v2, 0x2000

    new-array v3, v2, [B

    .line 782
    .local v3, "buffer":[B
    :goto_b
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v6, v5

    .local v6, "read":I
    if-ltz v5, :cond_19

    .line 783
    invoke-virtual {p1, v3, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 784
    int-to-long v4, v6

    add-long/2addr v0, v4

    goto :goto_b

    .line 786
    :cond_19
    return-wide v0
.end method
