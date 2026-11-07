.class public Ljava/util/zip/DeflaterInputStream;
.super Ljava/io/FilterInputStream;
.source "DeflaterInputStream.java"


# instance fields
.field protected final whitelist test-api buf:[B

.field protected final whitelist test-api def:Ljava/util/zip/Deflater;

.field private greylist-max-o rbuf:[B

.field private greylist-max-o reachEOF:Z

.field private greylist-max-o usesDefaultDeflater:Z


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 78
    if-eqz p1, :cond_8

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    .line 80
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "defl"    # Ljava/util/zip/Deflater;

    .line 91
    const/16 v0, 0x200

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/DeflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V

    .line 92
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/util/zip/Deflater;I)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "defl"    # Ljava/util/zip/Deflater;
    .param p3, "bufLen"    # I

    .line 105
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    const/4 v0, 0x1

    new-array v1, v0, [B

    iput-object v1, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    .line 59
    iput-boolean v1, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    .line 108
    if-eqz p1, :cond_2a

    .line 110
    if-eqz p2, :cond_22

    .line 112
    if-lt p3, v0, :cond_1a

    .line 116
    iput-object p2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    .line 117
    new-array v0, p3, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    .line 118
    return-void

    .line 113
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null deflater"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    .line 68
    return-void

    .line 66
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    .line 274
    iget-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    if-eqz v0, :cond_9

    .line 275
    const/4 v0, 0x0

    return v0

    .line 277
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1a

    .line 130
    const/4 v0, 0x0

    :try_start_5
    iget-boolean v1, p0, Ljava/util/zip/DeflaterInputStream;->usesDefaultDeflater:Z

    if-eqz v1, :cond_e

    .line 131
    iget-object v1, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 134
    :cond_e
    iget-object v1, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_16

    .line 136
    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    .line 137
    goto :goto_1a

    .line 136
    :catchall_16
    move-exception v1

    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    .line 137
    throw v1

    .line 139
    :cond_1a
    :goto_1a
    return-void
.end method

.method public whitelist test-api mark(I)V
    .registers 2
    .param p1, "limit"    # I

    .line 297
    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 287
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

    .line 152
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/zip/DeflaterInputStream;->read([BII)I

    move-result v0

    .line 153
    .local v0, "len":I
    if-gtz v0, :cond_c

    .line 154
    const/4 v1, -0x1

    return v1

    .line 155
    :cond_c
    iget-object v1, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public whitelist test-api read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    .line 174
    if-eqz p1, :cond_5f

    .line 176
    if-ltz p2, :cond_59

    if-ltz p3, :cond_59

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_59

    .line 178
    const/4 v0, 0x0

    if-nez p3, :cond_11

    .line 179
    return v0

    .line 183
    :cond_11
    const/4 v1, 0x0

    .line 184
    .local v1, "cnt":I
    :goto_12
    if-lez p3, :cond_4a

    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_4a

    .line 188
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 189
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 190
    .local v2, "n":I
    if-gez v2, :cond_37

    .line 192
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finish()V

    goto :goto_40

    .line 193
    :cond_37
    if-lez v2, :cond_40

    .line 194
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->buf:[B

    invoke-virtual {v3, v4, v0, v2}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 199
    .end local v2    # "n":I
    :cond_40
    :goto_40
    iget-object v2, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2, p1, p2, p3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v2

    .line 200
    .restart local v2    # "n":I
    add-int/2addr v1, v2

    .line 201
    add-int/2addr p2, v2

    .line 202
    sub-int/2addr p3, v2

    .line 203
    .end local v2    # "n":I
    goto :goto_12

    .line 214
    :cond_4a
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/DeflaterInputStream;->reachEOF:Z

    .line 216
    if-nez v1, :cond_58

    .line 217
    const/4 v1, -0x1

    .line 222
    :cond_58
    return v1

    .line 177
    .end local v1    # "cnt":I
    :cond_59
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 175
    :cond_5f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null buffer for read"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_39

    .line 241
    invoke-direct {p0}, Ljava/util/zip/DeflaterInputStream;->ensureOpen()V

    .line 244
    iget-object v0, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    array-length v0, v0

    const/16 v1, 0x200

    if-ge v0, v1, :cond_14

    .line 245
    new-array v0, v1, [B

    iput-object v0, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    .line 247
    :cond_14
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 248
    .local v0, "total":I
    const-wide/16 v1, 0x0

    .line 249
    .local v1, "cnt":J
    :goto_1e
    if-lez v0, :cond_38

    .line 251
    iget-object v3, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    array-length v4, v4

    if-gt v0, v4, :cond_29

    move v4, v0

    goto :goto_2c

    :cond_29
    iget-object v4, p0, Ljava/util/zip/DeflaterInputStream;->rbuf:[B

    array-length v4, v4

    :goto_2c
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5, v4}, Ljava/util/zip/DeflaterInputStream;->read([BII)I

    move-result v3

    .line 253
    .local v3, "len":I
    if-gez v3, :cond_34

    .line 254
    goto :goto_38

    .line 256
    :cond_34
    int-to-long v4, v3

    add-long/2addr v1, v4

    .line 257
    sub-int/2addr v0, v3

    .line 258
    .end local v3    # "len":I
    goto :goto_1e

    .line 259
    :cond_38
    :goto_38
    return-wide v1

    .line 239
    .end local v0    # "total":I
    .end local v1    # "cnt":J
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative skip length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
