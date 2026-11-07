.class public Ljava/util/zip/ZipInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field private static final greylist-max-o DEFLATED:I = 0x8

.field private static final greylist-max-o STORED:I


# instance fields
.field private greylist-max-o b:[B

.field private greylist-max-o closed:Z

.field private greylist-max-o crc:Ljava/util/zip/CRC32;

.field private greylist-max-o entry:Ljava/util/zip/ZipEntry;

.field private greylist-max-o entryEOF:Z

.field private greylist-max-r flag:I

.field private greylist-max-o remaining:J

.field private greylist-max-r tmpbuf:[B

.field private greylist-max-o zc:Ljava/util/zip/ZipCoder;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 86
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 87
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 104
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0, v2, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 52
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 54
    new-array v0, v1, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    .line 62
    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 302
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->b:[B

    .line 107
    if-eqz p1, :cond_39

    .line 110
    if-eqz p2, :cond_31

    .line 112
    invoke-static {p2}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    .line 113
    return-void

    .line 111
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in is null"

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

    .line 70
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-nez v0, :cond_5

    .line 73
    return-void

    .line 71
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o readEnd(Ljava/util/zip/ZipEntry;)V
    .registers 15
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    .line 396
    .local v0, "n":I
    if-lez v0, :cond_14

    .line 397
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    iget v3, p0, Ljava/util/zip/ZipInputStream;->len:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 399
    :cond_14
    iget v1, p0, Ljava/util/zip/ZipInputStream;->flag:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_ca

    .line 401
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    cmp-long v1, v3, v5

    const/16 v3, 0x10

    const-wide/32 v7, 0x8074b50

    const/16 v4, 0xc

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-gtz v1, :cond_82

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    .line 402
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v11

    cmp-long v1, v11, v5

    if-lez v1, :cond_3e

    goto :goto_82

    .line 418
    :cond_3e
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-direct {p0, v1, v9, v3}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 419
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v9}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v5

    .line 420
    .local v5, "sig":J
    cmp-long v1, v5, v7

    if-eqz v1, :cond_69

    .line 421
    iput-wide v5, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 422
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v7

    iput-wide v7, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 423
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v2}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 424
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-virtual {v1, v2, v4, v10}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto :goto_ca

    .line 427
    :cond_69
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v7

    iput-wide v7, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 428
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v2}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 429
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v4}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    goto :goto_ca

    .line 404
    .end local v5    # "sig":J
    :cond_82
    :goto_82
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v5, 0x18

    invoke-direct {p0, v1, v9, v5}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 405
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v9}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v5

    .line 406
    .restart local v5    # "sig":J
    cmp-long v1, v5, v7

    if-eqz v1, :cond_b1

    .line 407
    iput-wide v5, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 408
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 409
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v4}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 410
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3, v10}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto :goto_c9

    .line 413
    :cond_b1
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v7

    iput-wide v7, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 414
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v2}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 415
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v3}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 417
    .end local v5    # "sig":J
    :goto_c9
    nop

    .line 433
    :cond_ca
    :goto_ca
    iget-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const-string v2, " bytes)"

    const-string v3, " but got "

    if-nez v1, :cond_159

    .line 438
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_12c

    .line 443
    iget-wide v1, p1, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_f3

    .line 448
    return-void

    .line 444
    :cond_f3
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid entry CRC (expected 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 445
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but got 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 446
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
    :cond_12c
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid entry compressed size (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    .line 441
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 434
    :cond_159
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid entry size (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    .line 436
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o readFully([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    nop

    :goto_1
    if-lez p3, :cond_15

    .line 455
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 456
    .local v0, "n":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 459
    add-int/2addr p2, v0

    .line 460
    sub-int/2addr p3, v0

    .line 461
    .end local v0    # "n":I
    goto :goto_1

    .line 457
    .restart local v0    # "n":I
    :cond_f
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 462
    .end local v0    # "n":I
    :cond_15
    return-void
.end method

.method private greylist-max-o readLOC()Ljava/util/zip/ZipEntry;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Ljava/util/zip/ZipInputStream;->readFully([BII)V
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_9} :catch_c8

    .line 312
    nop

    .line 313
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v3}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v1

    const-wide/32 v4, 0x4034b50

    cmp-long v1, v1, v4

    if-eqz v1, :cond_18

    .line 314
    return-object v0

    .line 317
    :cond_18
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v0

    iput v0, p0, Ljava/util/zip/ZipInputStream;->flag:I

    .line 319
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v0

    .line 320
    .local v0, "len":I
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->b:[B

    array-length v1, v1

    .line 321
    .local v1, "blen":I
    if-le v0, v1, :cond_36

    .line 323
    :cond_2e
    mul-int/lit8 v1, v1, 0x2

    .line 324
    if-gt v0, v1, :cond_2e

    .line 325
    new-array v2, v1, [B

    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->b:[B

    .line 327
    :cond_36
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->b:[B

    invoke-direct {p0, v2, v3, v0}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 329
    iget v2, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_48

    .line 330
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->b:[B

    invoke-static {v2, v0}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    move-result-object v2

    goto :goto_50

    .line 331
    :cond_48
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->b:[B

    invoke-virtual {v2, v4, v0}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v2

    .line 329
    :goto_50
    invoke-virtual {p0, v2}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 333
    .local v2, "e":Ljava/util/zip/ZipEntry;
    iget v4, p0, Ljava/util/zip/ZipInputStream;->flag:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_c0

    .line 337
    invoke-static {}, Ldalvik/system/ZipPathValidator;->getInstance()Ldalvik/system/ZipPathValidator$Callback;

    move-result-object v4

    iget-object v6, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-interface {v4, v6}, Ldalvik/system/ZipPathValidator$Callback;->onZipEntryAccess(Ljava/lang/String;)V

    .line 339
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x8

    invoke-static {v4, v6}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v4

    iput v4, v2, Ljava/util/zip/ZipEntry;->method:I

    .line 340
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v7, 0xa

    invoke-static {v4, v7}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v7

    iput-wide v7, v2, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 341
    iget v4, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_7d

    goto :goto_9b

    .line 353
    :cond_7d
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0xe

    invoke-static {v4, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, v2, Ljava/util/zip/ZipEntry;->crc:J

    .line 354
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x12

    invoke-static {v4, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, v2, Ljava/util/zip/ZipEntry;->csize:J

    .line 355
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x16

    invoke-static {v4, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, v2, Ljava/util/zip/ZipEntry;->size:J

    .line 357
    :goto_9b
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x1c

    invoke-static {v4, v6}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v0

    .line 358
    if-lez v0, :cond_bf

    .line 359
    new-array v4, v0, [B

    .line 360
    .local v4, "extra":[B
    invoke-direct {p0, v4, v3, v0}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 361
    iget-wide v6, v2, Ljava/util/zip/ZipEntry;->csize:J

    const-wide v8, 0xffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_bb

    iget-wide v6, v2, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_bc

    :cond_bb
    move v3, v5

    :cond_bc
    invoke-virtual {v2, v4, v3, v5}, Ljava/util/zip/ZipEntry;->setExtra0([BZZ)V

    .line 364
    .end local v4    # "extra":[B
    :cond_bf
    return-object v2

    .line 334
    :cond_c0
    new-instance v3, Ljava/util/zip/ZipException;

    const-string v4, "encrypted ZIP entry not supported"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    .end local v0    # "len":I
    .end local v1    # "blen":I
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    :catch_c8
    move-exception v1

    .line 311
    .local v1, "e":Ljava/io/EOFException;
    return-object v0
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 184
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_14

    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    goto :goto_16

    .line 187
    :cond_14
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-nez v0, :cond_a

    .line 297
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    .line 300
    :cond_a
    return-void
.end method

.method public whitelist test-api closeEntry()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 160
    :goto_3
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    goto :goto_3

    .line 161
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 162
    return-void
.end method

.method protected whitelist test-api createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 375
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist test-api getNextEntry()Ljava/util/zip/ZipEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 132
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_a

    .line 133
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 135
    :cond_a
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 136
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 137
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->readLOC()Ljava/util/zip/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_1e

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_1e
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    if-eqz v0, :cond_2c

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_32

    .line 146
    :cond_2c
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    .line 148
    :cond_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 149
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    return-object v0
.end method

.method public whitelist test-api read([BII)I
    .registers 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 210
    if-ltz p2, :cond_c5

    if-ltz p3, :cond_c5

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_c5

    .line 212
    if-nez p3, :cond_f

    .line 213
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_f
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    const/4 v1, -0x1

    if-nez v0, :cond_15

    .line 217
    return v1

    .line 219
    :cond_15
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_cc

    .line 256
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :sswitch_26
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p3

    .line 222
    if-ne p3, v1, :cond_36

    .line 223
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipInputStream;->readEnd(Ljava/util/zip/ZipEntry;)V

    .line 224
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 225
    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    goto :goto_41

    .line 227
    :cond_36
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 231
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    .line 233
    :goto_41
    return p3

    .line 235
    :sswitch_42
    iget-wide v4, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_4f

    .line 236
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 237
    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    .line 238
    return v1

    .line 240
    :cond_4f
    int-to-long v2, p3

    iget-wide v4, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_59

    .line 241
    iget-wide v2, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    long-to-int p3, v2

    .line 243
    :cond_59
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    .line 244
    if-eq p3, v1, :cond_bd

    .line 247
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 248
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    .line 249
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_bc

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_81

    goto :goto_bc

    .line 250
    :cond_81
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid entry CRC (expected 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->crc:J

    .line 251
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but got 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 252
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_bc
    :goto_bc
    return p3

    .line 245
    :cond_bd
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "unexpected EOF"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_c5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    nop

    :sswitch_data_cc
    .sparse-switch
        0x0 -> :sswitch_42
        0x8 -> :sswitch_26
    .end sparse-switch
.end method

.method public whitelist test-api skip(J)J
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_30

    .line 272
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 273
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 274
    .local v0, "max":I
    const/4 v1, 0x0

    .line 275
    .local v1, "total":I
    :goto_12
    if-ge v1, v0, :cond_2e

    .line 276
    sub-int v2, v0, v1

    .line 277
    .local v2, "len":I
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    array-length v3, v3

    if-le v2, v3, :cond_1e

    .line 278
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    array-length v2, v3

    .line 280
    :cond_1e
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v2

    .line 281
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2c

    .line 282
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 283
    goto :goto_2e

    .line 285
    :cond_2c
    add-int/2addr v1, v2

    .line 286
    .end local v2    # "len":I
    goto :goto_12

    .line 287
    :cond_2e
    :goto_2e
    int-to-long v2, v1

    return-wide v2

    .line 270
    .end local v0    # "max":I
    .end local v1    # "total":I
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative skip length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
