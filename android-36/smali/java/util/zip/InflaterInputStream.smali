.class public Ljava/util/zip/InflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "InflaterInputStream.java"


# instance fields
.field private greylist-max-o b:[B

.field protected whitelist test-api buf:[B

.field protected whitelist test-api closed:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected whitelist test-api inf:Ljava/util/zip/Inflater;

.field protected whitelist test-api len:I

.field private final blacklist ownsInflater:Z

.field private greylist-max-o reachEOF:Z

.field private greylist-max-o singleByteBuf:[B


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 159
    if-eqz p1, :cond_8

    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, p1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    .line 162
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;

    .line 141
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 142
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;
    .param p3, "size"    # I

    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;IZ)V

    .line 132
    return-void
.end method

.method constructor blacklist <init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;IZ)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "inf"    # Ljava/util/zip/Inflater;
    .param p3, "size"    # I
    .param p4, "ownsInflater"    # Z

    .line 100
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    .line 76
    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 164
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    .line 243
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    .line 101
    if-eqz p1, :cond_2a

    if-eqz p2, :cond_2a

    .line 103
    if-lez p3, :cond_22

    .line 106
    iput-object p2, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    .line 107
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    .line 108
    iput-boolean p4, p0, Ljava/util/zip/InflaterInputStream;->ownsInflater:Z

    .line 109
    return-void

    .line 104
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_5

    .line 85
    return-void

    .line 83
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 232
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 233
    return v1

    .line 234
    :cond_9
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 236
    iput-boolean v2, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 237
    return v1

    .line 239
    :cond_15
    return v2
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    if-nez v0, :cond_15

    .line 287
    iget-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->ownsInflater:Z

    if-eqz v0, :cond_d

    .line 288
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 292
    :cond_d
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->closed:Z

    .line 295
    :cond_15
    return-void
.end method

.method protected whitelist test-api fill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 303
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget-object v2, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    iput v0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    .line 304
    iget v0, p0, Ljava/util/zip/InflaterInputStream;->len:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 307
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v1, p0, Ljava/util/zip/InflaterInputStream;->buf:[B

    iget v2, p0, Ljava/util/zip/InflaterInputStream;->len:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 308
    return-void

    .line 305
    :cond_20
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Unexpected end of ZLIB input stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized whitelist test-api mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 336
    monitor-exit p0

    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 174
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    goto :goto_17

    :cond_f
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->singleByteBuf:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    :goto_17
    return v1
.end method

.method public whitelist test-api read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 195
    if-eqz p1, :cond_54

    .line 197
    if-ltz p2, :cond_4e

    if-ltz p3, :cond_4e

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_4e

    .line 199
    if-nez p3, :cond_11

    .line 200
    const/4 v0, 0x0

    return v0

    .line 204
    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    move v1, v0

    .local v1, "n":I
    if-nez v0, :cond_3c

    .line 205
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v0

    if-eqz v0, :cond_2b

    goto :goto_37

    .line 209
    :cond_2b
    iget-object v0, p0, Ljava/util/zip/InflaterInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 210
    invoke-virtual {p0}, Ljava/util/zip/InflaterInputStream;->fill()V

    goto :goto_11

    .line 206
    :cond_37
    :goto_37
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z
    :try_end_3a
    .catch Ljava/util/zip/DataFormatException; {:try_start_11 .. :try_end_3a} :catch_3d

    .line 207
    const/4 v0, -0x1

    return v0

    .line 213
    :cond_3c
    return v1

    .line 214
    .end local v1    # "n":I
    :catch_3d
    move-exception v0

    .line 215
    .local v0, "e":Ljava/util/zip/DataFormatException;
    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/util/zip/ZipException;

    if-eqz v1, :cond_48

    move-object v3, v1

    goto :goto_4a

    :cond_48
    const-string v3, "Invalid ZLIB data format"

    :goto_4a
    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    .end local v0    # "e":Ljava/util/zip/DataFormatException;
    .end local v1    # "s":Ljava/lang/String;
    :cond_4e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 196
    :cond_54
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 351
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    .end local p0    # "this":Ljava/util/zip/InflaterInputStream;
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_30

    .line 256
    invoke-direct {p0}, Ljava/util/zip/InflaterInputStream;->ensureOpen()V

    .line 257
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 258
    .local v0, "max":I
    const/4 v1, 0x0

    .line 259
    .local v1, "total":I
    :goto_12
    if-ge v1, v0, :cond_2e

    .line 260
    sub-int v2, v0, v1

    .line 261
    .local v2, "len":I
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    array-length v3, v3

    if-le v2, v3, :cond_1e

    .line 262
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    array-length v2, v3

    .line 264
    :cond_1e
    iget-object v3, p0, Ljava/util/zip/InflaterInputStream;->b:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v2

    .line 265
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    .line 266
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/InflaterInputStream;->reachEOF:Z

    .line 267
    goto :goto_2e

    .line 269
    :cond_2c
    add-int/2addr v1, v2

    .line 270
    .end local v2    # "len":I
    goto :goto_12

    .line 271
    :cond_2e
    :goto_2e
    int-to-long v2, v1

    return-wide v2

    .line 254
    .end local v0    # "max":I
    .end local v1    # "total":I
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative skip length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
