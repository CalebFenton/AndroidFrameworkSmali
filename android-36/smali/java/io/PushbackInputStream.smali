.class public Ljava/io/PushbackInputStream;
.super Ljava/io/FilterInputStream;
.source "PushbackInputStream.java"


# instance fields
.field protected whitelist test-api buf:[B

.field protected whitelist test-api pos:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 109
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .line 91
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    if-lez p2, :cond_c

    .line 95
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    .line 96
    iput p2, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 97
    return-void

    .line 93
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    .line 76
    return-void

    .line 75
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 273
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 274
    .local v0, "n":I
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v1

    .line 275
    .local v1, "avail":I
    const v2, 0x7fffffff

    sub-int v3, v2, v1

    if-le v0, v3, :cond_15

    .line 276
    goto :goto_17

    .line 277
    :cond_15
    add-int v2, v0, v1

    .line 275
    :goto_17
    return v2
.end method

.method public declared-synchronized whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 374
    :try_start_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_7

    .line 375
    monitor-exit p0

    return-void

    .line 376
    :cond_7
    :try_start_7
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 377
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    .line 378
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_13

    .line 379
    monitor-exit p0

    return-void

    .line 373
    .end local p0    # "this":Ljava/io/PushbackInputStream;
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public declared-synchronized whitelist test-api mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 346
    monitor-exit p0

    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 332
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 133
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 134
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 136
    :cond_17
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

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

    .line 163
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 164
    if-eqz p1, :cond_42

    .line 166
    if-ltz p2, :cond_3c

    if-ltz p3, :cond_3c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_3c

    .line 168
    if-nez p3, :cond_11

    .line 169
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_11
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 173
    .local v0, "avail":I
    if-lez v0, :cond_2a

    .line 174
    if-ge p3, v0, :cond_1c

    .line 175
    move v0, p3

    .line 177
    :cond_1c
    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 179
    add-int/2addr p2, v0

    .line 180
    sub-int/2addr p3, v0

    .line 182
    :cond_2a
    if-lez p3, :cond_3b

    .line 183
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p3

    .line 184
    const/4 v1, -0x1

    if-ne p3, v1, :cond_38

    .line 185
    if-nez v0, :cond_36

    goto :goto_37

    :cond_36
    move v1, v0

    :goto_37
    return v1

    .line 187
    :cond_38
    add-int v1, v0, p3

    return v1

    .line 189
    :cond_3b
    return v0

    .line 167
    .end local v0    # "avail":I
    :cond_3c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 165
    :cond_42
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

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

    .line 361
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    .end local p0    # "this":Ljava/io/PushbackInputStream;
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 304
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_a

    .line 305
    return-wide v0

    .line 308
    :cond_a
    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    array-length v2, v2

    iget v3, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 309
    .local v2, "pskip":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_22

    .line 310
    cmp-long v4, p1, v2

    if-gez v4, :cond_1a

    .line 311
    move-wide v2, p1

    .line 313
    :cond_1a
    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, v2

    long-to-int v4, v4

    iput v4, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 314
    sub-long/2addr p1, v2

    .line 316
    :cond_22
    cmp-long v0, p1, v0

    if-lez v0, :cond_2b

    .line 317
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 319
    :cond_2b
    return-wide v2
.end method

.method public whitelist test-api unread(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 205
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-eqz v0, :cond_13

    .line 208
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 209
    return-void

    .line 206
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Push back buffer is full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api unread([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 250
    return-void
.end method

.method public whitelist test-api unread([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    .line 228
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    if-gt p3, v0, :cond_14

    .line 231
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Ljava/io/PushbackInputStream;->pos:I

    .line 232
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    return-void

    .line 229
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Push back buffer is full"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
