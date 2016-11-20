.class public Ljava/util/zip/ZipOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "ZipOutputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipOutputStream$XEntry;
    }
.end annotation


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I


# instance fields
.field private closed:Z

.field private comment:[B

.field private crc:Ljava/util/zip/CRC32;

.field private current:Ljava/util/zip/ZipOutputStream$XEntry;

.field private finished:Z

.field private locoff:J

.field private method:I

.field private names:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private written:J

.field private xentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/util/zip/ZipOutputStream$XEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final zc:Ljava/util/zip/ZipCoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    #@0
    .prologue
    .line 105
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@2
    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    #@5
    .line 104
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 119
    new-instance v0, Ljava/util/zip/Deflater;

    #@5
    const/4 v1, -0x1

    #@6
    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    #@9
    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    #@c
    .line 57
    new-instance v0, Ljava/util/Vector;

    #@e
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@11
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    #@13
    .line 58
    new-instance v0, Ljava/util/HashSet;

    #@15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@18
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->names:Ljava/util/HashSet;

    #@1a
    .line 59
    new-instance v0, Ljava/util/zip/CRC32;

    #@1c
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    #@1f
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@21
    .line 60
    iput-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@23
    .line 61
    iput-wide v4, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    #@25
    .line 63
    const/16 v0, 0x8

    #@27
    iput v0, p0, Ljava/util/zip/ZipOutputStream;->method:I

    #@29
    .line 66
    const/4 v0, 0x0

    #@2a
    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    #@2c
    .line 120
    if-nez p2, :cond_0

    #@2e
    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    #@30
    const-string/jumbo v1, "charset is null"

    #@33
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@36
    throw v0

    #@37
    .line 122
    :cond_0
    invoke-static {p2}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    #@3a
    move-result-object v0

    #@3b
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    #@3d
    .line 123
    iput-boolean v2, p0, Ljava/util/zip/ZipOutputStream;->usesDefaultDeflater:Z

    #@3f
    .line 118
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
    .line 82
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 83
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Stream closed"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 81
    :cond_0
    return-void
.end method

.method private static version(Ljava/util/zip/ZipEntry;)I
    .locals 2
    .param p0, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    #@0
    .prologue
    .line 71
    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    #@2
    sparse-switch v0, :sswitch_data_0

    #@5
    .line 74
    new-instance v0, Ljava/util/zip/ZipException;

    #@7
    const-string/jumbo v1, "unsupported compression method"

    #@a
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 72
    :sswitch_0
    const/16 v0, 0x14

    #@10
    return v0

    #@11
    .line 73
    :sswitch_1
    const/16 v0, 0xa

    #@13
    return v0

    #@14
    .line 71
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private writeBytes([BII)V
    .locals 4
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
    .line 622
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    #@5
    .line 623
    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@7
    int-to-long v2, p3

    #@8
    add-long/2addr v0, v2

    #@9
    iput-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@b
    .line 621
    return-void
.end method

.method private writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .locals 22
    .param p1, "xentry"    # Ljava/util/zip/ZipOutputStream$XEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 448
    move-object/from16 v0, p1

    #@2
    iget-object v5, v0, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    #@4
    .line 449
    .local v5, "e":Ljava/util/zip/ZipEntry;
    iget v9, v5, Ljava/util/zip/ZipEntry;->flag:I

    #@6
    .line 450
    .local v9, "flag":I
    invoke-static {v5}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    #@9
    move-result v16

    #@a
    .line 452
    .local v16, "version":I
    iget-wide v6, v5, Ljava/util/zip/ZipEntry;->csize:J

    #@c
    .line 453
    .local v6, "csize":J
    iget-wide v14, v5, Ljava/util/zip/ZipEntry;->size:J

    #@e
    .line 454
    .local v14, "size":J
    move-object/from16 v0, p1

    #@10
    iget-wide v12, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    #@12
    .line 455
    .local v12, "offset":J
    const/4 v8, 0x0

    #@13
    .line 456
    .local v8, "e64len":I
    const/4 v10, 0x0

    #@14
    .line 457
    .local v10, "hasZip64":Z
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->csize:J

    #@16
    move-wide/from16 v18, v0

    #@18
    const-wide v20, 0xffffffffL

    #@1d
    cmp-long v17, v18, v20

    #@1f
    if-ltz v17, :cond_0

    #@21
    .line 458
    const-wide v6, 0xffffffffL

    #@26
    .line 459
    const/16 v8, 0x8

    #@28
    .line 460
    const/4 v10, 0x1

    #@29
    .line 462
    :cond_0
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->size:J

    #@2b
    move-wide/from16 v18, v0

    #@2d
    const-wide v20, 0xffffffffL

    #@32
    cmp-long v17, v18, v20

    #@34
    if-ltz v17, :cond_1

    #@36
    .line 463
    const-wide v14, 0xffffffffL

    #@3b
    .line 464
    add-int/lit8 v8, v8, 0x8

    #@3d
    .line 465
    const/4 v10, 0x1

    #@3e
    .line 467
    :cond_1
    move-object/from16 v0, p1

    #@40
    iget-wide v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    #@42
    move-wide/from16 v18, v0

    #@44
    const-wide v20, 0xffffffffL

    #@49
    cmp-long v17, v18, v20

    #@4b
    if-ltz v17, :cond_2

    #@4d
    .line 468
    const-wide v12, 0xffffffffL

    #@52
    .line 469
    add-int/lit8 v8, v8, 0x8

    #@54
    .line 470
    const/4 v10, 0x1

    #@55
    .line 472
    :cond_2
    const-wide/32 v18, 0x2014b50    # 1.6619997E-316

    #@58
    move-object/from16 v0, p0

    #@5a
    move-wide/from16 v1, v18

    #@5c
    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@5f
    .line 473
    if-eqz v10, :cond_8

    #@61
    .line 474
    const/16 v17, 0x2d

    #@63
    move-object/from16 v0, p0

    #@65
    move/from16 v1, v17

    #@67
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@6a
    .line 475
    const/16 v17, 0x2d

    #@6c
    move-object/from16 v0, p0

    #@6e
    move/from16 v1, v17

    #@70
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@73
    .line 480
    :goto_0
    move-object/from16 v0, p0

    #@75
    invoke-direct {v0, v9}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@78
    .line 481
    iget v0, v5, Ljava/util/zip/ZipEntry;->method:I

    #@7a
    move/from16 v17, v0

    #@7c
    move-object/from16 v0, p0

    #@7e
    move/from16 v1, v17

    #@80
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@83
    .line 482
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->time:J

    #@85
    move-wide/from16 v18, v0

    #@87
    move-object/from16 v0, p0

    #@89
    move-wide/from16 v1, v18

    #@8b
    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@8e
    .line 483
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->crc:J

    #@90
    move-wide/from16 v18, v0

    #@92
    move-object/from16 v0, p0

    #@94
    move-wide/from16 v1, v18

    #@96
    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@99
    .line 484
    move-object/from16 v0, p0

    #@9b
    invoke-direct {v0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@9e
    .line 485
    move-object/from16 v0, p0

    #@a0
    invoke-direct {v0, v14, v15}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@a3
    .line 486
    move-object/from16 v0, p0

    #@a5
    iget-object v0, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    #@a7
    move-object/from16 v17, v0

    #@a9
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@ab
    move-object/from16 v18, v0

    #@ad
    invoke-virtual/range {v17 .. v18}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    #@b0
    move-result-object v11

    #@b1
    .line 487
    .local v11, "nameBytes":[B
    array-length v0, v11

    #@b2
    move/from16 v17, v0

    #@b4
    move-object/from16 v0, p0

    #@b6
    move/from16 v1, v17

    #@b8
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@bb
    .line 488
    if-eqz v10, :cond_a

    #@bd
    .line 490
    add-int/lit8 v18, v8, 0x4

    #@bf
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    #@c1
    move-object/from16 v17, v0

    #@c3
    if-eqz v17, :cond_9

    #@c5
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    #@c7
    move-object/from16 v17, v0

    #@c9
    move-object/from16 v0, v17

    #@cb
    array-length v0, v0

    #@cc
    move/from16 v17, v0

    #@ce
    :goto_1
    add-int v17, v17, v18

    #@d0
    move-object/from16 v0, p0

    #@d2
    move/from16 v1, v17

    #@d4
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@d7
    .line 495
    :goto_2
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@d9
    move-object/from16 v17, v0

    #@db
    if-eqz v17, :cond_c

    #@dd
    .line 496
    move-object/from16 v0, p0

    #@df
    iget-object v0, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    #@e1
    move-object/from16 v17, v0

    #@e3
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    #@e5
    move-object/from16 v18, v0

    #@e7
    invoke-virtual/range {v17 .. v18}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    #@ea
    move-result-object v4

    #@eb
    .line 497
    .local v4, "commentBytes":[B
    array-length v0, v4

    #@ec
    move/from16 v17, v0

    #@ee
    const v18, 0xffff

    #@f1
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    #@f4
    move-result v17

    #@f5
    move-object/from16 v0, p0

    #@f7
    move/from16 v1, v17

    #@f9
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@fc
    .line 502
    .end local v4    # "commentBytes":[B
    :goto_3
    const/16 v17, 0x0

    #@fe
    move-object/from16 v0, p0

    #@100
    move/from16 v1, v17

    #@102
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@105
    .line 503
    const/16 v17, 0x0

    #@107
    move-object/from16 v0, p0

    #@109
    move/from16 v1, v17

    #@10b
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@10e
    .line 504
    const-wide/16 v18, 0x0

    #@110
    move-object/from16 v0, p0

    #@112
    move-wide/from16 v1, v18

    #@114
    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@117
    .line 505
    move-object/from16 v0, p0

    #@119
    invoke-direct {v0, v12, v13}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@11c
    .line 506
    array-length v0, v11

    #@11d
    move/from16 v17, v0

    #@11f
    const/16 v18, 0x0

    #@121
    move-object/from16 v0, p0

    #@123
    move/from16 v1, v18

    #@125
    move/from16 v2, v17

    #@127
    invoke-direct {v0, v11, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    #@12a
    .line 507
    if-eqz v10, :cond_5

    #@12c
    .line 508
    const/16 v17, 0x1

    #@12e
    move-object/from16 v0, p0

    #@130
    move/from16 v1, v17

    #@132
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@135
    .line 509
    move-object/from16 v0, p0

    #@137
    invoke-direct {v0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@13a
    .line 510
    const-wide v18, 0xffffffffL

    #@13f
    cmp-long v17, v14, v18

    #@141
    if-nez v17, :cond_3

    #@143
    .line 511
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->size:J

    #@145
    move-wide/from16 v18, v0

    #@147
    move-object/from16 v0, p0

    #@149
    move-wide/from16 v1, v18

    #@14b
    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@14e
    .line 512
    :cond_3
    const-wide v18, 0xffffffffL

    #@153
    cmp-long v17, v6, v18

    #@155
    if-nez v17, :cond_4

    #@157
    .line 513
    iget-wide v0, v5, Ljava/util/zip/ZipEntry;->csize:J

    #@159
    move-wide/from16 v18, v0

    #@15b
    move-object/from16 v0, p0

    #@15d
    move-wide/from16 v1, v18

    #@15f
    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@162
    .line 514
    :cond_4
    const-wide v18, 0xffffffffL

    #@167
    cmp-long v17, v12, v18

    #@169
    if-nez v17, :cond_5

    #@16b
    .line 515
    move-object/from16 v0, p1

    #@16d
    iget-wide v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    #@16f
    move-wide/from16 v18, v0

    #@171
    move-object/from16 v0, p0

    #@173
    move-wide/from16 v1, v18

    #@175
    invoke-direct {v0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@178
    .line 517
    :cond_5
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    #@17a
    move-object/from16 v17, v0

    #@17c
    if-eqz v17, :cond_6

    #@17e
    .line 518
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    #@180
    move-object/from16 v17, v0

    #@182
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    #@184
    move-object/from16 v18, v0

    #@186
    move-object/from16 v0, v18

    #@188
    array-length v0, v0

    #@189
    move/from16 v18, v0

    #@18b
    const/16 v19, 0x0

    #@18d
    move-object/from16 v0, p0

    #@18f
    move-object/from16 v1, v17

    #@191
    move/from16 v2, v19

    #@193
    move/from16 v3, v18

    #@195
    invoke-direct {v0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    #@198
    .line 520
    :cond_6
    if-eqz v4, :cond_7

    #@19a
    .line 521
    array-length v0, v4

    #@19b
    move/from16 v17, v0

    #@19d
    const v18, 0xffff

    #@1a0
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    #@1a3
    move-result v17

    #@1a4
    const/16 v18, 0x0

    #@1a6
    move-object/from16 v0, p0

    #@1a8
    move/from16 v1, v18

    #@1aa
    move/from16 v2, v17

    #@1ac
    invoke-direct {v0, v4, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    #@1af
    .line 447
    :cond_7
    return-void

    #@1b0
    .line 477
    .end local v11    # "nameBytes":[B
    :cond_8
    move-object/from16 v0, p0

    #@1b2
    move/from16 v1, v16

    #@1b4
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@1b7
    .line 478
    move-object/from16 v0, p0

    #@1b9
    move/from16 v1, v16

    #@1bb
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@1be
    goto/16 :goto_0

    #@1c0
    .line 490
    .restart local v11    # "nameBytes":[B
    :cond_9
    const/16 v17, 0x0

    #@1c2
    goto/16 :goto_1

    #@1c4
    .line 492
    :cond_a
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    #@1c6
    move-object/from16 v17, v0

    #@1c8
    if-eqz v17, :cond_b

    #@1ca
    iget-object v0, v5, Ljava/util/zip/ZipEntry;->extra:[B

    #@1cc
    move-object/from16 v17, v0

    #@1ce
    move-object/from16 v0, v17

    #@1d0
    array-length v0, v0

    #@1d1
    move/from16 v17, v0

    #@1d3
    :goto_4
    move-object/from16 v0, p0

    #@1d5
    move/from16 v1, v17

    #@1d7
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@1da
    goto/16 :goto_2

    #@1dc
    :cond_b
    const/16 v17, 0x0

    #@1de
    goto :goto_4

    #@1df
    .line 499
    :cond_c
    const/4 v4, 0x0

    #@1e0
    .line 500
    .local v4, "commentBytes":[B
    const/16 v17, 0x0

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    move/from16 v1, v17

    #@1e6
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@1e9
    goto/16 :goto_3
.end method

.method private writeEND(JJ)V
    .locals 11
    .param p1, "off"    # J
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 529
    const/4 v1, 0x0

    #@1
    .line 530
    .local v1, "hasZip64":Z
    move-wide v4, p3

    #@2
    .line 531
    .local v4, "xlen":J
    move-wide v6, p1

    #@3
    .line 532
    .local v6, "xoff":J
    const-wide v8, 0xffffffffL

    #@8
    cmp-long v8, p3, v8

    #@a
    if-ltz v8, :cond_0

    #@c
    .line 533
    const-wide v4, 0xffffffffL

    #@11
    .line 534
    const/4 v1, 0x1

    #@12
    .line 536
    :cond_0
    const-wide v8, 0xffffffffL

    #@17
    cmp-long v8, p1, v8

    #@19
    if-ltz v8, :cond_1

    #@1b
    .line 537
    const-wide v6, 0xffffffffL

    #@20
    .line 538
    const/4 v1, 0x1

    #@21
    .line 540
    :cond_1
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    #@23
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    #@26
    move-result v0

    #@27
    .line 541
    .local v0, "count":I
    const v8, 0xffff

    #@2a
    if-lt v0, v8, :cond_2

    #@2c
    .line 542
    const v0, 0xffff

    #@2f
    .line 543
    const/4 v1, 0x1

    #@30
    .line 545
    :cond_2
    if-eqz v1, :cond_3

    #@32
    .line 546
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@34
    .line 548
    .local v2, "off64":J
    const-wide/32 v8, 0x6064b50

    #@37
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@3a
    .line 549
    const-wide/16 v8, 0x2c

    #@3c
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@3f
    .line 550
    const/16 v8, 0x2d

    #@41
    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@44
    .line 551
    const/16 v8, 0x2d

    #@46
    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@49
    .line 552
    const-wide/16 v8, 0x0

    #@4b
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@4e
    .line 553
    const-wide/16 v8, 0x0

    #@50
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@53
    .line 554
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    #@55
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    #@58
    move-result v8

    #@59
    int-to-long v8, v8

    #@5a
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@5d
    .line 555
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    #@5f
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    #@62
    move-result v8

    #@63
    int-to-long v8, v8

    #@64
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@67
    .line 556
    invoke-direct {p0, p3, p4}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@6a
    .line 557
    invoke-direct {p0, p1, p2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@6d
    .line 560
    const-wide/32 v8, 0x7064b50

    #@70
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@73
    .line 561
    const-wide/16 v8, 0x0

    #@75
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@78
    .line 562
    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@7b
    .line 563
    const-wide/16 v8, 0x1

    #@7d
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@80
    .line 565
    .end local v2    # "off64":J
    :cond_3
    const-wide/32 v8, 0x6054b50

    #@83
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@86
    .line 566
    const/4 v8, 0x0

    #@87
    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@8a
    .line 567
    const/4 v8, 0x0

    #@8b
    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@8e
    .line 568
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@91
    .line 569
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@94
    .line 570
    invoke-direct {p0, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@97
    .line 571
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@9a
    .line 572
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    #@9c
    if-eqz v8, :cond_4

    #@9e
    .line 573
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    #@a0
    array-length v8, v8

    #@a1
    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@a4
    .line 574
    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    #@a6
    iget-object v9, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    #@a8
    array-length v9, v9

    #@a9
    const/4 v10, 0x0

    #@aa
    invoke-direct {p0, v8, v10, v9}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    #@ad
    .line 528
    :goto_0
    return-void

    #@ae
    .line 576
    :cond_4
    const/4 v8, 0x0

    #@af
    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@b2
    goto :goto_0
.end method

.method private writeEXT(Ljava/util/zip/ZipEntry;)V
    .locals 4
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide v2, 0xffffffffL

    #@5
    .line 432
    const-wide/32 v0, 0x8074b50

    #@8
    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@b
    .line 433
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    #@d
    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@10
    .line 434
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@12
    cmp-long v0, v0, v2

    #@14
    if-gez v0, :cond_0

    #@16
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    #@18
    cmp-long v0, v0, v2

    #@1a
    if-ltz v0, :cond_1

    #@1c
    .line 435
    :cond_0
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@1e
    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@21
    .line 436
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    #@23
    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@26
    .line 431
    :goto_0
    return-void

    #@27
    .line 438
    :cond_1
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@29
    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@2c
    .line 439
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    #@2e
    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@31
    goto :goto_0
.end method

.method private writeInt(J)V
    .locals 7
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0xff

    #@2
    .line 594
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@4
    .line 595
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    #@5
    ushr-long v2, p1, v1

    #@7
    and-long/2addr v2, v4

    #@8
    long-to-int v1, v2

    #@9
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@c
    .line 596
    const/16 v1, 0x8

    #@e
    ushr-long v2, p1, v1

    #@10
    and-long/2addr v2, v4

    #@11
    long-to-int v1, v2

    #@12
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@15
    .line 597
    const/16 v1, 0x10

    #@17
    ushr-long v2, p1, v1

    #@19
    and-long/2addr v2, v4

    #@1a
    long-to-int v1, v2

    #@1b
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@1e
    .line 598
    const/16 v1, 0x18

    #@20
    ushr-long v2, p1, v1

    #@22
    and-long/2addr v2, v4

    #@23
    long-to-int v1, v2

    #@24
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@27
    .line 599
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@29
    const-wide/16 v4, 0x4

    #@2b
    add-long/2addr v2, v4

    #@2c
    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@2e
    .line 593
    return-void
.end method

.method private writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .locals 13
    .param p1, "xentry"    # Ljava/util/zip/ZipOutputStream$XEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const-wide/16 v10, 0x0

    #@3
    const-wide v8, 0xffffffffL

    #@8
    .line 374
    iget-object v0, p1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    #@a
    .line 375
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget v2, v0, Ljava/util/zip/ZipEntry;->flag:I

    #@c
    .line 376
    .local v2, "flag":I
    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    #@e
    if-eqz v5, :cond_2

    #@10
    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    #@12
    array-length v1, v5

    #@13
    .line 377
    .local v1, "elen":I
    :goto_0
    const/4 v3, 0x0

    #@14
    .line 379
    .local v3, "hasZip64":Z
    const-wide/32 v6, 0x4034b50

    #@17
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@1a
    .line 381
    and-int/lit8 v5, v2, 0x8

    #@1c
    const/16 v6, 0x8

    #@1e
    if-ne v5, v6, :cond_3

    #@20
    .line 382
    invoke-static {v0}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    #@23
    move-result v5

    #@24
    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@27
    .line 383
    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@2a
    .line 384
    iget v5, v0, Ljava/util/zip/ZipEntry;->method:I

    #@2c
    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@2f
    .line 385
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->time:J

    #@31
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@34
    .line 389
    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@37
    .line 390
    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@3a
    .line 391
    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@3d
    .line 412
    :goto_1
    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    #@3f
    iget-object v6, v0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@41
    invoke-virtual {v5, v6}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    #@44
    move-result-object v4

    #@45
    .line 413
    .local v4, "nameBytes":[B
    array-length v5, v4

    #@46
    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@49
    .line 414
    invoke-direct {p0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@4c
    .line 415
    array-length v5, v4

    #@4d
    invoke-direct {p0, v4, v12, v5}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    #@50
    .line 416
    if-eqz v3, :cond_0

    #@52
    .line 417
    const/4 v5, 0x1

    #@53
    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@56
    .line 418
    const/16 v5, 0x10

    #@58
    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@5b
    .line 419
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->size:J

    #@5d
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@60
    .line 420
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->csize:J

    #@62
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    #@65
    .line 422
    :cond_0
    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    #@67
    if-eqz v5, :cond_1

    #@69
    .line 423
    iget-object v5, v0, Ljava/util/zip/ZipEntry;->extra:[B

    #@6b
    iget-object v6, v0, Ljava/util/zip/ZipEntry;->extra:[B

    #@6d
    array-length v6, v6

    #@6e
    invoke-direct {p0, v5, v12, v6}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    #@71
    .line 425
    :cond_1
    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@73
    iput-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    #@75
    .line 373
    return-void

    #@76
    .line 376
    .end local v1    # "elen":I
    .end local v3    # "hasZip64":Z
    .end local v4    # "nameBytes":[B
    :cond_2
    const/4 v1, 0x0

    #@77
    .restart local v1    # "elen":I
    goto :goto_0

    #@78
    .line 393
    .restart local v3    # "hasZip64":Z
    :cond_3
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->csize:J

    #@7a
    cmp-long v5, v6, v8

    #@7c
    if-gez v5, :cond_4

    #@7e
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->size:J

    #@80
    cmp-long v5, v6, v8

    #@82
    if-ltz v5, :cond_5

    #@84
    .line 394
    :cond_4
    const/4 v3, 0x1

    #@85
    .line 395
    const/16 v5, 0x2d

    #@87
    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@8a
    .line 399
    :goto_2
    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@8d
    .line 400
    iget v5, v0, Ljava/util/zip/ZipEntry;->method:I

    #@8f
    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@92
    .line 401
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->time:J

    #@94
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@97
    .line 402
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->crc:J

    #@99
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@9c
    .line 403
    if-eqz v3, :cond_6

    #@9e
    .line 404
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@a1
    .line 405
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@a4
    .line 406
    add-int/lit8 v1, v1, 0x14

    #@a6
    goto :goto_1

    #@a7
    .line 397
    :cond_5
    invoke-static {v0}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    #@aa
    move-result v5

    #@ab
    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    #@ae
    goto :goto_2

    #@af
    .line 408
    :cond_6
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->csize:J

    #@b1
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@b4
    .line 409
    iget-wide v6, v0, Ljava/util/zip/ZipEntry;->size:J

    #@b6
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    #@b9
    goto :goto_1
.end method

.method private writeLong(J)V
    .locals 7
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, 0xff

    #@2
    .line 606
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@4
    .line 607
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    #@5
    ushr-long v2, p1, v1

    #@7
    and-long/2addr v2, v4

    #@8
    long-to-int v1, v2

    #@9
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@c
    .line 608
    const/16 v1, 0x8

    #@e
    ushr-long v2, p1, v1

    #@10
    and-long/2addr v2, v4

    #@11
    long-to-int v1, v2

    #@12
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@15
    .line 609
    const/16 v1, 0x10

    #@17
    ushr-long v2, p1, v1

    #@19
    and-long/2addr v2, v4

    #@1a
    long-to-int v1, v2

    #@1b
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@1e
    .line 610
    const/16 v1, 0x18

    #@20
    ushr-long v2, p1, v1

    #@22
    and-long/2addr v2, v4

    #@23
    long-to-int v1, v2

    #@24
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@27
    .line 611
    const/16 v1, 0x20

    #@29
    ushr-long v2, p1, v1

    #@2b
    and-long/2addr v2, v4

    #@2c
    long-to-int v1, v2

    #@2d
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@30
    .line 612
    const/16 v1, 0x28

    #@32
    ushr-long v2, p1, v1

    #@34
    and-long/2addr v2, v4

    #@35
    long-to-int v1, v2

    #@36
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@39
    .line 613
    const/16 v1, 0x30

    #@3b
    ushr-long v2, p1, v1

    #@3d
    and-long/2addr v2, v4

    #@3e
    long-to-int v1, v2

    #@3f
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@42
    .line 614
    const/16 v1, 0x38

    #@44
    ushr-long v2, p1, v1

    #@46
    and-long/2addr v2, v4

    #@47
    long-to-int v1, v2

    #@48
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@4b
    .line 615
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@4d
    const-wide/16 v4, 0x8

    #@4f
    add-long/2addr v2, v4

    #@50
    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@52
    .line 605
    return-void
.end method

.method private writeShort(I)V
    .locals 6
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 584
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@2
    .line 585
    .local v0, "out":Ljava/io/OutputStream;
    ushr-int/lit8 v1, p1, 0x0

    #@4
    and-int/lit16 v1, v1, 0xff

    #@6
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@9
    .line 586
    ushr-int/lit8 v1, p1, 0x8

    #@b
    and-int/lit16 v1, v1, 0xff

    #@d
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    #@10
    .line 587
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@12
    const-wide/16 v4, 0x2

    #@14
    add-long/2addr v2, v4

    #@15
    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@17
    .line 583
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
    .line 364
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 365
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    #@7
    .line 366
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    #@a
    .line 363
    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 232
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    #@4
    .line 233
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    #@6
    if-eqz v1, :cond_6

    #@8
    .line 234
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    #@a
    iget-object v0, v1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    #@c
    .line 235
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I

    #@e
    sparse-switch v1, :sswitch_data_0

    #@11
    .line 283
    new-instance v1, Ljava/util/zip/ZipException;

    #@13
    const-string/jumbo v2, "invalid compression method"

    #@16
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 237
    :sswitch_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@1c
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    #@1f
    .line 238
    :goto_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@21
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_0

    #@27
    .line 239
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->deflate()V

    #@2a
    goto :goto_0

    #@2b
    .line 241
    :cond_0
    iget v1, v0, Ljava/util/zip/ZipEntry;->flag:I

    #@2d
    and-int/lit8 v1, v1, 0x8

    #@2f
    if-nez v1, :cond_3

    #@31
    .line 243
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    #@33
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@35
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    #@38
    move-result-wide v4

    #@39
    cmp-long v1, v2, v4

    #@3b
    if-eqz v1, :cond_1

    #@3d
    .line 244
    new-instance v1, Ljava/util/zip/ZipException;

    #@3f
    .line 245
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v3, "invalid entry size (expected "

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    #@4d
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@50
    move-result-object v2

    #@51
    .line 246
    const-string/jumbo v3, " but got "

    #@54
    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    .line 246
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@5a
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesRead()J

    #@5d
    move-result-wide v4

    #@5e
    .line 245
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    .line 246
    const-string/jumbo v3, " bytes)"

    #@65
    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v2

    #@6d
    .line 244
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@70
    throw v1

    #@71
    .line 248
    :cond_1
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->csize:J

    #@73
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@75
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    #@78
    move-result-wide v4

    #@79
    cmp-long v1, v2, v4

    #@7b
    if-eqz v1, :cond_2

    #@7d
    .line 249
    new-instance v1, Ljava/util/zip/ZipException;

    #@7f
    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v3, "invalid entry compressed size (expected "

    #@87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    .line 251
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->csize:J

    #@8d
    .line 250
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@90
    move-result-object v2

    #@91
    .line 251
    const-string/jumbo v3, " but got "

    #@94
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v2

    #@98
    .line 251
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@9a
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesWritten()J

    #@9d
    move-result-wide v4

    #@9e
    .line 250
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v2

    #@a2
    .line 251
    const-string/jumbo v3, " bytes)"

    #@a5
    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    .line 249
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@b0
    throw v1

    #@b1
    .line 253
    :cond_2
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    #@b3
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@b5
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    #@b8
    move-result-wide v4

    #@b9
    cmp-long v1, v2, v4

    #@bb
    if-eqz v1, :cond_4

    #@bd
    .line 254
    new-instance v1, Ljava/util/zip/ZipException;

    #@bf
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v3, "invalid entry CRC-32 (expected 0x"

    #@c7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v2

    #@cb
    .line 256
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    #@cd
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@d0
    move-result-object v3

    #@d1
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d4
    move-result-object v2

    #@d5
    .line 256
    const-string/jumbo v3, " but got 0x"

    #@d8
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v2

    #@dc
    .line 257
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@de
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    #@e1
    move-result-wide v4

    #@e2
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@e5
    move-result-object v3

    #@e6
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v2

    #@ea
    .line 257
    const-string/jumbo v3, ")"

    #@ed
    .line 255
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v2

    #@f1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v2

    #@f5
    .line 254
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@f8
    throw v1

    #@f9
    .line 260
    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@fb
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    #@fe
    move-result-wide v2

    #@ff
    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    #@101
    .line 261
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@103
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    #@106
    move-result-wide v2

    #@107
    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->csize:J

    #@109
    .line 262
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@10b
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    #@10e
    move-result-wide v2

    #@10f
    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    #@111
    .line 263
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeEXT(Ljava/util/zip/ZipEntry;)V

    #@114
    .line 265
    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@116
    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    #@119
    .line 266
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@11b
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->csize:J

    #@11d
    add-long/2addr v2, v4

    #@11e
    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@120
    .line 285
    :cond_5
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@122
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    #@125
    .line 286
    iput-object v8, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    #@127
    .line 231
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    :cond_6
    return-void

    #@128
    .line 270
    .restart local v0    # "e":Ljava/util/zip/ZipEntry;
    :sswitch_1
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    #@12a
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@12c
    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    #@12e
    sub-long/2addr v4, v6

    #@12f
    cmp-long v1, v2, v4

    #@131
    if-eqz v1, :cond_7

    #@133
    .line 271
    new-instance v1, Ljava/util/zip/ZipException;

    #@135
    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    #@137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    const-string/jumbo v3, "invalid entry size (expected "

    #@13d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v2

    #@141
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    #@143
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@146
    move-result-object v2

    #@147
    .line 273
    const-string/jumbo v3, " but got "

    #@14a
    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14d
    move-result-object v2

    #@14e
    .line 273
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@150
    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    #@152
    sub-long/2addr v4, v6

    #@153
    .line 272
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@156
    move-result-object v2

    #@157
    .line 273
    const-string/jumbo v3, " bytes)"

    #@15a
    .line 272
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v2

    #@15e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object v2

    #@162
    .line 271
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@165
    throw v1

    #@166
    .line 275
    :cond_7
    iget-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    #@168
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@16a
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    #@16d
    move-result-wide v4

    #@16e
    cmp-long v1, v2, v4

    #@170
    if-eqz v1, :cond_5

    #@172
    .line 276
    new-instance v1, Ljava/util/zip/ZipException;

    #@174
    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    #@176
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@179
    const-string/jumbo v3, "invalid entry crc-32 (expected 0x"

    #@17c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v2

    #@180
    .line 278
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    #@182
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@185
    move-result-object v3

    #@186
    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v2

    #@18a
    .line 278
    const-string/jumbo v3, " but got 0x"

    #@18d
    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v2

    #@191
    .line 279
    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@193
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    #@196
    move-result-wide v4

    #@197
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    #@19a
    move-result-object v3

    #@19b
    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19e
    move-result-object v2

    #@19f
    .line 279
    const-string/jumbo v3, ")"

    #@1a2
    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a5
    move-result-object v2

    #@1a6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a9
    move-result-object v2

    #@1aa
    .line 276
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@1ad
    throw v1

    #@1ae
    .line 235
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public finish()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 339
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    #@3
    .line 340
    iget-boolean v4, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    #@5
    if-eqz v4, :cond_0

    #@7
    .line 341
    return-void

    #@8
    .line 343
    :cond_0
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    #@a
    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_1

    #@10
    .line 344
    new-instance v4, Ljava/util/zip/ZipException;

    #@12
    const-string/jumbo v5, "No entries"

    #@15
    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@18
    throw v4

    #@19
    .line 346
    :cond_1
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    #@1b
    if-eqz v4, :cond_2

    #@1d
    .line 347
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    #@20
    .line 351
    :cond_2
    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@22
    .line 352
    .local v0, "off":J
    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    #@24
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v3

    #@28
    .local v3, "xentry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_3

    #@2e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Ljava/util/zip/ZipOutputStream$XEntry;

    #@34
    .line 353
    .local v2, "xentry":Ljava/util/zip/ZipOutputStream$XEntry;
    invoke-direct {p0, v2}, Ljava/util/zip/ZipOutputStream;->writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V

    #@37
    goto :goto_0

    #@38
    .line 354
    .end local v2    # "xentry":Ljava/util/zip/ZipOutputStream$XEntry;
    :cond_3
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@3a
    sub-long/2addr v4, v0

    #@3b
    invoke-direct {p0, v0, v1, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeEND(JJ)V

    #@3e
    .line 355
    const/4 v4, 0x1

    #@3f
    iput-boolean v4, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    #@41
    .line 338
    return-void
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .locals 6
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    .line 176
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    #@5
    .line 177
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 178
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    #@c
    .line 180
    :cond_0
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->time:J

    #@e
    cmp-long v0, v0, v4

    #@10
    if-nez v0, :cond_1

    #@12
    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@15
    move-result-wide v0

    #@16
    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    #@19
    .line 183
    :cond_1
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    #@1b
    const/4 v1, -0x1

    #@1c
    if-ne v0, v1, :cond_2

    #@1e
    .line 184
    iget v0, p0, Ljava/util/zip/ZipOutputStream;->method:I

    #@20
    iput v0, p1, Ljava/util/zip/ZipEntry;->method:I

    #@22
    .line 187
    :cond_2
    const/4 v0, 0x0

    #@23
    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    #@25
    .line 188
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    #@27
    sparse-switch v0, :sswitch_data_0

    #@2a
    .line 213
    new-instance v0, Ljava/util/zip/ZipException;

    #@2c
    const-string/jumbo v1, "unsupported compression method"

    #@2f
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@32
    throw v0

    #@33
    .line 192
    :sswitch_0
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    #@35
    cmp-long v0, v0, v4

    #@37
    if-eqz v0, :cond_3

    #@39
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@3b
    cmp-long v0, v0, v4

    #@3d
    if-nez v0, :cond_5

    #@3f
    .line 193
    :cond_3
    :goto_0
    const/16 v0, 0x8

    #@41
    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    #@43
    .line 215
    :cond_4
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->names:Ljava/util/HashSet;

    #@45
    iget-object v1, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@47
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-nez v0, :cond_a

    #@4d
    .line 216
    new-instance v0, Ljava/util/zip/ZipException;

    #@4f
    new-instance v1, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v2, "duplicate entry: "

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v1

    #@65
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@68
    throw v0

    #@69
    .line 192
    :cond_5
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    #@6b
    cmp-long v0, v0, v4

    #@6d
    if-nez v0, :cond_4

    #@6f
    goto :goto_0

    #@70
    .line 199
    :sswitch_1
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    #@72
    cmp-long v0, v0, v4

    #@74
    if-nez v0, :cond_8

    #@76
    .line 200
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@78
    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    #@7a
    .line 207
    :cond_6
    :goto_1
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    #@7c
    cmp-long v0, v0, v4

    #@7e
    if-eqz v0, :cond_7

    #@80
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    #@82
    cmp-long v0, v0, v4

    #@84
    if-nez v0, :cond_4

    #@86
    .line 208
    :cond_7
    new-instance v0, Ljava/util/zip/ZipException;

    #@88
    .line 209
    const-string/jumbo v1, "STORED entry missing size, compressed size, or crc-32"

    #@8b
    .line 208
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v0

    #@8f
    .line 201
    :cond_8
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@91
    cmp-long v0, v0, v4

    #@93
    if-nez v0, :cond_9

    #@95
    .line 202
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    #@97
    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@99
    goto :goto_1

    #@9a
    .line 203
    :cond_9
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    #@9c
    iget-wide v2, p1, Ljava/util/zip/ZipEntry;->csize:J

    #@9e
    cmp-long v0, v0, v2

    #@a0
    if-eqz v0, :cond_6

    #@a2
    .line 204
    new-instance v0, Ljava/util/zip/ZipException;

    #@a4
    .line 205
    const-string/jumbo v1, "STORED entry where compressed != uncompressed size"

    #@a7
    .line 204
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v0

    #@ab
    .line 218
    :cond_a
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    #@ad
    invoke-virtual {v0}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    #@b0
    move-result v0

    #@b1
    if-eqz v0, :cond_b

    #@b3
    .line 219
    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    #@b5
    or-int/lit16 v0, v0, 0x800

    #@b7
    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    #@b9
    .line 220
    :cond_b
    new-instance v0, Ljava/util/zip/ZipOutputStream$XEntry;

    #@bb
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@bd
    invoke-direct {v0, p1, v2, v3}, Ljava/util/zip/ZipOutputStream$XEntry;-><init>(Ljava/util/zip/ZipEntry;J)V

    #@c0
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    #@c2
    .line 221
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    #@c4
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    #@c6
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    #@c9
    .line 222
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    #@cb
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V

    #@ce
    .line 175
    return-void

    #@cf
    .line 188
    nop

    #@d0
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    if-eqz p1, :cond_0

    #@2
    .line 134
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    #@a
    .line 135
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    #@c
    array-length v0, v0

    #@d
    const v1, 0xffff

    #@10
    if-le v0, v1, :cond_0

    #@12
    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v1, "ZIP file comment too long."

    #@17
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v0

    #@1b
    .line 132
    :cond_0
    return-void
.end method

.method public setLevel(I)V
    .locals 1
    .param p1, "level"    # I

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    #@5
    .line 161
    return-void
.end method

.method public setMethod(I)V
    .locals 2
    .param p1, "method"    # I

    #@0
    .prologue
    .line 149
    const/16 v0, 0x8

    #@2
    if-eq p1, v0, :cond_0

    #@4
    if-eqz p1, :cond_0

    #@6
    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "invalid compression method"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 152
    :cond_0
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->method:I

    #@11
    .line 148
    return-void
.end method

.method public declared-synchronized write([BII)V
    .locals 6
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
    monitor-enter p0

    #@1
    .line 302
    :try_start_0
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    #@4
    .line 303
    if-ltz p2, :cond_0

    #@6
    if-gez p3, :cond_1

    #@8
    .line 304
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v1

    #@f
    monitor-exit p0

    #@10
    throw v1

    #@11
    .line 303
    :cond_1
    :try_start_1
    array-length v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@12
    sub-int/2addr v1, p3

    #@13
    if-gt p2, v1, :cond_0

    #@15
    .line 305
    if-nez p3, :cond_2

    #@17
    monitor-exit p0

    #@18
    .line 306
    return-void

    #@19
    .line 309
    :cond_2
    :try_start_2
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    #@1b
    if-nez v1, :cond_3

    #@1d
    .line 310
    new-instance v1, Ljava/util/zip/ZipException;

    #@1f
    const-string/jumbo v2, "no current ZIP entry"

    #@22
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 312
    :cond_3
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    #@28
    iget-object v0, v1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    #@2a
    .line 313
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I

    #@2c
    sparse-switch v1, :sswitch_data_0

    #@2f
    .line 326
    new-instance v1, Ljava/util/zip/ZipException;

    #@31
    const-string/jumbo v2, "invalid compression method"

    #@34
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 315
    :sswitch_0
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    #@3b
    .line 328
    :goto_0
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    #@3d
    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    monitor-exit p0

    #@41
    .line 300
    return-void

    #@42
    .line 318
    :sswitch_1
    :try_start_3
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@44
    int-to-long v4, p3

    #@45
    add-long/2addr v2, v4

    #@46
    iput-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@48
    .line 319
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    #@4a
    iget-wide v4, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    #@4c
    sub-long/2addr v2, v4

    #@4d
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->size:J

    #@4f
    cmp-long v1, v2, v4

    #@51
    if-lez v1, :cond_4

    #@53
    .line 320
    new-instance v1, Ljava/util/zip/ZipException;

    #@55
    .line 321
    const-string/jumbo v2, "attempt to write past end of STORED entry"

    #@58
    .line 320
    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    #@5b
    throw v1

    #@5c
    .line 323
    :cond_4
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    #@5e
    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@61
    goto :goto_0

    #@62
    .line 313
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
