.class public Ljava/io/ByteArrayOutputStream;
.super Ljava/io/OutputStream;
.source "ByteArrayOutputStream.java"


# instance fields
.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 62
    const/16 v0, 0x20

    #@2
    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@5
    .line 61
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    #@0
    .prologue
    .line 72
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 73
    if-gez p1, :cond_0

    #@5
    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Negative initial size: "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 77
    :cond_0
    new-array v0, p1, [B

    #@21
    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@23
    .line 72
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@2
    array-length v0, v0

    #@3
    sub-int v0, p1, v0

    #@5
    if-lez v0, :cond_0

    #@7
    .line 93
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;->grow(I)V

    #@a
    .line 90
    :cond_0
    return-void
.end method

.method private grow(I)V
    .locals 3
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .line 104
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@2
    array-length v1, v2

    #@3
    .line 105
    .local v1, "oldCapacity":I
    shl-int/lit8 v0, v1, 0x1

    #@5
    .line 106
    .local v0, "newCapacity":I
    sub-int v2, v0, p1

    #@7
    if-gez v2, :cond_0

    #@9
    .line 107
    move v0, p1

    #@a
    .line 108
    :cond_0
    if-gez v0, :cond_2

    #@c
    .line 109
    if-gez p1, :cond_1

    #@e
    .line 110
    new-instance v2, Ljava/lang/OutOfMemoryError;

    #@10
    invoke-direct {v2}, Ljava/lang/OutOfMemoryError;-><init>()V

    #@13
    throw v2

    #@14
    .line 111
    :cond_1
    const v0, 0x7fffffff

    #@17
    .line 113
    :cond_2
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@19
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    #@1c
    move-result-object v2

    #@1d
    iput-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@1f
    .line 102
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 269
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 166
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 165
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 189
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 178
    :try_start_0
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@3
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit p0

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 208
    :try_start_0
    new-instance v0, Ljava/lang/String;

    #@3
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@5
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@7
    const/4 v3, 0x0

    #@8
    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    return-object v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public declared-synchronized toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "hibyte"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 259
    :try_start_0
    new-instance v0, Ljava/lang/String;

    #@3
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@5
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@7
    const/4 v3, 0x0

    #@8
    invoke-direct {v0, v1, p1, v3, v2}, Ljava/lang/String;-><init>([BIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    return-object v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public declared-synchronized toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 232
    :try_start_0
    new-instance v0, Ljava/lang/String;

    #@3
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@5
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@7
    const/4 v3, 0x0

    #@8
    invoke-direct {v0, v1, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    return-object v0

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "b"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 122
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;->ensureCapacity(I)V

    #@8
    .line 123
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@a
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@c
    int-to-byte v2, p1

    #@d
    aput-byte v2, v0, v1

    #@f
    .line 124
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@11
    add-int/lit8 v0, v0, 0x1

    #@13
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 121
    return-void

    #@17
    :catchall_0
    move-exception v0

    #@18
    monitor-exit p0

    #@19
    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 136
    if-ltz p2, :cond_0

    #@3
    :try_start_0
    array-length v0, p1

    #@4
    if-le p2, v0, :cond_1

    #@6
    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@b
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0

    #@f
    .line 136
    :cond_1
    if-ltz p3, :cond_0

    #@11
    .line 137
    add-int v0, p2, p3

    #@13
    :try_start_1
    array-length v1, p1

    #@14
    sub-int/2addr v0, v1

    #@15
    if-gtz v0, :cond_0

    #@17
    .line 140
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@19
    add-int/2addr v0, p3

    #@1a
    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;->ensureCapacity(I)V

    #@1d
    .line 141
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@1f
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@21
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@24
    .line 142
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@26
    add-int/2addr v0, p3

    #@27
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    monitor-exit p0

    #@2a
    .line 135
    return-void
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 154
    :try_start_0
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@3
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 153
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method
