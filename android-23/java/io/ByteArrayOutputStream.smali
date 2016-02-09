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
    .line 46
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 47
    const/16 v0, 0x20

    #@5
    new-array v0, v0, [B

    #@7
    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@9
    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    #@0
    .prologue
    .line 61
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    #@3
    .line 62
    if-ltz p1, :cond_0

    #@5
    .line 63
    new-array v0, p1, [B

    #@7
    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@9
    .line 61
    return-void

    #@a
    .line 65
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "size < 0"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0
.end method

.method private expand(I)V
    .locals 4
    .param p1, "i"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 87
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@3
    add-int/2addr v1, p1

    #@4
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@6
    array-length v2, v2

    #@7
    if-gt v1, v2, :cond_0

    #@9
    .line 88
    return-void

    #@a
    .line 91
    :cond_0
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@c
    add-int/2addr v1, p1

    #@d
    mul-int/lit8 v1, v1, 0x2

    #@f
    new-array v0, v1, [B

    #@11
    .line 92
    .local v0, "newbuf":[B
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@13
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@15
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@18
    .line 93
    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@1a
    .line 85
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
    .line 82
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    #@3
    .line 76
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 102
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 101
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 111
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@2
    return v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 122
    :try_start_0
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@3
    new-array v0, v1, [B

    #@5
    .line 123
    .local v0, "newArray":[B
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@7
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@9
    const/4 v3, 0x0

    #@a
    const/4 v4, 0x0

    #@b
    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 124
    return-object v0

    #@10
    .end local v0    # "newArray":[B
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 137
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@4
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    #@a
    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "hibyte"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 156
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [C

    #@6
    .line 157
    .local v1, "newBuf":[C
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 158
    and-int/lit16 v2, p1, 0xff

    #@c
    shl-int/lit8 v2, v2, 0x8

    #@e
    iget-object v3, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@10
    aget-byte v3, v3, v0

    #@12
    and-int/lit16 v3, v3, 0xff

    #@14
    or-int/2addr v2, v3

    #@15
    int-to-char v2, v2

    #@16
    aput-char v2, v1, v0

    #@18
    .line 157
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 160
    :cond_0
    new-instance v2, Ljava/lang/String;

    #@1d
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    #@20
    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    #@0
    .prologue
    .line 175
    new-instance v0, Ljava/lang/String;

    #@2
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@4
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@6
    const/4 v3, 0x0

    #@7
    invoke-direct {v0, v1, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    #@a
    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 215
    :try_start_0
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@3
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@5
    array-length v1, v1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 216
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;->expand(I)V

    #@c
    .line 218
    :cond_0
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@e
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@14
    int-to-byte v2, p1

    #@15
    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 214
    return-void

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 197
    :try_start_0
    array-length v0, p1

    #@2
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 198
    if-nez p3, :cond_0

    #@7
    monitor-exit p0

    #@8
    .line 199
    return-void

    #@9
    .line 201
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Ljava/io/ByteArrayOutputStream;->expand(I)V

    #@c
    .line 202
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@e
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@10
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@13
    .line 203
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@15
    add-int/2addr v0, p3

    #@16
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    monitor-exit p0

    #@19
    .line 196
    return-void

    #@1a
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit p0

    #@1c
    throw v0
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
    .line 231
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
    .line 230
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method
