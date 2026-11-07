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
.field public static final whitelist test-api DEFLATED:I = 0x8

.field public static final whitelist test-api STORED:I = 0x0

.field private static final greylist-max-o inhibitZip64:Z = false


# instance fields
.field private greylist-max-o closed:Z

.field private greylist-max-o comment:[B

.field private greylist-max-o crc:Ljava/util/zip/CRC32;

.field private greylist-max-o current:Ljava/util/zip/ZipOutputStream$XEntry;

.field private greylist-max-o finished:Z

.field private greylist-max-o locoff:J

.field private greylist-max-r method:I

.field private greylist-max-r names:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist written:J

.field private greylist-max-o xentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/util/zip/ZipOutputStream$XEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o zc:Ljava/util/zip/ZipCoder;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 121
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 122
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 135
    const/4 v0, 0x1

    if-eqz p1, :cond_a

    new-instance v1, Ljava/util/zip/Deflater;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Ljava/util/zip/Deflater;-><init>(IZ)V

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-direct {p0, p1, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 72
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    .line 73
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->names:Ljava/util/HashSet;

    .line 74
    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 75
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 76
    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    .line 78
    const/16 v1, 0x8

    iput v1, p0, Ljava/util/zip/ZipOutputStream;->method:I

    .line 81
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    .line 136
    if-eqz p2, :cond_3b

    .line 138
    invoke-static {p2}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v1

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    .line 139
    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->usesDefaultDeflater:Z

    .line 140
    return-void

    .line 137
    :cond_3b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset is null"

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

    .line 97
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    if-nez v0, :cond_5

    .line 100
    return-void

    .line 98
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getExtraLen([B)I
    .registers 8
    .param p1, "extra"    # [B

    .line 735
    if-nez p1, :cond_4

    .line 736
    const/4 v0, 0x0

    return v0

    .line 737
    :cond_4
    const/4 v0, 0x0

    .line 738
    .local v0, "skipped":I
    array-length v1, p1

    .line 739
    .local v1, "len":I
    const/4 v2, 0x0

    .line 740
    .local v2, "off":I
    :goto_7
    add-int/lit8 v3, v2, 0x4

    if-gt v3, v1, :cond_2b

    .line 741
    invoke-static {p1, v2}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v3

    .line 742
    .local v3, "tag":I
    add-int/lit8 v4, v2, 0x2

    invoke-static {p1, v4}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v4

    .line 743
    .local v4, "sz":I
    if-ltz v4, :cond_2b

    add-int/lit8 v5, v2, 0x4

    add-int/2addr v5, v4

    if-le v5, v1, :cond_1d

    .line 744
    goto :goto_2b

    .line 746
    :cond_1d
    const/16 v5, 0x5455

    if-eq v3, v5, :cond_24

    const/4 v5, 0x1

    if-ne v3, v5, :cond_27

    .line 747
    :cond_24
    add-int/lit8 v5, v4, 0x4

    add-int/2addr v0, v5

    .line 749
    :cond_27
    add-int/lit8 v5, v4, 0x4

    add-int/2addr v2, v5

    .line 750
    .end local v3    # "tag":I
    .end local v4    # "sz":I
    goto :goto_7

    .line 751
    :cond_2b
    :goto_2b
    sub-int v3, v1, v0

    return v3
.end method

.method private static greylist-max-o version(Ljava/util/zip/ZipEntry;)I
    .registers 3
    .param p0, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .line 86
    iget v0, p0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v0, :sswitch_data_14

    .line 89
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "unsupported compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :sswitch_d
    const/16 v0, 0x14

    goto :goto_12

    .line 88
    :sswitch_10
    const/16 v0, 0xa

    .line 86
    :goto_12
    return v0

    nop

    :sswitch_data_14
    .sparse-switch
        0x0 -> :sswitch_10
        0x8 -> :sswitch_d
    .end sparse-switch
.end method

.method private blacklist versionMadeBy(Ljava/util/zip/ZipEntry;I)I
    .registers 4
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .param p2, "version"    # I

    .line 530
    iget v0, p1, Ljava/util/zip/ZipEntry;->extraAttributes:I

    if-gez v0, :cond_6

    move v0, p2

    goto :goto_a

    .line 531
    :cond_6
    and-int/lit16 v0, p2, 0xff

    or-int/lit16 v0, v0, 0x300

    .line 530
    :goto_a
    return v0
.end method

.method private greylist-max-o writeByte(I)V
    .registers 7
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 787
    .local v0, "out":Ljava/io/OutputStream;
    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 788
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 789
    return-void
.end method

.method private greylist-max-o writeBytes([BII)V
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 833
    iget-object v0, p0, Ljava/util/zip/DeflaterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 834
    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 835
    return-void
.end method

.method private greylist-max-o writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .registers 33
    .param p1, "xentry"    # Ljava/util/zip/ZipOutputStream$XEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 540
    .local v2, "e":Ljava/util/zip/ZipEntry;
    iget v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    .line 541
    .local v3, "flag":I
    invoke-static {v2}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v4

    .line 542
    .local v4, "version":I
    iget-wide v5, v2, Ljava/util/zip/ZipEntry;->csize:J

    .line 543
    .local v5, "csize":J
    iget-wide v7, v2, Ljava/util/zip/ZipEntry;->size:J

    .line 544
    .local v7, "size":J
    iget-wide v9, v1, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    .line 545
    .local v9, "offset":J
    const/4 v11, 0x0

    .line 546
    .local v11, "elenZIP64":I
    const/4 v12, 0x0

    .line 548
    .local v12, "hasZip64":Z
    iget-wide v13, v2, Ljava/util/zip/ZipEntry;->csize:J

    const-wide v15, 0xffffffffL

    cmp-long v13, v13, v15

    if-ltz v13, :cond_27

    .line 549
    const-wide v5, 0xffffffffL

    .line 550
    add-int/lit8 v11, v11, 0x8

    .line 551
    const/4 v12, 0x1

    .line 553
    :cond_27
    iget-wide v13, v2, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v13, v13, v15

    if-ltz v13, :cond_35

    .line 554
    const-wide v7, 0xffffffffL

    .line 555
    add-int/lit8 v11, v11, 0x8

    .line 556
    const/4 v12, 0x1

    .line 558
    :cond_35
    iget-wide v13, v1, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    cmp-long v13, v13, v15

    if-ltz v13, :cond_43

    .line 559
    const-wide v9, 0xffffffffL

    .line 560
    add-int/lit8 v11, v11, 0x8

    .line 561
    const/4 v12, 0x1

    .line 563
    :cond_43
    const-wide/32 v13, 0x2014b50    # 1.6619997E-316

    invoke-direct {v0, v13, v14}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 564
    if-eqz v12, :cond_58

    .line 565
    const/16 v13, 0x2d

    invoke-direct {v0, v2, v13}, Ljava/util/zip/ZipOutputStream;->versionMadeBy(Ljava/util/zip/ZipEntry;I)I

    move-result v14

    invoke-direct {v0, v14}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 566
    invoke-direct {v0, v13}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto :goto_62

    .line 568
    :cond_58
    invoke-direct {v0, v2, v4}, Ljava/util/zip/ZipOutputStream;->versionMadeBy(Ljava/util/zip/ZipEntry;I)I

    move-result v13

    invoke-direct {v0, v13}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 569
    invoke-direct {v0, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 571
    :goto_62
    invoke-direct {v0, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 572
    iget v13, v2, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {v0, v13}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 573
    iget-wide v13, v2, Ljava/util/zip/ZipEntry;->xdostime:J

    invoke-direct {v0, v13, v14}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 574
    iget-wide v13, v2, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {v0, v13, v14}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 575
    invoke-direct {v0, v5, v6}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 576
    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 577
    iget-object v13, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v14, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 578
    .local v13, "nameBytes":[B
    array-length v14, v13

    invoke-direct {v0, v14}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 580
    iget-object v14, v2, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-direct {v0, v14}, Ljava/util/zip/ZipOutputStream;->getExtraLen([B)I

    move-result v14

    .line 581
    .local v14, "elen":I
    if-eqz v12, :cond_92

    .line 582
    add-int/lit8 v17, v11, 0x4

    add-int v14, v14, v17

    .line 586
    :cond_92
    const/16 v17, 0x0

    .line 587
    .local v17, "flagEXTT":I
    const-wide/16 v18, -0x1

    .line 588
    .local v18, "umtime":J
    const-wide/16 v20, -0x1

    .line 589
    .local v20, "uatime":J
    const-wide/16 v22, -0x1

    .line 590
    .local v22, "uctime":J
    move-wide/from16 v24, v15

    iget-object v15, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v15, :cond_ae

    .line 591
    or-int/lit8 v17, v17, 0x1

    .line 592
    iget-object v15, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v15}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v18

    move v15, v3

    move/from16 v16, v4

    move-wide/from16 v3, v18

    goto :goto_b3

    .line 590
    :cond_ae
    move v15, v3

    move/from16 v16, v4

    move-wide/from16 v3, v18

    .line 594
    .end local v4    # "version":I
    .end local v18    # "umtime":J
    .local v3, "umtime":J
    .local v15, "flag":I
    .local v16, "version":I
    :goto_b3
    move-wide/from16 v18, v5

    .end local v5    # "csize":J
    .local v18, "csize":J
    iget-object v5, v2, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    if-eqz v5, :cond_c1

    .line 595
    or-int/lit8 v17, v17, 0x2

    .line 596
    iget-object v5, v2, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v5}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v20

    .line 598
    :cond_c1
    iget-object v5, v2, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    if-eqz v5, :cond_d0

    .line 599
    or-int/lit8 v17, v17, 0x4

    .line 600
    iget-object v5, v2, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v5}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v22

    move/from16 v5, v17

    goto :goto_d2

    .line 598
    :cond_d0
    move/from16 v5, v17

    .line 602
    .end local v17    # "flagEXTT":I
    .local v5, "flagEXTT":I
    :goto_d2
    const-wide/32 v26, 0x7fffffff

    if-eqz v5, :cond_ef

    .line 604
    cmp-long v6, v3, v26

    if-gtz v6, :cond_ed

    cmp-long v6, v20, v26

    if-gtz v6, :cond_ed

    cmp-long v6, v22, v26

    if-lez v6, :cond_e4

    goto :goto_ed

    .line 609
    :cond_e4
    add-int/lit8 v14, v14, 0x5

    .line 610
    iget-object v6, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v6, :cond_ef

    .line 611
    add-int/lit8 v14, v14, 0x4

    goto :goto_ef

    .line 607
    :cond_ed
    :goto_ed
    add-int/lit8 v14, v14, 0x24

    .line 614
    :cond_ef
    :goto_ef
    invoke-direct {v0, v14}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 616
    iget-object v6, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    move-object/from16 v17, v6

    if-eqz v17, :cond_10f

    .line 617
    iget-object v6, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    move-wide/from16 v28, v7

    .end local v7    # "size":J
    .local v28, "size":J
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 618
    .local v6, "commentBytes":[B
    array-length v7, v6

    const v8, 0xffff

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    const/4 v7, 0x0

    goto :goto_116

    .line 620
    .end local v6    # "commentBytes":[B
    .end local v28    # "size":J
    .restart local v7    # "size":J
    :cond_10f
    move-wide/from16 v28, v7

    .end local v7    # "size":J
    .restart local v28    # "size":J
    const/4 v6, 0x0

    .line 621
    .restart local v6    # "commentBytes":[B
    const/4 v7, 0x0

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 623
    :goto_116
    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 624
    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 626
    iget v7, v2, Ljava/util/zip/ZipEntry;->extraAttributes:I

    move/from16 v30, v7

    if-lez v30, :cond_128

    iget v7, v2, Ljava/util/zip/ZipEntry;->extraAttributes:I

    shl-int/lit8 v7, v7, 0x10

    int-to-long v7, v7

    goto :goto_12a

    :cond_128
    const-wide/16 v7, 0x0

    :goto_12a
    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 627
    invoke-direct {v0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 628
    array-length v7, v13

    const/4 v8, 0x0

    invoke-direct {v0, v13, v8, v7}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 631
    const/4 v7, 0x1

    if-eqz v12, :cond_159

    .line 632
    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 633
    invoke-direct {v0, v11}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 634
    cmp-long v8, v28, v24

    if-nez v8, :cond_147

    .line 635
    iget-wide v7, v2, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 636
    :cond_147
    cmp-long v7, v18, v24

    if-nez v7, :cond_150

    .line 637
    iget-wide v7, v2, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 638
    :cond_150
    cmp-long v7, v9, v24

    if-nez v7, :cond_159

    .line 639
    iget-wide v7, v1, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 641
    :cond_159
    if-eqz v5, :cond_1d0

    .line 642
    cmp-long v7, v3, v26

    if-gtz v7, :cond_184

    cmp-long v7, v20, v26

    if-gtz v7, :cond_184

    cmp-long v7, v22, v26

    if-lez v7, :cond_168

    goto :goto_184

    .line 657
    :cond_168
    const/16 v7, 0x5455

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 658
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_17c

    .line 659
    const/4 v7, 0x5

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 660
    invoke-direct {v0, v5}, Ljava/util/zip/ZipOutputStream;->writeByte(I)V

    .line 661
    invoke-direct {v0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_1d0

    .line 663
    :cond_17c
    const/4 v7, 0x1

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 664
    invoke-direct {v0, v5}, Ljava/util/zip/ZipOutputStream;->writeByte(I)V

    goto :goto_1d0

    .line 645
    :cond_184
    :goto_184
    const/16 v7, 0xa

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 646
    const/16 v7, 0x20

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 647
    const-wide/16 v7, 0x0

    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 648
    const/4 v7, 0x1

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 649
    const/16 v7, 0x18

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 650
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    const-wide/high16 v24, -0x8000000000000000L

    if-nez v7, :cond_1a5

    move-wide/from16 v7, v24

    goto :goto_1ab

    .line 651
    :cond_1a5
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToWinTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v7

    .line 650
    :goto_1ab
    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 652
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    if-nez v7, :cond_1b5

    move-wide/from16 v7, v24

    goto :goto_1bb

    .line 653
    :cond_1b5
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToWinTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v7

    .line 652
    :goto_1bb
    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 654
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    if-nez v7, :cond_1c5

    move-wide/from16 v7, v24

    goto :goto_1cd

    .line 655
    :cond_1c5
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToWinTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v24

    move-wide/from16 v7, v24

    .line 654
    :goto_1cd
    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 668
    :cond_1d0
    :goto_1d0
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-direct {v0, v7}, Ljava/util/zip/ZipOutputStream;->writeExtra([B)V

    .line 669
    if-eqz v6, :cond_1e3

    .line 670
    array-length v7, v6

    const v8, 0xffff

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v0, v6, v8, v7}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 672
    :cond_1e3
    return-void
.end method

.method private greylist-max-o writeEND(JJ)V
    .registers 19
    .param p1, "off"    # J
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "hasZip64":Z
    move-wide/from16 v1, p3

    .line 680
    .local v1, "xlen":J
    move-wide v3, p1

    .line 681
    .local v3, "xoff":J
    const-wide v5, 0xffffffffL

    cmp-long v7, v1, v5

    if-ltz v7, :cond_13

    .line 682
    const-wide v1, 0xffffffffL

    .line 683
    const/4 v0, 0x1

    .line 685
    :cond_13
    cmp-long v5, v3, v5

    if-ltz v5, :cond_1d

    .line 686
    const-wide v3, 0xffffffffL

    .line 687
    const/4 v0, 0x1

    .line 689
    :cond_1d
    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    .line 690
    .local v5, "count":I
    const v6, 0xffff

    if-lt v5, v6, :cond_2f

    .line 691
    or-int/lit8 v0, v0, 0x1

    .line 692
    if-eqz v0, :cond_2f

    .line 693
    const v5, 0xffff

    .line 696
    :cond_2f
    if-eqz v0, :cond_7c

    .line 697
    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 699
    .local v6, "off64":J
    const-wide/32 v8, 0x6064b50

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 700
    const-wide/16 v8, 0x2c

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 701
    const/16 v8, 0x2d

    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 702
    invoke-direct {p0, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 703
    const-wide/16 v8, 0x0

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 704
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 705
    iget-object v10, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    int-to-long v10, v10

    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 706
    iget-object v10, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    int-to-long v10, v10

    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 707
    move-wide/from16 v10, p3

    invoke-direct {p0, v10, v11}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 708
    invoke-direct/range {p0 .. p2}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 711
    const-wide/32 v12, 0x7064b50

    invoke-direct {p0, v12, v13}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 712
    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 713
    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 714
    const-wide/16 v8, 0x1

    invoke-direct {p0, v8, v9}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_7e

    .line 696
    .end local v6    # "off64":J
    :cond_7c
    move-wide/from16 v10, p3

    .line 716
    :goto_7e
    const-wide/32 v6, 0x6054b50

    invoke-direct {p0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 717
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 718
    invoke-direct {p0, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 719
    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 720
    invoke-direct {p0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 721
    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 722
    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 723
    iget-object v7, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    if-eqz v7, :cond_aa

    .line 724
    iget-object v7, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v7, v7

    invoke-direct {p0, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 725
    iget-object v7, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    iget-object v8, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    array-length v8, v8

    invoke-direct {p0, v7, v6, v8}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    goto :goto_ad

    .line 727
    :cond_aa
    invoke-direct {p0, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 729
    :goto_ad
    return-void
.end method

.method private greylist-max-o writeEXT(Ljava/util/zip/ZipEntry;)V
    .registers 6
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    const-wide/32 v0, 0x8074b50

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 515
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 516
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    const-wide v2, 0xffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_28

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1d

    goto :goto_28

    .line 520
    :cond_1d
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 521
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_32

    .line 517
    :cond_28
    :goto_28
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 518
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 523
    :goto_32
    return-void
.end method

.method private greylist-max-o writeExtra([B)V
    .registers 7
    .param p1, "extra"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    if-eqz p1, :cond_37

    .line 762
    array-length v0, p1

    .line 763
    .local v0, "len":I
    const/4 v1, 0x0

    .line 764
    .local v1, "off":I
    :goto_4
    add-int/lit8 v2, v1, 0x4

    if-gt v2, v0, :cond_30

    .line 765
    invoke-static {p1, v1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v2

    .line 766
    .local v2, "tag":I
    add-int/lit8 v3, v1, 0x2

    invoke-static {p1, v3}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v3

    .line 767
    .local v3, "sz":I
    if-ltz v3, :cond_2a

    add-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v3

    if-le v4, v0, :cond_1a

    goto :goto_2a

    .line 771
    :cond_1a
    const/16 v4, 0x5455

    if-eq v2, v4, :cond_26

    const/4 v4, 0x1

    if-eq v2, v4, :cond_26

    .line 772
    add-int/lit8 v4, v3, 0x4

    invoke-direct {p0, p1, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 774
    :cond_26
    add-int/lit8 v4, v3, 0x4

    add-int/2addr v1, v4

    .line 775
    .end local v2    # "tag":I
    .end local v3    # "sz":I
    goto :goto_4

    .line 768
    .restart local v2    # "tag":I
    .restart local v3    # "sz":I
    :cond_2a
    :goto_2a
    sub-int v4, v0, v1

    invoke-direct {p0, p1, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 769
    return-void

    .line 776
    .end local v2    # "tag":I
    .end local v3    # "sz":I
    :cond_30
    if-ge v1, v0, :cond_37

    .line 777
    sub-int v2, v0, v1

    invoke-direct {p0, p1, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 780
    .end local v0    # "len":I
    .end local v1    # "off":I
    :cond_37
    return-void
.end method

.method private greylist-max-o writeInt(J)V
    .registers 8
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 805
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 806
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 807
    const/16 v1, 0x8

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 808
    const/16 v1, 0x10

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 809
    const/16 v1, 0x18

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 810
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v3, 0x4

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 811
    return-void
.end method

.method private greylist-max-o writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V
    .registers 23
    .param p1, "xentry"    # Ljava/util/zip/ZipOutputStream$XEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 403
    .local v2, "e":Ljava/util/zip/ZipEntry;
    iget v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    .line 404
    .local v3, "flag":I
    const/4 v4, 0x0

    .line 405
    .local v4, "hasZip64":Z
    iget-object v5, v2, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-direct {v0, v5}, Ljava/util/zip/ZipOutputStream;->getExtraLen([B)I

    move-result v5

    .line 407
    .local v5, "elen":I
    const-wide/32 v6, 0x4034b50

    invoke-direct {v0, v6, v7}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 408
    and-int/lit8 v6, v3, 0x8

    const-wide/16 v7, 0x0

    const/16 v9, 0x8

    if-ne v6, v9, :cond_3b

    .line 409
    invoke-static {v2}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 410
    invoke-direct {v0, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 411
    iget v6, v2, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {v0, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 412
    iget-wide v9, v2, Ljava/util/zip/ZipEntry;->xdostime:J

    invoke-direct {v0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 415
    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 416
    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 417
    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_82

    .line 419
    :cond_3b
    iget-wide v9, v2, Ljava/util/zip/ZipEntry;->csize:J

    const-wide v11, 0xffffffffL

    cmp-long v6, v9, v11

    if-gez v6, :cond_55

    iget-wide v9, v2, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v6, v9, v11

    if-ltz v6, :cond_4d

    goto :goto_55

    .line 423
    :cond_4d
    invoke-static {v2}, Ljava/util/zip/ZipOutputStream;->version(Ljava/util/zip/ZipEntry;)I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    goto :goto_5b

    .line 420
    :cond_55
    :goto_55
    const/4 v4, 0x1

    .line 421
    const/16 v6, 0x2d

    invoke-direct {v0, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 425
    :goto_5b
    invoke-direct {v0, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 426
    iget v6, v2, Ljava/util/zip/ZipEntry;->method:I

    invoke-direct {v0, v6}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 427
    iget-wide v9, v2, Ljava/util/zip/ZipEntry;->xdostime:J

    invoke-direct {v0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 428
    iget-wide v9, v2, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {v0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 429
    if-eqz v4, :cond_78

    .line 430
    invoke-direct {v0, v11, v12}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 431
    invoke-direct {v0, v11, v12}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 432
    add-int/lit8 v5, v5, 0x14

    goto :goto_82

    .line 434
    :cond_78
    iget-wide v9, v2, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {v0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 435
    iget-wide v9, v2, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {v0, v9, v10}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 438
    :goto_82
    iget-object v6, v0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v9, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 439
    .local v6, "nameBytes":[B
    array-length v9, v6

    invoke-direct {v0, v9}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 441
    const/4 v9, 0x0

    .line 442
    .local v9, "elenEXTT":I
    const/4 v10, 0x0

    .line 443
    .local v10, "flagEXTT":I
    const-wide/16 v11, -0x1

    .line 444
    .local v11, "umtime":J
    const-wide/16 v13, -0x1

    .line 445
    .local v13, "uatime":J
    const-wide/16 v15, -0x1

    .line 446
    .local v15, "uctime":J
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_a4

    .line 447
    add-int/lit8 v9, v9, 0x4

    .line 448
    or-int/lit8 v10, v10, 0x1

    .line 449
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v11

    .line 451
    :cond_a4
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_b2

    .line 452
    add-int/lit8 v9, v9, 0x4

    .line 453
    or-int/lit8 v10, v10, 0x2

    .line 454
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v13

    .line 456
    :cond_b2
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    if-eqz v7, :cond_c2

    .line 457
    add-int/lit8 v9, v9, 0x4

    .line 458
    or-int/lit8 v10, v10, 0x4

    .line 459
    iget-object v7, v2, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v7}, Ljava/util/zip/ZipUtils;->fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v15

    move-wide v7, v15

    goto :goto_c3

    .line 456
    :cond_c2
    move-wide v7, v15

    .line 461
    .end local v15    # "uctime":J
    .local v7, "uctime":J
    :goto_c3
    const-wide/32 v15, 0x7fffffff

    if-eqz v10, :cond_dc

    .line 463
    cmp-long v19, v11, v15

    if-gtz v19, :cond_da

    cmp-long v19, v13, v15

    if-gtz v19, :cond_da

    cmp-long v19, v7, v15

    if-lez v19, :cond_d5

    goto :goto_da

    .line 468
    :cond_d5
    add-int/lit8 v19, v9, 0x5

    add-int v5, v5, v19

    goto :goto_dc

    .line 466
    :cond_da
    :goto_da
    add-int/lit8 v5, v5, 0x24

    .line 471
    :cond_dc
    :goto_dc
    invoke-direct {v0, v5}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 472
    move-wide/from16 v19, v15

    const/4 v15, 0x0

    array-length v1, v6

    invoke-direct {v0, v6, v15, v1}, Ljava/util/zip/ZipOutputStream;->writeBytes([BII)V

    .line 473
    const/4 v1, 0x1

    if-eqz v4, :cond_ff

    .line 474
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 475
    const/16 v15, 0x10

    invoke-direct {v0, v15}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 476
    move v15, v3

    move/from16 v16, v4

    .end local v3    # "flag":I
    .end local v4    # "hasZip64":Z
    .local v15, "flag":I
    .local v16, "hasZip64":Z
    iget-wide v3, v2, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {v0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 477
    iget-wide v3, v2, Ljava/util/zip/ZipEntry;->csize:J

    invoke-direct {v0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    goto :goto_102

    .line 473
    .end local v15    # "flag":I
    .end local v16    # "hasZip64":Z
    .restart local v3    # "flag":I
    .restart local v4    # "hasZip64":Z
    :cond_ff
    move v15, v3

    move/from16 v16, v4

    .line 479
    .end local v3    # "flag":I
    .end local v4    # "hasZip64":Z
    .restart local v15    # "flag":I
    .restart local v16    # "hasZip64":Z
    :goto_102
    if-eqz v10, :cond_17d

    .line 480
    cmp-long v3, v11, v19

    if-gtz v3, :cond_134

    cmp-long v3, v13, v19

    if-gtz v3, :cond_134

    cmp-long v3, v7, v19

    if-lez v3, :cond_111

    goto :goto_134

    .line 495
    :cond_111
    const/16 v1, 0x5455

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 496
    add-int/lit8 v1, v9, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 497
    invoke-direct {v0, v10}, Ljava/util/zip/ZipOutputStream;->writeByte(I)V

    .line 498
    iget-object v1, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-eqz v1, :cond_125

    .line 499
    invoke-direct {v0, v11, v12}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 500
    :cond_125
    iget-object v1, v2, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    if-eqz v1, :cond_12c

    .line 501
    invoke-direct {v0, v13, v14}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 502
    :cond_12c
    iget-object v1, v2, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    if-eqz v1, :cond_17d

    .line 503
    invoke-direct {v0, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    goto :goto_17d

    .line 483
    :cond_134
    :goto_134
    const/16 v3, 0xa

    invoke-direct {v0, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 484
    const/16 v3, 0x20

    invoke-direct {v0, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 485
    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeInt(J)V

    .line 486
    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 487
    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(I)V

    .line 488
    iget-object v1, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    if-nez v1, :cond_152

    const-wide/high16 v3, -0x8000000000000000L

    goto :goto_15a

    .line 489
    :cond_152
    iget-object v1, v2, Ljava/util/zip/ZipEntry;->mtime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v1}, Ljava/util/zip/ZipUtils;->fileTimeToWinTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v17

    move-wide/from16 v3, v17

    .line 488
    :goto_15a
    invoke-direct {v0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 490
    iget-object v1, v2, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    if-nez v1, :cond_164

    const-wide/high16 v3, -0x8000000000000000L

    goto :goto_16a

    .line 491
    :cond_164
    iget-object v1, v2, Ljava/util/zip/ZipEntry;->atime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v1}, Ljava/util/zip/ZipUtils;->fileTimeToWinTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v3

    .line 490
    :goto_16a
    invoke-direct {v0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 492
    iget-object v1, v2, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    if-nez v1, :cond_174

    const-wide/high16 v3, -0x8000000000000000L

    goto :goto_17a

    .line 493
    :cond_174
    iget-object v1, v2, Ljava/util/zip/ZipEntry;->ctime:Ljava/nio/file/attribute/FileTime;

    invoke-static {v1}, Ljava/util/zip/ZipUtils;->fileTimeToWinTime(Ljava/nio/file/attribute/FileTime;)J

    move-result-wide v3

    .line 492
    :goto_17a
    invoke-direct {v0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(J)V

    .line 506
    :cond_17d
    :goto_17d
    iget-object v1, v2, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-direct {v0, v1}, Ljava/util/zip/ZipOutputStream;->writeExtra([B)V

    .line 507
    iget-wide v3, v0, Ljava/util/zip/ZipOutputStream;->written:J

    iput-wide v3, v0, Ljava/util/zip/ZipOutputStream;->locoff:J

    .line 508
    return-void
.end method

.method private greylist-max-o writeLong(J)V
    .registers 8
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 817
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 818
    .local v0, "out":Ljava/io/OutputStream;
    const/4 v1, 0x0

    ushr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 819
    const/16 v1, 0x8

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 820
    const/16 v1, 0x10

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 821
    const/16 v1, 0x18

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 822
    const/16 v1, 0x20

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 823
    const/16 v1, 0x28

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 824
    const/16 v1, 0x30

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 825
    const/16 v1, 0x38

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 826
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 827
    return-void
.end method

.method private greylist-max-o writeShort(I)V
    .registers 7
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 795
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 796
    .local v0, "out":Ljava/io/OutputStream;
    ushr-int/lit8 v1, p1, 0x0

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 797
    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 798
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    const-wide/16 v3, 0x2

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 799
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

    .line 392
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    if-nez v0, :cond_a

    .line 393
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->closed:Z

    .line 396
    :cond_a
    return-void
.end method

.method public whitelist test-api closeEntry()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 263
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v0, :cond_1ad

    .line 265
    :try_start_7
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    iget-object v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 266
    .local v0, "e":Ljava/util/zip/ZipEntry;
    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_196

    const-string v2, ")"

    const-string v3, " but got 0x"

    const-string v4, "invalid entry size (expected "

    const-string v5, " bytes)"

    const-string v6, " but got "

    sparse-switch v1, :sswitch_data_1ae

    .line 313
    :try_start_1a
    new-instance v1, Ljava/util/zip/ZipException;

    goto/16 :goto_190

    .line 268
    :sswitch_1e
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finish()V

    .line 269
    :goto_23
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->finished()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 270
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->deflate()V

    goto :goto_23

    .line 272
    :cond_2f
    iget v1, v0, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_e8

    .line 274
    iget-wide v7, v0, Ljava/util/zip/ZipEntry;->size:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-nez v1, :cond_bd

    .line 279
    iget-wide v7, v0, Ljava/util/zip/ZipEntry;->csize:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v9

    cmp-long v1, v7, v9

    if-nez v1, :cond_90

    .line 284
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_5b

    goto/16 :goto_103

    .line 285
    :cond_5b
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid entry CRC-32 (expected 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Ljava/util/zip/ZipEntry;->crc:J

    .line 287
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 288
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/zip/ZipOutputStream;
    throw v1

    .line 280
    .restart local p0    # "this":Ljava/util/zip/ZipOutputStream;
    :cond_90
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid entry compressed size (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Ljava/util/zip/ZipEntry;->csize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 282
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/zip/ZipOutputStream;
    throw v1

    .line 275
    .restart local p0    # "this":Ljava/util/zip/ZipOutputStream;
    :cond_bd
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    .line 277
    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/zip/ZipOutputStream;
    throw v1

    .line 291
    .restart local p0    # "this":Ljava/util/zip/ZipOutputStream;
    :cond_e8
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesRead()J

    move-result-wide v1

    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->size:J

    .line 292
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getBytesWritten()J

    move-result-wide v1

    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->csize:J

    .line 293
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    iput-wide v1, v0, Ljava/util/zip/ZipEntry;->crc:J

    .line 294
    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeEXT(Ljava/util/zip/ZipEntry;)V

    .line 296
    :goto_103
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->reset()V

    .line 297
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v3, v0, Ljava/util/zip/ZipEntry;->csize:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 298
    goto :goto_127

    .line 301
    :sswitch_110
    iget-wide v7, v0, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v9, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v11, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v9, v11

    cmp-long v1, v7, v9

    if-nez v1, :cond_166

    .line 306
    iget-wide v4, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_131

    .line 315
    :goto_127
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    .line 321
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    goto/16 :goto_1ad

    .line 307
    .restart local v0    # "e":Ljava/util/zip/ZipEntry;
    :cond_131
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid entry crc-32 (expected 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Ljava/util/zip/ZipEntry;->crc:J

    .line 309
    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 310
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/zip/ZipOutputStream;
    throw v1

    .line 302
    .restart local p0    # "this":Ljava/util/zip/ZipOutputStream;
    :cond_166
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v6, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v3, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/zip/ZipOutputStream;
    throw v1

    .line 313
    .restart local p0    # "this":Ljava/util/zip/ZipOutputStream;
    :goto_190
    const-string v2, "invalid compression method"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/util/zip/ZipOutputStream;
    throw v1
    :try_end_196
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_196} :catch_196

    .line 317
    .end local v0    # "e":Ljava/util/zip/ZipEntry;
    .restart local p0    # "this":Ljava/util/zip/ZipOutputStream;
    :catch_196
    move-exception v0

    .line 318
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->shouldFinish()Z

    move-result v1

    if-eqz v1, :cond_1ac

    iget-boolean v1, p0, Ljava/util/zip/ZipOutputStream;->usesDefaultDeflater:Z

    if-eqz v1, :cond_1ac

    instance-of v1, v0, Ljava/util/zip/ZipException;

    if-nez v1, :cond_1ac

    .line 319
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 320
    :cond_1ac
    throw v0

    .line 323
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1ad
    :goto_1ad
    return-void

    :sswitch_data_1ae
    .sparse-switch
        0x0 -> :sswitch_110
        0x8 -> :sswitch_1e
    .end sparse-switch
.end method

.method public whitelist test-api finish()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 371
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 372
    iget-boolean v0, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    if-eqz v0, :cond_8

    .line 373
    return-void

    .line 375
    :cond_8
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v0, :cond_f

    .line 376
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 379
    :cond_f
    iget-wide v0, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 380
    .local v0, "off":J
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipOutputStream$XEntry;

    .line 381
    .local v3, "xentry":Ljava/util/zip/ZipOutputStream$XEntry;
    invoke-direct {p0, v3}, Ljava/util/zip/ZipOutputStream;->writeCEN(Ljava/util/zip/ZipOutputStream$XEntry;)V

    .end local v3    # "xentry":Ljava/util/zip/ZipOutputStream$XEntry;
    goto :goto_17

    .line 382
    :cond_27
    iget-wide v2, p0, Ljava/util/zip/ZipOutputStream;->written:J

    sub-long/2addr v2, v0

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeEND(JJ)V

    .line 383
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/zip/ZipOutputStream;->finished:Z

    .line 384
    return-void
.end method

.method public whitelist test-api putNextEntry(Ljava/util/zip/ZipEntry;)V
    .registers 8
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 202
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v0, :cond_a

    .line 203
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 205
    :cond_a
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->xdostime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 210
    :cond_19
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_22

    .line 211
    iget v0, p0, Ljava/util/zip/ZipOutputStream;->method:I

    iput v0, p1, Ljava/util/zip/ZipEntry;->method:I

    .line 214
    :cond_22
    const/4 v0, 0x0

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    .line 215
    iget v0, p1, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v0, :sswitch_data_d0

    .line 243
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "unsupported compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :sswitch_32
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_48

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_48

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_48

    iget-boolean v0, p1, Ljava/util/zip/ZipEntry;->csizeSet:Z

    if-nez v0, :cond_77

    .line 223
    :cond_48
    const/16 v0, 0x8

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    goto :goto_77

    .line 229
    :sswitch_4d
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_58

    .line 230
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    goto :goto_6b

    .line 231
    :cond_58
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_63

    .line 232
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p1, Ljava/util/zip/ZipEntry;->csize:J

    goto :goto_6b

    .line 233
    :cond_63
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_c8

    .line 237
    :goto_6b
    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c0

    iget-wide v0, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c0

    .line 245
    :cond_77
    :goto_77
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->names:Ljava/util/HashSet;

    iget-object v1, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 248
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v0}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 249
    iget v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p1, Ljava/util/zip/ZipEntry;->flag:I

    .line 250
    :cond_8f
    new-instance v0, Ljava/util/zip/ZipOutputStream$XEntry;

    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    invoke-direct {v0, p1, v1, v2}, Ljava/util/zip/ZipOutputStream$XEntry;-><init>(Ljava/util/zip/ZipEntry;J)V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    .line 251
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->xentries:Ljava/util/Vector;

    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipOutputStream;->writeLOC(Ljava/util/zip/ZipOutputStream$XEntry;)V

    .line 253
    return-void

    .line 246
    :cond_a5
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_c0
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "STORED entry missing size, compressed size, or crc-32"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_c8
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "STORED entry where compressed != uncompressed size"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_d0
    .sparse-switch
        0x0 -> :sswitch_4d
        0x8 -> :sswitch_32
    .end sparse-switch
.end method

.method public whitelist test-api setComment(Ljava/lang/String;)V
    .registers 5
    .param p1, "comment"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    .line 150
    .local v0, "bytes":[B
    if-eqz p1, :cond_18

    .line 151
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v1, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 152
    array-length v1, v0

    const v2, 0xffff

    if-gt v1, v2, :cond_10

    goto :goto_18

    .line 153
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ZIP file comment too long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_18
    :goto_18
    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->comment:[B

    .line 157
    return-void
.end method

.method public whitelist test-api setLevel(I)V
    .registers 3
    .param p1, "level"    # I

    .line 181
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 182
    return-void
.end method

.method public whitelist test-api setMethod(I)V
    .registers 4
    .param p1, "method"    # I

    .line 168
    const/16 v0, 0x8

    if-eq p1, v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    .line 169
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_f
    :goto_f
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->method:I

    .line 172
    return-void
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 337
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->ensureOpen()V

    .line 338
    if-ltz p2, :cond_58

    if-ltz p3, :cond_58

    array-length v0, p1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_5e

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_58

    .line 340
    if-nez p3, :cond_10

    .line 341
    monitor-exit p0

    return-void

    .line 344
    :cond_10
    :try_start_10
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    if-eqz v0, :cond_50

    .line 347
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->current:Ljava/util/zip/ZipOutputStream$XEntry;

    iget-object v0, v0, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 348
    .local v0, "entry":Ljava/util/zip/ZipEntry;
    iget v1, v0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v1, :sswitch_data_62

    .line 358
    .end local p0    # "this":Ljava/util/zip/ZipOutputStream;
    new-instance v1, Ljava/util/zip/ZipException;

    goto :goto_4a

    .line 349
    .restart local p0    # "this":Ljava/util/zip/ZipOutputStream;
    :sswitch_20
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    goto :goto_3b

    .line 351
    .end local p0    # "this":Ljava/util/zip/ZipOutputStream;
    :sswitch_24
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    .line 352
    iget-wide v1, p0, Ljava/util/zip/ZipOutputStream;->written:J

    iget-wide v3, p0, Ljava/util/zip/ZipOutputStream;->locoff:J

    sub-long/2addr v1, v3

    iget-wide v3, v0, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_42

    .line 356
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 357
    nop

    .line 360
    :goto_3b
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_5e

    .line 361
    monitor-exit p0

    return-void

    .line 353
    :cond_42
    :try_start_42
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "attempt to write past end of STORED entry"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 358
    :goto_4a
    const-string v2, "invalid compression method"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    :cond_50
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "no current ZIP entry"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_58
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 336
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_5e
    move-exception p1

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_42 .. :try_end_60} :catchall_5e

    throw p1

    nop

    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_24
        0x8 -> :sswitch_20
    .end sparse-switch
.end method
