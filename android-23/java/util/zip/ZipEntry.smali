.class public Ljava/util/zip/ZipEntry;
.super Ljava/lang/Object;
.source "ZipEntry.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field comment:Ljava/lang/String;

.field compressedSize:J

.field compressionMethod:I

.field crc:J

.field dataOffset:J

.field extra:[B

.field localHeaderRelOffset:J

.field modDate:I

.field name:Ljava/lang/String;

.field size:J

.field time:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const-wide/16 v0, -0x1

    #@3
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 44
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@8
    .line 46
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@a
    .line 47
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    #@c
    .line 49
    iput v2, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@e
    .line 50
    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    #@10
    .line 51
    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@12
    .line 55
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@14
    .line 57
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@16
    .line 94
    if-nez p1, :cond_0

    #@18
    .line 95
    new-instance v0, Ljava/lang/NullPointerException;

    #@1a
    const-string/jumbo v1, "name == null"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 97
    :cond_0
    const-string/jumbo v0, "Name"

    #@24
    invoke-static {v0, p1}, Ljava/util/zip/ZipEntry;->validateStringLength(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 98
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@29
    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJIII[BJJ)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "crc"    # J
    .param p5, "compressedSize"    # J
    .param p7, "size"    # J
    .param p9, "compressionMethod"    # I
    .param p10, "time"    # I
    .param p11, "modDate"    # I
    .param p12, "extra"    # [B
    .param p13, "localHeaderRelOffset"    # J
    .param p15, "dataOffset"    # J

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const-wide/16 v2, -0x1

    #@5
    iput-wide v2, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@7
    .line 46
    const-wide/16 v2, -0x1

    #@9
    iput-wide v2, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@b
    .line 47
    const-wide/16 v2, -0x1

    #@d
    iput-wide v2, p0, Ljava/util/zip/ZipEntry;->size:J

    #@f
    .line 49
    const/4 v2, -0x1

    #@10
    iput v2, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@12
    .line 50
    const/4 v2, -0x1

    #@13
    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    #@15
    .line 51
    const/4 v2, -0x1

    #@16
    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@18
    .line 55
    const-wide/16 v2, -0x1

    #@1a
    iput-wide v2, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@1c
    .line 57
    const-wide/16 v2, -0x1

    #@1e
    iput-wide v2, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@20
    .line 73
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@22
    .line 74
    iput-object p2, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@24
    .line 75
    iput-wide p3, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@26
    .line 76
    iput-wide p5, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@28
    .line 77
    iput-wide p7, p0, Ljava/util/zip/ZipEntry;->size:J

    #@2a
    .line 78
    iput p9, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@2c
    .line 79
    iput p10, p0, Ljava/util/zip/ZipEntry;->time:I

    #@2e
    .line 80
    move/from16 v0, p11

    #@30
    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@32
    .line 81
    move-object/from16 v0, p12

    #@34
    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@36
    .line 82
    move-wide/from16 v0, p13

    #@38
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@3a
    .line 83
    move-wide/from16 v0, p15

    #@3c
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@3e
    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/util/zip/ZipEntry;)V
    .locals 3
    .param p1, "ze"    # Ljava/util/zip/ZipEntry;

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    const-wide/16 v0, -0x1

    #@3
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 44
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@8
    .line 46
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@a
    .line 47
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    #@c
    .line 49
    iput v2, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@e
    .line 50
    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    #@10
    .line 51
    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@12
    .line 55
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@14
    .line 57
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@16
    .line 336
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@18
    iput-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@1a
    .line 337
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@1c
    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@1e
    .line 338
    iget v0, p1, Ljava/util/zip/ZipEntry;->time:I

    #@20
    iput v0, p0, Ljava/util/zip/ZipEntry;->time:I

    #@22
    .line 339
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    #@24
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    #@26
    .line 340
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@28
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@2a
    .line 341
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    #@2c
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@2e
    .line 342
    iget v0, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@30
    iput v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@32
    .line 343
    iget v0, p1, Ljava/util/zip/ZipEntry;->modDate:I

    #@34
    iput v0, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@36
    .line 344
    iget-object v0, p1, Ljava/util/zip/ZipEntry;->extra:[B

    #@38
    iput-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@3a
    .line 345
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@3c
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@3e
    .line 346
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@40
    iput-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@42
    .line 335
    return-void
.end method

.method constructor <init>([BLjava/io/InputStream;Ljava/nio/charset/Charset;Z)V
    .locals 16
    .param p1, "cdeHdrBuf"    # [B
    .param p2, "cdStream"    # Ljava/io/InputStream;
    .param p3, "defaultCharset"    # Ljava/nio/charset/Charset;
    .param p4, "isZip64"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 382
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const-wide/16 v12, -0x1

    #@5
    move-object/from16 v0, p0

    #@7
    iput-wide v12, v0, Ljava/util/zip/ZipEntry;->crc:J

    #@9
    .line 46
    const-wide/16 v12, -0x1

    #@b
    move-object/from16 v0, p0

    #@d
    iput-wide v12, v0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@f
    .line 47
    const-wide/16 v12, -0x1

    #@11
    move-object/from16 v0, p0

    #@13
    iput-wide v12, v0, Ljava/util/zip/ZipEntry;->size:J

    #@15
    .line 49
    const/4 v11, -0x1

    #@16
    move-object/from16 v0, p0

    #@18
    iput v11, v0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@1a
    .line 50
    const/4 v11, -0x1

    #@1b
    move-object/from16 v0, p0

    #@1d
    iput v11, v0, Ljava/util/zip/ZipEntry;->time:I

    #@1f
    .line 51
    const/4 v11, -0x1

    #@20
    move-object/from16 v0, p0

    #@22
    iput v11, v0, Ljava/util/zip/ZipEntry;->modDate:I

    #@24
    .line 55
    const-wide/16 v12, -0x1

    #@26
    move-object/from16 v0, p0

    #@28
    iput-wide v12, v0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@2a
    .line 57
    const-wide/16 v12, -0x1

    #@2c
    move-object/from16 v0, p0

    #@2e
    iput-wide v12, v0, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@30
    .line 383
    move-object/from16 v0, p1

    #@32
    array-length v11, v0

    #@33
    const/4 v12, 0x0

    #@34
    move-object/from16 v0, p2

    #@36
    move-object/from16 v1, p1

    #@38
    invoke-static {v0, v1, v12, v11}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@3b
    .line 385
    move-object/from16 v0, p1

    #@3d
    array-length v11, v0

    #@3e
    .line 386
    sget-object v12, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@40
    .line 385
    const/4 v13, 0x0

    #@41
    move-object/from16 v0, p1

    #@43
    invoke-static {v0, v13, v11, v12}, Llibcore/io/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;

    #@46
    move-result-object v7

    #@47
    .line 388
    .local v7, "it":Llibcore/io/BufferIterator;
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readInt()I

    #@4a
    move-result v10

    #@4b
    .line 389
    .local v10, "sig":I
    int-to-long v12, v10

    #@4c
    const-wide/32 v14, 0x2014b50    # 1.6619997E-316

    #@4f
    cmp-long v11, v12, v14

    #@51
    if-eqz v11, :cond_0

    #@53
    .line 390
    const-string/jumbo v11, "Central Directory Entry"

    #@56
    invoke-static {v11, v10}, Ljava/util/zip/ZipFile;->throwZipException(Ljava/lang/String;I)V

    #@59
    .line 393
    :cond_0
    const/16 v11, 0x8

    #@5b
    invoke-virtual {v7, v11}, Llibcore/io/BufferIterator;->seek(I)V

    #@5e
    .line 394
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readShort()S

    #@61
    move-result v11

    #@62
    const v12, 0xffff

    #@65
    and-int v6, v11, v12

    #@67
    .line 396
    .local v6, "gpbf":I
    and-int/lit8 v11, v6, 0x1

    #@69
    if-eqz v11, :cond_1

    #@6b
    .line 397
    new-instance v11, Ljava/util/zip/ZipException;

    #@6d
    new-instance v12, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v13, "Invalid General Purpose Bit Flag: "

    #@75
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v12

    #@79
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v12

    #@7d
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v12

    #@81
    invoke-direct {v11, v12}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@84
    throw v11

    #@85
    .line 402
    :cond_1
    move-object/from16 v2, p3

    #@87
    .line 403
    .local v2, "charset":Ljava/nio/charset/Charset;
    and-int/lit16 v11, v6, 0x800

    #@89
    if-eqz v11, :cond_2

    #@8b
    .line 404
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@8d
    .line 407
    :cond_2
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readShort()S

    #@90
    move-result v11

    #@91
    const v12, 0xffff

    #@94
    and-int/2addr v11, v12

    #@95
    move-object/from16 v0, p0

    #@97
    iput v11, v0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@99
    .line 408
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readShort()S

    #@9c
    move-result v11

    #@9d
    const v12, 0xffff

    #@a0
    and-int/2addr v11, v12

    #@a1
    move-object/from16 v0, p0

    #@a3
    iput v11, v0, Ljava/util/zip/ZipEntry;->time:I

    #@a5
    .line 409
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readShort()S

    #@a8
    move-result v11

    #@a9
    const v12, 0xffff

    #@ac
    and-int/2addr v11, v12

    #@ad
    move-object/from16 v0, p0

    #@af
    iput v11, v0, Ljava/util/zip/ZipEntry;->modDate:I

    #@b1
    .line 412
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readInt()I

    #@b4
    move-result v11

    #@b5
    int-to-long v12, v11

    #@b6
    const-wide v14, 0xffffffffL

    #@bb
    and-long/2addr v12, v14

    #@bc
    move-object/from16 v0, p0

    #@be
    iput-wide v12, v0, Ljava/util/zip/ZipEntry;->crc:J

    #@c0
    .line 413
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readInt()I

    #@c3
    move-result v11

    #@c4
    int-to-long v12, v11

    #@c5
    const-wide v14, 0xffffffffL

    #@ca
    and-long/2addr v12, v14

    #@cb
    move-object/from16 v0, p0

    #@cd
    iput-wide v12, v0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@cf
    .line 414
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readInt()I

    #@d2
    move-result v11

    #@d3
    int-to-long v12, v11

    #@d4
    const-wide v14, 0xffffffffL

    #@d9
    and-long/2addr v12, v14

    #@da
    move-object/from16 v0, p0

    #@dc
    iput-wide v12, v0, Ljava/util/zip/ZipEntry;->size:J

    #@de
    .line 416
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readShort()S

    #@e1
    move-result v11

    #@e2
    const v12, 0xffff

    #@e5
    and-int v9, v11, v12

    #@e7
    .line 417
    .local v9, "nameLength":I
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readShort()S

    #@ea
    move-result v11

    #@eb
    const v12, 0xffff

    #@ee
    and-int v5, v11, v12

    #@f0
    .line 418
    .local v5, "extraLength":I
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readShort()S

    #@f3
    move-result v11

    #@f4
    const v12, 0xffff

    #@f7
    and-int v3, v11, v12

    #@f9
    .line 421
    .local v3, "commentByteCount":I
    const/16 v11, 0x2a

    #@fb
    invoke-virtual {v7, v11}, Llibcore/io/BufferIterator;->seek(I)V

    #@fe
    .line 422
    invoke-virtual {v7}, Llibcore/io/BufferIterator;->readInt()I

    #@101
    move-result v11

    #@102
    int-to-long v12, v11

    #@103
    const-wide v14, 0xffffffffL

    #@108
    and-long/2addr v12, v14

    #@109
    move-object/from16 v0, p0

    #@10b
    iput-wide v12, v0, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@10d
    .line 424
    new-array v8, v9, [B

    #@10f
    .line 425
    .local v8, "nameBytes":[B
    array-length v11, v8

    #@110
    const/4 v12, 0x0

    #@111
    move-object/from16 v0, p2

    #@113
    invoke-static {v0, v8, v12, v11}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@116
    .line 426
    invoke-static {v8}, Ljava/util/zip/ZipEntry;->containsNulByte([B)Z

    #@119
    move-result v11

    #@11a
    if-eqz v11, :cond_3

    #@11c
    .line 427
    new-instance v11, Ljava/util/zip/ZipException;

    #@11e
    new-instance v12, Ljava/lang/StringBuilder;

    #@120
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@123
    const-string/jumbo v13, "Filename contains NUL byte: "

    #@126
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v12

    #@12a
    invoke-static {v8}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@12d
    move-result-object v13

    #@12e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v12

    #@132
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@135
    move-result-object v12

    #@136
    invoke-direct {v11, v12}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@139
    throw v11

    #@13a
    .line 429
    :cond_3
    new-instance v11, Ljava/lang/String;

    #@13c
    array-length v12, v8

    #@13d
    const/4 v13, 0x0

    #@13e
    invoke-direct {v11, v8, v13, v12, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@141
    move-object/from16 v0, p0

    #@143
    iput-object v11, v0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@145
    .line 431
    if-lez v5, :cond_4

    #@147
    .line 432
    new-array v11, v5, [B

    #@149
    move-object/from16 v0, p0

    #@14b
    iput-object v11, v0, Ljava/util/zip/ZipEntry;->extra:[B

    #@14d
    .line 433
    move-object/from16 v0, p0

    #@14f
    iget-object v11, v0, Ljava/util/zip/ZipEntry;->extra:[B

    #@151
    const/4 v12, 0x0

    #@152
    move-object/from16 v0, p2

    #@154
    invoke-static {v0, v11, v12, v5}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@157
    .line 436
    :cond_4
    if-lez v3, :cond_5

    #@159
    .line 437
    new-array v4, v3, [B

    #@15b
    .line 438
    .local v4, "commentBytes":[B
    const/4 v11, 0x0

    #@15c
    move-object/from16 v0, p2

    #@15e
    invoke-static {v0, v4, v11, v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;[BII)V

    #@161
    .line 439
    new-instance v11, Ljava/lang/String;

    #@163
    array-length v12, v4

    #@164
    const/4 v13, 0x0

    #@165
    invoke-direct {v11, v4, v13, v12, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@168
    move-object/from16 v0, p0

    #@16a
    iput-object v11, v0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@16c
    .line 442
    .end local v4    # "commentBytes":[B
    :cond_5
    if-eqz p4, :cond_6

    #@16e
    .line 443
    const/4 v11, 0x1

    #@16f
    move-object/from16 v0, p0

    #@171
    invoke-static {v0, v11}, Ljava/util/zip/Zip64;->parseZip64ExtendedInfo(Ljava/util/zip/ZipEntry;Z)Z

    #@174
    .line 382
    :cond_6
    return-void
.end method

.method private static containsNulByte([B)Z
    .locals 4
    .param p0, "bytes"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 448
    array-length v3, p0

    #@2
    move v1, v2

    #@3
    :goto_0
    if-ge v1, v3, :cond_1

    #@5
    aget-byte v0, p0, v1

    #@7
    .line 449
    .local v0, "b":B
    if-nez v0, :cond_0

    #@9
    .line 450
    const/4 v1, 0x1

    #@a
    return v1

    #@b
    .line 448
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@d
    goto :goto_0

    #@e
    .line 453
    .end local v0    # "b":B
    :cond_1
    return v2
.end method

.method private static validateStringLength(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "argument"    # Ljava/lang/String;
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 460
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@5
    move-result-object v0

    #@6
    .line 461
    .local v0, "bytes":[B
    array-length v1, v0

    #@7
    const v2, 0xffff

    #@a
    if-le v1, v2, :cond_0

    #@c
    .line 462
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const-string/jumbo v3, " too long: "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    array-length v3, v0

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 456
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 354
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Ljava/util/zip/ZipEntry;

    #@7
    .line 355
    .local v1, "result":Ljava/util/zip/ZipEntry;
    iget-object v3, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@9
    if-eqz v3, :cond_0

    #@b
    iget-object v2, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@d
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, [B

    #@13
    :cond_0
    iput-object v2, v1, Ljava/util/zip/ZipEntry;->extra:[B
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 356
    return-object v1

    #@16
    .line 357
    .end local v1    # "result":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v0

    #@17
    .line 358
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@19
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1c
    throw v2
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 106
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    #@0
    .prologue
    .line 116
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@2
    return-wide v0
.end method

.method public getCrc()J
    .locals 2

    #@0
    .prologue
    .line 125
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@2
    return-wide v0
.end method

.method public getDataOffset()J
    .locals 2

    #@0
    .prologue
    .line 315
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@2
    return-wide v0
.end method

.method public getExtra()[B
    .locals 1

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@2
    return-object v0
.end method

.method public getMethod()I
    .locals 1

    #@0
    .prologue
    .line 145
    iget v0, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSize()J
    .locals 2

    #@0
    .prologue
    .line 169
    iget-wide v0, p0, Ljava/util/zip/ZipEntry;->size:J

    #@2
    return-wide v0
.end method

.method public getTime()J
    .locals 7

    #@0
    .prologue
    .line 179
    iget v1, p0, Ljava/util/zip/ZipEntry;->time:I

    #@2
    const/4 v2, -0x1

    #@3
    if-eq v1, v2, :cond_0

    #@5
    .line 180
    new-instance v0, Ljava/util/GregorianCalendar;

    #@7
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    #@a
    .line 181
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xe

    #@c
    const/4 v2, 0x0

    #@d
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@10
    .line 182
    iget v1, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@12
    shr-int/lit8 v1, v1, 0x9

    #@14
    and-int/lit8 v1, v1, 0x7f

    #@16
    add-int/lit16 v1, v1, 0x7bc

    #@18
    iget v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@1a
    shr-int/lit8 v2, v2, 0x5

    #@1c
    and-int/lit8 v2, v2, 0xf

    #@1e
    add-int/lit8 v2, v2, -0x1

    #@20
    .line 183
    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@22
    and-int/lit8 v3, v3, 0x1f

    #@24
    iget v4, p0, Ljava/util/zip/ZipEntry;->time:I

    #@26
    shr-int/lit8 v4, v4, 0xb

    #@28
    and-int/lit8 v4, v4, 0x1f

    #@2a
    iget v5, p0, Ljava/util/zip/ZipEntry;->time:I

    #@2c
    shr-int/lit8 v5, v5, 0x5

    #@2e
    and-int/lit8 v5, v5, 0x3f

    #@30
    .line 184
    iget v6, p0, Ljava/util/zip/ZipEntry;->time:I

    #@32
    and-int/lit8 v6, v6, 0x1f

    #@34
    shl-int/lit8 v6, v6, 0x1

    #@36
    .line 182
    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    #@39
    .line 185
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    #@40
    move-result-wide v2

    #@41
    return-wide v2

    #@42
    .line 187
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    :cond_0
    const-wide/16 v2, -0x1

    #@44
    return-wide v2
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 369
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isDirectory()Z
    .locals 2

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@2
    iget-object v1, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    add-int/lit8 v1, v1, -0x1

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v0

    #@e
    const/16 v1, 0x2f

    #@10
    if-ne v0, v1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :goto_0
    return v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1
    .param p1, "comment"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 205
    if-nez p1, :cond_0

    #@3
    .line 206
    iput-object v0, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@5
    .line 207
    return-void

    #@6
    .line 209
    :cond_0
    const-string/jumbo v0, "Comment"

    #@9
    invoke-static {v0, p1}, Ljava/util/zip/ZipEntry;->validateStringLength(Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 211
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@e
    .line 204
    return-void
.end method

.method public setCompressedSize(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 221
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@2
    .line 220
    return-void
.end method

.method public setCrc(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 233
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-ltz v0, :cond_0

    #@6
    const-wide v0, 0xffffffffL

    #@b
    cmp-long v0, p1, v0

    #@d
    if-gtz v0, :cond_0

    #@f
    .line 234
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->crc:J

    #@11
    .line 232
    return-void

    #@12
    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    new-instance v1, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v2, "Bad CRC32: "

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
.end method

.method public setDataOffset(J)V
    .locals 1
    .param p1, "value"    # J

    #@0
    .prologue
    .line 310
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->dataOffset:J

    #@2
    .line 309
    return-void
.end method

.method public setExtra([B)V
    .locals 3
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 246
    if-eqz p1, :cond_0

    #@2
    array-length v0, p1

    #@3
    const v1, 0xffff

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Extra data too long: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    array-length v2, p1

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 249
    :cond_0
    iput-object p1, p0, Ljava/util/zip/ZipEntry;->extra:[B

    #@25
    .line 245
    return-void
.end method

.method public setMethod(I)V
    .locals 3
    .param p1, "value"    # I

    #@0
    .prologue
    .line 263
    if-eqz p1, :cond_0

    #@2
    const/16 v0, 0x8

    #@4
    if-eq p1, v0, :cond_0

    #@6
    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Bad method: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 266
    :cond_0
    iput p1, p0, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@22
    .line 262
    return-void
.end method

.method public setSize(J)V
    .locals 3
    .param p1, "value"    # J

    #@0
    .prologue
    .line 276
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Bad size: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 280
    :cond_0
    iput-wide p1, p0, Ljava/util/zip/ZipEntry;->size:J

    #@22
    .line 275
    return-void
.end method

.method public setTime(J)V
    .locals 5
    .param p1, "value"    # J

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 291
    new-instance v0, Ljava/util/GregorianCalendar;

    #@3
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    #@6
    .line 292
    .local v0, "cal":Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/util/Date;

    #@8
    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    #@b
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    #@e
    .line 293
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    #@11
    move-result v1

    #@12
    .line 294
    .local v1, "year":I
    const/16 v2, 0x7bc

    #@14
    if-ge v1, v2, :cond_0

    #@16
    .line 295
    const/16 v2, 0x21

    #@18
    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@1a
    .line 296
    const/4 v2, 0x0

    #@1b
    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    #@1d
    .line 290
    :goto_0
    return-void

    #@1e
    .line 298
    :cond_0
    const/4 v2, 0x5

    #@1f
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    #@22
    move-result v2

    #@23
    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@25
    .line 299
    const/4 v2, 0x2

    #@26
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    #@29
    move-result v2

    #@2a
    add-int/lit8 v2, v2, 0x1

    #@2c
    shl-int/lit8 v2, v2, 0x5

    #@2e
    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@30
    or-int/2addr v2, v3

    #@31
    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@33
    .line 300
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    #@36
    move-result v2

    #@37
    add-int/lit16 v2, v2, -0x7bc

    #@39
    shl-int/lit8 v2, v2, 0x9

    #@3b
    iget v3, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@3d
    or-int/2addr v2, v3

    #@3e
    iput v2, p0, Ljava/util/zip/ZipEntry;->modDate:I

    #@40
    .line 301
    const/16 v2, 0xd

    #@42
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    #@45
    move-result v2

    #@46
    shr-int/lit8 v2, v2, 0x1

    #@48
    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    #@4a
    .line 302
    const/16 v2, 0xc

    #@4c
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    #@4f
    move-result v2

    #@50
    shl-int/lit8 v2, v2, 0x5

    #@52
    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    #@54
    or-int/2addr v2, v3

    #@55
    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    #@57
    .line 303
    const/16 v2, 0xb

    #@59
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    #@5c
    move-result v2

    #@5d
    shl-int/lit8 v2, v2, 0xb

    #@5f
    iget v3, p0, Ljava/util/zip/ZipEntry;->time:I

    #@61
    or-int/2addr v2, v3

    #@62
    iput v2, p0, Ljava/util/zip/ZipEntry;->time:I

    #@64
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 325
    iget-object v0, p0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
