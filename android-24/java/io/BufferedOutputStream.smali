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
    .line 59
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    #@5
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 73
    if-gtz p2, :cond_0

    #@5
    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Buffer size <= 0"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 76
    :cond_0
    new-array v0, p2, [B

    #@10
    iput-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@12
    .line 71
    return-void
.end method

.method private flushBuffer()V
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
    .line 81
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 82
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    #@7
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@9
    iget v2, p0, Ljava/io/BufferedOutputStream;->count:I

    #@b
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    #@e
    .line 83
    iput v3, p0, Ljava/io/BufferedOutputStream;->count:I

    #@10
    .line 80
    :cond_0
    return-void
.end method


# virtual methods
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
    .line 140
    :try_start_0
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    #@4
    .line 141
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    #@6
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 139
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 94
    :try_start_0
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    #@3
    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@5
    array-length v1, v1

    #@6
    if-lt v0, v1, :cond_0

    #@8
    .line 95
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    #@b
    .line 97
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@d
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    #@f
    add-int/lit8 v2, v1, 0x1

    #@11
    iput v2, p0, Ljava/io/BufferedOutputStream;->count:I

    #@13
    int-to-byte v2, p1

    #@14
    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    monitor-exit p0

    #@17
    .line 93
    return-void

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method public declared-synchronized write([BII)V
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
    monitor-enter p0

    #@1
    .line 117
    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@3
    array-length v0, v0

    #@4
    if-lt p3, v0, :cond_0

    #@6
    .line 121
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    #@9
    .line 122
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    #@b
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 123
    return-void

    #@10
    .line 125
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@12
    array-length v0, v0

    #@13
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    #@15
    sub-int/2addr v0, v1

    #@16
    if-le p3, v0, :cond_1

    #@18
    .line 126
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    #@1b
    .line 128
    :cond_1
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    #@1d
    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    #@1f
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@22
    .line 129
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    #@24
    add-int/2addr v0, p3

    #@25
    iput v0, p0, Ljava/io/BufferedOutputStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    monitor-exit p0

    #@28
    .line 116
    return-void

    #@29
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit p0

    #@2b
    throw v0
.end method
