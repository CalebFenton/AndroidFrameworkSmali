.class public Ljava/io/BufferedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "BufferedOutputStream.java"


# instance fields
.field protected whitelist test-api buf:[B

.field protected whitelist test-api count:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 58
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 59
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;I)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I

    .line 71
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 72
    if-lez p2, :cond_a

    .line 75
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    .line 76
    return-void

    .line 73
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o flushBuffer()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    if-lez v0, :cond_10

    .line 81
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    iget v2, p0, Ljava/io/BufferedOutputStream;->count:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 82
    iput v3, p0, Ljava/io/BufferedOutputStream;->count:I

    .line 84
    :cond_10
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 142
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    .line 143
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 144
    monitor-exit p0

    return-void

    .line 141
    .end local p0    # "this":Ljava/io/BufferedOutputStream;
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_1
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    iget-object v1, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v1, v1

    if-lt v0, v1, :cond_b

    .line 95
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    .line 97
    .end local p0    # "this":Ljava/io/BufferedOutputStream;
    :cond_b
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/BufferedOutputStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 98
    monitor-exit p0

    return-void

    .line 93
    .end local p1    # "b":I
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v0, v0

    if-lt p3, v0, :cond_10

    .line 122
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    .line 123
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_29

    .line 124
    monitor-exit p0

    return-void

    .line 126
    .end local p0    # "this":Ljava/io/BufferedOutputStream;
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    array-length v0, v0

    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_1b

    .line 127
    invoke-direct {p0}, Ljava/io/BufferedOutputStream;->flushBuffer()V

    .line 129
    :cond_1b
    iget-object v0, p0, Ljava/io/BufferedOutputStream;->buf:[B

    iget v1, p0, Ljava/io/BufferedOutputStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget v0, p0, Ljava/io/BufferedOutputStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/io/BufferedOutputStream;->count:I
    :try_end_27
    .catchall {:try_start_10 .. :try_end_27} :catchall_29

    .line 131
    monitor-exit p0

    return-void

    .line 117
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method
