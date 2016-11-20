.class public Ljava/io/BufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "BufferedInputStream.java"


# static fields
.field private static final bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
            "<",
            "Ljava/io/BufferedInputStream;",
            "[B>;"
        }
    .end annotation
.end field

.field private static defaultBufferSize:I


# instance fields
.field protected volatile buf:[B

.field protected count:I

.field protected marklimit:I

.field protected markpos:I

.field protected pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 53
    const/16 v0, 0x2000

    #@2
    sput v0, Ljava/io/BufferedInputStream;->defaultBufferSize:I

    #@4
    .line 71
    const-class v0, Ljava/io/BufferedInputStream;

    #@6
    const-class v1, [B

    #@8
    const-string/jumbo v2, "buf"

    #@b
    .line 70
    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@e
    move-result-object v0

    #@f
    .line 69
    sput-object v0, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@11
    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 175
    sget v0, Ljava/io/BufferedInputStream;->defaultBufferSize:I

    #@2
    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    #@5
    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 191
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 128
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@6
    .line 192
    if-gtz p2, :cond_0

    #@8
    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Buffer size <= 0"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 195
    :cond_0
    new-array v0, p2, [B

    #@13
    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@15
    .line 190
    return-void
.end method

.method private fill()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 206
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    #@4
    move-result-object v0

    #@5
    .line 207
    .local v0, "buffer":[B
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@7
    if-gez v5, :cond_2

    #@9
    .line 208
    iput v7, p0, Ljava/io/BufferedInputStream;->pos:I

    #@b
    .line 234
    :cond_0
    :goto_0
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    #@d
    iput v5, p0, Ljava/io/BufferedInputStream;->count:I

    #@f
    .line 235
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    #@12
    move-result-object v5

    #@13
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    #@15
    array-length v7, v0

    #@16
    iget v8, p0, Ljava/io/BufferedInputStream;->pos:I

    #@18
    sub-int/2addr v7, v8

    #@19
    invoke-virtual {v5, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    #@1c
    move-result v1

    #@1d
    .line 236
    .local v1, "n":I
    if-lez v1, :cond_1

    #@1f
    .line 237
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    #@21
    add-int/2addr v5, v1

    #@22
    iput v5, p0, Ljava/io/BufferedInputStream;->count:I

    #@24
    .line 205
    :cond_1
    return-void

    #@25
    .line 209
    .end local v1    # "n":I
    :cond_2
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    #@27
    array-length v6, v0

    #@28
    if-lt v5, v6, :cond_0

    #@2a
    .line 210
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@2c
    if-lez v5, :cond_3

    #@2e
    .line 211
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    #@30
    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@32
    sub-int v4, v5, v6

    #@34
    .line 212
    .local v4, "sz":I
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@36
    invoke-static {v0, v5, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@39
    .line 213
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@3b
    .line 214
    iput v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@3d
    goto :goto_0

    #@3e
    .line 215
    .end local v4    # "sz":I
    :cond_3
    array-length v5, v0

    #@3f
    iget v6, p0, Ljava/io/BufferedInputStream;->marklimit:I

    #@41
    if-lt v5, v6, :cond_4

    #@43
    .line 216
    const/4 v5, -0x1

    #@44
    iput v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@46
    .line 217
    iput v7, p0, Ljava/io/BufferedInputStream;->pos:I

    #@48
    goto :goto_0

    #@49
    .line 219
    :cond_4
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    #@4b
    mul-int/lit8 v3, v5, 0x2

    #@4d
    .line 220
    .local v3, "nsz":I
    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    #@4f
    if-le v3, v5, :cond_5

    #@51
    .line 221
    iget v3, p0, Ljava/io/BufferedInputStream;->marklimit:I

    #@53
    .line 222
    :cond_5
    new-array v2, v3, [B

    #@55
    .line 223
    .local v2, "nbuf":[B
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    #@57
    invoke-static {v0, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@5a
    .line 224
    sget-object v5, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@5c
    invoke-virtual {v5, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5f
    move-result v5

    #@60
    if-nez v5, :cond_6

    #@62
    .line 230
    new-instance v5, Ljava/io/IOException;

    #@64
    const-string/jumbo v6, "Stream closed"

    #@67
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v5

    #@6b
    .line 232
    :cond_6
    move-object v0, v2

    #@6c
    goto :goto_0
.end method

.method private getBufIfOpen()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@2
    .line 161
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    #@4
    .line 162
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Stream closed"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 163
    :cond_0
    return-object v0
.end method

.method private getInIfOpen()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    #@2
    .line 150
    .local v0, "input":Ljava/io/InputStream;
    if-nez v0, :cond_0

    #@4
    .line 151
    new-instance v1, Ljava/io/IOException;

    #@6
    const-string/jumbo v2, "Stream closed"

    #@9
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 152
    :cond_0
    return-object v0
.end method

.method private read1([BII)I
    .locals 4
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
    .line 266
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    #@2
    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    #@4
    sub-int v0, v2, v3

    #@6
    .line 267
    .local v0, "avail":I
    if-gtz v0, :cond_1

    #@8
    .line 272
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    #@b
    move-result-object v2

    #@c
    array-length v2, v2

    #@d
    if-lt p3, v2, :cond_0

    #@f
    iget v2, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@11
    if-gez v2, :cond_0

    #@13
    .line 273
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@1a
    move-result v2

    #@1b
    return v2

    #@1c
    .line 275
    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    #@1f
    .line 276
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    #@21
    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    #@23
    sub-int v0, v2, v3

    #@25
    .line 277
    if-gtz v0, :cond_1

    #@27
    const/4 v2, -0x1

    #@28
    return v2

    #@29
    .line 279
    :cond_1
    if-ge v0, p3, :cond_2

    #@2b
    move v1, v0

    #@2c
    .line 280
    .local v1, "cnt":I
    :goto_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    #@2f
    move-result-object v2

    #@30
    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    #@32
    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@35
    .line 281
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    #@37
    add-int/2addr v2, v1

    #@38
    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    #@3a
    .line 282
    return v1

    #@3b
    .line 279
    .end local v1    # "cnt":I
    :cond_2
    move v1, p3

    #@3c
    .restart local v1    # "cnt":I
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const v2, 0x7fffffff

    #@3
    monitor-enter p0

    #@4
    .line 398
    :try_start_0
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    #@6
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@8
    sub-int v1, v3, v4

    #@a
    .line 399
    .local v1, "n":I
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    #@d
    move-result-object v3

    #@e
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result v0

    #@12
    .line 400
    .local v0, "avail":I
    sub-int v3, v2, v0

    #@14
    if-le v1, v3, :cond_0

    #@16
    :goto_0
    monitor-exit p0

    #@17
    return v2

    #@18
    .line 402
    :cond_0
    add-int v2, v1, v0

    #@1a
    goto :goto_0

    #@1b
    .end local v0    # "avail":I
    .end local v1    # "n":I
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit p0

    #@1d
    throw v2
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 467
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@3
    .local v0, "buffer":[B
    if-eqz v0, :cond_2

    #@5
    .line 468
    sget-object v2, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    #@7
    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 469
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    #@f
    .line 470
    .local v1, "input":Ljava/io/InputStream;
    iput-object v3, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    #@11
    .line 471
    if-eqz v1, :cond_1

    #@13
    .line 472
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    #@16
    .line 473
    :cond_1
    return-void

    #@17
    .line 465
    .end local v1    # "input":Ljava/io/InputStream;
    :cond_2
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 414
    :try_start_0
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    #@3
    .line 415
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    #@5
    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 413
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 453
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 253
    :try_start_0
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    #@3
    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    #@5
    if-lt v0, v1, :cond_0

    #@7
    .line 254
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    #@a
    .line 255
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    #@c
    iget v1, p0, Ljava/io/BufferedInputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    if-lt v0, v1, :cond_0

    #@10
    .line 256
    const/4 v0, -0x1

    #@11
    monitor-exit p0

    #@12
    return v0

    #@13
    .line 258
    :cond_0
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    #@16
    move-result-object v0

    #@17
    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    #@19
    add-int/lit8 v2, v1, 0x1

    #@1b
    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    #@1d
    aget-byte v0, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    and-int/lit16 v0, v0, 0xff

    #@21
    monitor-exit p0

    #@22
    return v0

    #@23
    :catchall_0
    move-exception v0

    #@24
    monitor-exit p0

    #@25
    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 7
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
    const/4 v6, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 325
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    #@5
    .line 326
    or-int v3, p2, p3

    #@7
    add-int v4, p2, p3

    #@9
    or-int/2addr v3, v4

    #@a
    array-length v4, p1

    #@b
    add-int v5, p2, p3

    #@d
    sub-int/2addr v4, v5

    #@e
    or-int/2addr v3, v4

    #@f
    if-gez v3, :cond_0

    #@11
    .line 327
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@13
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@16
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    :catchall_0
    move-exception v3

    #@18
    monitor-exit p0

    #@19
    throw v3

    #@1a
    .line 328
    :cond_0
    if-nez p3, :cond_1

    #@1c
    monitor-exit p0

    #@1d
    .line 329
    return v6

    #@1e
    .line 332
    :cond_1
    const/4 v1, 0x0

    #@1f
    .line 334
    .local v1, "n":I
    :cond_2
    add-int v3, p2, v1

    #@21
    sub-int v4, p3, v1

    #@23
    :try_start_1
    invoke-direct {p0, p1, v3, v4}, Ljava/io/BufferedInputStream;->read1([BII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    move-result v2

    #@27
    .line 335
    .local v2, "nread":I
    if-gtz v2, :cond_4

    #@29
    .line 336
    if-nez v1, :cond_3

    #@2b
    .end local v2    # "nread":I
    :goto_0
    monitor-exit p0

    #@2c
    return v2

    #@2d
    .restart local v2    # "nread":I
    :cond_3
    move v2, v1

    #@2e
    goto :goto_0

    #@2f
    .line 337
    :cond_4
    add-int/2addr v1, v2

    #@30
    .line 338
    if-lt v1, p3, :cond_5

    #@32
    monitor-exit p0

    #@33
    .line 339
    return v1

    #@34
    .line 341
    :cond_5
    :try_start_2
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    #@36
    .line 342
    .local v0, "input":Ljava/io/InputStream;
    if-eqz v0, :cond_2

    #@38
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    move-result v3

    #@3c
    if-gtz v3, :cond_2

    #@3e
    monitor-exit p0

    #@3f
    .line 343
    return v1
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 435
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    #@4
    .line 436
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@6
    if-gez v0, :cond_0

    #@8
    .line 437
    new-instance v0, Ljava/io/IOException;

    #@a
    const-string/jumbo v1, "Resetting to invalid mark"

    #@d
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0

    #@14
    .line 438
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@16
    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 434
    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 357
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 358
    cmp-long v4, p1, v6

    #@8
    if-gtz v4, :cond_0

    #@a
    monitor-exit p0

    #@b
    .line 359
    return-wide v6

    #@c
    .line 361
    :cond_0
    :try_start_1
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    #@e
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    #@10
    sub-int/2addr v4, v5

    #@11
    int-to-long v0, v4

    #@12
    .line 363
    .local v0, "avail":J
    cmp-long v4, v0, v6

    #@14
    if-gtz v4, :cond_2

    #@16
    .line 365
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@18
    if-gez v4, :cond_1

    #@1a
    .line 366
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    move-result-wide v4

    #@22
    monitor-exit p0

    #@23
    return-wide v4

    #@24
    .line 369
    :cond_1
    :try_start_2
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    #@27
    .line 370
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    #@29
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2b
    sub-int/2addr v4, v5

    #@2c
    int-to-long v0, v4

    #@2d
    .line 371
    cmp-long v4, v0, v6

    #@2f
    if-gtz v4, :cond_2

    #@31
    monitor-exit p0

    #@32
    .line 372
    return-wide v6

    #@33
    .line 375
    :cond_2
    cmp-long v4, v0, p1

    #@35
    if-gez v4, :cond_3

    #@37
    move-wide v2, v0

    #@38
    .line 376
    .local v2, "skipped":J
    :goto_0
    :try_start_3
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@3a
    int-to-long v4, v4

    #@3b
    add-long/2addr v4, v2

    #@3c
    long-to-int v4, v4

    #@3d
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3f
    monitor-exit p0

    #@40
    .line 377
    return-wide v2

    #@41
    .line 375
    .end local v2    # "skipped":J
    :cond_3
    move-wide v2, p1

    #@42
    .restart local v2    # "skipped":J
    goto :goto_0

    #@43
    .end local v0    # "avail":J
    .end local v2    # "skipped":J
    :catchall_0
    move-exception v4

    #@44
    monitor-exit p0

    #@45
    throw v4
.end method
