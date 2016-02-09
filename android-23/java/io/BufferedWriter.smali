.class public Ljava/io/BufferedWriter;
.super Ljava/io/Writer;
.source "BufferedWriter.java"


# instance fields
.field private buf:[C

.field private out:Ljava/io/Writer;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;

    #@0
    .prologue
    .line 54
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    #@5
    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    #@3
    .line 67
    if-gtz p2, :cond_0

    #@5
    .line 68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "size <= 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 70
    :cond_0
    iput-object p1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@10
    .line 71
    new-array v0, p2, [C

    #@12
    iput-object v0, p0, Ljava/io/BufferedWriter;->buf:[C

    #@14
    .line 65
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
    .line 129
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 130
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "BufferedWriter is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 128
    :cond_0
    return-void
.end method

.method private flushInternal()V
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
    .line 138
    iget v0, p0, Ljava/io/BufferedWriter;->pos:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 139
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@7
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    #@9
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    #@b
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    #@e
    .line 141
    :cond_0
    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    #@10
    .line 137
    return-void
.end method

.method private isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 84
    iget-object v3, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 85
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v2

    #@7
    if-eqz v2, :cond_0

    #@9
    monitor-exit v3

    #@a
    .line 86
    return-void

    #@b
    .line 89
    :cond_0
    const/4 v1, 0x0

    #@c
    .line 91
    .local v1, "thrown":Ljava/lang/Throwable;
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedWriter;->flushInternal()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 95
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :goto_0
    const/4 v2, 0x0

    #@10
    :try_start_2
    iput-object v2, p0, Ljava/io/BufferedWriter;->buf:[C
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12
    .line 98
    :try_start_3
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@14
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@17
    .line 104
    :cond_1
    :goto_1
    const/4 v2, 0x0

    #@18
    :try_start_4
    iput-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@1a
    .line 106
    if-eqz v1, :cond_2

    #@1c
    .line 107
    invoke-static {v1}, Llibcore/util/SneakyThrow;->sneakyThrow(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@1f
    :cond_2
    monitor-exit v3

    #@20
    .line 83
    return-void

    #@21
    .line 92
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    #@22
    .line 93
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    #@23
    .local v1, "thrown":Ljava/lang/Throwable;
    goto :goto_0

    #@24
    .line 99
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    #@25
    .line 100
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_1

    #@27
    .line 101
    move-object v1, v0

    #@28
    .restart local v1    # "thrown":Ljava/lang/Throwable;
    goto :goto_1

    #@29
    .line 84
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "thrown":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    #@2a
    monitor-exit v3

    #@2b
    throw v2
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 122
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    #@6
    .line 123
    invoke-direct {p0}, Ljava/io/BufferedWriter;->flushInternal()V

    #@9
    .line 124
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@b
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 120
    return-void

    #@10
    .line 121
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public newLine()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 161
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    #@7
    .line 160
    return-void
.end method

.method public write(I)V
    .locals 5
    .param p1, "oneChar"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    iget-object v1, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 234
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    #@6
    .line 235
    iget v0, p0, Ljava/io/BufferedWriter;->pos:I

    #@8
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    #@a
    array-length v2, v2

    #@b
    if-lt v0, v2, :cond_0

    #@d
    .line 236
    iget-object v0, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@f
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    #@11
    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    #@13
    array-length v3, v3

    #@14
    const/4 v4, 0x0

    #@15
    invoke-virtual {v0, v2, v4, v3}, Ljava/io/Writer;->write([CII)V

    #@18
    .line 237
    const/4 v0, 0x0

    #@19
    iput v0, p0, Ljava/io/BufferedWriter;->pos:I

    #@1b
    .line 239
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedWriter;->buf:[C

    #@1d
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    #@1f
    add-int/lit8 v3, v2, 0x1

    #@21
    iput v3, p0, Ljava/io/BufferedWriter;->pos:I

    #@23
    int-to-char v3, p1

    #@24
    aput-char v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 232
    return-void

    #@28
    .line 233
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 7
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 265
    iget-object v3, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v3

    #@3
    .line 266
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 267
    if-gtz p3, :cond_0

    #@8
    monitor-exit v3

    #@9
    .line 268
    return-void

    #@a
    .line 270
    :cond_0
    if-ltz p2, :cond_1

    #@c
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    sub-int/2addr v2, p3

    #@11
    if-le p2, v2, :cond_2

    #@13
    .line 271
    :cond_1
    new-instance v2, Ljava/lang/StringIndexOutOfBoundsException;

    #@15
    invoke-direct {v2, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    #@18
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 265
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit v3

    #@1b
    throw v2

    #@1c
    .line 273
    :cond_2
    :try_start_2
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    #@1e
    if-nez v2, :cond_3

    #@20
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    #@22
    array-length v2, v2

    #@23
    if-lt p3, v2, :cond_3

    #@25
    .line 274
    new-array v1, p3, [C

    #@27
    .line 275
    .local v1, "chars":[C
    add-int v2, p2, p3

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-virtual {p1, p2, v2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    #@2d
    .line 276
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@2f
    const/4 v4, 0x0

    #@30
    invoke-virtual {v2, v1, v4, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@33
    monitor-exit v3

    #@34
    .line 277
    return-void

    #@35
    .line 279
    .end local v1    # "chars":[C
    :cond_3
    :try_start_3
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    #@37
    array-length v2, v2

    #@38
    iget v4, p0, Ljava/io/BufferedWriter;->pos:I

    #@3a
    sub-int v0, v2, v4

    #@3c
    .line 280
    .local v0, "available":I
    if-ge p3, v0, :cond_4

    #@3e
    .line 281
    move v0, p3

    #@3f
    .line 283
    :cond_4
    if-lez v0, :cond_5

    #@41
    .line 284
    add-int v2, p2, v0

    #@43
    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    #@45
    iget v5, p0, Ljava/io/BufferedWriter;->pos:I

    #@47
    invoke-virtual {p1, p2, v2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    #@4a
    .line 285
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    #@4c
    add-int/2addr v2, v0

    #@4d
    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    #@4f
    .line 287
    :cond_5
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    #@51
    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    #@53
    array-length v4, v4

    #@54
    if-ne v2, v4, :cond_7

    #@56
    .line 288
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@58
    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    #@5a
    iget-object v5, p0, Ljava/io/BufferedWriter;->buf:[C

    #@5c
    array-length v5, v5

    #@5d
    const/4 v6, 0x0

    #@5e
    invoke-virtual {v2, v4, v6, v5}, Ljava/io/Writer;->write([CII)V

    #@61
    .line 289
    const/4 v2, 0x0

    #@62
    iput v2, p0, Ljava/io/BufferedWriter;->pos:I

    #@64
    .line 290
    if-le p3, v0, :cond_7

    #@66
    .line 291
    add-int/2addr p2, v0

    #@67
    .line 292
    sub-int v0, p3, v0

    #@69
    .line 293
    iget-object v2, p0, Ljava/io/BufferedWriter;->buf:[C

    #@6b
    array-length v2, v2

    #@6c
    if-lt v0, v2, :cond_6

    #@6e
    .line 294
    new-array v1, p3, [C

    #@70
    .line 295
    .restart local v1    # "chars":[C
    add-int v2, p2, v0

    #@72
    const/4 v4, 0x0

    #@73
    invoke-virtual {p1, p2, v2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    #@76
    .line 296
    iget-object v2, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@78
    const/4 v4, 0x0

    #@79
    invoke-virtual {v2, v1, v4, v0}, Ljava/io/Writer;->write([CII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@7c
    monitor-exit v3

    #@7d
    .line 297
    return-void

    #@7e
    .line 299
    .end local v1    # "chars":[C
    :cond_6
    add-int v2, p2, v0

    #@80
    :try_start_4
    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    #@82
    iget v5, p0, Ljava/io/BufferedWriter;->pos:I

    #@84
    invoke-virtual {p1, p2, v2, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    #@87
    .line 300
    iget v2, p0, Ljava/io/BufferedWriter;->pos:I

    #@89
    add-int/2addr v2, v0

    #@8a
    iput v2, p0, Ljava/io/BufferedWriter;->pos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8c
    :cond_7
    monitor-exit v3

    #@8d
    .line 264
    return-void
.end method

.method public write([CII)V
    .locals 6
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
    .line 185
    iget-object v2, p0, Ljava/io/BufferedWriter;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 186
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedWriter;->checkNotClosed()V

    #@6
    .line 187
    if-nez p1, :cond_0

    #@8
    .line 188
    new-instance v1, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v3, "buffer == null"

    #@d
    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 185
    :catchall_0
    move-exception v1

    #@12
    monitor-exit v2

    #@13
    throw v1

    #@14
    .line 190
    :cond_0
    :try_start_1
    array-length v1, p1

    #@15
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@18
    .line 191
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    #@1a
    if-nez v1, :cond_1

    #@1c
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    #@1e
    array-length v1, v1

    #@1f
    if-lt p3, v1, :cond_1

    #@21
    .line 192
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@23
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Writer;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    monitor-exit v2

    #@27
    .line 193
    return-void

    #@28
    .line 195
    :cond_1
    :try_start_2
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    #@2a
    array-length v1, v1

    #@2b
    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    #@2d
    sub-int v0, v1, v3

    #@2f
    .line 196
    .local v0, "available":I
    if-ge p3, v0, :cond_2

    #@31
    .line 197
    move v0, p3

    #@32
    .line 199
    :cond_2
    if-lez v0, :cond_3

    #@34
    .line 200
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    #@36
    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    #@38
    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@3b
    .line 201
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    #@3d
    add-int/2addr v1, v0

    #@3e
    iput v1, p0, Ljava/io/BufferedWriter;->pos:I

    #@40
    .line 203
    :cond_3
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    #@42
    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    #@44
    array-length v3, v3

    #@45
    if-ne v1, v3, :cond_5

    #@47
    .line 204
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@49
    iget-object v3, p0, Ljava/io/BufferedWriter;->buf:[C

    #@4b
    iget-object v4, p0, Ljava/io/BufferedWriter;->buf:[C

    #@4d
    array-length v4, v4

    #@4e
    const/4 v5, 0x0

    #@4f
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    #@52
    .line 205
    const/4 v1, 0x0

    #@53
    iput v1, p0, Ljava/io/BufferedWriter;->pos:I

    #@55
    .line 206
    if-le p3, v0, :cond_5

    #@57
    .line 207
    add-int/2addr p2, v0

    #@58
    .line 208
    sub-int v0, p3, v0

    #@5a
    .line 209
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    #@5c
    array-length v1, v1

    #@5d
    if-lt v0, v1, :cond_4

    #@5f
    .line 210
    iget-object v1, p0, Ljava/io/BufferedWriter;->out:Ljava/io/Writer;

    #@61
    invoke-virtual {v1, p1, p2, v0}, Ljava/io/Writer;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@64
    monitor-exit v2

    #@65
    .line 211
    return-void

    #@66
    .line 214
    :cond_4
    :try_start_3
    iget-object v1, p0, Ljava/io/BufferedWriter;->buf:[C

    #@68
    iget v3, p0, Ljava/io/BufferedWriter;->pos:I

    #@6a
    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@6d
    .line 215
    iget v1, p0, Ljava/io/BufferedWriter;->pos:I

    #@6f
    add-int/2addr v1, v0

    #@70
    iput v1, p0, Ljava/io/BufferedWriter;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@72
    :cond_5
    monitor-exit v2

    #@73
    .line 184
    return-void
.end method
