.class public Ljava/util/zip/GZIPInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "GZIPInputStream.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FEXTRA:I = 0x4

.field private static final FHCRC:I = 0x2

.field private static final FNAME:I = 0x8

.field private static final FTEXT:I = 0x1

.field public static final GZIP_MAGIC:I = 0x8b1f


# instance fields
.field private closed:Z

.field protected crc:Ljava/util/zip/CRC32;

.field protected eos:Z

.field private tmpbuf:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 89
    const/16 v0, 0x200

    #@2
    invoke-direct {p0, p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    #@5
    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/util/zip/Inflater;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@6
    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    #@9
    .line 47
    new-instance v0, Ljava/util/zip/CRC32;

    #@b
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    #@e
    iput-object v0, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@10
    .line 54
    const/4 v0, 0x0

    #@11
    iput-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    #@13
    .line 273
    const/16 v0, 0x80

    #@15
    new-array v0, v0, [B

    #@17
    iput-object v0, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    #@19
    .line 77
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)I

    #@1c
    .line 75
    return-void
.end method

.method private ensureOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 61
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 59
    :cond_0
    return-void
.end method

.method private readHeader(Ljava/io/InputStream;)I
    .locals 8
    .param p1, "this_in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x8

    #@2
    .line 159
    new-instance v1, Ljava/util/zip/CheckedInputStream;

    #@4
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@6
    invoke-direct {v1, p1, v5}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    #@9
    .line 160
    .local v1, "in":Ljava/util/zip/CheckedInputStream;
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@b
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    #@e
    .line 162
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    #@11
    move-result v5

    #@12
    const v6, 0x8b1f

    #@15
    if-eq v5, v6, :cond_0

    #@17
    .line 163
    new-instance v5, Ljava/util/zip/ZipException;

    #@19
    const-string/jumbo v6, "Not in GZIP format"

    #@1c
    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v5

    #@20
    .line 166
    :cond_0
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    #@23
    move-result v5

    #@24
    if-eq v5, v7, :cond_1

    #@26
    .line 167
    new-instance v5, Ljava/util/zip/ZipException;

    #@28
    const-string/jumbo v6, "Unsupported compression method"

    #@2b
    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v5

    #@2f
    .line 170
    :cond_1
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    #@32
    move-result v0

    #@33
    .line 172
    .local v0, "flg":I
    const/4 v5, 0x6

    #@34
    invoke-direct {p0, v1, v5}, Ljava/util/zip/GZIPInputStream;->skipBytes(Ljava/io/InputStream;I)V

    #@37
    .line 173
    const/16 v3, 0xa

    #@39
    .line 175
    .local v3, "n":I
    and-int/lit8 v5, v0, 0x4

    #@3b
    const/4 v6, 0x4

    #@3c
    if-ne v5, v6, :cond_2

    #@3e
    .line 176
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    #@41
    move-result v2

    #@42
    .line 177
    .local v2, "m":I
    invoke-direct {p0, v1, v2}, Ljava/util/zip/GZIPInputStream;->skipBytes(Ljava/io/InputStream;I)V

    #@45
    .line 178
    add-int/lit8 v5, v2, 0x2

    #@47
    add-int/lit8 v3, v5, 0xa

    #@49
    .line 181
    .end local v2    # "m":I
    :cond_2
    and-int/lit8 v5, v0, 0x8

    #@4b
    if-ne v5, v7, :cond_4

    #@4d
    .line 183
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@4f
    .line 184
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    #@52
    move-result v5

    #@53
    if-nez v5, :cond_3

    #@55
    .line 187
    :cond_4
    and-int/lit8 v5, v0, 0x10

    #@57
    const/16 v6, 0x10

    #@59
    if-ne v5, v6, :cond_6

    #@5b
    .line 189
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@5d
    .line 190
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    #@60
    move-result v5

    #@61
    if-nez v5, :cond_5

    #@63
    .line 193
    :cond_6
    and-int/lit8 v5, v0, 0x2

    #@65
    const/4 v6, 0x2

    #@66
    if-ne v5, v6, :cond_8

    #@68
    .line 194
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@6a
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    #@6d
    move-result-wide v6

    #@6e
    long-to-int v5, v6

    #@6f
    const v6, 0xffff

    #@72
    and-int v4, v5, v6

    #@74
    .line 195
    .local v4, "v":I
    invoke-direct {p0, v1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    #@77
    move-result v5

    #@78
    if-eq v5, v4, :cond_7

    #@7a
    .line 196
    new-instance v5, Ljava/util/zip/ZipException;

    #@7c
    const-string/jumbo v6, "Corrupt GZIP header"

    #@7f
    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@82
    throw v5

    #@83
    .line 198
    :cond_7
    add-int/lit8 v3, v3, 0x2

    #@85
    .line 200
    .end local v4    # "v":I
    :cond_8
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@87
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    #@8a
    .line 201
    return v3
.end method

.method private readTrailer()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 210
    iget-object v0, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    #@4
    .line 211
    .local v0, "in":Ljava/io/InputStream;
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    #@6
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getRemaining()I

    #@9
    move-result v3

    #@a
    .line 212
    .local v3, "n":I
    if-lez v3, :cond_0

    #@c
    .line 213
    new-instance v1, Ljava/io/SequenceInputStream;

    #@e
    .line 214
    new-instance v5, Ljava/io/ByteArrayInputStream;

    #@10
    iget-object v6, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    #@12
    iget v7, p0, Ljava/util/zip/GZIPInputStream;->len:I

    #@14
    sub-int/2addr v7, v3

    #@15
    invoke-direct {v5, v6, v7, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@18
    .line 213
    invoke-direct {v1, v5, v0}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    #@1b
    .end local v0    # "in":Ljava/io/InputStream;
    .local v1, "in":Ljava/io/InputStream;
    move-object v0, v1

    #@1c
    .line 217
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v0    # "in":Ljava/io/InputStream;
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUInt(Ljava/io/InputStream;)J

    #@1f
    move-result-wide v6

    #@20
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@22
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    #@25
    move-result-wide v8

    #@26
    cmp-long v5, v6, v8

    #@28
    if-nez v5, :cond_1

    #@2a
    .line 219
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUInt(Ljava/io/InputStream;)J

    #@2d
    move-result-wide v6

    #@2e
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    #@30
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getBytesWritten()J

    #@33
    move-result-wide v8

    #@34
    const-wide v10, 0xffffffffL

    #@39
    and-long/2addr v8, v10

    #@3a
    cmp-long v5, v6, v8

    #@3c
    if-eqz v5, :cond_2

    #@3e
    .line 220
    :cond_1
    new-instance v5, Ljava/util/zip/ZipException;

    #@40
    const-string/jumbo v6, "Corrupt GZIP trailer"

    #@43
    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@46
    throw v5

    #@47
    .line 226
    :cond_2
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    #@49
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    #@4c
    move-result v5

    #@4d
    if-gtz v5, :cond_3

    #@4f
    const/16 v5, 0x1a

    #@51
    if-le v3, v5, :cond_5

    #@53
    .line 229
    :cond_3
    :try_start_0
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result v5

    #@57
    add-int/lit8 v2, v5, 0x8

    #@59
    .line 233
    .local v2, "m":I
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    #@5b
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->reset()V

    #@5e
    .line 234
    if-le v3, v2, :cond_4

    #@60
    .line 235
    iget-object v5, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    #@62
    iget-object v6, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    #@64
    iget v7, p0, Ljava/util/zip/GZIPInputStream;->len:I

    #@66
    sub-int/2addr v7, v3

    #@67
    add-int/2addr v7, v2

    #@68
    sub-int v8, v3, v2

    #@6a
    invoke-virtual {v5, v6, v7, v8}, Ljava/util/zip/Inflater;->setInput([BII)V

    #@6d
    .line 236
    :cond_4
    return v12

    #@6e
    .line 230
    .end local v2    # "m":I
    :catch_0
    move-exception v4

    #@6f
    .line 231
    .local v4, "ze":Ljava/io/IOException;
    return v13

    #@70
    .line 238
    .end local v4    # "ze":Ljava/io/IOException;
    :cond_5
    return v13
.end method

.method private readUByte(Ljava/io/InputStream;)I
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 261
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    #@4
    move-result v0

    #@5
    .line 262
    .local v0, "b":I
    if-ne v0, v1, :cond_0

    #@7
    .line 263
    new-instance v1, Ljava/io/EOFException;

    #@9
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@c
    throw v1

    #@d
    .line 265
    :cond_0
    if-lt v0, v1, :cond_1

    #@f
    const/16 v1, 0xff

    #@11
    if-le v0, v1, :cond_2

    #@13
    .line 267
    :cond_1
    new-instance v1, Ljava/io/IOException;

    #@15
    new-instance v2, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    iget-object v3, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    #@1c
    invoke-virtual {v3}, Ljava/io/InputStream;->getClass()Ljava/lang/Class;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 268
    const-string/jumbo v3, ".read() returned value out of range -1..255: "

    #@2b
    .line 267
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v1

    #@3b
    .line 270
    :cond_2
    return v0
.end method

.method private readUInt(Ljava/io/InputStream;)J
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 245
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    #@3
    move-result v2

    #@4
    int-to-long v0, v2

    #@5
    .line 246
    .local v0, "s":J
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    #@8
    move-result v2

    #@9
    int-to-long v2, v2

    #@a
    const/16 v4, 0x10

    #@c
    shl-long/2addr v2, v4

    #@d
    or-long/2addr v2, v0

    #@e
    return-wide v2
.end method

.method private readUShort(Ljava/io/InputStream;)I
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    #@3
    move-result v0

    #@4
    .line 254
    .local v0, "b":I
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    #@7
    move-result v1

    #@8
    shl-int/lit8 v1, v1, 0x8

    #@a
    or-int/2addr v1, v0

    #@b
    return v1
.end method

.method private skipBytes(Ljava/io/InputStream;I)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 280
    :goto_0
    if-lez p2, :cond_2

    #@3
    .line 281
    iget-object v2, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    #@5
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    #@7
    array-length v1, v1

    #@8
    if-ge p2, v1, :cond_0

    #@a
    move v1, p2

    #@b
    :goto_1
    invoke-virtual {p1, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    #@e
    move-result v0

    #@f
    .line 282
    .local v0, "len":I
    const/4 v1, -0x1

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 283
    new-instance v1, Ljava/io/EOFException;

    #@14
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@17
    throw v1

    #@18
    .line 281
    .end local v0    # "len":I
    :cond_0
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    #@1a
    array-length v1, v1

    #@1b
    goto :goto_1

    #@1c
    .line 285
    .restart local v0    # "len":I
    :cond_1
    sub-int/2addr p2, v0

    #@1d
    goto :goto_0

    #@1e
    .line 279
    .end local v0    # "len":I
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 133
    iget-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 134
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    #@8
    .line 135
    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    #@a
    .line 136
    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    #@c
    .line 132
    :cond_0
    return-void
.end method

.method public read([BII)I
    .locals 3
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
    const/4 v2, -0x1

    #@1
    .line 111
    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->ensureOpen()V

    #@4
    .line 112
    iget-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 113
    return v2

    #@9
    .line 115
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    #@c
    move-result v0

    #@d
    .line 116
    .local v0, "n":I
    if-ne v0, v2, :cond_2

    #@f
    .line 117
    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->readTrailer()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 118
    const/4 v1, 0x1

    #@16
    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    #@18
    .line 124
    :goto_0
    return v0

    #@19
    .line 120
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    #@1c
    move-result v1

    #@1d
    return v1

    #@1e
    .line 122
    :cond_2
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    #@20
    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    #@23
    goto :goto_0
.end method
