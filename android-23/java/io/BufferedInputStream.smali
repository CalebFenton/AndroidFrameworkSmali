.class public Ljava/io/BufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "BufferedInputStream.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000


# instance fields
.field protected volatile buf:[B

.field protected count:I

.field protected marklimit:I

.field protected markpos:I

.field protected pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 83
    const/16 v0, 0x2000

    #@2
    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    #@5
    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    #@0
    .prologue
    .line 99
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    #@3
    .line 65
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@6
    .line 100
    if-gtz p2, :cond_0

    #@8
    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "size <= 0"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 103
    :cond_0
    new-array v0, p2, [B

    #@13
    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@15
    .line 98
    return-void
.end method

.method private fillbuf(Ljava/io/InputStream;[B)I
    .locals 8
    .param p1, "localIn"    # Ljava/io/InputStream;
    .param p2, "localBuf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 147
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@4
    if-eq v4, v6, :cond_0

    #@6
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@8
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@a
    sub-int/2addr v4, v5

    #@b
    iget v5, p0, Ljava/io/BufferedInputStream;->marklimit:I

    #@d
    if-lt v4, v5, :cond_2

    #@f
    .line 149
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    #@12
    move-result v3

    #@13
    .line 150
    .local v3, "result":I
    if-lez v3, :cond_1

    #@15
    .line 151
    iput v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@17
    .line 152
    iput v7, p0, Ljava/io/BufferedInputStream;->pos:I

    #@19
    .line 153
    iput v3, p0, Ljava/io/BufferedInputStream;->count:I

    #@1b
    .line 155
    :cond_1
    return v3

    #@1c
    .line 157
    .end local v3    # "result":I
    :cond_2
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@1e
    if-nez v4, :cond_5

    #@20
    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    #@22
    array-length v5, p2

    #@23
    if-le v4, v5, :cond_5

    #@25
    .line 159
    array-length v4, p2

    #@26
    mul-int/lit8 v1, v4, 0x2

    #@28
    .line 160
    .local v1, "newLength":I
    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    #@2a
    if-le v1, v4, :cond_3

    #@2c
    .line 161
    iget v1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    #@2e
    .line 163
    :cond_3
    new-array v2, v1, [B

    #@30
    .line 164
    .local v2, "newbuf":[B
    array-length v4, p2

    #@31
    invoke-static {p2, v7, v2, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@34
    .line 167
    iput-object v2, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@36
    move-object p2, v2

    #@37
    .line 173
    .end local v1    # "newLength":I
    .end local v2    # "newbuf":[B
    :cond_4
    :goto_0
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@39
    iget v5, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@3b
    sub-int/2addr v4, v5

    #@3c
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@3e
    .line 174
    iput v7, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@40
    iput v7, p0, Ljava/io/BufferedInputStream;->count:I

    #@42
    .line 175
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@44
    array-length v5, p2

    #@45
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    #@47
    sub-int/2addr v5, v6

    #@48
    invoke-virtual {p1, p2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    #@4b
    move-result v0

    #@4c
    .line 176
    .local v0, "bytesread":I
    if-gtz v0, :cond_6

    #@4e
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@50
    :goto_1
    iput v4, p0, Ljava/io/BufferedInputStream;->count:I

    #@52
    .line 177
    return v0

    #@53
    .line 168
    .end local v0    # "bytesread":I
    :cond_5
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@55
    if-lez v4, :cond_4

    #@57
    .line 169
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@59
    array-length v5, p2

    #@5a
    .line 170
    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@5c
    .line 169
    sub-int/2addr v5, v6

    #@5d
    invoke-static {p2, v4, p2, v7, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@60
    goto :goto_0

    #@61
    .line 176
    .restart local v0    # "bytesread":I
    :cond_6
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@63
    add-int/2addr v4, v0

    #@64
    goto :goto_1
.end method

.method private streamClosed()Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 125
    new-instance v0, Ljava/io/IOException;

    #@2
    const-string/jumbo v1, "BufferedInputStream is closed"

    #@5
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 3
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
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    #@3
    .line 118
    .local v0, "localIn":Ljava/io/InputStream;
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@5
    if-eqz v1, :cond_0

    #@7
    if-nez v0, :cond_1

    #@9
    .line 119
    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    #@c
    move-result-object v1

    #@d
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .end local v0    # "localIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    #@f
    monitor-exit p0

    #@10
    throw v1

    #@11
    .line 121
    .restart local v0    # "localIn":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    #@13
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    #@15
    sub-int/2addr v1, v2

    #@16
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    move-result v2

    #@1a
    add-int/2addr v1, v2

    #@1b
    monitor-exit p0

    #@1c
    return v1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 137
    iput-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@3
    .line 138
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    #@5
    .line 139
    .local v0, "localIn":Ljava/io/InputStream;
    iput-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    #@7
    .line 140
    if-eqz v0, :cond_0

    #@9
    .line 141
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    #@c
    .line 136
    :cond_0
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 195
    :try_start_0
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    #@3
    .line 196
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    #@5
    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 194
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public markSupported()Z
    .locals 1

    #@0
    .prologue
    .line 209
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public declared-synchronized read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 227
    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@4
    .line 228
    .local v0, "localBuf":[B
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    #@6
    .line 229
    .local v1, "localIn":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    #@8
    if-nez v1, :cond_1

    #@a
    .line 230
    :cond_0
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    #@d
    move-result-object v2

    #@e
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    .end local v0    # "localBuf":[B
    .end local v1    # "localIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    #@10
    monitor-exit p0

    #@11
    throw v2

    #@12
    .line 234
    .restart local v0    # "localBuf":[B
    .restart local v1    # "localIn":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    #@14
    iget v3, p0, Ljava/io/BufferedInputStream;->count:I

    #@16
    if-lt v2, v3, :cond_2

    #@18
    invoke-direct {p0, v1, v0}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    move-result v2

    #@1c
    if-ne v2, v4, :cond_2

    #@1e
    monitor-exit p0

    #@1f
    .line 235
    return v4

    #@20
    .line 238
    :cond_2
    :try_start_2
    iget-object v2, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@22
    if-eq v0, v2, :cond_3

    #@24
    .line 239
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@26
    .line 240
    if-nez v0, :cond_3

    #@28
    .line 241
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    #@2b
    move-result-object v2

    #@2c
    throw v2

    #@2d
    .line 246
    :cond_3
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    #@2f
    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    #@31
    sub-int/2addr v2, v3

    #@32
    if-lez v2, :cond_4

    #@34
    .line 247
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    #@36
    add-int/lit8 v3, v2, 0x1

    #@38
    iput v3, p0, Ljava/io/BufferedInputStream;->pos:I

    #@3a
    aget-byte v2, v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    and-int/lit16 v2, v2, 0xff

    #@3e
    monitor-exit p0

    #@3f
    return v2

    #@40
    :cond_4
    monitor-exit p0

    #@41
    .line 249
    return v4
.end method

.method public declared-synchronized read([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    monitor-enter p0

    #@3
    .line 255
    :try_start_0
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@5
    .line 256
    .local v1, "localBuf":[B
    if-nez v1, :cond_0

    #@7
    .line 257
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    #@a
    move-result-object v5

    #@b
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .end local v1    # "localBuf":[B
    :catchall_0
    move-exception v5

    #@d
    monitor-exit p0

    #@e
    throw v5

    #@f
    .line 259
    .restart local v1    # "localBuf":[B
    :cond_0
    :try_start_1
    array-length v6, p1

    #@10
    invoke-static {v6, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    .line 260
    if-nez p3, :cond_1

    #@15
    monitor-exit p0

    #@16
    .line 261
    return v7

    #@17
    .line 263
    :cond_1
    :try_start_2
    iget-object v2, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    #@19
    .line 264
    .local v2, "localIn":Ljava/io/InputStream;
    if-nez v2, :cond_2

    #@1b
    .line 265
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    #@1e
    move-result-object v5

    #@1f
    throw v5

    #@20
    .line 269
    :cond_2
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    #@22
    iget v7, p0, Ljava/io/BufferedInputStream;->count:I

    #@24
    if-ge v6, v7, :cond_6

    #@26
    .line 271
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    #@28
    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    #@2a
    sub-int/2addr v6, v7

    #@2b
    if-lt v6, p3, :cond_4

    #@2d
    move v0, p3

    #@2e
    .line 272
    .local v0, "copylength":I
    :goto_0
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    #@30
    invoke-static {v1, v6, p1, p2, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@33
    .line 273
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    #@35
    add-int/2addr v6, v0

    #@36
    iput v6, p0, Ljava/io/BufferedInputStream;->pos:I

    #@38
    .line 274
    if-eq v0, p3, :cond_3

    #@3a
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3d
    move-result v6

    #@3e
    if-nez v6, :cond_5

    #@40
    :cond_3
    monitor-exit p0

    #@41
    .line 275
    return v0

    #@42
    .line 271
    .end local v0    # "copylength":I
    :cond_4
    :try_start_3
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    #@44
    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    #@46
    sub-int v0, v6, v7

    #@48
    .restart local v0    # "copylength":I
    goto :goto_0

    #@49
    .line 277
    :cond_5
    add-int/2addr p2, v0

    #@4a
    .line 278
    sub-int v4, p3, v0

    #@4c
    .line 289
    .end local v0    # "copylength":I
    .local v4, "required":I
    :goto_1
    iget v6, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@4e
    if-ne v6, v5, :cond_8

    #@50
    array-length v6, v1

    #@51
    if-lt v4, v6, :cond_8

    #@53
    .line 290
    invoke-virtual {v2, p1, p2, v4}, Ljava/io/InputStream;->read([BII)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@56
    move-result v3

    #@57
    .line 291
    .local v3, "read":I
    if-ne v3, v5, :cond_c

    #@59
    .line 292
    if-ne v4, p3, :cond_7

    #@5b
    :goto_2
    monitor-exit p0

    #@5c
    return v5

    #@5d
    .line 280
    .end local v3    # "read":I
    .end local v4    # "required":I
    :cond_6
    move v4, p3

    #@5e
    .restart local v4    # "required":I
    goto :goto_1

    #@5f
    .line 292
    .restart local v3    # "read":I
    :cond_7
    sub-int v5, p3, v4

    #@61
    goto :goto_2

    #@62
    .line 295
    .end local v3    # "read":I
    :cond_8
    :try_start_4
    invoke-direct {p0, v2, v1}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@65
    move-result v6

    #@66
    if-ne v6, v5, :cond_a

    #@68
    .line 296
    if-ne v4, p3, :cond_9

    #@6a
    :goto_3
    monitor-exit p0

    #@6b
    return v5

    #@6c
    :cond_9
    sub-int v5, p3, v4

    #@6e
    goto :goto_3

    #@6f
    .line 299
    :cond_a
    :try_start_5
    iget-object v6, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@71
    if-eq v1, v6, :cond_b

    #@73
    .line 300
    iget-object v1, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@75
    .line 301
    if-nez v1, :cond_b

    #@77
    .line 302
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    #@7a
    move-result-object v5

    #@7b
    throw v5

    #@7c
    .line 306
    :cond_b
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    #@7e
    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    #@80
    sub-int/2addr v6, v7

    #@81
    if-lt v6, v4, :cond_d

    #@83
    move v3, v4

    #@84
    .line 307
    .restart local v3    # "read":I
    :goto_4
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    #@86
    invoke-static {v1, v6, p1, p2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@89
    .line 308
    iget v6, p0, Ljava/io/BufferedInputStream;->pos:I

    #@8b
    add-int/2addr v6, v3

    #@8c
    iput v6, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@8e
    .line 310
    :cond_c
    sub-int/2addr v4, v3

    #@8f
    .line 311
    if-nez v4, :cond_e

    #@91
    monitor-exit p0

    #@92
    .line 312
    return p3

    #@93
    .line 306
    .end local v3    # "read":I
    :cond_d
    :try_start_6
    iget v6, p0, Ljava/io/BufferedInputStream;->count:I

    #@95
    iget v7, p0, Ljava/io/BufferedInputStream;->pos:I

    #@97
    sub-int v3, v6, v7

    #@99
    .restart local v3    # "read":I
    goto :goto_4

    #@9a
    .line 314
    :cond_e
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@9d
    move-result v6

    #@9e
    if-nez v6, :cond_f

    #@a0
    .line 315
    sub-int v5, p3, v4

    #@a2
    monitor-exit p0

    #@a3
    return v5

    #@a4
    .line 317
    :cond_f
    add-int/2addr p2, v3

    #@a5
    goto :goto_1
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
    .line 332
    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@3
    if-nez v0, :cond_0

    #@5
    .line 333
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "Stream is closed"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 335
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@13
    const/4 v1, -0x1

    #@14
    if-ne v0, v1, :cond_1

    #@16
    .line 336
    new-instance v0, Ljava/io/IOException;

    #@18
    const-string/jumbo v1, "Mark has been invalidated."

    #@1b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 338
    :cond_1
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@21
    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 331
    return-void
.end method

.method public declared-synchronized skip(J)J
    .locals 9
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 357
    :try_start_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    #@4
    .line 358
    .local v0, "localBuf":[B
    iget-object v1, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    #@6
    .line 359
    .local v1, "localIn":Ljava/io/InputStream;
    if-nez v0, :cond_0

    #@8
    .line 360
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    #@b
    move-result-object v4

    #@c
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .end local v0    # "localBuf":[B
    .end local v1    # "localIn":Ljava/io/InputStream;
    :catchall_0
    move-exception v4

    #@e
    monitor-exit p0

    #@f
    throw v4

    #@10
    .line 362
    .restart local v0    # "localBuf":[B
    .restart local v1    # "localIn":Ljava/io/InputStream;
    :cond_0
    const-wide/16 v4, 0x1

    #@12
    cmp-long v4, p1, v4

    #@14
    if-gez v4, :cond_1

    #@16
    .line 363
    const-wide/16 v4, 0x0

    #@18
    monitor-exit p0

    #@19
    return-wide v4

    #@1a
    .line 365
    :cond_1
    if-nez v1, :cond_2

    #@1c
    .line 366
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->streamClosed()Ljava/io/IOException;

    #@1f
    move-result-object v4

    #@20
    throw v4

    #@21
    .line 369
    :cond_2
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    #@23
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    #@25
    sub-int/2addr v4, v5

    #@26
    int-to-long v4, v4

    #@27
    cmp-long v4, v4, p1

    #@29
    if-ltz v4, :cond_3

    #@2b
    .line 370
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@2d
    int-to-long v4, v4

    #@2e
    add-long/2addr v4, p1

    #@2f
    long-to-int v4, v4

    #@30
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    monitor-exit p0

    #@33
    .line 371
    return-wide p1

    #@34
    .line 373
    :cond_3
    :try_start_2
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    #@36
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    #@38
    sub-int/2addr v4, v5

    #@39
    int-to-long v2, v4

    #@3a
    .line 374
    .local v2, "read":J
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    #@3c
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@3e
    .line 376
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    #@40
    if-eq v4, v6, :cond_6

    #@42
    .line 377
    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    #@44
    int-to-long v4, v4

    #@45
    cmp-long v4, p1, v4

    #@47
    if-gtz v4, :cond_6

    #@49
    .line 378
    invoke-direct {p0, v1, v0}, Ljava/io/BufferedInputStream;->fillbuf(Ljava/io/InputStream;[B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    move-result v4

    #@4d
    if-ne v4, v6, :cond_4

    #@4f
    monitor-exit p0

    #@50
    .line 379
    return-wide v2

    #@51
    .line 381
    :cond_4
    :try_start_3
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    #@53
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    #@55
    sub-int/2addr v4, v5

    #@56
    int-to-long v4, v4

    #@57
    sub-long v6, p1, v2

    #@59
    cmp-long v4, v4, v6

    #@5b
    if-ltz v4, :cond_5

    #@5d
    .line 382
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    #@5f
    int-to-long v4, v4

    #@60
    sub-long v6, p1, v2

    #@62
    add-long/2addr v4, v6

    #@63
    long-to-int v4, v4

    #@64
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@66
    monitor-exit p0

    #@67
    .line 383
    return-wide p1

    #@68
    .line 386
    :cond_5
    :try_start_4
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    #@6a
    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I

    #@6c
    sub-int/2addr v4, v5

    #@6d
    int-to-long v4, v4

    #@6e
    add-long/2addr v2, v4

    #@6f
    .line 387
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    #@71
    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@73
    monitor-exit p0

    #@74
    .line 388
    return-wide v2

    #@75
    .line 391
    :cond_6
    sub-long v4, p1, v2

    #@77
    :try_start_5
    invoke-virtual {v1, v4, v5}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7a
    move-result-wide v4

    #@7b
    add-long/2addr v4, v2

    #@7c
    monitor-exit p0

    #@7d
    return-wide v4
.end method
