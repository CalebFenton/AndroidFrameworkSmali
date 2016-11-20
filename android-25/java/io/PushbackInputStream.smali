.class public Ljava/io/PushbackInputStream;
.super Ljava/io/FilterInputStream;
.source "PushbackInputStream.java"


# instance fields
.field protected buf:[B

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 111
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    #@4
    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 92
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 93
    if-gtz p2, :cond_0

    #@5
    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "size <= 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 96
    :cond_0
    new-array v0, p2, [B

    #@10
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@12
    .line 97
    iput p2, p0, Ljava/io/PushbackInputStream;->pos:I

    #@14
    .line 91
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 74
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
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
    .line 275
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    #@6
    .line 276
    iget-object v3, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@8
    array-length v3, v3

    #@9
    iget v4, p0, Ljava/io/PushbackInputStream;->pos:I

    #@b
    sub-int v1, v3, v4

    #@d
    .line 277
    .local v1, "n":I
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    #@10
    move-result v0

    #@11
    .line 278
    .local v0, "avail":I
    sub-int v3, v2, v0

    #@13
    if-le v1, v3, :cond_0

    #@15
    :goto_0
    return v2

    #@16
    .line 280
    :cond_0
    add-int v2, v1, v0

    #@18
    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 377
    :try_start_0
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 378
    return-void

    #@7
    .line 379
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    #@9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@c
    .line 380
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Ljava/io/PushbackInputStream;->in:Ljava/io/InputStream;

    #@f
    .line 381
    const/4 v0, 0x0

    #@10
    iput-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    monitor-exit p0

    #@13
    .line 376
    return-void

    #@14
    :catchall_0
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .locals 0
    .param p1, "readlimit"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    monitor-exit p0

    #@2
    .line 348
    return-void
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 335
    const/4 v0, 0x0

    #@1
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
    .line 135
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    #@3
    .line 136
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    #@5
    iget-object v1, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@7
    array-length v1, v1

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 137
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@c
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@e
    add-int/lit8 v2, v1, 0x1

    #@10
    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    #@12
    aget-byte v0, v0, v1

    #@14
    and-int/lit16 v0, v0, 0xff

    #@16
    return v0

    #@17
    .line 139
    :cond_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public read([BII)I
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
    const/4 v1, -0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 166
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    #@5
    .line 167
    if-nez p1, :cond_0

    #@7
    .line 168
    new-instance v1, Ljava/lang/NullPointerException;

    #@9
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@c
    throw v1

    #@d
    .line 169
    :cond_0
    if-ltz p2, :cond_1

    #@f
    if-gez p3, :cond_2

    #@11
    .line 170
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@13
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@16
    throw v1

    #@17
    .line 169
    :cond_2
    array-length v2, p1

    #@18
    sub-int/2addr v2, p2

    #@19
    if-gt p3, v2, :cond_1

    #@1b
    .line 171
    if-nez p3, :cond_3

    #@1d
    .line 172
    return v3

    #@1e
    .line 175
    :cond_3
    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@20
    array-length v2, v2

    #@21
    iget v3, p0, Ljava/io/PushbackInputStream;->pos:I

    #@23
    sub-int v0, v2, v3

    #@25
    .line 176
    .local v0, "avail":I
    if-lez v0, :cond_5

    #@27
    .line 177
    if-ge p3, v0, :cond_4

    #@29
    .line 178
    move v0, p3

    #@2a
    .line 180
    :cond_4
    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@2c
    iget v3, p0, Ljava/io/PushbackInputStream;->pos:I

    #@2e
    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@31
    .line 181
    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    #@33
    add-int/2addr v2, v0

    #@34
    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    #@36
    .line 182
    add-int/2addr p2, v0

    #@37
    .line 183
    sub-int/2addr p3, v0

    #@38
    .line 185
    :cond_5
    if-lez p3, :cond_8

    #@3a
    .line 186
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    #@3d
    move-result p3

    #@3e
    .line 187
    if-ne p3, v1, :cond_7

    #@40
    .line 188
    if-nez v0, :cond_6

    #@42
    move v0, v1

    #@43
    .end local v0    # "avail":I
    :cond_6
    return v0

    #@44
    .line 190
    .restart local v0    # "avail":I
    :cond_7
    add-int v1, v0, p3

    #@46
    return v1

    #@47
    .line 192
    :cond_8
    return v0
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
    .line 364
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    #@3
    const-string/jumbo v1, "mark/reset not supported"

    #@6
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
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
    .line 306
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    #@5
    .line 307
    cmp-long v2, p1, v4

    #@7
    if-gtz v2, :cond_0

    #@9
    .line 308
    return-wide v4

    #@a
    .line 311
    :cond_0
    iget-object v2, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@c
    array-length v2, v2

    #@d
    iget v3, p0, Ljava/io/PushbackInputStream;->pos:I

    #@f
    sub-int/2addr v2, v3

    #@10
    int-to-long v0, v2

    #@11
    .line 312
    .local v0, "pskip":J
    cmp-long v2, v0, v4

    #@13
    if-lez v2, :cond_2

    #@15
    .line 313
    cmp-long v2, p1, v0

    #@17
    if-gez v2, :cond_1

    #@19
    .line 314
    move-wide v0, p1

    #@1a
    .line 316
    :cond_1
    iget v2, p0, Ljava/io/PushbackInputStream;->pos:I

    #@1c
    int-to-long v2, v2

    #@1d
    add-long/2addr v2, v0

    #@1e
    long-to-int v2, v2

    #@1f
    iput v2, p0, Ljava/io/PushbackInputStream;->pos:I

    #@21
    .line 317
    sub-long/2addr p1, v0

    #@22
    .line 319
    :cond_2
    cmp-long v2, p1, v4

    #@24
    if-lez v2, :cond_3

    #@26
    .line 320
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    #@29
    move-result-wide v2

    #@2a
    add-long/2addr v0, v2

    #@2b
    .line 322
    :cond_3
    return-wide v0
.end method

.method public unread(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    #@3
    .line 208
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 209
    new-instance v0, Ljava/io/IOException;

    #@9
    const-string/jumbo v1, "Push back buffer is full"

    #@c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 211
    :cond_0
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@12
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@14
    add-int/lit8 v1, v1, -0x1

    #@16
    iput v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@18
    int-to-byte v2, p1

    #@19
    aput-byte v2, v0, v1

    #@1b
    .line 206
    return-void
.end method

.method public unread([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 252
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    #@5
    .line 251
    return-void
.end method

.method public unread([BII)V
    .locals 2
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
    .line 230
    invoke-direct {p0}, Ljava/io/PushbackInputStream;->ensureOpen()V

    #@3
    .line 231
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    #@5
    if-le p3, v0, :cond_0

    #@7
    .line 232
    new-instance v0, Ljava/io/IOException;

    #@9
    const-string/jumbo v1, "Push back buffer is full"

    #@c
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 234
    :cond_0
    iget v0, p0, Ljava/io/PushbackInputStream;->pos:I

    #@12
    sub-int/2addr v0, p3

    #@13
    iput v0, p0, Ljava/io/PushbackInputStream;->pos:I

    #@15
    .line 235
    iget-object v0, p0, Ljava/io/PushbackInputStream;->buf:[B

    #@17
    iget v1, p0, Ljava/io/PushbackInputStream;->pos:I

    #@19
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 229
    return-void
.end method
