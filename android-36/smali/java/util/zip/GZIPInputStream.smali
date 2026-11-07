.class public Ljava/util/zip/GZIPInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "GZIPInputStream.java"


# static fields
.field private static final greylist-max-o FCOMMENT:I = 0x10

.field private static final greylist-max-o FEXTRA:I = 0x4

.field private static final greylist-max-o FHCRC:I = 0x2

.field private static final greylist-max-o FNAME:I = 0x8

.field private static final greylist-max-o FTEXT:I = 0x1

.field public static final whitelist test-api GZIP_MAGIC:I = 0x8b1f


# instance fields
.field private greylist-max-o closed:Z

.field protected whitelist test-api crc:Ljava/util/zip/CRC32;

.field protected whitelist test-api eos:Z

.field private greylist-max-o tmpbuf:[B


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 109
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    if-eqz p1, :cond_9

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 48
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    .line 295
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    .line 91
    :try_start_1d
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_22

    .line 95
    nop

    .line 97
    return-void

    .line 92
    :catch_22
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->end()V

    .line 94
    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    if-nez v0, :cond_5

    .line 64
    return-void

    .line 62
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o readHeader(Ljava/io/InputStream;)I
    .registers 8
    .param p1, "this_in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/zip/CheckedInputStream;

    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-direct {v0, p1, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 179
    .local v0, "in":Ljava/util/zip/CheckedInputStream;
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 181
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v1

    const v2, 0x8b1f

    if-ne v1, v2, :cond_7f

    .line 185
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_77

    .line 189
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v1

    .line 191
    .local v1, "flg":I
    const/4 v3, 0x6

    invoke-direct {p0, v0, v3}, Ljava/util/zip/GZIPInputStream;->skipBytes(Ljava/io/InputStream;I)V

    .line 192
    const/16 v3, 0xa

    .line 194
    .local v3, "n":I
    and-int/lit8 v4, v1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_36

    .line 195
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v4

    .line 196
    .local v4, "m":I
    invoke-direct {p0, v0, v4}, Ljava/util/zip/GZIPInputStream;->skipBytes(Ljava/io/InputStream;I)V

    .line 197
    add-int/lit8 v5, v4, 0x2

    add-int/2addr v3, v5

    .line 200
    .end local v4    # "m":I
    :cond_36
    and-int/lit8 v4, v1, 0x8

    if-ne v4, v2, :cond_42

    .line 202
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    .line 203
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v2

    if-nez v2, :cond_3a

    .line 206
    :cond_42
    and-int/lit8 v2, v1, 0x10

    const/16 v4, 0x10

    if-ne v2, v4, :cond_50

    .line 208
    :cond_48
    add-int/lit8 v3, v3, 0x1

    .line 209
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v2

    if-nez v2, :cond_48

    .line 212
    :cond_50
    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_71

    .line 213
    iget-object v2, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    long-to-int v2, v4

    const v4, 0xffff

    and-int/2addr v2, v4

    .line 214
    .local v2, "v":I
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v4

    if-ne v4, v2, :cond_69

    .line 217
    add-int/lit8 v3, v3, 0x2

    goto :goto_71

    .line 215
    :cond_69
    new-instance v4, Ljava/util/zip/ZipException;

    const-string v5, "Corrupt GZIP header"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    .end local v2    # "v":I
    :cond_71
    :goto_71
    iget-object v2, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 220
    return v3

    .line 186
    .end local v1    # "flg":I
    .end local v3    # "n":I
    :cond_77
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Unsupported compression method"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_7f
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Not in GZIP format"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o readTrailer()Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    .line 230
    .local v0, "in":Ljava/io/InputStream;
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v1

    .line 231
    .local v1, "n":I
    if-lez v1, :cond_1f

    .line 232
    new-instance v2, Ljava/io/SequenceInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/GZIPInputStream;->len:I

    sub-int/2addr v5, v1

    invoke-direct {v3, v4, v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v4, Ljava/util/zip/GZIPInputStream$1;

    invoke-direct {v4, p0, v0}, Ljava/util/zip/GZIPInputStream$1;-><init>(Ljava/util/zip/GZIPInputStream;Ljava/io/InputStream;)V

    invoke-direct {v2, v3, v4}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object v0, v2

    .line 239
    :cond_1f
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v2

    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_70

    .line 241
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readUInt(Ljava/io/InputStream;)J

    move-result-wide v2

    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_70

    .line 248
    iget-object v2, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    const/4 v3, 0x1

    if-gtz v2, :cond_50

    const/16 v2, 0x1a

    if-le v1, v2, :cond_4f

    goto :goto_50

    .line 260
    :cond_4f
    return v3

    .line 249
    :cond_50
    :goto_50
    const/16 v2, 0x8

    .line 251
    .local v2, "m":I
    :try_start_52
    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;->readHeader(Ljava/io/InputStream;)I

    move-result v3
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_56} :catch_6e

    add-int/2addr v2, v3

    .line 254
    nop

    .line 255
    iget-object v3, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->reset()V

    .line 256
    if-le v1, v2, :cond_6c

    .line 257
    iget-object v3, p0, Ljava/util/zip/GZIPInputStream;->inf:Ljava/util/zip/Inflater;

    iget-object v4, p0, Ljava/util/zip/GZIPInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/GZIPInputStream;->len:I

    sub-int/2addr v5, v1

    add-int/2addr v5, v2

    sub-int v6, v1, v2

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 258
    :cond_6c
    const/4 v3, 0x0

    return v3

    .line 252
    :catch_6e
    move-exception v4

    .line 253
    .local v4, "ze":Ljava/io/IOException;
    return v3

    .line 242
    .end local v2    # "m":I
    .end local v4    # "ze":Ljava/io/IOException;
    :cond_70
    new-instance v2, Ljava/util/zip/ZipException;

    const-string v3, "Corrupt GZIP trailer"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o readUByte(Ljava/io/InputStream;)I
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 284
    .local v0, "b":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_35

    .line 287
    if-lt v0, v1, :cond_e

    const/16 v1, 0xff

    if-gt v0, v1, :cond_e

    .line 292
    return v0

    .line 289
    :cond_e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/util/zip/GZIPInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".read() returned value out of range -1..255: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_35
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method private greylist-max-o readUInt(Ljava/io/InputStream;)J
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    .line 268
    .local v0, "s":J
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUShort(Ljava/io/InputStream;)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v2, v0

    return-wide v2
.end method

.method private greylist-max-o readUShort(Ljava/io/InputStream;)I
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v0

    .line 276
    .local v0, "b":I
    invoke-direct {p0, p1}, Ljava/util/zip/GZIPInputStream;->readUByte(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    return v1
.end method

.method private greylist-max-o skipBytes(Ljava/io/InputStream;I)V
    .registers 6
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    nop

    :goto_1
    if-lez p2, :cond_1f

    .line 303
    iget-object v0, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    array-length v1, v1

    if-ge p2, v1, :cond_c

    move v1, p2

    goto :goto_f

    :cond_c
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->tmpbuf:[B

    array-length v1, v1

    :goto_f
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 304
    .local v0, "len":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    .line 307
    sub-int/2addr p2, v0

    .line 308
    .end local v0    # "len":I
    goto :goto_1

    .line 305
    .restart local v0    # "len":I
    :cond_19
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 309
    .end local v0    # "len":I
    :cond_1f
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    if-nez v0, :cond_c

    .line 153
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 154
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    .line 155
    iput-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->closed:Z

    .line 157
    :cond_c
    return-void
.end method

.method public whitelist test-api read([BII)I
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->ensureOpen()V

    .line 131
    iget-boolean v0, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_9

    .line 132
    return v1

    .line 134
    :cond_9
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result v0

    .line 135
    .local v0, "n":I
    if-ne v0, v1, :cond_1e

    .line 136
    invoke-direct {p0}, Ljava/util/zip/GZIPInputStream;->readTrailer()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/zip/GZIPInputStream;->eos:Z

    goto :goto_23

    .line 139
    :cond_19
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v1

    return v1

    .line 141
    :cond_1e
    iget-object v1, p0, Ljava/util/zip/GZIPInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/zip/CRC32;->update([BII)V

    .line 143
    :goto_23
    return v0
.end method
