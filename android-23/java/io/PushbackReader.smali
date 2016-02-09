.class public Ljava/io/PushbackReader;
.super Ljava/io/FilterReader;
.source "PushbackReader.java"


# instance fields
.field buf:[C

.field pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 51
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    #@4
    .line 52
    new-array v0, v1, [C

    #@6
    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@8
    .line 53
    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    #@a
    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    #@3
    .line 69
    if-gtz p2, :cond_0

    #@5
    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "size <= 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 72
    :cond_0
    new-array v0, p2, [C

    #@10
    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@12
    .line 73
    iput p2, p0, Ljava/io/PushbackReader;->pos:I

    #@14
    .line 67
    return-void
.end method

.method private checkNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 152
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@2
    if-nez v0, :cond_0

    #@4
    .line 153
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "PushbackReader is closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 151
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 85
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 86
    const/4 v0, 0x0

    #@4
    :try_start_0
    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@6
    .line 87
    iget-object v0, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    #@8
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 84
    return-void

    #@d
    .line 85
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 104
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "mark/reset not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 138
    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    #@6
    .line 140
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    #@8
    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    #@a
    array-length v2, v2

    #@b
    if-ge v0, v2, :cond_0

    #@d
    .line 141
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@f
    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    #@11
    add-int/lit8 v3, v2, 0x1

    #@13
    iput v3, p0, Ljava/io/PushbackReader;->pos:I

    #@15
    aget-char v0, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v1

    #@18
    return v0

    #@19
    .line 147
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    #@1b
    invoke-virtual {v0}, Ljava/io/Reader;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v0

    #@1f
    monitor-exit v1

    #@20
    return v0

    #@21
    .line 137
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method

.method public read([CII)I
    .locals 7
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 173
    iget-object v5, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v5

    #@3
    .line 174
    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    #@6
    .line 175
    array-length v4, p1

    #@7
    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@a
    .line 177
    const/4 v0, 0x0

    #@b
    .line 178
    .local v0, "copiedChars":I
    const/4 v1, 0x0

    #@c
    .line 179
    .local v1, "copyLength":I
    move v3, p2

    #@d
    .line 181
    .local v3, "newOffset":I
    iget v4, p0, Ljava/io/PushbackReader;->pos:I

    #@f
    iget-object v6, p0, Ljava/io/PushbackReader;->buf:[C

    #@11
    array-length v6, v6

    #@12
    if-ge v4, v6, :cond_0

    #@14
    .line 182
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    #@16
    array-length v4, v4

    #@17
    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    #@19
    sub-int/2addr v4, v6

    #@1a
    if-lt v4, p3, :cond_1

    #@1c
    move v1, p3

    #@1d
    .line 184
    :goto_0
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    #@1f
    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    #@21
    invoke-static {v4, v6, p1, v3, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@24
    .line 185
    add-int/2addr v3, v1

    #@25
    .line 186
    add-int/lit8 v0, v1, 0x0

    #@27
    .line 188
    iget v4, p0, Ljava/io/PushbackReader;->pos:I

    #@29
    add-int/2addr v4, v1

    #@2a
    iput v4, p0, Ljava/io/PushbackReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    .line 191
    :cond_0
    if-ne v1, p3, :cond_2

    #@2e
    monitor-exit v5

    #@2f
    .line 192
    return p3

    #@30
    .line 182
    :cond_1
    :try_start_1
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    #@32
    array-length v4, v4

    #@33
    .line 183
    iget v6, p0, Ljava/io/PushbackReader;->pos:I

    #@35
    .line 182
    sub-int v1, v4, v6

    #@37
    goto :goto_0

    #@38
    .line 194
    :cond_2
    iget-object v4, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    #@3a
    sub-int v6, p3, v0

    #@3c
    invoke-virtual {v4, p1, v3, v6}, Ljava/io/Reader;->read([CII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3f
    move-result v2

    #@40
    .line 195
    .local v2, "inCopied":I
    if-lez v2, :cond_3

    #@42
    .line 196
    add-int v4, v2, v0

    #@44
    monitor-exit v5

    #@45
    return v4

    #@46
    .line 198
    :cond_3
    if-nez v0, :cond_4

    #@48
    monitor-exit v5

    #@49
    .line 199
    return v2

    #@4a
    :cond_4
    monitor-exit v5

    #@4b
    .line 201
    return v0

    #@4c
    .line 173
    .end local v0    # "copiedChars":I
    .end local v1    # "copyLength":I
    .end local v2    # "inCopied":I
    .end local v3    # "newOffset":I
    :catchall_0
    move-exception v4

    #@4d
    monitor-exit v5

    #@4e
    throw v4
.end method

.method public ready()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 221
    :try_start_0
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@5
    if-nez v0, :cond_0

    #@7
    .line 222
    new-instance v0, Ljava/io/IOException;

    #@9
    const-string/jumbo v2, "Reader is closed"

    #@c
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 220
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 224
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@15
    array-length v0, v0

    #@16
    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    #@18
    sub-int/2addr v0, v2

    #@19
    if-gtz v0, :cond_1

    #@1b
    iget-object v0, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    #@1d
    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v0

    #@21
    :goto_0
    monitor-exit v1

    #@22
    return v0

    #@23
    :cond_1
    const/4 v0, 0x1

    #@24
    goto :goto_0
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "mark/reset not supported"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public skip(J)J
    .locals 13
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 342
    cmp-long v1, p1, v10

    #@4
    if-gez v1, :cond_0

    #@6
    .line 343
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v6, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v7, "charCount < 0: "

    #@10
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v6

    #@1c
    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 345
    :cond_0
    iget-object v6, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@22
    monitor-enter v6

    #@23
    .line 346
    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 347
    cmp-long v1, p1, v10

    #@28
    if-nez v1, :cond_1

    #@2a
    monitor-exit v6

    #@2b
    .line 348
    return-wide v10

    #@2c
    .line 351
    :cond_1
    :try_start_1
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    #@2e
    array-length v1, v1

    #@2f
    iget v7, p0, Ljava/io/PushbackReader;->pos:I

    #@31
    sub-int v0, v1, v7

    #@33
    .line 352
    .local v0, "availableFromBuffer":I
    if-lez v0, :cond_3

    #@35
    .line 353
    int-to-long v8, v0

    #@36
    sub-long v4, p1, v8

    #@38
    .line 354
    .local v4, "requiredFromIn":J
    cmp-long v1, v4, v10

    #@3a
    if-gtz v1, :cond_2

    #@3c
    .line 355
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    #@3e
    int-to-long v8, v1

    #@3f
    add-long/2addr v8, p1

    #@40
    long-to-int v1, v8

    #@41
    iput v1, p0, Ljava/io/PushbackReader;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@43
    monitor-exit v6

    #@44
    .line 356
    return-wide p1

    #@45
    .line 358
    :cond_2
    :try_start_2
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    #@47
    add-int/2addr v1, v0

    #@48
    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    #@4a
    .line 359
    iget-object v1, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    #@4c
    invoke-virtual {v1, v4, v5}, Ljava/io/Reader;->skip(J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4f
    move-result-wide v2

    #@50
    .line 363
    .end local v4    # "requiredFromIn":J
    .local v2, "inSkipped":J
    :goto_0
    int-to-long v8, v0

    #@51
    add-long/2addr v8, v2

    #@52
    monitor-exit v6

    #@53
    return-wide v8

    #@54
    .line 361
    .end local v2    # "inSkipped":J
    :cond_3
    :try_start_3
    iget-object v1, p0, Ljava/io/PushbackReader;->in:Ljava/io/Reader;

    #@56
    invoke-virtual {v1, p1, p2}, Ljava/io/Reader;->skip(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@59
    move-result-wide v2

    #@5a
    .restart local v2    # "inSkipped":J
    goto :goto_0

    #@5b
    .line 345
    .end local v0    # "availableFromBuffer":I
    .end local v2    # "inSkipped":J
    :catchall_0
    move-exception v1

    #@5c
    monitor-exit v6

    #@5d
    throw v1
.end method

.method public unread(I)V
    .locals 4
    .param p1, "oneChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 321
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 322
    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    #@6
    .line 323
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    #@8
    if-nez v0, :cond_0

    #@a
    .line 324
    new-instance v0, Ljava/io/IOException;

    #@c
    const-string/jumbo v2, "Pushback buffer full"

    #@f
    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 321
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0

    #@16
    .line 326
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    #@18
    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    #@1a
    add-int/lit8 v2, v2, -0x1

    #@1c
    iput v2, p0, Ljava/io/PushbackReader;->pos:I

    #@1e
    int-to-char v3, p1

    #@1f
    aput-char v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    monitor-exit v1

    #@22
    .line 320
    return-void
.end method

.method public unread([C)V
    .locals 2
    .param p1, "buffer"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 260
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PushbackReader;->unread([CII)V

    #@5
    .line 259
    return-void
.end method

.method public unread([CII)V
    .locals 4
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 294
    iget-object v2, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 295
    :try_start_0
    invoke-direct {p0}, Ljava/io/PushbackReader;->checkNotClosed()V

    #@6
    .line 296
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 297
    new-instance v1, Ljava/io/IOException;

    #@c
    const-string/jumbo v3, "Pushback buffer full"

    #@f
    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 294
    :catchall_0
    move-exception v1

    #@14
    monitor-exit v2

    #@15
    throw v1

    #@16
    .line 299
    :cond_0
    :try_start_1
    array-length v1, p1

    #@17
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@1a
    .line 300
    add-int v1, p2, p3

    #@1c
    add-int/lit8 v0, v1, -0x1

    #@1e
    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_1

    #@20
    .line 301
    aget-char v1, p1, v0

    #@22
    invoke-virtual {p0, v1}, Ljava/io/PushbackReader;->unread(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 300
    add-int/lit8 v0, v0, -0x1

    #@27
    goto :goto_0

    #@28
    :cond_1
    monitor-exit v2

    #@29
    .line 293
    return-void
.end method
