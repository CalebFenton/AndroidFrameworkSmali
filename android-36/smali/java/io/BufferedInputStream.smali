.class public Ljava/io/BufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "BufferedInputStream.java"


# static fields
.field private static final greylist-max-o DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final greylist-max-o bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Ljava/io/BufferedInputStream;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile whitelist test-api buf:[B

.field protected whitelist test-api count:I

.field protected whitelist test-api marklimit:I

.field protected whitelist test-api markpos:I

.field protected whitelist test-api pos:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 70
    nop

    .line 72
    const-class v0, Ljava/io/BufferedInputStream;

    const-class v1, [B

    const-string v2, "buf"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 70
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 176
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 177
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .line 192
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 193
    if-lez p2, :cond_d

    .line 196
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 197
    return-void

    .line 194
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o fill()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v0

    .line 208
    .local v0, "buffer":[B
    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    const/4 v2, 0x0

    if-gez v1, :cond_c

    .line 209
    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_57

    .line 210
    :cond_c
    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v3, v0

    if-lt v1, v3, :cond_57

    .line 211
    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-lez v1, :cond_24

    .line 212
    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v3, p0, Ljava/io/BufferedInputStream;->markpos:I

    sub-int/2addr v1, v3

    .line 213
    .local v1, "sz":I
    iget v3, p0, Ljava/io/BufferedInputStream;->markpos:I

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    iput v1, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 215
    iput v2, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 216
    .end local v1    # "sz":I
    goto :goto_57

    :cond_24
    array-length v1, v0

    iget v3, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-lt v1, v3, :cond_2f

    .line 217
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 218
    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_57

    .line 220
    :cond_2f
    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    const/4 v3, 0x1

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v1, v3, v4}, Ljdk/internal/util/ArraysSupport;->newLength(III)I

    move-result v1

    .line 223
    .local v1, "nsz":I
    iget v3, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-le v1, v3, :cond_3e

    .line 224
    iget v1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 225
    :cond_3e
    new-array v3, v1, [B

    .line 226
    .local v3, "nbuf":[B
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v0, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    sget-object v2, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 235
    move-object v0, v3

    goto :goto_57

    .line 233
    :cond_4f
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Stream closed"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    .end local v1    # "nsz":I
    .end local v3    # "nbuf":[B
    :cond_57
    :goto_57
    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v1, p0, Ljava/io/BufferedInputStream;->count:I

    .line 239
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v3, v0

    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 240
    .local v1, "n":I
    if-lez v1, :cond_70

    .line 241
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/BufferedInputStream;->count:I

    .line 242
    :cond_70
    return-void
.end method

.method private greylist-max-o getBufIfOpen()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 162
    .local v0, "buffer":[B
    if-eqz v0, :cond_5

    .line 164
    return-object v0

    .line 163
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o getInIfOpen()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 151
    .local v0, "input":Ljava/io/InputStream;
    if-eqz v0, :cond_5

    .line 153
    return-object v0

    .line 152
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o read1([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    iget v0, p0, Ljava/io/BufferedInputStream;->count:I

    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 271
    .local v0, "avail":I
    if-gtz v0, :cond_28

    .line 276
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v1

    array-length v1, v1

    if-lt p3, v1, :cond_1b

    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v1, :cond_1b

    .line 277
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    return v1

    .line 279
    :cond_1b
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 280
    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v0, v1, v2

    .line 281
    if-gtz v0, :cond_28

    const/4 v1, -0x1

    return v1

    .line 283
    :cond_28
    if-ge v0, p3, :cond_2c

    move v1, v0

    goto :goto_2d

    :cond_2c
    move v1, p3

    .line 284
    .local v1, "cnt":I
    :goto_2d
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v2

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 286
    return v1
.end method


# virtual methods
.method public declared-synchronized whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 402
    :try_start_1
    iget v0, p0, Ljava/io/BufferedInputStream;->count:I

    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 403
    .local v0, "n":I
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1a

    .line 404
    .local v1, "avail":I
    const v2, 0x7fffffff

    sub-int v3, v2, v1

    if-le v0, v3, :cond_16

    .line 405
    goto :goto_18

    .line 406
    :cond_16
    add-int v2, v0, v1

    .line 404
    :goto_18
    monitor-exit p0

    return v2

    .line 401
    .end local v0    # "n":I
    .end local v1    # "avail":I
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    nop

    :cond_1
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    move-object v1, v0

    .local v1, "buffer":[B
    if-eqz v0, :cond_19

    .line 472
    sget-object v0, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 474
    .local v0, "input":Ljava/io/InputStream;
    iput-object v2, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 475
    if-eqz v0, :cond_18

    .line 476
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 477
    :cond_18
    return-void

    .line 481
    .end local v0    # "input":Ljava/io/InputStream;
    :cond_19
    return-void
.end method

.method public declared-synchronized whitelist test-api mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 418
    :try_start_1
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 419
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 420
    monitor-exit p0

    return-void

    .line 417
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    .end local p1    # "readlimit":I
    :catchall_9
    move-exception p1

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw p1
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 457
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 257
    :try_start_1
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    if-lt v0, v1, :cond_13

    .line 258
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 259
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v1, p0, Ljava/io/BufferedInputStream;->count:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    if-lt v0, v1, :cond_13

    .line 260
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 262
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    :cond_13
    :try_start_13
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v0

    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_23

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 256
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method public declared-synchronized whitelist test-api read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 329
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    .line 330
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3f

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_39

    .line 332
    if-nez p3, :cond_15

    .line 333
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 336
    :cond_15
    const/4 v0, 0x0

    .line 338
    .local v0, "n":I
    :goto_16
    add-int v1, p2, v0

    sub-int v2, p3, v0

    :try_start_1a
    invoke-direct {p0, p1, v1, v2}, Ljava/io/BufferedInputStream;->read1([BII)I

    move-result v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_3f

    .line 339
    .local v1, "nread":I
    if-gtz v1, :cond_27

    .line 340
    if-nez v0, :cond_24

    move v2, v1

    goto :goto_25

    :cond_24
    move v2, v0

    :goto_25
    monitor-exit p0

    return v2

    .line 341
    :cond_27
    add-int/2addr v0, v1

    .line 342
    if-lt v0, p3, :cond_2c

    .line 343
    monitor-exit p0

    return v0

    .line 345
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 346
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_3f

    if-gtz v3, :cond_38

    .line 347
    monitor-exit p0

    return v0

    .line 348
    .end local v1    # "nread":I
    .end local v2    # "input":Ljava/io/InputStream;
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    :cond_38
    goto :goto_16

    .line 331
    .end local v0    # "n":I
    :cond_39
    :try_start_39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 328
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_3f
    move-exception p1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_3f

    throw p1
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 439
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    .line 440
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-ltz v0, :cond_e

    .line 442
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 443
    monitor-exit p0

    return-void

    .line 441
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v0
.end method

.method public declared-synchronized whitelist test-api skip(J)J
    .registers 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 361
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_43

    .line 362
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_c

    .line 363
    monitor-exit p0

    return-wide v0

    .line 365
    :cond_c
    :try_start_c
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 367
    .local v2, "avail":J
    cmp-long v4, v2, v0

    if-gtz v4, :cond_33

    .line 369
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v4, :cond_24

    .line 370
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_43

    monitor-exit p0

    return-wide v0

    .line 373
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    :cond_24
    :try_start_24
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 374
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_43

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 375
    cmp-long v4, v2, v0

    if-gtz v4, :cond_33

    .line 376
    monitor-exit p0

    return-wide v0

    .line 379
    :cond_33
    cmp-long v0, v2, p1

    if-gez v0, :cond_39

    move-wide v0, v2

    goto :goto_3a

    :cond_39
    move-wide v0, p1

    .line 380
    .local v0, "skipped":J
    :goto_3a
    :try_start_3a
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_43

    .line 381
    monitor-exit p0

    return-wide v0

    .line 360
    .end local v0    # "skipped":J
    .end local v2    # "avail":J
    .end local p1    # "n":J
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit p0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p1
.end method
