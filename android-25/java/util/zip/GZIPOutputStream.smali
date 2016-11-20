.class public Ljava/util/zip/GZIPOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "GZIPOutputStream.java"


# static fields
.field private static final GZIP_MAGIC:I = 0x8b1f

.field private static final TRAILER_SIZE:I = 0x8


# instance fields
.field protected crc:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 110
    const/16 v0, 0x200

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    #@6
    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    #@4
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "size"    # I
    .param p3, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 91
    new-instance v0, Ljava/util/zip/Deflater;

    #@3
    const/4 v1, -0x1

    #@4
    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    #@7
    invoke-direct {p0, p1, v0, p2, p3}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;IZ)V

    #@a
    .line 42
    new-instance v0, Ljava/util/zip/CRC32;

    #@c
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    #@f
    iput-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    #@11
    .line 94
    iput-boolean v2, p0, Ljava/util/zip/GZIPOutputStream;->usesDefaultDeflater:Z

    #@13
    .line 95
    invoke-direct {p0}, Ljava/util/zip/GZIPOutputStream;->writeHeader()V

    #@16
    .line 96
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    #@18
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    #@1b
    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "syncFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    #@5
    .line 130
    return-void
.end method

.method private writeHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@2
    const/16 v1, 0xa

    #@4
    new-array v1, v1, [B

    #@6
    fill-array-data v1, :array_0

    #@9
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    #@c
    .line 182
    return-void

    #@d
    .line 183
    nop

    #@e
    :array_0
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
        0x0t
    .end array-data
.end method

.method private writeInt(I[BI)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const v1, 0xffff

    #@3
    .line 211
    and-int v0, p1, v1

    #@5
    invoke-direct {p0, v0, p2, p3}, Ljava/util/zip/GZIPOutputStream;->writeShort(I[BI)V

    #@8
    .line 212
    shr-int/lit8 v0, p1, 0x10

    #@a
    and-int/2addr v0, v1

    #@b
    add-int/lit8 v1, p3, 0x2

    #@d
    invoke-direct {p0, v0, p2, v1}, Ljava/util/zip/GZIPOutputStream;->writeShort(I[BI)V

    #@10
    .line 210
    return-void
.end method

.method private writeShort(I[BI)V
    .locals 2
    .param p1, "s"    # I
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    and-int/lit16 v0, p1, 0xff

    #@2
    int-to-byte v0, v0

    #@3
    aput-byte v0, p2, p3

    #@5
    .line 221
    add-int/lit8 v0, p3, 0x1

    #@7
    shr-int/lit8 v1, p1, 0x8

    #@9
    and-int/lit16 v1, v1, 0xff

    #@b
    int-to-byte v1, v1

    #@c
    aput-byte v1, p2, v0

    #@e
    .line 219
    return-void
.end method

.method private writeTrailer([BI)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    #@2
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    #@5
    move-result-wide v0

    #@6
    long-to-int v0, v0

    #@7
    invoke-direct {p0, v0, p1, p2}, Ljava/util/zip/GZIPOutputStream;->writeInt(I[BI)V

    #@a
    .line 203
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    #@c
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->getTotalIn()I

    #@f
    move-result v0

    #@10
    add-int/lit8 v1, p2, 0x4

    #@12
    invoke-direct {p0, v0, p1, v1}, Ljava/util/zip/GZIPOutputStream;->writeInt(I[BI)V

    #@15
    .line 201
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 157
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    #@3
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_3

    #@9
    .line 158
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    #@b
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    #@e
    .line 159
    :cond_0
    :goto_0
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    #@10
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_2

    #@16
    .line 160
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    #@18
    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    #@1a
    iget-object v4, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    #@1c
    array-length v4, v4

    #@1d
    invoke-virtual {v2, v3, v5, v4}, Ljava/util/zip/Deflater;->deflate([BII)I

    #@20
    move-result v0

    #@21
    .line 161
    .local v0, "len":I
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->def:Ljava/util/zip/Deflater;

    #@23
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_1

    #@29
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    #@2b
    array-length v2, v2

    #@2c
    add-int/lit8 v2, v2, -0x8

    #@2e
    if-gt v0, v2, :cond_1

    #@30
    .line 163
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    #@32
    invoke-direct {p0, v2, v0}, Ljava/util/zip/GZIPOutputStream;->writeTrailer([BI)V

    #@35
    .line 164
    add-int/lit8 v0, v0, 0x8

    #@37
    .line 165
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@39
    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    #@3b
    invoke-virtual {v2, v3, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    #@3e
    .line 166
    return-void

    #@3f
    .line 168
    :cond_1
    if-lez v0, :cond_0

    #@41
    .line 169
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@43
    iget-object v3, p0, Ljava/util/zip/GZIPOutputStream;->buf:[B

    #@45
    invoke-virtual {v2, v3, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    #@48
    goto :goto_0

    #@49
    .line 173
    .end local v0    # "len":I
    :cond_2
    const/16 v2, 0x8

    #@4b
    new-array v1, v2, [B

    #@4d
    .line 174
    .local v1, "trailer":[B
    invoke-direct {p0, v1, v5}, Ljava/util/zip/GZIPOutputStream;->writeTrailer([BI)V

    #@50
    .line 175
    iget-object v2, p0, Ljava/util/zip/GZIPOutputStream;->out:Ljava/io/OutputStream;

    #@52
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    #@55
    .line 156
    .end local v1    # "trailer":[B
    :cond_3
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 146
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    #@4
    .line 147
    iget-object v0, p0, Ljava/util/zip/GZIPOutputStream;->crc:Ljava/util/zip/CRC32;

    #@6
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit p0

    #@a
    .line 144
    return-void

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method
