.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/zip/ZipConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$EocdRecord;,
        Ljava/util/zip/ZipFile$RAFStream;,
        Ljava/util/zip/ZipFile$ZipInflaterInputStream;
    }
.end annotation


# static fields
.field static final GPBF_DATA_DESCRIPTOR_FLAG:I = 0x8

.field static final GPBF_ENCRYPTED_FLAG:I = 0x1

.field static final GPBF_UNSUPPORTED_MASK:I = 0x1

.field static final GPBF_UTF8_FLAG:I = 0x800

.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1


# instance fields
.field private comment:Ljava/lang/String;

.field private final entries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private fileToDeleteOnClose:Ljava/io/File;

.field private final filename:Ljava/lang/String;

.field private final guard:Ldalvik/system/CloseGuard;

.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method static synthetic -wrap0(Ljava/util/zip/ZipFile;)V
    .locals 0

    #@0
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 131
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    #@4
    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 104
    new-instance v1, Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    #@8
    iput-object v1, p0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    #@a
    .line 108
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    #@10
    .line 158
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    iput-object v1, p0, Ljava/util/zip/ZipFile;->filename:Ljava/lang/String;

    #@16
    .line 159
    const/4 v1, 0x1

    #@17
    if-eq p2, v1, :cond_0

    #@19
    const/4 v1, 0x5

    #@1a
    if-eq p2, v1, :cond_0

    #@1c
    .line 160
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Bad mode: "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v1

    #@36
    .line 163
    :cond_0
    and-int/lit8 v1, p2, 0x4

    #@38
    if-eqz v1, :cond_2

    #@3a
    .line 164
    iput-object p1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    #@3c
    .line 165
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    #@3e
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    #@41
    .line 170
    :goto_0
    new-instance v1, Ljava/io/RandomAccessFile;

    #@43
    iget-object v2, p0, Ljava/util/zip/ZipFile;->filename:Ljava/lang/String;

    #@45
    const-string/jumbo v3, "r"

    #@48
    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4b
    iput-object v1, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@4d
    .line 173
    const/4 v0, 0x1

    #@4e
    .line 175
    .local v0, "mustCloseFile":Z
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->readCentralDir()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@51
    .line 178
    const/4 v0, 0x0

    #@52
    .line 180
    if-eqz v0, :cond_1

    #@54
    .line 181
    iget-object v1, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@56
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@59
    .line 185
    :cond_1
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    #@5b
    const-string/jumbo v2, "close"

    #@5e
    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@61
    .line 157
    return-void

    #@62
    .line 167
    .end local v0    # "mustCloseFile":Z
    :cond_2
    const/4 v1, 0x0

    #@63
    iput-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    #@65
    goto :goto_0

    #@66
    .line 179
    .restart local v0    # "mustCloseFile":Z
    :catchall_0
    move-exception v1

    #@67
    .line 180
    if-eqz v0, :cond_3

    #@69
    .line 181
    iget-object v2, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@6b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    #@6e
    .line 179
    :cond_3
    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    const/4 v1, 0x1

    #@6
    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    #@9
    .line 141
    return-void
.end method

.method private checkNotClosed()V
    .locals 2

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 227
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Zip file closed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 225
    :cond_0
    return-void
.end method

.method private static parseEocdRecord(Ljava/io/RandomAccessFile;JZ)Ljava/util/zip/ZipFile$EocdRecord;
    .locals 19
    .param p0, "raf"    # Ljava/io/RandomAccessFile;
    .param p1, "offset"    # J
    .param p3, "isZip64"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 458
    invoke-virtual/range {p0 .. p2}, Ljava/io/RandomAccessFile;->seek(J)V

    #@3
    .line 462
    const/16 v3, 0x12

    #@5
    new-array v10, v3, [B

    #@7
    .line 463
    .local v10, "eocd":[B
    move-object/from16 v0, p0

    #@9
    invoke-virtual {v0, v10}, Ljava/io/RandomAccessFile;->readFully([B)V

    #@c
    .line 465
    array-length v3, v10

    #@d
    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@f
    const/4 v14, 0x0

    #@10
    invoke-static {v10, v14, v3, v13}, Llibcore/io/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;

    #@13
    move-result-object v11

    #@14
    .line 468
    .local v11, "it":Llibcore/io/BufferIterator;
    if-eqz p3, :cond_1

    #@16
    .line 469
    const-wide/16 v4, -0x1

    #@18
    .line 470
    .local v4, "numEntries":J
    const-wide/16 v6, -0x1

    #@1a
    .line 476
    .local v6, "centralDirOffset":J
    const/16 v3, 0x10

    #@1c
    invoke-virtual {v11, v3}, Llibcore/io/BufferIterator;->skip(I)V

    #@1f
    .line 492
    :cond_0
    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    #@22
    move-result v3

    #@23
    const v13, 0xffff

    #@26
    and-int v8, v3, v13

    #@28
    .line 493
    .local v8, "commentLength":I
    new-instance v3, Ljava/util/zip/ZipFile$EocdRecord;

    #@2a
    invoke-direct/range {v3 .. v8}, Ljava/util/zip/ZipFile$EocdRecord;-><init>(JJI)V

    #@2d
    return-object v3

    #@2e
    .line 480
    .end local v4    # "numEntries":J
    .end local v6    # "centralDirOffset":J
    .end local v8    # "commentLength":I
    :cond_1
    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    #@31
    move-result v3

    #@32
    const v13, 0xffff

    #@35
    and-int v2, v3, v13

    #@37
    .line 481
    .local v2, "diskNumber":I
    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    #@3a
    move-result v3

    #@3b
    const v13, 0xffff

    #@3e
    and-int v9, v3, v13

    #@40
    .line 482
    .local v9, "diskWithCentralDir":I
    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    #@43
    move-result v3

    #@44
    const v13, 0xffff

    #@47
    and-int/2addr v3, v13

    #@48
    int-to-long v4, v3

    #@49
    .line 483
    .restart local v4    # "numEntries":J
    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readShort()S

    #@4c
    move-result v3

    #@4d
    const v13, 0xffff

    #@50
    and-int v12, v3, v13

    #@52
    .line 484
    .local v12, "totalNumEntries":I
    const/4 v3, 0x4

    #@53
    invoke-virtual {v11, v3}, Llibcore/io/BufferIterator;->skip(I)V

    #@56
    .line 486
    invoke-virtual {v11}, Llibcore/io/BufferIterator;->readInt()I

    #@59
    move-result v3

    #@5a
    int-to-long v14, v3

    #@5b
    const-wide v16, 0xffffffffL

    #@60
    and-long v6, v14, v16

    #@62
    .line 487
    .restart local v6    # "centralDirOffset":J
    int-to-long v14, v12

    #@63
    cmp-long v3, v4, v14

    #@65
    if-nez v3, :cond_2

    #@67
    if-eqz v2, :cond_3

    #@69
    .line 488
    :cond_2
    :goto_0
    new-instance v3, Ljava/util/zip/ZipException;

    #@6b
    const-string/jumbo v13, "Spanned archives not supported"

    #@6e
    invoke-direct {v3, v13}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@71
    throw v3

    #@72
    .line 487
    :cond_3
    if-eqz v9, :cond_0

    #@74
    goto :goto_0
.end method

.method private readCentralDir()V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 386
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@4
    move-object/from16 v22, v0

    #@6
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->length()J

    #@9
    move-result-wide v22

    #@a
    const-wide/16 v24, 0x16

    #@c
    sub-long v16, v22, v24

    #@e
    .line 387
    .local v16, "scanOffset":J
    const-wide/16 v22, 0x0

    #@10
    cmp-long v22, v16, v22

    #@12
    if-gez v22, :cond_0

    #@14
    .line 388
    new-instance v22, Ljava/util/zip/ZipException;

    #@16
    new-instance v23, Ljava/lang/StringBuilder;

    #@18
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v24, "File too short to be a zip file: "

    #@1e
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v23

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@26
    move-object/from16 v24, v0

    #@28
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->length()J

    #@2b
    move-result-wide v24

    #@2c
    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v23

    #@30
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v23

    #@34
    invoke-direct/range {v22 .. v23}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@37
    throw v22

    #@38
    .line 391
    :cond_0
    move-object/from16 v0, p0

    #@3a
    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@3c
    move-object/from16 v22, v0

    #@3e
    const-wide/16 v24, 0x0

    #@40
    move-object/from16 v0, v22

    #@42
    move-wide/from16 v1, v24

    #@44
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    #@47
    .line 392
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@4b
    move-object/from16 v22, v0

    #@4d
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->readInt()I

    #@50
    move-result v22

    #@51
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->reverseBytes(I)I

    #@54
    move-result v10

    #@55
    .line 393
    .local v10, "headerMagic":I
    int-to-long v0, v10

    #@56
    move-wide/from16 v22, v0

    #@58
    const-wide/32 v24, 0x6054b50

    #@5b
    cmp-long v22, v22, v24

    #@5d
    if-nez v22, :cond_1

    #@5f
    .line 394
    new-instance v22, Ljava/util/zip/ZipException;

    #@61
    const-string/jumbo v23, "Empty zip archive not supported"

    #@64
    invoke-direct/range {v22 .. v23}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@67
    throw v22

    #@68
    .line 396
    :cond_1
    int-to-long v0, v10

    #@69
    move-wide/from16 v22, v0

    #@6b
    const-wide/32 v24, 0x4034b50

    #@6e
    cmp-long v22, v22, v24

    #@70
    if-eqz v22, :cond_2

    #@72
    .line 397
    new-instance v22, Ljava/util/zip/ZipException;

    #@74
    const-string/jumbo v23, "Not a zip archive"

    #@77
    invoke-direct/range {v22 .. v23}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v22

    #@7b
    .line 400
    :cond_2
    const-wide/32 v22, 0x10000

    #@7e
    sub-long v18, v16, v22

    #@80
    .line 401
    .local v18, "stopOffset":J
    const-wide/16 v22, 0x0

    #@82
    cmp-long v22, v18, v22

    #@84
    if-gez v22, :cond_3

    #@86
    .line 402
    const-wide/16 v18, 0x0

    #@88
    .line 407
    :cond_3
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@8c
    move-object/from16 v22, v0

    #@8e
    move-object/from16 v0, v22

    #@90
    move-wide/from16 v1, v16

    #@92
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    #@95
    .line 408
    move-object/from16 v0, p0

    #@97
    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@99
    move-object/from16 v22, v0

    #@9b
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->readInt()I

    #@9e
    move-result v22

    #@9f
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->reverseBytes(I)I

    #@a2
    move-result v22

    #@a3
    move/from16 v0, v22

    #@a5
    int-to-long v0, v0

    #@a6
    move-wide/from16 v22, v0

    #@a8
    const-wide/32 v24, 0x6054b50

    #@ab
    cmp-long v22, v22, v24

    #@ad
    if-nez v22, :cond_6

    #@af
    .line 409
    move-wide/from16 v8, v16

    #@b1
    .line 419
    .local v8, "eocdOffset":J
    move-object/from16 v0, p0

    #@b3
    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@b5
    move-object/from16 v22, v0

    #@b7
    move-object/from16 v0, v22

    #@b9
    invoke-static {v0, v8, v9}, Ljava/util/zip/Zip64;->parseZip64EocdRecordLocator(Ljava/io/RandomAccessFile;J)J

    #@bc
    move-result-wide v20

    #@bd
    .line 423
    .local v20, "zip64EocdRecordOffset":J
    move-object/from16 v0, p0

    #@bf
    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@c1
    move-object/from16 v23, v0

    #@c3
    const-wide/16 v24, 0x4

    #@c5
    add-long v24, v24, v8

    #@c7
    const-wide/16 v26, -0x1

    #@c9
    cmp-long v22, v20, v26

    #@cb
    if-eqz v22, :cond_7

    #@cd
    const/16 v22, 0x1

    #@cf
    :goto_0
    move-object/from16 v0, v23

    #@d1
    move-wide/from16 v1, v24

    #@d3
    move/from16 v3, v22

    #@d5
    invoke-static {v0, v1, v2, v3}, Ljava/util/zip/ZipFile;->parseEocdRecord(Ljava/io/RandomAccessFile;JZ)Ljava/util/zip/ZipFile$EocdRecord;

    #@d8
    move-result-object v15

    #@d9
    .line 426
    .local v15, "record":Ljava/util/zip/ZipFile$EocdRecord;
    iget v0, v15, Ljava/util/zip/ZipFile$EocdRecord;->commentLength:I

    #@db
    move/from16 v22, v0

    #@dd
    if-lez v22, :cond_4

    #@df
    .line 427
    iget v0, v15, Ljava/util/zip/ZipFile$EocdRecord;->commentLength:I

    #@e1
    move/from16 v22, v0

    #@e3
    move/from16 v0, v22

    #@e5
    new-array v5, v0, [B

    #@e7
    .line 428
    .local v5, "commentBytes":[B
    move-object/from16 v0, p0

    #@e9
    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@eb
    move-object/from16 v22, v0

    #@ed
    move-object/from16 v0, v22

    #@ef
    invoke-virtual {v0, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    #@f2
    .line 429
    new-instance v22, Ljava/lang/String;

    #@f4
    array-length v0, v5

    #@f5
    move/from16 v23, v0

    #@f7
    sget-object v24, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@f9
    const/16 v25, 0x0

    #@fb
    move-object/from16 v0, v22

    #@fd
    move/from16 v1, v25

    #@ff
    move/from16 v2, v23

    #@101
    move-object/from16 v3, v24

    #@103
    invoke-direct {v0, v5, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    #@106
    move-object/from16 v0, v22

    #@108
    move-object/from16 v1, p0

    #@10a
    iput-object v0, v1, Ljava/util/zip/ZipFile;->comment:Ljava/lang/String;

    #@10c
    .line 433
    .end local v5    # "commentBytes":[B
    :cond_4
    const-wide/16 v22, -0x1

    #@10e
    cmp-long v22, v20, v22

    #@110
    if-eqz v22, :cond_5

    #@112
    .line 434
    move-object/from16 v0, p0

    #@114
    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@116
    move-object/from16 v22, v0

    #@118
    iget v0, v15, Ljava/util/zip/ZipFile$EocdRecord;->commentLength:I

    #@11a
    move/from16 v23, v0

    #@11c
    move-object/from16 v0, v22

    #@11e
    move-wide/from16 v1, v20

    #@120
    move/from16 v3, v23

    #@122
    invoke-static {v0, v1, v2, v3}, Ljava/util/zip/Zip64;->parseZip64EocdRecord(Ljava/io/RandomAccessFile;JI)Ljava/util/zip/ZipFile$EocdRecord;

    #@125
    move-result-object v15

    #@126
    .line 441
    :cond_5
    new-instance v14, Ljava/util/zip/ZipFile$RAFStream;

    #@128
    move-object/from16 v0, p0

    #@12a
    iget-object v0, v0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@12c
    move-object/from16 v22, v0

    #@12e
    iget-wide v0, v15, Ljava/util/zip/ZipFile$EocdRecord;->centralDirOffset:J

    #@130
    move-wide/from16 v24, v0

    #@132
    move-object/from16 v0, v22

    #@134
    move-wide/from16 v1, v24

    #@136
    invoke-direct {v14, v0, v1, v2}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    #@139
    .line 442
    .local v14, "rafStream":Ljava/util/zip/ZipFile$RAFStream;
    new-instance v4, Ljava/io/BufferedInputStream;

    #@13b
    const/16 v22, 0x1000

    #@13d
    move/from16 v0, v22

    #@13f
    invoke-direct {v4, v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    #@142
    .line 443
    .local v4, "bufferedStream":Ljava/io/BufferedInputStream;
    const/16 v22, 0x2e

    #@144
    move/from16 v0, v22

    #@146
    new-array v7, v0, [B

    #@148
    .line 444
    .local v7, "hdrBuf":[B
    const-wide/16 v12, 0x0

    #@14a
    .local v12, "i":J
    :goto_1
    iget-wide v0, v15, Ljava/util/zip/ZipFile$EocdRecord;->numEntries:J

    #@14c
    move-wide/from16 v22, v0

    #@14e
    cmp-long v22, v12, v22

    #@150
    if-gez v22, :cond_b

    #@152
    .line 445
    new-instance v11, Ljava/util/zip/ZipEntry;

    #@154
    sget-object v23, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@156
    .line 446
    const-wide/16 v24, -0x1

    #@158
    cmp-long v22, v20, v24

    #@15a
    if-eqz v22, :cond_8

    #@15c
    const/16 v22, 0x1

    #@15e
    .line 445
    :goto_2
    move-object/from16 v0, v23

    #@160
    move/from16 v1, v22

    #@162
    invoke-direct {v11, v7, v4, v0, v1}, Ljava/util/zip/ZipEntry;-><init>([BLjava/io/InputStream;Ljava/nio/charset/Charset;Z)V

    #@165
    .line 447
    .local v11, "newEntry":Ljava/util/zip/ZipEntry;
    iget-wide v0, v11, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@167
    move-wide/from16 v22, v0

    #@169
    iget-wide v0, v15, Ljava/util/zip/ZipFile$EocdRecord;->centralDirOffset:J

    #@16b
    move-wide/from16 v24, v0

    #@16d
    cmp-long v22, v22, v24

    #@16f
    if-ltz v22, :cond_9

    #@171
    .line 448
    new-instance v22, Ljava/util/zip/ZipException;

    #@173
    const-string/jumbo v23, "Local file header offset is after central directory"

    #@176
    invoke-direct/range {v22 .. v23}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@179
    throw v22

    #@17a
    .line 413
    .end local v4    # "bufferedStream":Ljava/io/BufferedInputStream;
    .end local v7    # "hdrBuf":[B
    .end local v8    # "eocdOffset":J
    .end local v11    # "newEntry":Ljava/util/zip/ZipEntry;
    .end local v12    # "i":J
    .end local v14    # "rafStream":Ljava/util/zip/ZipFile$RAFStream;
    .end local v15    # "record":Ljava/util/zip/ZipFile$EocdRecord;
    .end local v20    # "zip64EocdRecordOffset":J
    :cond_6
    const-wide/16 v22, 0x1

    #@17c
    sub-long v16, v16, v22

    #@17e
    .line 414
    cmp-long v22, v16, v18

    #@180
    if-gez v22, :cond_3

    #@182
    .line 415
    new-instance v22, Ljava/util/zip/ZipException;

    #@184
    const-string/jumbo v23, "End Of Central Directory signature not found"

    #@187
    invoke-direct/range {v22 .. v23}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@18a
    throw v22

    #@18b
    .line 423
    .restart local v8    # "eocdOffset":J
    .restart local v20    # "zip64EocdRecordOffset":J
    :cond_7
    const/16 v22, 0x0

    #@18d
    goto/16 :goto_0

    #@18f
    .line 446
    .restart local v4    # "bufferedStream":Ljava/io/BufferedInputStream;
    .restart local v7    # "hdrBuf":[B
    .restart local v12    # "i":J
    .restart local v14    # "rafStream":Ljava/util/zip/ZipFile$RAFStream;
    .restart local v15    # "record":Ljava/util/zip/ZipFile$EocdRecord;
    :cond_8
    const/16 v22, 0x0

    #@191
    goto :goto_2

    #@192
    .line 450
    .restart local v11    # "newEntry":Ljava/util/zip/ZipEntry;
    :cond_9
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@195
    move-result-object v6

    #@196
    .line 451
    .local v6, "entryName":Ljava/lang/String;
    move-object/from16 v0, p0

    #@198
    iget-object v0, v0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    #@19a
    move-object/from16 v22, v0

    #@19c
    move-object/from16 v0, v22

    #@19e
    invoke-virtual {v0, v6, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1a1
    move-result-object v22

    #@1a2
    if-eqz v22, :cond_a

    #@1a4
    .line 452
    new-instance v22, Ljava/util/zip/ZipException;

    #@1a6
    new-instance v23, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string/jumbo v24, "Duplicate entry name: "

    #@1ae
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v23

    #@1b2
    move-object/from16 v0, v23

    #@1b4
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    move-result-object v23

    #@1b8
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1bb
    move-result-object v23

    #@1bc
    invoke-direct/range {v22 .. v23}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@1bf
    throw v22

    #@1c0
    .line 444
    :cond_a
    const-wide/16 v22, 0x1

    #@1c2
    add-long v12, v12, v22

    #@1c4
    goto :goto_1

    #@1c5
    .line 381
    .end local v6    # "entryName":Ljava/lang/String;
    .end local v11    # "newEntry":Ljava/util/zip/ZipEntry;
    :cond_b
    return-void
.end method

.method static throwZipException(Ljava/lang/String;I)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "magic"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    #@0
    .prologue
    .line 497
    const/4 v1, 0x1

    #@1
    const/16 v2, 0x8

    #@3
    invoke-static {p1, v1, v2}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 498
    .local v0, "hexString":Ljava/lang/String;
    new-instance v1, Ljava/util/zip/ZipException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    const-string/jumbo v3, " signature not found; was "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@24
    throw v1
.end method


# virtual methods
.method public close()V
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
    .line 210
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    #@3
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    #@6
    .line 212
    iget-object v0, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@8
    .line 213
    .local v0, "localRaf":Ljava/io/RandomAccessFile;
    if-eqz v0, :cond_0

    #@a
    .line 214
    monitor-enter v0

    #@b
    .line 215
    const/4 v1, 0x0

    #@c
    :try_start_0
    iput-object v1, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@e
    .line 216
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v0

    #@12
    .line 218
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 219
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    #@18
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    #@1b
    .line 220
    iput-object v2, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    #@1d
    .line 209
    :cond_0
    return-void

    #@1e
    .line 214
    :catchall_0
    move-exception v1

    #@1f
    monitor-exit v0

    #@20
    throw v1
.end method

.method public entries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 242
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    #@3
    .line 243
    iget-object v1, p0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    #@5
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v0

    #@d
    .line 245
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    new-instance v1, Ljava/util/zip/ZipFile$1;

    #@f
    invoke-direct {v1, p0, v0}, Ljava/util/zip/ZipFile$1;-><init>(Ljava/util/zip/ZipFile;Ljava/util/Iterator;)V

    #@12
    return-object v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 191
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 195
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@c
    .line 188
    return-void

    #@d
    .line 196
    :catch_0
    move-exception v0

    #@e
    .line 197
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v1

    #@14
    .line 193
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    #@15
    .line 195
    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    #@18
    .line 193
    throw v1

    #@19
    .line 196
    :catch_1
    move-exception v0

    #@1a
    .line 197
    .restart local v0    # "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1f
    throw v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 266
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    #@3
    .line 267
    iget-object v0, p0, Ljava/util/zip/ZipFile;->comment:Ljava/lang/String;

    #@5
    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 4
    .param p1, "entryName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 276
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    #@3
    .line 277
    if-nez p1, :cond_0

    #@5
    .line 278
    new-instance v1, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v2, "entryName == null"

    #@a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1

    #@e
    .line 281
    :cond_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    #@10
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/zip/ZipEntry;

    #@16
    .line 282
    .local v0, "ze":Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_1

    #@18
    .line 283
    iget-object v1, p0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    #@1a
    new-instance v2, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, "/"

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    .end local v0    # "ze":Ljava/util/zip/ZipEntry;
    check-cast v0, Ljava/util/zip/ZipEntry;

    #@34
    .line 285
    .restart local v0    # "ze":Ljava/util/zip/ZipEntry;
    :cond_1
    return-object v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 13
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const v12, 0xffff

    #@4
    .line 300
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    #@7
    move-result-object v8

    #@8
    invoke-virtual {p0, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    #@b
    move-result-object p1

    #@c
    .line 301
    if-nez p1, :cond_0

    #@e
    .line 302
    return-object v9

    #@f
    .line 306
    :cond_0
    iget-object v6, p0, Ljava/util/zip/ZipFile;->raf:Ljava/io/RandomAccessFile;

    #@11
    .line 307
    .local v6, "localRaf":Ljava/io/RandomAccessFile;
    monitor-enter v6

    #@12
    .line 311
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile$RAFStream;

    #@14
    iget-wide v8, p1, Ljava/util/zip/ZipEntry;->localHeaderRelOffset:J

    #@16
    invoke-direct {v7, v6, v8, v9}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    #@19
    .line 312
    .local v7, "rafStream":Ljava/util/zip/ZipFile$RAFStream;
    new-instance v4, Ljava/io/DataInputStream;

    #@1b
    invoke-direct {v4, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@1e
    .line 314
    .local v4, "is":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    #@21
    move-result v8

    #@22
    invoke-static {v8}, Ljava/lang/Integer;->reverseBytes(I)I

    #@25
    move-result v5

    #@26
    .line 315
    .local v5, "localMagic":I
    int-to-long v8, v5

    #@27
    const-wide/32 v10, 0x4034b50

    #@2a
    cmp-long v8, v8, v10

    #@2c
    if-eqz v8, :cond_1

    #@2e
    .line 316
    const-string/jumbo v8, "Local File Header"

    #@31
    invoke-static {v8, v5}, Ljava/util/zip/ZipFile;->throwZipException(Ljava/lang/String;I)V

    #@34
    .line 319
    :cond_1
    const/4 v8, 0x2

    #@35
    invoke-virtual {v4, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    #@38
    .line 322
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    #@3b
    move-result v8

    #@3c
    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    #@3f
    move-result v8

    #@40
    and-int v3, v8, v12

    #@42
    .line 323
    .local v3, "gpbf":I
    and-int/lit8 v8, v3, 0x1

    #@44
    if-eqz v8, :cond_2

    #@46
    .line 324
    new-instance v8, Ljava/util/zip/ZipException;

    #@48
    new-instance v9, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v10, "Invalid General Purpose Bit Flag: "

    #@50
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v9

    #@54
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v9

    #@5c
    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@60
    .line 307
    .end local v3    # "gpbf":I
    .end local v4    # "is":Ljava/io/DataInputStream;
    .end local v5    # "localMagic":I
    .end local v7    # "rafStream":Ljava/util/zip/ZipFile$RAFStream;
    :catchall_0
    move-exception v8

    #@61
    monitor-exit v6

    #@62
    throw v8

    #@63
    .line 329
    .restart local v3    # "gpbf":I
    .restart local v4    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "localMagic":I
    .restart local v7    # "rafStream":Ljava/util/zip/ZipFile$RAFStream;
    :cond_2
    const/16 v8, 0x12

    #@65
    :try_start_1
    invoke-virtual {v4, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    #@68
    .line 330
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    #@6b
    move-result v8

    #@6c
    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    #@6f
    move-result v8

    #@70
    and-int v2, v8, v12

    #@72
    .line 331
    .local v2, "fileNameLength":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    #@75
    move-result v8

    #@76
    invoke-static {v8}, Ljava/lang/Short;->reverseBytes(S)S

    #@79
    move-result v8

    #@7a
    and-int v1, v8, v12

    #@7c
    .line 332
    .local v1, "extraFieldLength":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    #@7f
    .line 335
    add-int v8, v2, v1

    #@81
    int-to-long v8, v8

    #@82
    invoke-virtual {v7, v8, v9}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    #@85
    .line 337
    iget v8, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    #@87
    if-nez v8, :cond_3

    #@89
    .line 338
    invoke-static {v7}, Ljava/util/zip/ZipFile$RAFStream;->-get0(Ljava/util/zip/ZipFile$RAFStream;)J

    #@8c
    move-result-wide v8

    #@8d
    iget-wide v10, p1, Ljava/util/zip/ZipEntry;->size:J

    #@8f
    add-long/2addr v8, v10

    #@90
    invoke-static {v7, v8, v9}, Ljava/util/zip/ZipFile$RAFStream;->-set0(Ljava/util/zip/ZipFile$RAFStream;J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    monitor-exit v6

    #@94
    .line 339
    return-object v7

    #@95
    .line 341
    :cond_3
    :try_start_2
    invoke-static {v7}, Ljava/util/zip/ZipFile$RAFStream;->-get0(Ljava/util/zip/ZipFile$RAFStream;)J

    #@98
    move-result-wide v8

    #@99
    iget-wide v10, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    #@9b
    add-long/2addr v8, v10

    #@9c
    invoke-static {v7, v8, v9}, Ljava/util/zip/ZipFile$RAFStream;->-set0(Ljava/util/zip/ZipFile$RAFStream;J)J

    #@9f
    .line 342
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    #@a2
    move-result-wide v8

    #@a3
    const-wide/32 v10, 0xffff

    #@a6
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    #@a9
    move-result-wide v8

    #@aa
    long-to-int v8, v8

    #@ab
    const/16 v9, 0x400

    #@ad
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    #@b0
    move-result v0

    #@b1
    .line 343
    .local v0, "bufSize":I
    new-instance v8, Ljava/util/zip/ZipFile$ZipInflaterInputStream;

    #@b3
    new-instance v9, Ljava/util/zip/Inflater;

    #@b5
    const/4 v10, 0x1

    #@b6
    invoke-direct {v9, v10}, Ljava/util/zip/Inflater;-><init>(Z)V

    #@b9
    invoke-direct {v8, v7, v9, v0, p1}, Ljava/util/zip/ZipFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@bc
    monitor-exit v6

    #@bd
    return-object v8
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 354
    iget-object v0, p0, Ljava/util/zip/ZipFile;->filename:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 364
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    #@3
    .line 365
    iget-object v0, p0, Ljava/util/zip/ZipFile;->entries:Ljava/util/LinkedHashMap;

    #@5
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    #@8
    move-result v0

    #@9
    return v0
.end method
