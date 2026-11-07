.class public Ljava/io/ByteArrayInputStream;
.super Ljava/io/InputStream;
.source "ByteArrayInputStream.java"


# instance fields
.field protected whitelist test-api buf:[B

.field protected whitelist test-api count:I

.field protected whitelist test-api mark:I

.field protected whitelist test-api pos:I


# direct methods
.method public constructor whitelist test-api <init>([B)V
    .registers 3
    .param p1, "buf"    # [B

    .line 105
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 106
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 107
    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 108
    array-length v0, p1

    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 109
    return-void
.end method

.method public constructor whitelist test-api <init>([BII)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 125
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 126
    iput-object p1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    .line 127
    iput p2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    .line 128
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    .line 129
    iput p2, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 130
    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist test-api available()I
    .registers 3

    monitor-enter p0

    .line 242
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    .line 242
    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    return-void
.end method

.method public whitelist test-api mark(I)V
    .registers 3
    .param p1, "readAheadLimit"    # I

    .line 272
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    .line 273
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized whitelist test-api read()I
    .registers 4

    monitor-enter p0

    .line 146
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    if-ge v0, v1, :cond_14

    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_17

    and-int/lit16 v0, v0, 0xff

    goto :goto_15

    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
    :cond_14
    const/4 v0, -0x1

    :goto_15
    monitor-exit p0

    return v0

    .line 146
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public declared-synchronized whitelist test-api read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 173
    :try_start_1
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 175
    iget v0, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_29

    if-lt v0, v1, :cond_e

    .line 176
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 179
    :cond_e
    :try_start_e
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_29

    sub-int/2addr v0, v1

    .line 180
    .local v0, "avail":I
    if-le p3, v0, :cond_16

    .line 181
    move p3, v0

    .line 183
    :cond_16
    if-gtz p3, :cond_1b

    .line 184
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 186
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_29

    .line 188
    monitor-exit p0

    return p3

    .line 172
    .end local v0    # "avail":I
    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
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

.method public declared-synchronized whitelist test-api readAllBytes()[B
    .registers 4

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    iget v2, p0, Ljava/io/ByteArrayInputStream;->count:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 193
    .local v0, "result":[B
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 194
    monitor-exit p0

    return-object v0

    .line 191
    .end local v0    # "result":[B
    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public whitelist test-api readNBytes([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 198
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v0

    .line 199
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    return v1
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 2

    monitor-enter p0

    .line 281
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->mark:I

    iput v0, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    .line 282
    monitor-exit p0

    return-void

    .line 280
    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized whitelist test-api skip(J)J
    .registers 8
    .param p1, "n"    # J

    monitor-enter p0

    .line 222
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 223
    .local v0, "k":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_14

    .line 224
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gez v4, :cond_12

    goto :goto_13

    :cond_12
    move-wide v2, p1

    :goto_13
    move-wide v0, v2

    .line 227
    :cond_14
    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 228
    monitor-exit p0

    return-wide v0

    .line 221
    .end local v0    # "k":J
    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
    .end local p1    # "n":J
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public declared-synchronized whitelist test-api transferTo(Ljava/io/OutputStream;)J
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 203
    :try_start_1
    iget v0, p0, Ljava/io/ByteArrayInputStream;->count:I

    iget v1, p0, Ljava/io/ByteArrayInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 204
    .local v0, "len":I
    iget-object v1, p0, Ljava/io/ByteArrayInputStream;->buf:[B

    iget v2, p0, Ljava/io/ByteArrayInputStream;->pos:I

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 205
    iget v1, p0, Ljava/io/ByteArrayInputStream;->count:I

    iput v1, p0, Ljava/io/ByteArrayInputStream;->pos:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_14

    .line 206
    int-to-long v1, v0

    monitor-exit p0

    return-wide v1

    .line 202
    .end local v0    # "len":I
    .end local p0    # "this":Ljava/io/ByteArrayInputStream;
    .end local p1    # "out":Ljava/io/OutputStream;
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method
