.class public Ljava/util/zip/ZipInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field private static final DEFLATED:I = 0x8

.field private static final STORED:I


# instance fields
.field private b:[B

.field private closed:Z

.field private crc:Ljava/util/zip/CRC32;

.field private entry:Ljava/util/zip/ZipEntry;

.field private entryEOF:Z

.field private flag:I

.field private remaining:J

.field private tmpbuf:[B

.field private zc:Ljava/util/zip/ZipCoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    #@0
    .prologue
    .line 80
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    #@5
    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/16 v3, 0x200

    #@3
    .line 98
    new-instance v0, Ljava/io/PushbackInputStream;

    #@5
    invoke-direct {v0, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    #@8
    new-instance v1, Ljava/util/zip/Inflater;

    #@a
    const/4 v2, 0x1

    #@b
    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@e
    invoke-direct {p0, v0, v1, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    #@11
    .line 48
    new-instance v0, Ljava/util/zip/CRC32;

    #@13
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    #@16
    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@18
    .line 50
    new-array v0, v3, [B

    #@1a
    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@1c
    .line 55
    iput-boolean v4, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    #@1e
    .line 58
    iput-boolean v4, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    #@20
    .line 279
    const/16 v0, 0x100

    #@22
    new-array v0, v0, [B

    #@24
    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->b:[B

    #@26
    .line 99
    if-nez p1, :cond_0

    #@28
    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    #@2a
    const-string/jumbo v1, "in is null"

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 102
    :cond_0
    if-nez p2, :cond_1

    #@33
    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    #@35
    const-string/jumbo v1, "charset is null"

    #@38
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v0

    #@3c
    .line 104
    :cond_1
    invoke-static {p2}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    #@3f
    move-result-object v0

    #@40
    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    #@42
    .line 97
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
    .line 66
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 67
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 65
    :cond_0
    return-void
.end method

.method private static final get16([BI)I
    .locals 2
    .param p0, "b"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 447
    aget-byte v0, p0, p1

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    add-int/lit8 v1, p1, 0x1

    #@6
    aget-byte v1, p0, v1

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    shl-int/lit8 v1, v1, 0x8

    #@c
    or-int/2addr v0, v1

    #@d
    return v0
.end method

.method private static final get32([BI)J
    .locals 5
    .param p0, "b"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 455
    invoke-static {p0, p1}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    add-int/lit8 v2, p1, 0x2

    #@7
    invoke-static {p0, v2}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    #@a
    move-result v2

    #@b
    int-to-long v2, v2

    #@c
    const/16 v4, 0x10

    #@e
    shl-long/2addr v2, v4

    #@f
    or-long/2addr v0, v2

    #@10
    const-wide v2, 0xffffffffL

    #@15
    and-long/2addr v0, v2

    #@16
    return-wide v0
.end method

.method private static final get64([BI)J
    .locals 5
    .param p0, "b"    # [B
    .param p1, "off"    # I

    #@0
    .prologue
    .line 463
    invoke-static {p0, p1}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@3
    move-result-wide v0

    #@4
    add-int/lit8 v2, p1, 0x4

    #@6
    invoke-static {p0, v2}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@9
    move-result-wide v2

    #@a
    const/16 v4, 0x20

    #@c
    shl-long/2addr v2, v4

    #@d
    or-long/2addr v0, v2

    #@e
    return-wide v0
.end method

.method private readEnd(Ljava/util/zip/ZipEntry;)V
    .locals 13
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0x10

    #@2
    const/16 v11, 0xc

    #@4
    const/16 v10, 0x8

    #@6
    const/4 v9, 0x0

    #@7
    const/4 v8, 0x4

    #@8
    .line 373
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@a
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    #@d
    move-result v0

    #@e
    .line 374
    .local v0, "n":I
    if-lez v0, :cond_0

    #@10
    .line 375
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@12
    check-cast v1, Ljava/io/PushbackInputStream;

    #@14
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    #@16
    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    #@18
    sub-int/2addr v5, v0

    #@19
    invoke-virtual {v1, v4, v5, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    #@1c
    .line 377
    :cond_0
    iget v1, p0, Ljava/util/zip/ZipInputStream;->flag:I

    #@1e
    and-int/lit8 v1, v1, 0x8

    #@20
    if-ne v1, v10, :cond_2

    #@22
    .line 379
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@24
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    #@27
    move-result-wide v4

    #@28
    const-wide v6, 0xffffffffL

    #@2d
    cmp-long v1, v4, v6

    #@2f
    if-gtz v1, :cond_1

    #@31
    .line 380
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@33
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesRead()J

    #@36
    move-result-wide v4

    #@37
    const-wide v6, 0xffffffffL

    #@3c
    cmp-long v1, v4, v6

    #@3e
    if-lez v1, :cond_4

    #@40
    .line 382
    :cond_1
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@42
    const/16 v4, 0x18

    #@44
    invoke-direct {p0, v1, v9, v4}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    #@47
    .line 383
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@49
    invoke-static {v1, v9}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@4c
    move-result-wide v2

    #@4d
    .line 384
    .local v2, "sig":J
    const-wide/32 v4, 0x8074b50

    #@50
    cmp-long v1, v2, v4

    #@52
    if-eqz v1, :cond_3

    #@54
    .line 385
    iput-wide v2, p1, Ljava/util/zip/ZipEntry;->crc:J

    #@56
    .line 386
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@58
    invoke-static {v1, v8}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    #@5b
    move-result-wide v4

    #@5c
    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@5e
    .line 387
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@60
    invoke-static {v1, v11}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    #@63
    move-result-wide v4

    #@64
    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    #@66
    .line 388
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@68
    check-cast v1, Ljava/io/PushbackInputStream;

    #@6a
    .line 389
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@6c
    const/16 v5, 0x13

    #@6e
    .line 388
    invoke-virtual {v1, v4, v5, v8}, Ljava/io/PushbackInputStream;->unread([BII)V

    #@71
    .line 411
    .end local v2    # "sig":J
    :cond_2
    :goto_0
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    #@73
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@75
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    #@78
    move-result-wide v6

    #@79
    cmp-long v1, v4, v6

    #@7b
    if-eqz v1, :cond_6

    #@7d
    .line 412
    new-instance v1, Ljava/util/zip/ZipException;

    #@7f
    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v5, "invalid entry size (expected "

    #@87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    iget-wide v6, p1, Ljava/util/zip/ZipEntry;->size:J

    #@8d
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    .line 414
    const-string/jumbo v5, " but got "

    #@94
    .line 413
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    .line 414
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@9a
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getBytesWritten()J

    #@9d
    move-result-wide v6

    #@9e
    .line 413
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    .line 414
    const-string/jumbo v5, " bytes)"

    #@a5
    .line 413
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v4

    #@a9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v4

    #@ad
    .line 412
    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@b0
    throw v1

    #@b1
    .line 391
    .restart local v2    # "sig":J
    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@b3
    invoke-static {v1, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@b6
    move-result-wide v4

    #@b7
    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->crc:J

    #@b9
    .line 392
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@bb
    invoke-static {v1, v10}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    #@be
    move-result-wide v4

    #@bf
    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@c1
    .line 393
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@c3
    invoke-static {v1, v12}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    #@c6
    move-result-wide v4

    #@c7
    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    #@c9
    goto :goto_0

    #@ca
    .line 396
    .end local v2    # "sig":J
    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@cc
    invoke-direct {p0, v1, v9, v12}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    #@cf
    .line 397
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@d1
    invoke-static {v1, v9}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@d4
    move-result-wide v2

    #@d5
    .line 398
    .restart local v2    # "sig":J
    const-wide/32 v4, 0x8074b50

    #@d8
    cmp-long v1, v2, v4

    #@da
    if-eqz v1, :cond_5

    #@dc
    .line 399
    iput-wide v2, p1, Ljava/util/zip/ZipEntry;->crc:J

    #@de
    .line 400
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@e0
    invoke-static {v1, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@e3
    move-result-wide v4

    #@e4
    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@e6
    .line 401
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@e8
    invoke-static {v1, v10}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@eb
    move-result-wide v4

    #@ec
    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    #@ee
    .line 402
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@f0
    check-cast v1, Ljava/io/PushbackInputStream;

    #@f2
    .line 403
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@f4
    const/16 v5, 0xb

    #@f6
    .line 402
    invoke-virtual {v1, v4, v5, v8}, Ljava/io/PushbackInputStream;->unread([BII)V

    #@f9
    goto/16 :goto_0

    #@fb
    .line 405
    :cond_5
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@fd
    invoke-static {v1, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@100
    move-result-wide v4

    #@101
    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->crc:J

    #@103
    .line 406
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@105
    invoke-static {v1, v10}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@108
    move-result-wide v4

    #@109
    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@10b
    .line 407
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@10d
    invoke-static {v1, v11}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@110
    move-result-wide v4

    #@111
    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    #@113
    goto/16 :goto_0

    #@115
    .line 416
    .end local v2    # "sig":J
    :cond_6
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@117
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@119
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesRead()J

    #@11c
    move-result-wide v6

    #@11d
    cmp-long v1, v4, v6

    #@11f
    if-eqz v1, :cond_7

    #@121
    .line 417
    new-instance v1, Ljava/util/zip/ZipException;

    #@123
    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    #@125
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@128
    const-string/jumbo v5, "invalid entry compressed size (expected "

    #@12b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12e
    move-result-object v4

    #@12f
    iget-wide v6, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@131
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@134
    move-result-object v4

    #@135
    .line 419
    const-string/jumbo v5, " but got "

    #@138
    .line 418
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v4

    #@13c
    .line 419
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@13e
    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getBytesRead()J

    #@141
    move-result-wide v6

    #@142
    .line 418
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@145
    move-result-object v4

    #@146
    .line 419
    const-string/jumbo v5, " bytes)"

    #@149
    .line 418
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v4

    #@14d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v4

    #@151
    .line 417
    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@154
    throw v1

    #@155
    .line 421
    :cond_7
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->crc:J

    #@157
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@159
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    #@15c
    move-result-wide v6

    #@15d
    cmp-long v1, v4, v6

    #@15f
    if-eqz v1, :cond_8

    #@161
    .line 422
    new-instance v1, Ljava/util/zip/ZipException;

    #@163
    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    #@165
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@168
    const-string/jumbo v5, "invalid entry CRC (expected 0x"

    #@16b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v4

    #@16f
    iget-wide v6, p1, Ljava/util/zip/ZipEntry;->crc:J

    #@171
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@174
    move-result-object v5

    #@175
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@178
    move-result-object v4

    #@179
    .line 424
    const-string/jumbo v5, " but got 0x"

    #@17c
    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v4

    #@180
    .line 424
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@182
    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    #@185
    move-result-wide v6

    #@186
    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@189
    move-result-object v5

    #@18a
    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v4

    #@18e
    .line 424
    const-string/jumbo v5, ")"

    #@191
    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v4

    #@195
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v4

    #@199
    .line 422
    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@19c
    throw v1

    #@19d
    .line 372
    :cond_8
    return-void
.end method

.method private readFully([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 432
    :goto_0
    if-lez p3, :cond_1

    #@2
    .line 433
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@4
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@7
    move-result v0

    #@8
    .line 434
    .local v0, "n":I
    const/4 v1, -0x1

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 435
    new-instance v1, Ljava/io/EOFException;

    #@d
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@10
    throw v1

    #@11
    .line 437
    :cond_0
    add-int/2addr p2, v0

    #@12
    .line 438
    sub-int/2addr p3, v0

    #@13
    goto :goto_0

    #@14
    .line 431
    .end local v0    # "n":I
    :cond_1
    return-void
.end method

.method private readLOC()Ljava/util/zip/ZipEntry;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 286
    :try_start_0
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@2
    const/4 v8, 0x0

    #@3
    const/16 v9, 0x1e

    #@5
    invoke-direct {p0, v7, v8, v9}, Ljava/util/zip/ZipInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    .line 290
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@a
    const/4 v8, 0x0

    #@b
    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@e
    move-result-wide v8

    #@f
    const-wide/32 v10, 0x4034b50

    #@12
    cmp-long v7, v8, v10

    #@14
    if-eqz v7, :cond_0

    #@16
    .line 291
    const/4 v7, 0x0

    #@17
    return-object v7

    #@18
    .line 287
    :catch_0
    move-exception v2

    #@19
    .line 288
    .local v2, "e":Ljava/io/EOFException;
    const/4 v7, 0x0

    #@1a
    return-object v7

    #@1b
    .line 294
    .end local v2    # "e":Ljava/io/EOFException;
    :cond_0
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@1d
    const/4 v8, 0x6

    #@1e
    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    #@21
    move-result v7

    #@22
    iput v7, p0, Ljava/util/zip/ZipInputStream;->flag:I

    #@24
    .line 296
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@26
    const/16 v8, 0x1a

    #@28
    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    #@2b
    move-result v4

    #@2c
    .line 297
    .local v4, "len":I
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->b:[B

    #@2e
    array-length v1, v7

    #@2f
    .line 298
    .local v1, "blen":I
    if-le v4, v1, :cond_2

    #@31
    .line 300
    :cond_1
    mul-int/lit8 v1, v1, 0x2

    #@33
    .line 301
    if-gt v4, v1, :cond_1

    #@35
    .line 302
    new-array v7, v1, [B

    #@37
    iput-object v7, p0, Ljava/util/zip/ZipInputStream;->b:[B

    #@39
    .line 304
    :cond_2
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->b:[B

    #@3b
    const/4 v8, 0x0

    #@3c
    invoke-direct {p0, v7, v8, v4}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    #@3f
    .line 306
    iget v7, p0, Ljava/util/zip/ZipInputStream;->flag:I

    #@41
    and-int/lit16 v7, v7, 0x800

    #@43
    if-eqz v7, :cond_3

    #@45
    .line 307
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    #@47
    iget-object v8, p0, Ljava/util/zip/ZipInputStream;->b:[B

    #@49
    invoke-virtual {v7, v8, v4}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    #@4c
    move-result-object v7

    #@4d
    .line 306
    :goto_0
    invoke-virtual {p0, v7}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@50
    move-result-object v3

    #@51
    .line 310
    .local v3, "e":Ljava/util/zip/ZipEntry;
    iget v7, p0, Ljava/util/zip/ZipInputStream;->flag:I

    #@53
    and-int/lit8 v7, v7, 0x1

    #@55
    const/4 v8, 0x1

    #@56
    if-ne v7, v8, :cond_4

    #@58
    .line 311
    new-instance v7, Ljava/util/zip/ZipException;

    #@5a
    const-string/jumbo v8, "encrypted ZIP entry not supported"

    #@5d
    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@60
    throw v7

    #@61
    .line 308
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    :cond_3
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    #@63
    iget-object v8, p0, Ljava/util/zip/ZipInputStream;->b:[B

    #@65
    invoke-virtual {v7, v8, v4}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    #@68
    move-result-object v7

    #@69
    goto :goto_0

    #@6a
    .line 313
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    :cond_4
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@6c
    const/16 v8, 0x8

    #@6e
    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    #@71
    move-result v7

    #@72
    iput v7, v3, Ljava/util/zip/ZipEntry;->method:I

    #@74
    .line 314
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@76
    const/16 v8, 0xa

    #@78
    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@7b
    move-result-wide v8

    #@7c
    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->time:J

    #@7e
    .line 315
    iget v7, p0, Ljava/util/zip/ZipInputStream;->flag:I

    #@80
    and-int/lit8 v7, v7, 0x8

    #@82
    const/16 v8, 0x8

    #@84
    if-ne v7, v8, :cond_5

    #@86
    .line 317
    iget v7, v3, Ljava/util/zip/ZipEntry;->method:I

    #@88
    const/16 v8, 0x8

    #@8a
    if-eq v7, v8, :cond_6

    #@8c
    .line 318
    new-instance v7, Ljava/util/zip/ZipException;

    #@8e
    .line 319
    const-string/jumbo v8, "only DEFLATED entries can have EXT descriptor"

    #@91
    .line 318
    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@94
    throw v7

    #@95
    .line 322
    :cond_5
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@97
    const/16 v8, 0xe

    #@99
    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@9c
    move-result-wide v8

    #@9d
    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->crc:J

    #@9f
    .line 323
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@a1
    const/16 v8, 0x12

    #@a3
    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@a6
    move-result-wide v8

    #@a7
    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->csize:J

    #@a9
    .line 324
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@ab
    const/16 v8, 0x16

    #@ad
    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get32([BI)J

    #@b0
    move-result-wide v8

    #@b1
    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->size:J

    #@b3
    .line 326
    :cond_6
    iget-object v7, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@b5
    const/16 v8, 0x1c

    #@b7
    invoke-static {v7, v8}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    #@ba
    move-result v4

    #@bb
    .line 327
    if-lez v4, :cond_a

    #@bd
    .line 328
    new-array v0, v4, [B

    #@bf
    .line 329
    .local v0, "bb":[B
    const/4 v7, 0x0

    #@c0
    invoke-direct {p0, v0, v7, v4}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    #@c3
    .line 330
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipEntry;->setExtra([B)V

    #@c6
    .line 332
    iget-wide v8, v3, Ljava/util/zip/ZipEntry;->csize:J

    #@c8
    const-wide v10, 0xffffffffL

    #@cd
    cmp-long v7, v8, v10

    #@cf
    if-eqz v7, :cond_7

    #@d1
    iget-wide v8, v3, Ljava/util/zip/ZipEntry;->size:J

    #@d3
    const-wide v10, 0xffffffffL

    #@d8
    cmp-long v7, v8, v10

    #@da
    if-nez v7, :cond_a

    #@dc
    .line 333
    :cond_7
    const/4 v5, 0x0

    #@dd
    .line 334
    .local v5, "off":I
    :goto_1
    add-int/lit8 v7, v5, 0x4

    #@df
    if-ge v7, v4, :cond_a

    #@e1
    .line 335
    add-int/lit8 v7, v5, 0x2

    #@e3
    invoke-static {v0, v7}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    #@e6
    move-result v6

    #@e7
    .line 336
    .local v6, "sz":I
    invoke-static {v0, v5}, Ljava/util/zip/ZipInputStream;->get16([BI)I

    #@ea
    move-result v7

    #@eb
    const/4 v8, 0x1

    #@ec
    if-ne v7, v8, :cond_b

    #@ee
    .line 337
    add-int/lit8 v5, v5, 0x4

    #@f0
    .line 340
    const/16 v7, 0x10

    #@f2
    if-lt v6, v7, :cond_8

    #@f4
    add-int v7, v5, v6

    #@f6
    if-le v7, v4, :cond_9

    #@f8
    .line 345
    :cond_8
    return-object v3

    #@f9
    .line 347
    :cond_9
    invoke-static {v0, v5}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    #@fc
    move-result-wide v8

    #@fd
    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->size:J

    #@ff
    .line 348
    add-int/lit8 v7, v5, 0x8

    #@101
    invoke-static {v0, v7}, Ljava/util/zip/ZipInputStream;->get64([BI)J

    #@104
    move-result-wide v8

    #@105
    iput-wide v8, v3, Ljava/util/zip/ZipEntry;->csize:J

    #@107
    .line 355
    .end local v0    # "bb":[B
    .end local v5    # "off":I
    .end local v6    # "sz":I
    :cond_a
    return-object v3

    #@108
    .line 351
    .restart local v0    # "bb":[B
    .restart local v5    # "off":I
    .restart local v6    # "sz":I
    :cond_b
    add-int/lit8 v7, v6, 0x4

    #@10a
    add-int/2addr v5, v7

    #@10b
    goto :goto_1
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
    .line 158
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    #@3
    .line 161
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    #@5
    if-nez v0, :cond_0

    #@7
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@9
    if-eqz v0, :cond_1

    #@b
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    #@d
    const-wide/16 v2, 0x0

    #@f
    cmp-long v0, v0, v2

    #@11
    if-nez v0, :cond_1

    #@13
    .line 163
    :cond_0
    const/4 v0, 0x0

    #@14
    return v0

    #@15
    .line 165
    :cond_1
    const/4 v0, 0x1

    #@16
    return v0
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
    .line 273
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 274
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    #@7
    .line 275
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    #@a
    .line 272
    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    #@3
    .line 142
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@5
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@7
    array-length v1, v1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-virtual {p0, v0, v2, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    #@c
    move-result v0

    #@d
    const/4 v1, -0x1

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 143
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    #@13
    .line 140
    return-void
.end method

.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 366
    new-instance v0, Ljava/util/zip/ZipEntry;

    #@2
    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 115
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    #@5
    .line 116
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 117
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    #@c
    .line 119
    :cond_0
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@e
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    #@11
    .line 120
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    #@13
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    #@16
    .line 121
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->readLOC()Ljava/util/zip/ZipEntry;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@1c
    if-nez v0, :cond_1

    #@1e
    .line 122
    return-object v1

    #@1f
    .line 126
    :cond_1
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@21
    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    #@23
    if-eqz v0, :cond_2

    #@25
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@27
    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    #@29
    const/16 v1, 0x8

    #@2b
    if-ne v0, v1, :cond_3

    #@2d
    .line 128
    :cond_2
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@2f
    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->size:J

    #@31
    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    #@33
    .line 130
    :cond_3
    iput-boolean v2, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    #@35
    .line 131
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@37
    return-object v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v4, -0x1

    #@6
    .line 187
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    #@9
    .line 188
    if-ltz p2, :cond_0

    #@b
    if-gez p3, :cond_1

    #@d
    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@f
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@12
    throw v0

    #@13
    .line 188
    :cond_1
    array-length v0, p1

    #@14
    sub-int/2addr v0, p3

    #@15
    if-gt p2, v0, :cond_0

    #@17
    .line 190
    if-nez p3, :cond_2

    #@19
    .line 191
    return v1

    #@1a
    .line 194
    :cond_2
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@1c
    if-nez v0, :cond_3

    #@1e
    .line 195
    return v4

    #@1f
    .line 197
    :cond_3
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@21
    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    #@23
    sparse-switch v0, :sswitch_data_0

    #@26
    .line 233
    new-instance v0, Ljava/util/zip/ZipException;

    #@28
    const-string/jumbo v1, "invalid compression method"

    #@2b
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 199
    :sswitch_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    #@32
    move-result p3

    #@33
    .line 200
    if-ne p3, v4, :cond_4

    #@35
    .line 201
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@37
    invoke-direct {p0, v0}, Ljava/util/zip/ZipInputStream;->readEnd(Ljava/util/zip/ZipEntry;)V

    #@3a
    .line 202
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    #@3c
    .line 203
    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@3e
    .line 210
    :goto_0
    return p3

    #@3f
    .line 205
    :cond_4
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@41
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    #@44
    .line 207
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    #@46
    int-to-long v2, p3

    #@47
    sub-long/2addr v0, v2

    #@48
    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    #@4a
    goto :goto_0

    #@4b
    .line 212
    :sswitch_1
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    #@4d
    cmp-long v0, v0, v6

    #@4f
    if-gtz v0, :cond_5

    #@51
    .line 213
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    #@53
    .line 214
    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@55
    .line 215
    return v4

    #@56
    .line 217
    :cond_5
    int-to-long v0, p3

    #@57
    iget-wide v2, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    #@59
    cmp-long v0, v0, v2

    #@5b
    if-lez v0, :cond_6

    #@5d
    .line 218
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    #@5f
    long-to-int p3, v0

    #@60
    .line 220
    :cond_6
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    #@62
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    #@65
    move-result p3

    #@66
    .line 221
    if-ne p3, v4, :cond_7

    #@68
    .line 222
    new-instance v0, Ljava/util/zip/ZipException;

    #@6a
    const-string/jumbo v1, "unexpected EOF"

    #@6d
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@70
    throw v0

    #@71
    .line 224
    :cond_7
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@73
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    #@76
    .line 225
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    #@78
    int-to-long v2, p3

    #@79
    sub-long/2addr v0, v2

    #@7a
    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    #@7c
    .line 226
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    #@7e
    cmp-long v0, v0, v6

    #@80
    if-nez v0, :cond_8

    #@82
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@84
    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->crc:J

    #@86
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@88
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    #@8b
    move-result-wide v2

    #@8c
    cmp-long v0, v0, v2

    #@8e
    if-eqz v0, :cond_8

    #@90
    .line 227
    new-instance v0, Ljava/util/zip/ZipException;

    #@92
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v2, "invalid entry CRC (expected 0x"

    #@9a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v1

    #@9e
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    #@a0
    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->crc:J

    #@a2
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@a5
    move-result-object v2

    #@a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v1

    #@aa
    .line 229
    const-string/jumbo v2, " but got 0x"

    #@ad
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v1

    #@b1
    .line 229
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    #@b3
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    #@b6
    move-result-wide v2

    #@b7
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@ba
    move-result-object v2

    #@bb
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v1

    #@bf
    .line 229
    const-string/jumbo v2, ")"

    #@c2
    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v1

    #@c6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v1

    #@ca
    .line 227
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@cd
    throw v0

    #@ce
    .line 231
    :cond_8
    return p3

    #@cf
    .line 197
    nop

    #@d0
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public skip(J)J
    .locals 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    const-wide/16 v4, 0x0

    #@2
    cmp-long v3, p1, v4

    #@4
    if-gez v3, :cond_0

    #@6
    .line 247
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "negative skip length"

    #@b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3

    #@f
    .line 249
    :cond_0
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    #@12
    .line 250
    const-wide/32 v4, 0x7fffffff

    #@15
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@18
    move-result-wide v4

    #@19
    long-to-int v1, v4

    #@1a
    .line 251
    .local v1, "max":I
    const/4 v2, 0x0

    #@1b
    .line 252
    .local v2, "total":I
    :goto_0
    if-ge v2, v1, :cond_2

    #@1d
    .line 253
    sub-int v0, v1, v2

    #@1f
    .line 254
    .local v0, "len":I
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@21
    array-length v3, v3

    #@22
    if-le v0, v3, :cond_1

    #@24
    .line 255
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@26
    array-length v0, v3

    #@27
    .line 257
    :cond_1
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    #@29
    const/4 v4, 0x0

    #@2a
    invoke-virtual {p0, v3, v4, v0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    #@2d
    move-result v0

    #@2e
    .line 258
    const/4 v3, -0x1

    #@2f
    if-ne v0, v3, :cond_3

    #@31
    .line 259
    const/4 v3, 0x1

    #@32
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    #@34
    .line 264
    .end local v0    # "len":I
    :cond_2
    int-to-long v4, v2

    #@35
    return-wide v4

    #@36
    .line 262
    .restart local v0    # "len":I
    :cond_3
    add-int/2addr v2, v0

    #@37
    goto :goto_0
.end method
