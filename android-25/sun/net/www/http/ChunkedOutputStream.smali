.class public Lsun/net/www/http/ChunkedOutputStream;
.super Ljava/io/PrintStream;
.source "ChunkedOutputStream.java"


# static fields
.field private static final CRLF:[B

.field private static final CRLF_SIZE:I

.field static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field private static final EMPTY_CHUNK_HEADER:[B

.field private static final EMPTY_CHUNK_HEADER_SIZE:I

.field private static final FOOTER:[B

.field private static final FOOTER_SIZE:I


# instance fields
.field private buf:[B

.field private completeHeader:[B

.field private count:I

.field private out:Ljava/io/PrintStream;

.field private preferedHeaderSize:I

.field private preferredChunkDataSize:I

.field private preferredChunkGrossSize:I

.field private size:I

.field private spaceInCurrentChunk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 37
    const/4 v0, 0x2

    #@2
    new-array v0, v0, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lsun/net/www/http/ChunkedOutputStream;->CRLF:[B

    #@9
    .line 38
    sget-object v0, Lsun/net/www/http/ChunkedOutputStream;->CRLF:[B

    #@b
    array-length v0, v0

    #@c
    sput v0, Lsun/net/www/http/ChunkedOutputStream;->CRLF_SIZE:I

    #@e
    .line 39
    sget-object v0, Lsun/net/www/http/ChunkedOutputStream;->CRLF:[B

    #@10
    sput-object v0, Lsun/net/www/http/ChunkedOutputStream;->FOOTER:[B

    #@12
    .line 40
    sget v0, Lsun/net/www/http/ChunkedOutputStream;->CRLF_SIZE:I

    #@14
    sput v0, Lsun/net/www/http/ChunkedOutputStream;->FOOTER_SIZE:I

    #@16
    .line 41
    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeader(I)[B

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lsun/net/www/http/ChunkedOutputStream;->EMPTY_CHUNK_HEADER:[B

    #@1c
    .line 42
    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    #@1f
    move-result v0

    #@20
    sput v0, Lsun/net/www/http/ChunkedOutputStream;->EMPTY_CHUNK_HEADER_SIZE:I

    #@22
    .line 33
    return-void

    #@23
    .line 37
    nop

    #@24
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "o"    # Ljava/io/PrintStream;

    #@0
    .prologue
    .line 87
    const/16 v0, 0x1000

    #@2
    invoke-direct {p0, p1, v0}, Lsun/net/www/http/ChunkedOutputStream;-><init>(Ljava/io/PrintStream;I)V

    #@5
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;I)V
    .locals 3
    .param p1, "o"    # Ljava/io/PrintStream;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 91
    invoke-direct {p0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    #@3
    .line 92
    iput-object p1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    #@5
    .line 94
    if-gtz p2, :cond_0

    #@7
    .line 95
    const/16 p2, 0x1000

    #@9
    .line 107
    :cond_0
    if-lez p2, :cond_2

    #@b
    .line 108
    invoke-static {p2}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    #@e
    move-result v1

    #@f
    sub-int v1, p2, v1

    #@11
    sget v2, Lsun/net/www/http/ChunkedOutputStream;->FOOTER_SIZE:I

    #@13
    sub-int v0, v1, v2

    #@15
    .line 109
    .local v0, "adjusted_size":I
    add-int/lit8 v1, v0, 0x1

    #@17
    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    #@1a
    move-result v1

    #@1b
    invoke-static {p2}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    #@1e
    move-result v2

    #@1f
    if-ge v1, v2, :cond_1

    #@21
    .line 110
    add-int/lit8 v0, v0, 0x1

    #@23
    .line 112
    :cond_1
    move p2, v0

    #@24
    .line 115
    .end local v0    # "adjusted_size":I
    :cond_2
    if-lez p2, :cond_3

    #@26
    .line 116
    iput p2, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    #@28
    .line 122
    :goto_0
    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    #@2a
    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    #@2d
    move-result v1

    #@2e
    iput v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferedHeaderSize:I

    #@30
    .line 123
    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferedHeaderSize:I

    #@32
    iget v2, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    #@34
    add-int/2addr v1, v2

    #@35
    .line 124
    sget v2, Lsun/net/www/http/ChunkedOutputStream;->FOOTER_SIZE:I

    #@37
    .line 123
    add-int/2addr v1, v2

    #@38
    iput v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkGrossSize:I

    #@3a
    .line 125
    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    #@3c
    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeader(I)[B

    #@3f
    move-result-object v1

    #@40
    iput-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->completeHeader:[B

    #@42
    .line 128
    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    #@44
    add-int/lit8 v1, v1, 0x20

    #@46
    new-array v1, v1, [B

    #@48
    iput-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    #@4a
    .line 129
    invoke-virtual {p0}, Lsun/net/www/http/ChunkedOutputStream;->reset()V

    #@4d
    .line 90
    return-void

    #@4e
    .line 119
    :cond_3
    const/16 v1, 0x1000

    #@50
    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    #@53
    move-result v1

    #@54
    .line 118
    rsub-int v1, v1, 0x1000

    #@56
    .line 119
    sget v2, Lsun/net/www/http/ChunkedOutputStream;->FOOTER_SIZE:I

    #@58
    .line 118
    sub-int/2addr v1, v2

    #@59
    iput v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    #@5b
    goto :goto_0
.end method

.method private ensureOpen()V
    .locals 1

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 185
    invoke-virtual {p0}, Ljava/io/PrintStream;->setError()V

    #@7
    .line 183
    :cond_0
    return-void
.end method

.method private flush(Z)V
    .locals 5
    .param p1, "flushAll"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 143
    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    #@3
    if-nez v1, :cond_1

    #@5
    .line 145
    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    #@7
    iget-object v2, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    #@9
    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkGrossSize:I

    #@b
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/PrintStream;->write([BII)V

    #@e
    .line 146
    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    #@10
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    #@13
    .line 147
    invoke-virtual {p0}, Lsun/net/www/http/ChunkedOutputStream;->reset()V

    #@16
    .line 142
    :cond_0
    :goto_0
    return-void

    #@17
    .line 148
    :cond_1
    if-eqz p1, :cond_0

    #@19
    .line 150
    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    #@1b
    if-lez v1, :cond_2

    #@1d
    .line 154
    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->preferedHeaderSize:I

    #@1f
    .line 155
    iget v2, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    #@21
    invoke-static {v2}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    #@24
    move-result v2

    #@25
    .line 154
    sub-int v0, v1, v2

    #@27
    .line 158
    .local v0, "adjustedHeaderStartIndex":I
    iget v1, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    #@29
    invoke-static {v1}, Lsun/net/www/http/ChunkedOutputStream;->getHeader(I)[B

    #@2c
    move-result-object v1

    #@2d
    iget-object v2, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    #@2f
    .line 159
    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    #@31
    invoke-static {v3}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    #@34
    move-result v3

    #@35
    .line 158
    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@38
    .line 162
    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    #@3a
    iget v2, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@3c
    add-int/lit8 v3, v2, 0x1

    #@3e
    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@40
    sget-object v3, Lsun/net/www/http/ChunkedOutputStream;->FOOTER:[B

    #@42
    aget-byte v3, v3, v4

    #@44
    aput-byte v3, v1, v2

    #@46
    .line 163
    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    #@48
    iget v2, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@4a
    add-int/lit8 v3, v2, 0x1

    #@4c
    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@4e
    sget-object v3, Lsun/net/www/http/ChunkedOutputStream;->FOOTER:[B

    #@50
    const/4 v4, 0x1

    #@51
    aget-byte v3, v3, v4

    #@53
    aput-byte v3, v1, v2

    #@55
    .line 166
    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    #@57
    iget-object v2, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    #@59
    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@5b
    sub-int/2addr v3, v0

    #@5c
    invoke-virtual {v1, v2, v0, v3}, Ljava/io/PrintStream;->write([BII)V

    #@5f
    .line 172
    .end local v0    # "adjustedHeaderStartIndex":I
    :goto_1
    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    #@61
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    #@64
    .line 173
    invoke-virtual {p0}, Lsun/net/www/http/ChunkedOutputStream;->reset()V

    #@67
    goto :goto_0

    #@68
    .line 169
    :cond_2
    iget-object v1, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    #@6a
    sget-object v2, Lsun/net/www/http/ChunkedOutputStream;->EMPTY_CHUNK_HEADER:[B

    #@6c
    sget v3, Lsun/net/www/http/ChunkedOutputStream;->EMPTY_CHUNK_HEADER_SIZE:I

    #@6e
    invoke-virtual {v1, v2, v4, v3}, Ljava/io/PrintStream;->write([BII)V

    #@71
    goto :goto_1
.end method

.method private static getHeader(I)[B
    .locals 8
    .param p0, "size"    # I

    #@0
    .prologue
    .line 72
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    .line 73
    .local v3, "hexStr":Ljava/lang/String;
    const-string/jumbo v5, "US-ASCII"

    #@7
    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@a
    move-result-object v2

    #@b
    .line 74
    .local v2, "hexBytes":[B
    invoke-static {p0}, Lsun/net/www/http/ChunkedOutputStream;->getHeaderSize(I)I

    #@e
    move-result v5

    #@f
    new-array v1, v5, [B

    #@11
    .line 75
    .local v1, "header":[B
    const/4 v4, 0x0

    #@12
    .local v4, "i":I
    :goto_0
    array-length v5, v2

    #@13
    if-ge v4, v5, :cond_0

    #@15
    .line 76
    aget-byte v5, v2, v4

    #@17
    aput-byte v5, v1, v4

    #@19
    .line 75
    add-int/lit8 v4, v4, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 77
    :cond_0
    array-length v5, v2

    #@1d
    sget-object v6, Lsun/net/www/http/ChunkedOutputStream;->CRLF:[B

    #@1f
    const/4 v7, 0x0

    #@20
    aget-byte v6, v6, v7

    #@22
    aput-byte v6, v1, v5

    #@24
    .line 78
    array-length v5, v2

    #@25
    add-int/lit8 v5, v5, 0x1

    #@27
    sget-object v6, Lsun/net/www/http/ChunkedOutputStream;->CRLF:[B

    #@29
    const/4 v7, 0x1

    #@2a
    aget-byte v6, v6, v7

    #@2c
    aput-byte v6, v1, v5
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 79
    return-object v1

    #@2f
    .line 80
    .end local v1    # "header":[B
    .end local v2    # "hexBytes":[B
    .end local v3    # "hexStr":Ljava/lang/String;
    .end local v4    # "i":I
    :catch_0
    move-exception v0

    #@30
    .line 82
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/InternalError;

    #@32
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    #@35
    move-result-object v6

    #@36
    invoke-direct {v5, v6}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@39
    throw v5
.end method

.method private static getHeaderSize(I)I
    .locals 2
    .param p0, "size"    # I

    #@0
    .prologue
    .line 66
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    sget v1, Lsun/net/www/http/ChunkedOutputStream;->CRLF_SIZE:I

    #@a
    add-int/2addr v0, v1

    #@b
    return v0
.end method


# virtual methods
.method public checkError()Z
    .locals 1

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0}, Ljava/io/PrintStream;->checkError()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized close()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 279
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedOutputStream;->ensureOpen()V

    #@4
    .line 282
    iget v0, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    #@6
    if-lez v0, :cond_0

    #@8
    .line 283
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedOutputStream;->flush(Z)V

    #@c
    .line 287
    :cond_0
    const/4 v0, 0x1

    #@d
    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedOutputStream;->flush(Z)V

    #@10
    .line 290
    const/4 v0, 0x0

    #@11
    iput-object v0, p0, Lsun/net/www/http/ChunkedOutputStream;->out:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit p0

    #@14
    .line 278
    return-void

    #@15
    :catchall_0
    move-exception v0

    #@16
    monitor-exit p0

    #@17
    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 295
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedOutputStream;->ensureOpen()V

    #@4
    .line 296
    iget v0, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    #@6
    if-lez v0, :cond_0

    #@8
    .line 297
    const/4 v0, 0x1

    #@9
    invoke-direct {p0, v0}, Lsun/net/www/http/ChunkedOutputStream;->flush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :cond_0
    monitor-exit p0

    #@d
    .line 294
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 268
    :try_start_0
    iget v0, p0, Lsun/net/www/http/ChunkedOutputStream;->preferedHeaderSize:I

    #@3
    iput v0, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@5
    .line 269
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    #@8
    .line 270
    iget v0, p0, Lsun/net/www/http/ChunkedOutputStream;->preferredChunkDataSize:I

    #@a
    iput v0, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    monitor-exit p0

    #@d
    .line 267
    return-void

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 274
    iget v0, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    #@2
    return v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "_b"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 263
    const/4 v1, 0x1

    #@2
    :try_start_0
    new-array v0, v1, [B

    #@4
    int-to-byte v1, p1

    #@5
    const/4 v2, 0x0

    #@6
    aput-byte v1, v0, v2

    #@8
    .line 264
    .local v0, "b":[B
    const/4 v1, 0x0

    #@9
    const/4 v2, 0x1

    #@a
    invoke-virtual {p0, v0, v1, v2}, Lsun/net/www/http/ChunkedOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 262
    return-void

    #@f
    .end local v0    # "b":[B
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1
.end method

.method public declared-synchronized write([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 201
    :try_start_0
    invoke-direct {p0}, Lsun/net/www/http/ChunkedOutputStream;->ensureOpen()V

    #@4
    .line 202
    if-ltz p2, :cond_0

    #@6
    array-length v3, p1

    #@7
    if-le p2, v3, :cond_1

    #@9
    .line 204
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@b
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@e
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :catchall_0
    move-exception v3

    #@10
    monitor-exit p0

    #@11
    throw v3

    #@12
    .line 202
    :cond_1
    if-ltz p3, :cond_0

    #@14
    .line 203
    add-int v3, p2, p3

    #@16
    :try_start_1
    array-length v4, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    if-gt v3, v4, :cond_0

    #@19
    add-int v3, p2, p3

    #@1b
    if-ltz v3, :cond_0

    #@1d
    .line 205
    if-nez p3, :cond_2

    #@1f
    monitor-exit p0

    #@20
    .line 206
    return-void

    #@21
    .line 215
    :cond_2
    move v0, p3

    #@22
    .line 216
    .local v0, "bytesToWrite":I
    move v2, p2

    #@23
    .line 220
    .local v2, "inputIndex":I
    :goto_0
    :try_start_2
    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    #@25
    if-lt v0, v3, :cond_5

    #@27
    .line 223
    const/4 v1, 0x0

    #@28
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->completeHeader:[B

    #@2a
    array-length v3, v3

    #@2b
    if-ge v1, v3, :cond_3

    #@2d
    .line 224
    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    #@2f
    iget-object v4, p0, Lsun/net/www/http/ChunkedOutputStream;->completeHeader:[B

    #@31
    aget-byte v4, v4, v1

    #@33
    aput-byte v4, v3, v1

    #@35
    .line 223
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_1

    #@38
    .line 227
    :cond_3
    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    #@3a
    iget v4, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@3c
    iget v5, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    #@3e
    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@41
    .line 228
    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    #@43
    add-int/2addr v2, v3

    #@44
    .line 229
    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    #@46
    sub-int/2addr v0, v3

    #@47
    .line 230
    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@49
    iget v4, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    #@4b
    add-int/2addr v3, v4

    #@4c
    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@4e
    .line 233
    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    #@50
    iget v4, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@52
    add-int/lit8 v5, v4, 0x1

    #@54
    iput v5, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@56
    sget-object v5, Lsun/net/www/http/ChunkedOutputStream;->FOOTER:[B

    #@58
    const/4 v6, 0x0

    #@59
    aget-byte v5, v5, v6

    #@5b
    aput-byte v5, v3, v4

    #@5d
    .line 234
    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    #@5f
    iget v4, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@61
    add-int/lit8 v5, v4, 0x1

    #@63
    iput v5, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@65
    sget-object v5, Lsun/net/www/http/ChunkedOutputStream;->FOOTER:[B

    #@67
    const/4 v6, 0x1

    #@68
    aget-byte v5, v5, v6

    #@6a
    aput-byte v5, v3, v4

    #@6c
    .line 235
    const/4 v3, 0x0

    #@6d
    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    #@6f
    .line 237
    const/4 v3, 0x0

    #@70
    invoke-direct {p0, v3}, Lsun/net/www/http/ChunkedOutputStream;->flush(Z)V

    #@73
    .line 238
    invoke-virtual {p0}, Lsun/net/www/http/ChunkedOutputStream;->checkError()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@76
    move-result v3

    #@77
    if-eqz v3, :cond_6

    #@79
    .end local v1    # "i":I
    :cond_4
    monitor-exit p0

    #@7a
    .line 200
    return-void

    #@7b
    .line 249
    :cond_5
    :try_start_3
    iget-object v3, p0, Lsun/net/www/http/ChunkedOutputStream;->buf:[B

    #@7d
    iget v4, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@7f
    invoke-static {p1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@82
    .line 250
    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@84
    add-int/2addr v3, v0

    #@85
    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->count:I

    #@87
    .line 251
    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    #@89
    add-int/2addr v3, v0

    #@8a
    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->size:I

    #@8c
    .line 252
    iget v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I

    #@8e
    sub-int/2addr v3, v0

    #@8f
    iput v3, p0, Lsun/net/www/http/ChunkedOutputStream;->spaceInCurrentChunk:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@91
    .line 253
    const/4 v0, 0x0

    #@92
    .line 258
    :cond_6
    if-lez v0, :cond_4

    #@94
    goto :goto_0
.end method
