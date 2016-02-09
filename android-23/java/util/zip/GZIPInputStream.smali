.class public Ljava/util/zip/GZIPInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "GZIPInputStream.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field public static final GZIP_MAGIC:I = 0x8b1f

.field private static final GZIP_TRAILER_SIZE:I = 0x8


# instance fields
.field protected crc:Ljava/util/zip/CRC32;

.field protected eos:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 88
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    #@5
    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 103
    new-instance v3, Ljava/util/zip/Inflater;

    #@4
    invoke-direct {v3, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@7
    invoke-direct {p0, p1, v3, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    #@a
    .line 71
    new-instance v3, Ljava/util/zip/CRC32;

    #@c
    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    #@f
    iput-object v3, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@11
    .line 76
    iput-boolean v4, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    #@13
    .line 106
    :try_start_0
    invoke-static {p1}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)[B

    #@16
    move-result-object v1

    #@17
    .line 107
    .local v1, "header":[B
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@19
    const/4 v4, 0x0

    #@1a
    invoke-static {v1, v4, v3}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@1d
    move-result v2

    #@1e
    .line 108
    .local v2, "magic":S
    const/16 v3, -0x74e1

    #@20
    if-eq v2, v3, :cond_0

    #@22
    .line 109
    new-instance v3, Ljava/io/IOException;

    #@24
    const-string/jumbo v4, "unknown format (magic number %x)"

    #@27
    const/4 v5, 0x1

    #@28
    new-array v5, v5, [Ljava/lang/Object;

    #@2a
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    #@2d
    move-result-object v6

    #@2e
    const/4 v7, 0x0

    #@2f
    aput-object v6, v5, v7

    #@31
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 113
    .end local v1    # "header":[B
    .end local v2    # "magic":S
    :catch_0
    move-exception v0

    #@3a
    .line 114
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/util/zip/GZIPInputStream;->close()V

    #@3d
    .line 115
    throw v0

    #@3e
    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "header":[B
    .restart local v2    # "magic":S
    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@40
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    #@42
    invoke-static {p1, v1, v3, v4}, Ljava/util/zip/GZIPInputStream;->parseGzipHeader(Ljava/io/InputStream;[BLjava/util/zip/CRC32;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@45
    .line 102
    return-void
.end method

.method private maybeReadNextMember()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 167
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    #@4
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    #@7
    move-result v4

    #@8
    add-int/lit8 v3, v4, -0x8

    #@a
    .line 168
    .local v3, "remaining":I
    if-lez v3, :cond_1

    #@c
    .line 175
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    #@e
    instance-of v4, v4, Ljava/io/PushbackInputStream;

    #@10
    if-nez v4, :cond_0

    #@12
    .line 176
    new-instance v4, Ljava/io/PushbackInputStream;

    #@14
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    #@16
    iget-object v6, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    #@18
    array-length v6, v6

    #@19
    invoke-direct {v4, v5, v6}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    #@1c
    iput-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    #@1e
    .line 178
    :cond_0
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    #@20
    check-cast v4, Ljava/io/PushbackInputStream;

    #@22
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    #@24
    .line 179
    iget-object v6, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    #@26
    invoke-virtual {v6}, Ljava/util/zip/Inflater;->getCurrentOffset()I

    #@29
    move-result v6

    #@2a
    add-int/lit8 v6, v6, 0x8

    #@2c
    .line 178
    invoke-virtual {v4, v5, v6, v3}, Ljava/io/PushbackInputStream;->unread([BII)V

    #@2f
    .line 184
    :cond_1
    :try_start_0
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    #@31
    invoke-static {v4}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@34
    move-result-object v0

    #@35
    .line 194
    .local v0, "buffer":[B
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@37
    invoke-static {v0, v7, v4}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@3a
    move-result v2

    #@3b
    .line 195
    .local v2, "magic":S
    const/16 v4, -0x74e1

    #@3d
    if-eq v2, v4, :cond_2

    #@3f
    .line 198
    return v8

    #@40
    .line 185
    .end local v0    # "buffer":[B
    .end local v2    # "magic":S
    :catch_0
    move-exception v1

    #@41
    .line 191
    .local v1, "eof":Ljava/io/EOFException;
    return v8

    #@42
    .line 203
    .end local v1    # "eof":Ljava/io/EOFException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "magic":S
    :cond_2
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    #@44
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@46
    iget-object v6, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    #@48
    invoke-static {v4, v0, v5, v6}, Ljava/util/zip/GZIPInputStream;->parseGzipHeader(Ljava/io/InputStream;[BLjava/util/zip/CRC32;[B)V

    #@4b
    .line 204
    return v7
.end method

.method private static parseGzipHeader(Ljava/io/InputStream;[BLjava/util/zip/CRC32;[B)V
    .locals 10
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "header"    # [B
    .param p2, "crc"    # Ljava/util/zip/CRC32;
    .param p3, "scratch"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x0

    #@2
    .line 215
    const/4 v6, 0x3

    #@3
    aget-byte v1, p1, v6

    #@5
    .line 216
    .local v1, "flags":B
    and-int/lit8 v6, v1, 0x2

    #@7
    if-eqz v6, :cond_2

    #@9
    const/4 v2, 0x1

    #@a
    .line 217
    .local v2, "hcrc":Z
    :goto_0
    if-eqz v2, :cond_0

    #@c
    .line 218
    array-length v6, p1

    #@d
    invoke-virtual {p2, p1, v8, v6}, Ljava/util/zip/CRC32;->update([BII)V

    #@10
    .line 220
    :cond_0
    and-int/lit8 v6, v1, 0x4

    #@12
    if-eqz v6, :cond_6

    #@14
    .line 221
    invoke-static {p0, p1, v8, v9}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@17
    .line 222
    if-eqz v2, :cond_1

    #@19
    .line 223
    invoke-virtual {p2, p1, v8, v9}, Ljava/util/zip/CRC32;->update([BII)V

    #@1c
    .line 225
    :cond_1
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@1e
    invoke-static {p1, v8, v6}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@21
    move-result v6

    #@22
    const v7, 0xffff

    #@25
    and-int v3, v6, v7

    #@27
    .line 226
    .local v3, "length":I
    :goto_1
    if-lez v3, :cond_6

    #@29
    .line 227
    array-length v6, p3

    #@2a
    if-le v3, v6, :cond_3

    #@2c
    array-length v4, p3

    #@2d
    .line 228
    .local v4, "max":I
    :goto_2
    invoke-virtual {p0, p3, v8, v4}, Ljava/io/InputStream;->read([BII)I

    #@30
    move-result v5

    #@31
    .line 229
    .local v5, "result":I
    const/4 v6, -0x1

    #@32
    if-ne v5, v6, :cond_4

    #@34
    .line 230
    new-instance v6, Ljava/io/EOFException;

    #@36
    invoke-direct {v6}, Ljava/io/EOFException;-><init>()V

    #@39
    throw v6

    #@3a
    .line 216
    .end local v2    # "hcrc":Z
    .end local v3    # "length":I
    .end local v4    # "max":I
    .end local v5    # "result":I
    :cond_2
    const/4 v2, 0x0

    #@3b
    .restart local v2    # "hcrc":Z
    goto :goto_0

    #@3c
    .line 227
    .restart local v3    # "length":I
    :cond_3
    move v4, v3

    #@3d
    .restart local v4    # "max":I
    goto :goto_2

    #@3e
    .line 232
    .restart local v5    # "result":I
    :cond_4
    if-eqz v2, :cond_5

    #@40
    .line 233
    invoke-virtual {p2, p3, v8, v5}, Ljava/util/zip/CRC32;->update([BII)V

    #@43
    .line 235
    :cond_5
    sub-int/2addr v3, v5

    #@44
    goto :goto_1

    #@45
    .line 238
    .end local v3    # "length":I
    .end local v4    # "max":I
    .end local v5    # "result":I
    :cond_6
    and-int/lit8 v6, v1, 0x8

    #@47
    if-eqz v6, :cond_7

    #@49
    .line 239
    invoke-static {p0, p2, v2}, Ljava/util/zip/GZIPInputStream;->readZeroTerminated(Ljava/io/InputStream;Ljava/util/zip/CRC32;Z)V

    #@4c
    .line 241
    :cond_7
    and-int/lit8 v6, v1, 0x10

    #@4e
    if-eqz v6, :cond_8

    #@50
    .line 242
    invoke-static {p0, p2, v2}, Ljava/util/zip/GZIPInputStream;->readZeroTerminated(Ljava/io/InputStream;Ljava/util/zip/CRC32;Z)V

    #@53
    .line 244
    :cond_8
    if-eqz v2, :cond_a

    #@55
    .line 245
    invoke-static {p0, p1, v8, v9}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@58
    .line 246
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@5a
    invoke-static {p1, v8, v6}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@5d
    move-result v0

    #@5e
    .line 247
    .local v0, "crc16":S
    invoke-virtual {p2}, Ljava/util/zip/CRC32;->getValue()J

    #@61
    move-result-wide v6

    #@62
    long-to-int v6, v6

    #@63
    int-to-short v6, v6

    #@64
    if-eq v6, v0, :cond_9

    #@66
    .line 248
    new-instance v6, Ljava/io/IOException;

    #@68
    const-string/jumbo v7, "CRC mismatch"

    #@6b
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v6

    #@6f
    .line 250
    :cond_9
    invoke-virtual {p2}, Ljava/util/zip/CRC32;->reset()V

    #@72
    .line 214
    .end local v0    # "crc16":S
    :cond_a
    return-void
.end method

.method private static readHeader(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    const/16 v1, 0xa

    #@2
    new-array v0, v1, [B

    #@4
    .line 209
    .local v0, "header":[B
    array-length v1, v0

    #@5
    const/4 v2, 0x0

    #@6
    invoke-static {p0, v0, v2, v1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@9
    .line 210
    return-object v0
.end method

.method private static readZeroTerminated(Ljava/io/InputStream;Ljava/util/zip/CRC32;Z)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "crc"    # Ljava/util/zip/CRC32;
    .param p2, "hcrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 277
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    #@3
    move-result v0

    #@4
    .local v0, "result":I
    if-lez v0, :cond_1

    #@6
    .line 278
    if-eqz p2, :cond_0

    #@8
    .line 279
    invoke-virtual {p1, v0}, Ljava/util/zip/CRC32;->update(I)V

    #@b
    goto :goto_0

    #@c
    .line 282
    :cond_1
    const/4 v1, -0x1

    #@d
    if-ne v0, v1, :cond_2

    #@f
    .line 283
    new-instance v1, Ljava/io/EOFException;

    #@11
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@14
    throw v1

    #@15
    .line 286
    :cond_2
    if-eqz p2, :cond_3

    #@17
    .line 287
    invoke-virtual {p1, v0}, Ljava/util/zip/CRC32;->update(I)V

    #@1a
    .line 273
    :cond_3
    return-void
.end method

.method private verifyCrc()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    const/4 v6, 0x0

    #@3
    .line 256
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    #@5
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getRemaining()I

    #@8
    move-result v2

    #@9
    .line 257
    .local v2, "size":I
    const/16 v3, 0x8

    #@b
    .line 258
    .local v3, "trailerSize":I
    new-array v0, v5, [B

    #@d
    .line 259
    .local v0, "b":[B
    if-le v2, v5, :cond_0

    #@f
    const/16 v1, 0x8

    #@11
    .line 261
    .local v1, "copySize":I
    :goto_0
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    #@13
    iget v5, p0, Ljava/util/zip/GZIPInputStream;->len:I

    #@15
    sub-int/2addr v5, v2

    #@16
    invoke-static {v4, v5, v0, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@19
    .line 262
    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    #@1b
    rsub-int/lit8 v5, v1, 0x8

    #@1d
    invoke-static {v4, v0, v1, v5}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@20
    .line 264
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@22
    invoke-static {v0, v6, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@25
    move-result v4

    #@26
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@28
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    #@2b
    move-result-wide v6

    #@2c
    long-to-int v5, v6

    #@2d
    if-eq v4, v5, :cond_1

    #@2f
    .line 265
    new-instance v4, Ljava/io/IOException;

    #@31
    const-string/jumbo v5, "CRC mismatch"

    #@34
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@37
    throw v4

    #@38
    .line 259
    .end local v1    # "copySize":I
    :cond_0
    move v1, v2

    #@39
    .restart local v1    # "copySize":I
    goto :goto_0

    #@3a
    .line 267
    :cond_1
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@3c
    const/4 v5, 0x4

    #@3d
    invoke-static {v0, v5, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@40
    move-result v4

    #@41
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    #@43
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getTotalOut()I

    #@46
    move-result v5

    #@47
    if-eq v4, v5, :cond_2

    #@49
    .line 268
    new-instance v4, Ljava/io/IOException;

    #@4b
    const-string/jumbo v5, "Size mismatch"

    #@4e
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@51
    throw v4

    #@52
    .line 254
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 124
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    #@3
    .line 125
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    #@6
    .line 123
    return-void
.end method

.method public read([BII)I
    .locals 4
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
    const/4 v3, 0x0

    #@1
    const/4 v2, -0x1

    #@2
    .line 130
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 131
    new-instance v1, Ljava/io/IOException;

    #@8
    const-string/jumbo v2, "Stream is closed"

    #@b
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 133
    :cond_0
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 134
    return v2

    #@14
    .line 136
    :cond_1
    array-length v1, p1

    #@15
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@18
    .line 140
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v0

    #@1c
    .line 142
    .local v0, "bytesRead":I
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eof:Z

    #@1e
    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    #@20
    .line 145
    if-eq v0, v2, :cond_2

    #@22
    .line 146
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@24
    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    #@27
    .line 149
    :cond_2
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    #@29
    if-eqz v1, :cond_3

    #@2b
    .line 150
    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->verifyCrc()V

    #@2e
    .line 151
    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->maybeReadNextMember()Z

    #@31
    move-result v1

    #@32
    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    #@34
    .line 152
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    #@36
    if-nez v1, :cond_3

    #@38
    .line 153
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@3a
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    #@3d
    .line 154
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    #@3f
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V

    #@42
    .line 155
    iput-boolean v3, p0, Ljava/util/zip/GZIPInputStream;->eof:Z

    #@44
    .line 156
    iput v3, p0, Ljava/util/zip/GZIPInputStream;->len:I

    #@46
    .line 160
    :cond_3
    return v0

    #@47
    .line 141
    .end local v0    # "bytesRead":I
    :catchall_0
    move-exception v1

    #@48
    .line 142
    iget-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eof:Z

    #@4a
    iput-boolean v2, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    #@4c
    .line 141
    throw v1
.end method
