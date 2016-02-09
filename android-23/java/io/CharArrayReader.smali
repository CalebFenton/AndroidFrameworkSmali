.class public Ljava/io/CharArrayReader;
.super Ljava/io/Reader;
.source "CharArrayReader.java"


# instance fields
.field protected buf:[C

.field protected count:I

.field protected markedPos:I

.field protected pos:I


# direct methods
.method public constructor <init>([C)V
    .locals 1
    .param p1, "buf"    # [C

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@3
    .line 41
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    #@6
    .line 57
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    #@8
    .line 58
    array-length v0, p1

    #@9
    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    #@b
    .line 56
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@3
    .line 41
    const/4 v1, -0x1

    #@4
    iput v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    #@6
    .line 83
    if-ltz p2, :cond_0

    #@8
    array-length v1, p1

    #@9
    if-le p2, v1, :cond_1

    #@b
    .line 84
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v1

    #@11
    .line 83
    :cond_1
    if-ltz p3, :cond_0

    #@13
    add-int v1, p2, p3

    #@15
    if-ltz v1, :cond_0

    #@17
    .line 86
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    #@19
    .line 87
    iput p2, p0, Ljava/io/CharArrayReader;->pos:I

    #@1b
    .line 88
    iput p2, p0, Ljava/io/CharArrayReader;->markedPos:I

    #@1d
    .line 91
    array-length v0, p1

    #@1e
    .line 92
    .local v0, "bufferLength":I
    add-int v1, p2, p3

    #@20
    if-ge v1, v0, :cond_2

    #@22
    .end local p3    # "length":I
    :goto_0
    iput p3, p0, Ljava/io/CharArrayReader;->count:I

    #@24
    .line 76
    return-void

    #@25
    .restart local p3    # "length":I
    :cond_2
    move p3, v0

    #@26
    .line 92
    goto :goto_0
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
    .line 147
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isClosed()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 148
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "CharArrayReader is closed"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 146
    :cond_0
    return-void
.end method

.method private isClosed()Z
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

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

.method private isOpen()Z
    .locals 1

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    #@2
    if-eqz v0, :cond_0

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
    .locals 2

    #@0
    .prologue
    .line 102
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 103
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->isOpen()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 104
    const/4 v0, 0x0

    #@a
    iput-object v0, p0, Ljava/io/CharArrayReader;->buf:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit v1

    #@d
    .line 101
    return-void

    #@e
    .line 102
    :catchall_0
    move-exception v0

    #@f
    monitor-exit v1

    #@10
    throw v0
.end method

.method public mark(I)V
    .locals 2
    .param p1, "readLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 140
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 141
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    #@6
    .line 142
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    #@8
    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit v1

    #@b
    .line 139
    return-void

    #@c
    .line 140
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 162
    const/4 v0, 0x1

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
    .line 177
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 178
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    #@6
    .line 179
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    #@8
    iget v2, p0, Ljava/io/CharArrayReader;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-ne v0, v2, :cond_0

    #@c
    .line 180
    const/4 v0, -0x1

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    .line 182
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    #@11
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    #@13
    add-int/lit8 v3, v2, 0x1

    #@15
    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    #@17
    aget-char v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    monitor-exit v1

    #@1a
    return v0

    #@1b
    .line 177
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1

    #@1d
    throw v0
.end method

.method public read([CII)I
    .locals 4
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
    .line 199
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 200
    iget-object v2, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@6
    monitor-enter v2

    #@7
    .line 201
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    #@a
    .line 202
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    #@c
    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    #@e
    if-ge v1, v3, :cond_1

    #@10
    .line 203
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    #@12
    add-int/2addr v1, p3

    #@13
    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    #@15
    if-le v1, v3, :cond_0

    #@17
    iget v1, p0, Ljava/io/CharArrayReader;->count:I

    #@19
    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    #@1b
    sub-int v0, v1, v3

    #@1d
    .line 204
    .local v0, "bytesRead":I
    :goto_0
    iget-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    #@1f
    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    #@21
    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@24
    .line 205
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    #@26
    add-int/2addr v1, v0

    #@27
    iput v1, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    monitor-exit v2

    #@2a
    .line 206
    return v0

    #@2b
    .line 203
    .end local v0    # "bytesRead":I
    :cond_0
    move v0, p3

    #@2c
    .restart local v0    # "bytesRead":I
    goto :goto_0

    #@2d
    .line 208
    .end local v0    # "bytesRead":I
    :cond_1
    const/4 v1, -0x1

    #@2e
    monitor-exit v2

    #@2f
    return v1

    #@30
    .line 200
    :catchall_0
    move-exception v1

    #@31
    monitor-exit v2

    #@32
    throw v1
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
    .line 226
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 227
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    #@6
    .line 228
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    #@8
    iget v2, p0, Ljava/io/CharArrayReader;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-eq v0, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    monitor-exit v1

    #@e
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0

    #@11
    .line 226
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 243
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 244
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V

    #@6
    .line 245
    iget v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    #@8
    const/4 v2, -0x1

    #@9
    if-eq v0, v2, :cond_0

    #@b
    iget v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    #@d
    :goto_0
    iput v0, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 242
    return-void

    #@11
    .line 245
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0

    #@13
    .line 243
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public skip(J)J
    .locals 7
    .param p1, "charCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 260
    iget-object v3, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    #@4
    monitor-enter v3

    #@5
    .line 261
    :try_start_0
    invoke-direct {p0}, Ljava/io/CharArrayReader;->checkNotClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    .line 262
    cmp-long v2, p1, v4

    #@a
    if-gtz v2, :cond_0

    #@c
    monitor-exit v3

    #@d
    .line 263
    return-wide v4

    #@e
    .line 265
    :cond_0
    const-wide/16 v0, 0x0

    #@10
    .line 266
    .local v0, "skipped":J
    :try_start_1
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    #@12
    iget v4, p0, Ljava/io/CharArrayReader;->pos:I

    #@14
    sub-int/2addr v2, v4

    #@15
    int-to-long v4, v2

    #@16
    cmp-long v2, p1, v4

    #@18
    if-gez v2, :cond_1

    #@1a
    .line 267
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    #@1c
    long-to-int v4, p1

    #@1d
    add-int/2addr v2, v4

    #@1e
    iput v2, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    .line 268
    move-wide v0, p1

    #@21
    :goto_0
    monitor-exit v3

    #@22
    .line 273
    return-wide v0

    #@23
    .line 270
    :cond_1
    :try_start_2
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    #@25
    iget v4, p0, Ljava/io/CharArrayReader;->pos:I

    #@27
    sub-int/2addr v2, v4

    #@28
    int-to-long v0, v2

    #@29
    .line 271
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    #@2b
    iput v2, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 260
    .end local v0    # "skipped":J
    :catchall_0
    move-exception v2

    #@2f
    monitor-exit v3

    #@30
    throw v2
.end method
