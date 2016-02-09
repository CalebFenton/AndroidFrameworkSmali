.class public Ljava/io/BufferedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "BufferedOutputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 56
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    #@5
    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

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
    new-array v0, p2, [B

    #@10
    iput-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@12
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
    .line 90
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 91
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "BufferedOutputStream is closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 89
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
    .line 184
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 185
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    #@7
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@9
    iget v2, p0, Ljava/io/BufferedOutputStream;->count:I

    #@b
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@e
    .line 186
    iput v3, p0, Ljava/io/BufferedOutputStream;->count:I

    #@10
    .line 183
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
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
    .line 147
    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@3
    if-nez v0, :cond_0

    #@5
    monitor-exit p0

    #@6
    .line 148
    return-void

    #@7
    .line 152
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@a
    .line 154
    const/4 v0, 0x0

    #@b
    :try_start_2
    iput-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@d
    monitor-exit p0

    #@e
    .line 146
    return-void

    #@f
    .line 153
    :catchall_0
    move-exception v0

    #@10
    .line 154
    const/4 v1, 0x0

    #@11
    :try_start_3
    iput-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@13
    .line 153
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@14
    :catchall_1
    move-exception v0

    #@15
    monitor-exit p0

    #@16
    throw v0
.end method

.method public declared-synchronized flush()V
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
    .line 84
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->checkNotClosed()V

    #@4
    .line 85
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushInternal()V

    #@7
    .line 86
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    #@9
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 83
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 172
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->checkNotClosed()V

    #@4
    .line 173
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    #@6
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@8
    array-length v1, v1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 174
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    #@d
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@f
    iget v2, p0, Ljava/io/BufferedOutputStream;->count:I

    #@11
    const/4 v3, 0x0

    #@12
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@15
    .line 175
    const/4 v0, 0x0

    #@16
    iput v0, p0, Ljava/io/BufferedOutputStream;->count:I

    #@18
    .line 177
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@1a
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    #@1c
    add-int/lit8 v2, v1, 0x1

    #@1e
    iput v2, p0, Ljava/io/BufferedOutputStream;->count:I

    #@20
    int-to-byte v2, p1

    #@21
    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 171
    return-void

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 3
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 122
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->checkNotClosed()V

    #@4
    .line 124
    if-nez p1, :cond_0

    #@6
    .line 125
    new-instance v1, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v2, "buffer == null"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1

    #@12
    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@14
    .line 129
    .local v0, "internalBuffer":[B
    array-length v1, v0

    #@15
    if-lt p3, v1, :cond_1

    #@17
    .line 130
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushInternal()V

    #@1a
    .line 131
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    #@1c
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 132
    return-void

    #@21
    .line 135
    :cond_1
    :try_start_2
    array-length v1, p1

    #@22
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@25
    .line 138
    array-length v1, v0

    #@26
    iget v2, p0, Ljava/io/BufferedOutputStream;->count:I

    #@28
    sub-int/2addr v1, v2

    #@29
    if-le p3, v1, :cond_2

    #@2b
    .line 139
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushInternal()V

    #@2e
    .line 142
    :cond_2
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    #@30
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@33
    .line 143
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    #@35
    add-int/2addr v1, p3

    #@36
    iput v1, p0, Ljava/io/BufferedOutputStream;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    monitor-exit p0

    #@39
    .line 121
    return-void
.end method
