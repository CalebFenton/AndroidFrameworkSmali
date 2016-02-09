.class public Ljava/util/zip/ZipInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field private static final ZIPLocalHeaderVersionNeeded:I = 0x14


# instance fields
.field private final crc:Ljava/util/zip/CRC32;

.field private currentEntry:Ljava/util/zip/ZipEntry;

.field private currentEntryIsZip64:Z

.field private entriesEnd:Z

.field private entryIn:I

.field private hasDD:Z

.field private final hdrBuf:[B

.field private inRead:I

.field private lastRead:I

.field private stringBytesBuf:[B

.field private stringCharBuf:[C


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/InputStream;

    #@0
    .prologue
    const/16 v4, 0x100

    #@2
    const/4 v3, 0x0

    #@3
    .line 100
    new-instance v0, Ljava/io/PushbackInputStream;

    #@5
    const/16 v1, 0x200

    #@7
    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    #@a
    new-instance v1, Ljava/util/zip/Inflater;

    #@c
    const/4 v2, 0x1

    #@d
    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@10
    invoke-direct {p0, v0, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    #@13
    .line 74
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    #@15
    .line 76
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    #@17
    .line 78
    iput v3, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    #@19
    .line 80
    iput v3, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    #@1b
    .line 86
    const/16 v0, 0x22

    #@1d
    new-array v0, v0, [B

    #@1f
    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@21
    .line 88
    new-instance v0, Ljava/util/zip/CRC32;

    #@23
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    #@26
    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@28
    .line 90
    new-array v0, v4, [B

    #@2a
    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->stringBytesBuf:[B

    #@2c
    .line 92
    new-array v0, v4, [C

    #@2e
    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->stringCharBuf:[C

    #@30
    .line 101
    if-nez p1, :cond_0

    #@32
    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    #@34
    const-string/jumbo v1, "stream == null"

    #@37
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 99
    :cond_0
    return-void
.end method

.method private checkClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 388
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 389
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream is closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 387
    :cond_0
    return-void
.end method

.method private peekShort(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 311
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@2
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@4
    invoke-static {v0, p1, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@7
    move-result v0

    #@8
    const v1, 0xffff

    #@b
    and-int/2addr v0, v1

    #@c
    return v0
.end method

.method private readAndVerifyDataDescriptor(JJZ)V
    .locals 11
    .param p1, "inB"    # J
    .param p3, "out"    # J
    .param p5, "isZip64"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v9, 0x10

    #@2
    const/16 v8, 0x8

    #@4
    const-wide v6, 0xffffffffL

    #@9
    const/4 v5, 0x0

    #@a
    .line 189
    iget-boolean v1, p0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    #@c
    if-eqz v1, :cond_2

    #@e
    .line 190
    if-eqz p5, :cond_0

    #@10
    .line 193
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@12
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@14
    const/16 v3, 0x18

    #@16
    invoke-static {v1, v2, v5, v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@19
    .line 198
    :goto_0
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@1b
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@1d
    invoke-static {v1, v5, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@20
    move-result v0

    #@21
    .line 199
    .local v0, "sig":I
    const v1, 0x8074b50

    #@24
    if-eq v0, v1, :cond_1

    #@26
    .line 200
    new-instance v1, Ljava/util/zip/ZipException;

    #@28
    const-string/jumbo v2, "unknown format (EXTSIG=%x)"

    #@2b
    const/4 v3, 0x1

    #@2c
    new-array v3, v3, [Ljava/lang/Object;

    #@2e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@31
    move-result-object v4

    #@32
    aput-object v4, v3, v5

    #@34
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1

    #@3c
    .line 195
    .end local v0    # "sig":I
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@3e
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@40
    invoke-static {v1, v2, v5, v9}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@43
    goto :goto_0

    #@44
    .line 202
    .restart local v0    # "sig":I
    :cond_1
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@46
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@48
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@4a
    const/4 v4, 0x4

    #@4b
    invoke-static {v2, v4, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@4e
    move-result v2

    #@4f
    int-to-long v2, v2

    #@50
    and-long/2addr v2, v6

    #@51
    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->crc:J

    #@53
    .line 204
    if-eqz p5, :cond_3

    #@55
    .line 205
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@57
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@59
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@5b
    invoke-static {v2, v8, v3}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    #@5e
    move-result-wide v2

    #@5f
    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@61
    .line 208
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@63
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@65
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@67
    invoke-static {v2, v9, v3}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    #@6a
    move-result-wide v2

    #@6b
    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->size:J

    #@6d
    .line 214
    .end local v0    # "sig":I
    :cond_2
    :goto_1
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@6f
    iget-wide v2, v1, Ljava/util/zip/ZipEntry;->crc:J

    #@71
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@73
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    #@76
    move-result-wide v4

    #@77
    cmp-long v1, v2, v4

    #@79
    if-eqz v1, :cond_4

    #@7b
    .line 215
    new-instance v1, Ljava/util/zip/ZipException;

    #@7d
    const-string/jumbo v2, "CRC mismatch"

    #@80
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@83
    throw v1

    #@84
    .line 210
    .restart local v0    # "sig":I
    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@86
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@88
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@8a
    invoke-static {v2, v8, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@8d
    move-result v2

    #@8e
    int-to-long v2, v2

    #@8f
    and-long/2addr v2, v6

    #@90
    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@92
    .line 211
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@94
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@96
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@98
    const/16 v4, 0xc

    #@9a
    invoke-static {v2, v4, v3}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@9d
    move-result v2

    #@9e
    int-to-long v2, v2

    #@9f
    and-long/2addr v2, v6

    #@a0
    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->size:J

    #@a2
    goto :goto_1

    #@a3
    .line 217
    .end local v0    # "sig":I
    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@a5
    iget-wide v2, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@a7
    cmp-long v1, v2, p1

    #@a9
    if-nez v1, :cond_5

    #@ab
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@ad
    iget-wide v2, v1, Ljava/util/zip/ZipEntry;->size:J

    #@af
    cmp-long v1, v2, p3

    #@b1
    if-eqz v1, :cond_6

    #@b3
    .line 218
    :cond_5
    new-instance v1, Ljava/util/zip/ZipException;

    #@b5
    const-string/jumbo v2, "Size mismatch"

    #@b8
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@bb
    throw v1

    #@bc
    .line 188
    :cond_6
    return-void
.end method

.method private readString(I)Ljava/lang/String;
    .locals 3
    .param p1, "byteLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 298
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->stringBytesBuf:[B

    #@3
    array-length v0, v0

    #@4
    if-le p1, v0, :cond_0

    #@6
    .line 299
    new-array v0, p1, [B

    #@8
    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->stringBytesBuf:[B

    #@a
    .line 301
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@c
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->stringBytesBuf:[B

    #@e
    invoke-static {v0, v1, v2, p1}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@11
    .line 304
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->stringCharBuf:[C

    #@13
    array-length v0, v0

    #@14
    if-le p1, v0, :cond_1

    #@16
    .line 305
    new-array v0, p1, [C

    #@18
    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->stringCharBuf:[C

    #@1a
    .line 307
    :cond_1
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->stringBytesBuf:[B

    #@1c
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->stringCharBuf:[C

    #@1e
    invoke-static {v0, v1, v2, p1}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    return-object v0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 371
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    #@3
    .line 373
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@5
    if-eqz v0, :cond_0

    #@7
    iget v0, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    #@9
    int-to-long v0, v0

    #@a
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@c
    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    #@e
    cmp-long v0, v0, v2

    #@10
    if-gez v0, :cond_1

    #@12
    :cond_0
    const/4 v0, 0x1

    #@13
    :goto_0
    return v0

    #@14
    :cond_1
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 114
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 115
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    #@7
    .line 116
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    #@a
    .line 113
    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    const/4 v12, 0x0

    #@2
    .line 127
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    #@5
    .line 128
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@7
    if-nez v1, :cond_0

    #@9
    .line 129
    return-void

    #@a
    .line 142
    :cond_0
    const/4 v9, 0x0

    #@b
    .line 144
    .local v9, "failure":Ljava/lang/Exception;
    :try_start_0
    invoke-static {p0}, Llibcore/io/Streams;->skipAll(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 150
    .end local v9    # "failure":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@10
    iget v1, v1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@12
    const/16 v2, 0x8

    #@14
    if-ne v1, v2, :cond_3

    #@16
    .line 151
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@18
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getTotalIn()I

    #@1b
    move-result v10

    #@1c
    .line 152
    .local v10, "inB":I
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@1e
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getTotalOut()I

    #@21
    move-result v11

    #@22
    .line 157
    .local v11, "out":I
    :goto_1
    iget v1, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    #@24
    sub-int v0, v1, v10

    #@26
    .line 159
    .local v0, "diff":I
    if-eqz v0, :cond_1

    #@28
    .line 160
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@2a
    check-cast v1, Ljava/io/PushbackInputStream;

    #@2c
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    #@2e
    iget v3, p0, Ljava/util/zip/ZipInputStream;->len:I

    #@30
    sub-int/2addr v3, v0

    #@31
    invoke-virtual {v1, v2, v3, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    #@34
    .line 164
    :cond_1
    int-to-long v2, v10

    #@35
    int-to-long v4, v11

    #@36
    :try_start_1
    iget-boolean v6, p0, Ljava/util/zip/ZipInputStream;->currentEntryIsZip64:Z

    #@38
    move-object v1, p0

    #@39
    invoke-direct/range {v1 .. v6}, Ljava/util/zip/ZipInputStream;->readAndVerifyDataDescriptor(JJZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@3c
    .line 171
    :cond_2
    :goto_2
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@3e
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->reset()V

    #@41
    .line 172
    iput v12, p0, Ljava/util/zip/ZipInputStream;->len:I

    #@43
    iput v12, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    #@45
    iput v12, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    #@47
    iput v12, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    #@49
    .line 173
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@4b
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    #@4e
    .line 174
    iput-object v13, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@50
    .line 176
    if-eqz v9, :cond_6

    #@52
    .line 177
    instance-of v1, v9, Ljava/io/IOException;

    #@54
    if-eqz v1, :cond_4

    #@56
    .line 178
    check-cast v9, Ljava/io/IOException;

    #@58
    throw v9

    #@59
    .line 145
    .end local v0    # "diff":I
    .end local v10    # "inB":I
    .end local v11    # "out":I
    .restart local v9    # "failure":Ljava/lang/Exception;
    :catch_0
    move-exception v7

    #@5a
    .line 146
    .local v7, "e":Ljava/lang/Exception;
    move-object v9, v7

    #@5b
    .local v9, "failure":Ljava/lang/Exception;
    goto :goto_0

    #@5c
    .line 154
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "failure":Ljava/lang/Exception;
    :cond_3
    iget v10, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    #@5e
    .line 155
    .restart local v10    # "inB":I
    iget v11, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    #@60
    .restart local v11    # "out":I
    goto :goto_1

    #@61
    .line 165
    .restart local v0    # "diff":I
    :catch_1
    move-exception v7

    #@62
    .line 166
    .restart local v7    # "e":Ljava/lang/Exception;
    if-nez v9, :cond_2

    #@64
    .line 167
    move-object v9, v7

    #@65
    .restart local v9    # "failure":Ljava/lang/Exception;
    goto :goto_2

    #@66
    .line 179
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "failure":Ljava/lang/Exception;
    :cond_4
    instance-of v1, v9, Ljava/lang/RuntimeException;

    #@68
    if-eqz v1, :cond_5

    #@6a
    .line 180
    check-cast v9, Ljava/lang/RuntimeException;

    #@6c
    throw v9

    #@6d
    .line 182
    :cond_5
    new-instance v8, Ljava/lang/AssertionError;

    #@6f
    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    #@72
    .line 183
    .local v8, "error":Ljava/lang/AssertionError;
    invoke-virtual {v8, v9}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@75
    .line 184
    throw v8

    #@76
    .line 126
    .end local v8    # "error":Ljava/lang/AssertionError;
    :cond_6
    return-void
.end method

.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 384
    new-instance v0, Ljava/util/zip/ZipEntry;

    #@2
    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 229
    invoke-virtual/range {p0 .. p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    #@3
    .line 230
    move-object/from16 v0, p0

    #@5
    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    #@7
    move/from16 v20, v0

    #@9
    if-eqz v20, :cond_0

    #@b
    .line 231
    const/16 v20, 0x0

    #@d
    return-object v20

    #@e
    .line 235
    :cond_0
    move-object/from16 v0, p0

    #@10
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@12
    move-object/from16 v20, v0

    #@14
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@18
    move-object/from16 v21, v0

    #@1a
    const/16 v22, 0x0

    #@1c
    const/16 v23, 0x4

    #@1e
    invoke-static/range {v20 .. v23}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@21
    .line 236
    move-object/from16 v0, p0

    #@23
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@25
    move-object/from16 v20, v0

    #@27
    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@29
    const/16 v22, 0x0

    #@2b
    move-object/from16 v0, v20

    #@2d
    move/from16 v1, v22

    #@2f
    move-object/from16 v2, v21

    #@31
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@34
    move-result v16

    #@35
    .line 237
    .local v16, "hdr":I
    move/from16 v0, v16

    #@37
    int-to-long v0, v0

    #@38
    move-wide/from16 v20, v0

    #@3a
    const-wide/32 v22, 0x2014b50    # 1.6619997E-316

    #@3d
    cmp-long v20, v20, v22

    #@3f
    if-nez v20, :cond_1

    #@41
    .line 238
    const/16 v20, 0x1

    #@43
    move/from16 v0, v20

    #@45
    move-object/from16 v1, p0

    #@47
    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->entriesEnd:Z

    #@49
    .line 239
    const/16 v20, 0x0

    #@4b
    return-object v20

    #@4c
    .line 241
    :cond_1
    move/from16 v0, v16

    #@4e
    int-to-long v0, v0

    #@4f
    move-wide/from16 v20, v0

    #@51
    const-wide/32 v22, 0x4034b50

    #@54
    cmp-long v20, v20, v22

    #@56
    if-eqz v20, :cond_2

    #@58
    .line 242
    const/16 v20, 0x0

    #@5a
    return-object v20

    #@5b
    .line 246
    :cond_2
    move-object/from16 v0, p0

    #@5d
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@5f
    move-object/from16 v20, v0

    #@61
    move-object/from16 v0, p0

    #@63
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@65
    move-object/from16 v21, v0

    #@67
    const/16 v22, 0x0

    #@69
    const/16 v23, 0x1a

    #@6b
    invoke-static/range {v20 .. v23}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@6e
    .line 247
    const/16 v20, 0x0

    #@70
    move-object/from16 v0, p0

    #@72
    move/from16 v1, v20

    #@74
    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    #@77
    move-result v20

    #@78
    move/from16 v0, v20

    #@7a
    and-int/lit16 v0, v0, 0xff

    #@7c
    move/from16 v19, v0

    #@7e
    .line 248
    .local v19, "version":I
    const/16 v20, 0x14

    #@80
    move/from16 v0, v19

    #@82
    move/from16 v1, v20

    #@84
    if-le v0, v1, :cond_3

    #@86
    .line 249
    new-instance v20, Ljava/util/zip/ZipException;

    #@88
    new-instance v21, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v22, "Cannot read local header version "

    #@90
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v21

    #@94
    move-object/from16 v0, v21

    #@96
    move/from16 v1, v19

    #@98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v21

    #@9c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v21

    #@a0
    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v20

    #@a4
    .line 251
    :cond_3
    const/16 v20, 0x2

    #@a6
    move-object/from16 v0, p0

    #@a8
    move/from16 v1, v20

    #@aa
    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    #@ad
    move-result v15

    #@ae
    .line 252
    .local v15, "flags":I
    and-int/lit8 v20, v15, 0x1

    #@b0
    if-eqz v20, :cond_4

    #@b2
    .line 253
    new-instance v20, Ljava/util/zip/ZipException;

    #@b4
    new-instance v21, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v22, "Invalid General Purpose Bit Flag: "

    #@bc
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v21

    #@c0
    move-object/from16 v0, v21

    #@c2
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v21

    #@c6
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v21

    #@ca
    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@cd
    throw v20

    #@ce
    .line 256
    :cond_4
    and-int/lit8 v20, v15, 0x8

    #@d0
    if-eqz v20, :cond_6

    #@d2
    const/16 v20, 0x1

    #@d4
    :goto_0
    move/from16 v0, v20

    #@d6
    move-object/from16 v1, p0

    #@d8
    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->hasDD:Z

    #@da
    .line 257
    const/16 v20, 0x6

    #@dc
    move-object/from16 v0, p0

    #@de
    move/from16 v1, v20

    #@e0
    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    #@e3
    move-result v10

    #@e4
    .line 258
    .local v10, "ceLastModifiedTime":I
    const/16 v20, 0x8

    #@e6
    move-object/from16 v0, p0

    #@e8
    move/from16 v1, v20

    #@ea
    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    #@ed
    move-result v7

    #@ee
    .line 259
    .local v7, "ceLastModifiedDate":I
    const/16 v20, 0x4

    #@f0
    move-object/from16 v0, p0

    #@f2
    move/from16 v1, v20

    #@f4
    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    #@f7
    move-result v6

    #@f8
    .line 260
    .local v6, "ceCompressionMethod":I
    const-wide/16 v8, 0x0

    #@fa
    .local v8, "ceCrc":J
    const-wide/16 v4, 0x0

    #@fc
    .local v4, "ceCompressedSize":J
    const-wide/16 v12, -0x1

    #@fe
    .line 261
    .local v12, "ceSize":J
    move-object/from16 v0, p0

    #@100
    iget-boolean v0, v0, Ljava/util/zip/ZipInputStream;->hasDD:Z

    #@102
    move/from16 v20, v0

    #@104
    if-nez v20, :cond_5

    #@106
    .line 262
    move-object/from16 v0, p0

    #@108
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@10a
    move-object/from16 v20, v0

    #@10c
    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@10e
    const/16 v22, 0xa

    #@110
    move-object/from16 v0, v20

    #@112
    move/from16 v1, v22

    #@114
    move-object/from16 v2, v21

    #@116
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@119
    move-result v20

    #@11a
    move/from16 v0, v20

    #@11c
    int-to-long v0, v0

    #@11d
    move-wide/from16 v20, v0

    #@11f
    const-wide v22, 0xffffffffL

    #@124
    and-long v8, v20, v22

    #@126
    .line 263
    move-object/from16 v0, p0

    #@128
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@12a
    move-object/from16 v20, v0

    #@12c
    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@12e
    const/16 v22, 0xe

    #@130
    move-object/from16 v0, v20

    #@132
    move/from16 v1, v22

    #@134
    move-object/from16 v2, v21

    #@136
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@139
    move-result v20

    #@13a
    move/from16 v0, v20

    #@13c
    int-to-long v0, v0

    #@13d
    move-wide/from16 v20, v0

    #@13f
    const-wide v22, 0xffffffffL

    #@144
    and-long v4, v20, v22

    #@146
    .line 264
    move-object/from16 v0, p0

    #@148
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->hdrBuf:[B

    #@14a
    move-object/from16 v20, v0

    #@14c
    sget-object v21, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@14e
    const/16 v22, 0x12

    #@150
    move-object/from16 v0, v20

    #@152
    move/from16 v1, v22

    #@154
    move-object/from16 v2, v21

    #@156
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@159
    move-result v20

    #@15a
    move/from16 v0, v20

    #@15c
    int-to-long v0, v0

    #@15d
    move-wide/from16 v20, v0

    #@15f
    const-wide v22, 0xffffffffL

    #@164
    and-long v12, v20, v22

    #@166
    .line 266
    :cond_5
    const/16 v20, 0x16

    #@168
    move-object/from16 v0, p0

    #@16a
    move/from16 v1, v20

    #@16c
    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    #@16f
    move-result v18

    #@170
    .line 267
    .local v18, "nameLength":I
    if-nez v18, :cond_7

    #@172
    .line 268
    new-instance v20, Ljava/util/zip/ZipException;

    #@174
    const-string/jumbo v21, "Entry is not named"

    #@177
    invoke-direct/range {v20 .. v21}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@17a
    throw v20

    #@17b
    .line 256
    .end local v4    # "ceCompressedSize":J
    .end local v6    # "ceCompressionMethod":I
    .end local v7    # "ceLastModifiedDate":I
    .end local v8    # "ceCrc":J
    .end local v10    # "ceLastModifiedTime":I
    .end local v12    # "ceSize":J
    .end local v18    # "nameLength":I
    :cond_6
    const/16 v20, 0x0

    #@17d
    goto/16 :goto_0

    #@17f
    .line 270
    .restart local v4    # "ceCompressedSize":J
    .restart local v6    # "ceCompressionMethod":I
    .restart local v7    # "ceLastModifiedDate":I
    .restart local v8    # "ceCrc":J
    .restart local v10    # "ceLastModifiedTime":I
    .restart local v12    # "ceSize":J
    .restart local v18    # "nameLength":I
    :cond_7
    const/16 v20, 0x18

    #@181
    move-object/from16 v0, p0

    #@183
    move/from16 v1, v20

    #@185
    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->peekShort(I)I

    #@188
    move-result v14

    #@189
    .line 272
    .local v14, "extraLength":I
    move-object/from16 v0, p0

    #@18b
    move/from16 v1, v18

    #@18d
    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;->readString(I)Ljava/lang/String;

    #@190
    move-result-object v17

    #@191
    .line 273
    .local v17, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    #@193
    move-object/from16 v1, v17

    #@195
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@198
    move-result-object v20

    #@199
    move-object/from16 v0, v20

    #@19b
    move-object/from16 v1, p0

    #@19d
    iput-object v0, v1, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@19f
    .line 274
    move-object/from16 v0, p0

    #@1a1
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1a3
    move-object/from16 v20, v0

    #@1a5
    move-object/from16 v0, v20

    #@1a7
    iput v10, v0, Ljava/util/zip/ZipEntry;->time:I

    #@1a9
    .line 275
    move-object/from16 v0, p0

    #@1ab
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1ad
    move-object/from16 v20, v0

    #@1af
    move-object/from16 v0, v20

    #@1b1
    iput v7, v0, Ljava/util/zip/ZipEntry;->modDate:I

    #@1b3
    .line 276
    move-object/from16 v0, p0

    #@1b5
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1b7
    move-object/from16 v20, v0

    #@1b9
    move-object/from16 v0, v20

    #@1bb
    invoke-virtual {v0, v6}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    #@1be
    .line 277
    const-wide/16 v20, -0x1

    #@1c0
    cmp-long v20, v12, v20

    #@1c2
    if-eqz v20, :cond_8

    #@1c4
    .line 278
    move-object/from16 v0, p0

    #@1c6
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1c8
    move-object/from16 v20, v0

    #@1ca
    move-object/from16 v0, v20

    #@1cc
    invoke-virtual {v0, v8, v9}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    #@1cf
    .line 279
    move-object/from16 v0, p0

    #@1d1
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1d3
    move-object/from16 v20, v0

    #@1d5
    move-object/from16 v0, v20

    #@1d7
    invoke-virtual {v0, v12, v13}, Ljava/util/zip/ZipEntry;->setSize(J)V

    #@1da
    .line 280
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1de
    move-object/from16 v20, v0

    #@1e0
    move-object/from16 v0, v20

    #@1e2
    invoke-virtual {v0, v4, v5}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    #@1e5
    .line 282
    :cond_8
    if-lez v14, :cond_9

    #@1e7
    .line 283
    new-array v11, v14, [B

    #@1e9
    .line 284
    .local v11, "extraData":[B
    move-object/from16 v0, p0

    #@1eb
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@1ed
    move-object/from16 v20, v0

    #@1ef
    const/16 v21, 0x0

    #@1f1
    move-object/from16 v0, v20

    #@1f3
    move/from16 v1, v21

    #@1f5
    invoke-static {v0, v11, v1, v14}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@1f8
    .line 285
    move-object/from16 v0, p0

    #@1fa
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1fc
    move-object/from16 v20, v0

    #@1fe
    move-object/from16 v0, v20

    #@200
    invoke-virtual {v0, v11}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    #@203
    .line 286
    move-object/from16 v0, p0

    #@205
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@207
    move-object/from16 v20, v0

    #@209
    const/16 v21, 0x0

    #@20b
    invoke-static/range {v20 .. v21}, Ljava/util/zip/Zip64;->parseZip64ExtendedInfo(Ljava/util/zip/ZipEntry;Z)Z

    #@20e
    move-result v20

    #@20f
    move/from16 v0, v20

    #@211
    move-object/from16 v1, p0

    #@213
    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->currentEntryIsZip64:Z

    #@215
    .line 291
    .end local v11    # "extraData":[B
    :goto_1
    move-object/from16 v0, p0

    #@217
    iget-object v0, v0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@219
    move-object/from16 v20, v0

    #@21b
    return-object v20

    #@21c
    .line 288
    :cond_9
    const/16 v20, 0x0

    #@21e
    move/from16 v0, v20

    #@220
    move-object/from16 v1, p0

    #@222
    iput-boolean v0, v1, Ljava/util/zip/ZipInputStream;->currentEntryIsZip64:Z

    #@224
    goto :goto_1
.end method

.method public read([BII)I
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
    const/4 v6, -0x1

    #@2
    .line 320
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->checkClosed()V

    #@5
    .line 321
    array-length v4, p1

    #@6
    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@9
    .line 323
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@b
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    #@e
    move-result v4

    #@f
    if-nez v4, :cond_0

    #@11
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@13
    if-nez v4, :cond_1

    #@15
    .line 324
    :cond_0
    return v6

    #@16
    .line 327
    :cond_1
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@18
    iget v4, v4, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@1a
    if-nez v4, :cond_7

    #@1c
    .line 328
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    #@1e
    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->size:J

    #@20
    long-to-int v0, v4

    #@21
    .line 329
    .local v0, "csize":I
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    #@23
    if-lt v4, v0, :cond_2

    #@25
    .line 330
    return v6

    #@26
    .line 332
    :cond_2
    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    #@28
    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    #@2a
    if-lt v4, v5, :cond_4

    #@2c
    .line 333
    iput v7, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    #@2e
    .line 334
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@30
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    #@32
    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    #@35
    move-result v4

    #@36
    iput v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    #@38
    if-ne v4, v6, :cond_3

    #@3a
    .line 335
    const/4 v4, 0x1

    #@3b
    iput-boolean v4, p0, Ljava/util/zip/ZipInputStream;->eof:Z

    #@3d
    .line 336
    return v6

    #@3e
    .line 338
    :cond_3
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    #@40
    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    #@42
    add-int/2addr v4, v5

    #@43
    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    #@45
    .line 340
    :cond_4
    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    #@47
    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    #@49
    sub-int/2addr v4, v5

    #@4a
    if-le p3, v4, :cond_6

    #@4c
    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    #@4e
    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    #@50
    sub-int v3, v4, v5

    #@52
    .line 341
    .local v3, "toRead":I
    :goto_0
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    #@54
    sub-int v4, v0, v4

    #@56
    if-ge v4, v3, :cond_5

    #@58
    .line 342
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    #@5a
    sub-int v3, v0, v4

    #@5c
    .line 344
    :cond_5
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    #@5e
    iget v5, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    #@60
    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@63
    .line 345
    iget v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    #@65
    add-int/2addr v4, v3

    #@66
    iput v4, p0, Ljava/util/zip/ZipInputStream;->lastRead:I

    #@68
    .line 346
    iget v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    #@6a
    add-int/2addr v4, v3

    #@6b
    iput v4, p0, Ljava/util/zip/ZipInputStream;->inRead:I

    #@6d
    .line 347
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@6f
    invoke-virtual {v4, p1, p2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    #@72
    .line 348
    return v3

    #@73
    .line 340
    .end local v3    # "toRead":I
    :cond_6
    move v3, p3

    #@74
    .restart local v3    # "toRead":I
    goto :goto_0

    #@75
    .line 350
    .end local v0    # "csize":I
    .end local v3    # "toRead":I
    :cond_7
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@77
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->needsInput()Z

    #@7a
    move-result v4

    #@7b
    if-eqz v4, :cond_8

    #@7d
    .line 351
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->fill()V

    #@80
    .line 352
    iget v4, p0, Ljava/util/zip/ZipInputStream;->len:I

    #@82
    if-lez v4, :cond_8

    #@84
    .line 353
    iget v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    #@86
    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    #@88
    add-int/2addr v4, v5

    #@89
    iput v4, p0, Ljava/util/zip/ZipInputStream;->entryIn:I

    #@8b
    .line 358
    :cond_8
    :try_start_0
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@8d
    invoke-virtual {v4, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    move-result v2

    #@91
    .line 362
    .local v2, "read":I
    if-nez v2, :cond_9

    #@93
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@95
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->finished()Z

    #@98
    move-result v4

    #@99
    if-eqz v4, :cond_9

    #@9b
    .line 363
    return v6

    #@9c
    .line 359
    .end local v2    # "read":I
    :catch_0
    move-exception v1

    #@9d
    .line 360
    .local v1, "e":Ljava/util/zip/DataFormatException;
    new-instance v4, Ljava/util/zip/ZipException;

    #@9f
    invoke-virtual {v1}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    #@a2
    move-result-object v5

    #@a3
    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@a6
    throw v4

    #@a7
    .line 365
    .end local v1    # "e":Ljava/util/zip/DataFormatException;
    .restart local v2    # "read":I
    :cond_9
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@a9
    invoke-virtual {v4, p1, p2, v2}, Ljava/util/zip/CRC32;->update([BII)V

    #@ac
    .line 366
    return v2
.end method
