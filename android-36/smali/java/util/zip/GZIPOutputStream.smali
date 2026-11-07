.class public Ljava/util/zip/GZIPOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "GZIPOutputStream.java"


# static fields
.field private static final greylist-max-o GZIP_MAGIC:I = 0x8b1f

.field private static final blacklist OS_UNKNOWN:B = -0x1t

.field private static final greylist-max-o TRAILER_SIZE:I = 0x8


# instance fields
.field protected whitelist test-api crc:Ljava/util/zip/CRC32;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 120
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;I)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 78
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;IZ)V
    .registers 7
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I
    .param p3, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    const/4 v0, 0x1

    if-eqz p1, :cond_a

    new-instance v1, Ljava/util/zip/Deflater;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-direct {p0, p1, v1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    .line 42
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 103
    iput-boolean v0, p0, Ljava/util/zip/GZIPOutputStream;->usesDefaultDeflater:Z

    .line 104
    invoke-direct {p0}, Ljava/util/zip/GZIPOutputStream;->writeHeader()V

    .line 105
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 106
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Z)V
    .registers 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 142
    return-void
.end method

.method private greylist-max-o writeHeader()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_e

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 210
    return-void

    nop

    :array_e
    .array-data 1
        0x1ft
        -0x75t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method private greylist-max-o writeInt(I[BI)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    const v0, 0xffff

    and-int v1, p1, v0

    invoke-direct {p0, v1, p2, p3}, Ljava/util/zip/GZIPOutputStream;->writeShort(I[BI)V

    .line 227
    shr-int/lit8 v1, p1, 0x10

    and-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x2

    invoke-direct {p0, v0, p2, v1}, Ljava/util/zip/GZIPOutputStream;->writeShort(I[BI)V

    .line 228
    return-void
.end method

.method private greylist-max-o writeShort(I[BI)V
    .registers 6
    .param p1, "s"    # I
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 235
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 236
    add-int/lit8 v0, p3, 0x1

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 237
    return-void
.end method

.method private greylist-max-o writeTrailer([BI)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->writeInt(I[BI)V

    .line 218
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Ljava/util/zip/GZIPOutputStream;->writeInt(I[BI)V

    .line 219
    return-void
.end method


# virtual methods
.method public whitelist test-api finish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 168
    :try_start_8
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 169
    :goto_d
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_49

    .line 170
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    iget-object v4, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v2, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 171
    .local v0, "len":I
    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    array-length v3, v3

    sub-int/2addr v3, v1

    if-gt v0, v3, :cond_3f

    .line 173
    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-direct {p0, v3, v0}, Ljava/util/zip/GZIPOutputStream;->writeTrailer([BI)V

    .line 174
    add-int/2addr v0, v1

    .line 175
    iget-object v1, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 176
    return-void

    .line 178
    :cond_3f
    if-lez v0, :cond_48

    .line 179
    iget-object v1, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    invoke-virtual {v1, v3, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 180
    .end local v0    # "len":I
    :cond_48
    goto :goto_d

    .line 183
    :cond_49
    new-array v0, v1, [B

    .line 184
    .local v0, "trailer":[B
    invoke-direct {p0, v0, v2}, Ljava/util/zip/GZIPOutputStream;->writeTrailer([BI)V

    .line 185
    iget-object v1, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_53} :catch_54

    .line 190
    .end local v0    # "trailer":[B
    goto :goto_5f

    .line 186
    :catch_54
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    iget-boolean v1, p0, Ljava/util/zip/GZIPOutputStream;->usesDefaultDeflater:Z

    if-eqz v1, :cond_5e

    .line 188
    iget-object v1, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 189
    :cond_5e
    throw v0

    .line 192
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5f
    :goto_5f
    return-void
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 155
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    .line 156
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 157
    monitor-exit p0

    return-void

    .line 154
    .end local p0    # "this":Ljava/util/zip/GZIPOutputStream;
    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_b
    move-exception p1

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw p1
.end method
