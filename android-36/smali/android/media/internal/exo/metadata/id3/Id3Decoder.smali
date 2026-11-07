.class public final Landroid/media/internal/exo/metadata/id3/Id3Decoder;
.super Landroid/media/internal/exo/metadata/SimpleMetadataDecoder;
.source "Id3Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;,
        Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;
    }
.end annotation


# static fields
.field public static final blacklist NO_FRAMES_PREDICATE:Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;


# instance fields
.field private final blacklist framePredicate:Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method public static synthetic blacklist $r8$lambda$AWreJL4kng5jg_ZeBy1oOuRuXUs(IIIII)Z
    .registers 5

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 55
    new-instance v0, Landroid/media/internal/exo/metadata/id3/Id3Decoder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)V
    .registers 2

    .line 88
    invoke-direct {p0}, Landroid/media/internal/exo/metadata/SimpleMetadataDecoder;-><init>()V

    .line 89
    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->framePredicate:Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method private static blacklist copyOfRangeIfValid([BII)[B
    .registers 3

    if-gt p2, p1, :cond_5

    .line 846
    sget-object p0, Landroid/media/internal/exo/util/Util;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    .line 848
    :cond_5
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static blacklist decodeApicFrame(Landroid/media/internal/exo/util/ParsableByteArray;II)Landroid/media/internal/exo/metadata/id3/ApicFrame;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 566
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 567
    invoke-static {v0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 569
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 570
    invoke-virtual {p0, v2, v3, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 574
    const-string p0, "ISO-8859-1"

    const-string v4, "image/"

    const/4 v5, 0x2

    if-ne p2, v5, :cond_3c

    .line 576
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x3

    invoke-direct {v4, v2, v3, v6, p0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v4}, Landroid/media/internal/guava_common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 577
    const-string p2, "image/jpg"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3a

    .line 578
    const-string p0, "image/jpeg"

    :cond_3a
    move p2, v5

    goto :goto_61

    .line 581
    :cond_3c
    invoke-static {v2, v3}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p2

    .line 582
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v3, p2, p0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6}, Landroid/media/internal/guava_common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x2f

    .line 583
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_61

    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_61
    :goto_61
    add-int/lit8 v3, p2, 0x1

    .line 588
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr p2, v5

    .line 591
    invoke-static {v2, p2, v0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v4

    .line 592
    new-instance v5, Ljava/lang/String;

    sub-int v6, v4, p2

    invoke-direct {v5, v2, p2, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 596
    invoke-static {v0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result p2

    add-int/2addr v4, p2

    .line 597
    invoke-static {v2, v4, p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object p1

    .line 599
    new-instance p2, Landroid/media/internal/exo/metadata/id3/ApicFrame;

    invoke-direct {p2, p0, v5, v3, p1}, Landroid/media/internal/exo/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p2
.end method

.method private static blacklist decodeBinaryFrame(Landroid/media/internal/exo/util/ParsableByteArray;ILjava/lang/String;)Landroid/media/internal/exo/metadata/id3/BinaryFrame;
    .registers 5

    .line 747
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 748
    invoke-virtual {p0, v0, v1, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 750
    new-instance p0, Landroid/media/internal/exo/metadata/id3/BinaryFrame;

    invoke-direct {p0, p2, v0}, Landroid/media/internal/exo/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object p0
.end method

.method private static blacklist decodeChapterFrame(Landroid/media/internal/exo/util/ParsableByteArray;IIZILandroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)Landroid/media/internal/exo/metadata/id3/ChapterFrame;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 639
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v1

    .line 640
    new-instance v3, Ljava/lang/String;

    .line 642
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    sub-int v4, v1, v0

    const-string v5, "ISO-8859-1"

    invoke-direct {v3, v2, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    .line 643
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 645
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v4

    .line 646
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v5

    .line 647
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    const-wide v6, 0xffffffffL

    cmp-long v8, v1, v6

    const-wide/16 v9, -0x1

    if-nez v8, :cond_36

    move-wide v1, v9

    .line 651
    :cond_36
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v11

    cmp-long v6, v11, v6

    if-nez v6, :cond_40

    move-wide v8, v9

    goto :goto_41

    :cond_40
    move-wide v8, v11

    .line 656
    :goto_41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v0, p1

    .line 658
    :cond_47
    :goto_47
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v7

    if-ge v7, v0, :cond_5f

    move/from16 v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    .line 660
    invoke-static {v7, p0, v10, v11, v12}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeFrame(ILandroid/media/internal/exo/util/ParsableByteArray;ZILandroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)Landroid/media/internal/exo/metadata/id3/Id3Frame;

    move-result-object v13

    if-eqz v13, :cond_47

    .line 663
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_47

    :cond_5f
    const/4 p0, 0x0

    .line 667
    new-array p0, p0, [Landroid/media/internal/exo/metadata/id3/Id3Frame;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, [Landroid/media/internal/exo/metadata/id3/Id3Frame;

    move-wide v6, v1

    .line 668
    new-instance v2, Landroid/media/internal/exo/metadata/id3/ChapterFrame;

    invoke-direct/range {v2 .. v10}, Landroid/media/internal/exo/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Landroid/media/internal/exo/metadata/id3/Id3Frame;)V

    return-object v2
.end method

.method private static blacklist decodeChapterTOCFrame(Landroid/media/internal/exo/util/ParsableByteArray;IIZILandroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 679
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 680
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v2

    invoke-static {v2, v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    .line 681
    new-instance v3, Ljava/lang/String;

    .line 683
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v4

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 684
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 686
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit8 v5, v2, 0x2

    const/4 v7, 0x0

    if-eqz v5, :cond_2b

    move v5, v4

    goto :goto_2c

    :cond_2b
    move v5, v7

    :goto_2c
    and-int/2addr v2, v4

    if-eqz v2, :cond_31

    move v2, v4

    goto :goto_32

    :cond_31
    move v2, v7

    .line 690
    :goto_32
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 691
    new-array v9, v8, [Ljava/lang/String;

    move v10, v7

    :goto_39
    if-ge v10, v8, :cond_5b

    .line 693
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v11

    .line 694
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v12

    invoke-static {v12, v11}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v12

    .line 695
    new-instance v13, Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v14

    sub-int v15, v12, v11

    invoke-direct {v13, v14, v11, v15, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v13, v9, v10

    add-int/2addr v12, v4

    .line 696
    invoke-virtual {v0, v12}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    .line 699
    :cond_5b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 701
    :cond_62
    :goto_62
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, v1, :cond_7a

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    .line 704
    invoke-static {v6, v0, v8, v10, v11}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeFrame(ILandroid/media/internal/exo/util/ParsableByteArray;ZILandroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)Landroid/media/internal/exo/metadata/id3/Id3Frame;

    move-result-object v12

    if-eqz v12, :cond_62

    .line 707
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_62

    .line 711
    :cond_7a
    new-array v0, v7, [Landroid/media/internal/exo/metadata/id3/Id3Frame;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/internal/exo/metadata/id3/Id3Frame;

    .line 712
    new-instance v1, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;

    move-object/from16 p5, v0

    move-object/from16 p0, v1

    move/from16 p3, v2

    move-object/from16 p1, v3

    move/from16 p2, v5

    move-object/from16 p4, v9

    invoke-direct/range {p0 .. p5}, Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Landroid/media/internal/exo/metadata/id3/Id3Frame;)V

    move-object/from16 v0, p0

    return-object v0
.end method

.method private static blacklist decodeCommentFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/CommentFrame;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p1, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 610
    :cond_5
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 611
    invoke-static {v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 613
    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 614
    invoke-virtual {p0, v4, v5, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 615
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    sub-int/2addr p1, v0

    .line 617
    new-array v0, p1, [B

    .line 618
    invoke-virtual {p0, v0, v5, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 620
    invoke-static {v0, v5, v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result p0

    .line 621
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 623
    invoke-static {v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v3

    add-int/2addr p0, v3

    .line 624
    invoke-static {v0, p0, v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v1

    .line 625
    invoke-static {v0, p0, v1, v2}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 627
    new-instance v0, Landroid/media/internal/exo/metadata/id3/CommentFrame;

    invoke-direct {v0, v6, p1, p0}, Landroid/media/internal/exo/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist decodeFrame(ILandroid/media/internal/exo/util/ParsableByteArray;ZILandroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)Landroid/media/internal/exo/metadata/id3/Id3Frame;
    .registers 23

    move/from16 v3, p0

    move-object/from16 v6, p1

    .line 284
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 285
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 286
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-lt v3, v8, :cond_1a

    .line 287
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    move v5, v1

    goto :goto_1b

    :cond_1a
    move v5, v7

    :goto_1b
    const/4 v9, 0x4

    if-ne v3, v9, :cond_3d

    .line 291
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    if-nez p2, :cond_3b

    and-int/lit16 v10, v1, 0xff

    shr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x7

    or-int/2addr v10, v11

    shr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0xe

    or-int/2addr v10, v11

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v1, v10

    :cond_3b
    :goto_3b
    move v10, v1

    goto :goto_49

    :cond_3d
    if-ne v3, v8, :cond_44

    .line 300
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    goto :goto_3b

    .line 302
    :cond_44
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    goto :goto_3b

    :goto_49
    if-lt v3, v8, :cond_51

    .line 305
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    move v11, v1

    goto :goto_52

    :cond_51
    move v11, v7

    :goto_52
    const/4 v12, 0x0

    if-nez v2, :cond_67

    if-nez v0, :cond_67

    if-nez v4, :cond_67

    if-nez v5, :cond_67

    if-nez v10, :cond_67

    if-nez v11, :cond_67

    .line 313
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v12

    .line 317
    :cond_67
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v1

    add-int v13, v1, v10

    .line 318
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v1

    const-string v14, "Id3Decoder"

    if-le v13, v1, :cond_82

    .line 319
    const-string v0, "Frame size exceeds remaining tag data"

    invoke-static {v14, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v6}, Landroid/media/internal/exo/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v12

    :cond_82
    if-eqz p4, :cond_98

    move v1, v3

    move v3, v0

    move-object/from16 v0, p4

    .line 325
    invoke-interface/range {v0 .. v5}, Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;->evaluate(IIIII)Z

    move-result v15

    move v0, v3

    move v3, v1

    move v1, v0

    move v0, v2

    move v2, v4

    move v4, v5

    if-nez v15, :cond_9c

    .line 327
    invoke-virtual {v6, v13}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v12

    :cond_98
    move v1, v0

    move v0, v2

    move v2, v4

    move v4, v5

    :cond_9c
    const/4 v5, 0x1

    if-ne v3, v8, :cond_b8

    and-int/lit16 v8, v11, 0x80

    if-eqz v8, :cond_a5

    move v8, v5

    goto :goto_a6

    :cond_a5
    move v8, v7

    :goto_a6
    and-int/lit8 v15, v11, 0x40

    if-eqz v15, :cond_ac

    move v15, v5

    goto :goto_ad

    :cond_ac
    move v15, v7

    :goto_ad
    and-int/lit8 v11, v11, 0x20

    if-eqz v11, :cond_b3

    move v11, v5

    goto :goto_b4

    :cond_b3
    move v11, v7

    :goto_b4
    move/from16 v17, v7

    move v7, v8

    goto :goto_e9

    :cond_b8
    if-ne v3, v9, :cond_e4

    and-int/lit8 v8, v11, 0x40

    if-eqz v8, :cond_c0

    move v8, v5

    goto :goto_c1

    :cond_c0
    move v8, v7

    :goto_c1
    and-int/lit8 v15, v11, 0x8

    if-eqz v15, :cond_c7

    move v15, v5

    goto :goto_c8

    :cond_c7
    move v15, v7

    :goto_c8
    and-int/lit8 v16, v11, 0x4

    if-eqz v16, :cond_cf

    move/from16 v16, v5

    goto :goto_d1

    :cond_cf
    move/from16 v16, v7

    :goto_d1
    and-int/lit8 v17, v11, 0x2

    if-eqz v17, :cond_d8

    move/from16 v17, v5

    goto :goto_da

    :cond_d8
    move/from16 v17, v7

    :goto_da
    and-int/2addr v11, v5

    if-eqz v11, :cond_de

    move v7, v5

    :cond_de
    move v11, v8

    move v8, v7

    move v7, v15

    move/from16 v15, v16

    goto :goto_e9

    :cond_e4
    move v8, v7

    move v11, v8

    move v15, v11

    move/from16 v17, v15

    :goto_e9
    if-nez v7, :cond_ed

    if-eqz v15, :cond_f2

    :cond_ed
    move-object v1, v6

    move-object/from16 v16, v12

    goto/16 :goto_245

    :cond_f2
    if-eqz v11, :cond_f9

    add-int/lit8 v10, v10, -0x1

    .line 359
    invoke-virtual {v6, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    :cond_f9
    if-eqz v8, :cond_100

    add-int/lit8 v10, v10, -0x4

    .line 363
    invoke-virtual {v6, v9}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    :cond_100
    if-eqz v17, :cond_106

    .line 366
    invoke-static {v6, v10}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->removeUnsynchronization(Landroid/media/internal/exo/util/ParsableByteArray;I)I

    move-result v10

    :cond_106
    const/16 v7, 0x54

    const/16 v5, 0x58

    const/4 v8, 0x2

    if-ne v0, v7, :cond_12b

    if-ne v1, v5, :cond_12b

    if-ne v2, v5, :cond_12b

    if-eq v3, v8, :cond_115

    if-ne v4, v5, :cond_12b

    .line 375
    :cond_115
    :try_start_115
    invoke-static {v6, v10}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeTxxxFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v5

    :goto_119
    move v8, v1

    move v9, v2

    move-object v1, v6

    move v2, v10

    move-object/from16 v16, v12

    :goto_11f
    move v10, v4

    goto/16 :goto_212

    :catchall_122
    move-exception v0

    move-object v1, v6

    goto/16 :goto_241

    :catch_126
    move-object v1, v6

    move-object/from16 v16, v12

    goto/16 :goto_238

    :cond_12b
    if-ne v0, v7, :cond_136

    .line 377
    invoke-static {v3, v0, v1, v2, v4}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v5

    .line 378
    invoke-static {v6, v10, v5}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Landroid/media/internal/exo/util/ParsableByteArray;ILjava/lang/String;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v5

    goto :goto_119

    :cond_136
    const/16 v9, 0x57

    if-ne v0, v9, :cond_147

    if-ne v1, v5, :cond_147

    if-ne v2, v5, :cond_147

    if-eq v3, v8, :cond_142

    if-ne v4, v5, :cond_147

    .line 383
    :cond_142
    invoke-static {v6, v10}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeWxxxFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/UrlLinkFrame;

    move-result-object v5

    goto :goto_119

    :cond_147
    if-ne v0, v9, :cond_152

    .line 385
    invoke-static {v3, v0, v1, v2, v4}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v5

    .line 386
    invoke-static {v6, v10, v5}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeUrlLinkFrame(Landroid/media/internal/exo/util/ParsableByteArray;ILjava/lang/String;)Landroid/media/internal/exo/metadata/id3/UrlLinkFrame;

    move-result-object v5

    goto :goto_119

    :cond_152
    const/16 v5, 0x49

    const/16 v9, 0x50

    if-ne v0, v9, :cond_167

    const/16 v11, 0x52

    if-ne v1, v11, :cond_167

    if-ne v2, v5, :cond_167

    const/16 v11, 0x56

    if-ne v4, v11, :cond_167

    .line 388
    invoke-static {v6, v10}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodePrivFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/PrivFrame;

    move-result-object v5

    goto :goto_119

    :cond_167
    const/16 v11, 0x47

    const/16 v15, 0x4f

    if-ne v0, v11, :cond_17e

    const/16 v11, 0x45

    if-ne v1, v11, :cond_17e

    if-ne v2, v15, :cond_17e

    const/16 v11, 0x42

    if-eq v4, v11, :cond_179

    if-ne v3, v8, :cond_17e

    .line 393
    :cond_179
    invoke-static {v6, v10}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeGeobFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/GeobFrame;

    move-result-object v5
    :try_end_17d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_115 .. :try_end_17d} :catch_126
    .catchall {:try_start_115 .. :try_end_17d} :catchall_122

    goto :goto_119

    :cond_17e
    const/16 v11, 0x41

    move-object/from16 v16, v12

    const/16 v12, 0x43

    if-ne v3, v8, :cond_18d

    if-ne v0, v9, :cond_1a1

    if-ne v1, v5, :cond_1a1

    if-ne v2, v12, :cond_1a1

    goto :goto_195

    :cond_18d
    if-ne v0, v11, :cond_1a1

    if-ne v1, v9, :cond_1a1

    if-ne v2, v5, :cond_1a1

    if-ne v4, v12, :cond_1a1

    .line 397
    :goto_195
    :try_start_195
    invoke-static {v6, v10, v3}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeApicFrame(Landroid/media/internal/exo/util/ParsableByteArray;II)Landroid/media/internal/exo/metadata/id3/ApicFrame;

    move-result-object v5

    :goto_199
    move v8, v1

    move v9, v2

    move-object v1, v6

    move v2, v10

    goto :goto_11f

    :catch_19e
    move-object v1, v6

    goto/16 :goto_238

    :cond_1a1
    const/16 v5, 0x4d

    if-ne v0, v12, :cond_1b2

    if-ne v1, v15, :cond_1b2

    if-ne v2, v5, :cond_1b2

    if-eq v4, v5, :cond_1ad

    if-ne v3, v8, :cond_1b2

    .line 402
    :cond_1ad
    invoke-static {v6, v10}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeCommentFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/CommentFrame;

    move-result-object v5
    :try_end_1b1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_195 .. :try_end_1b1} :catch_19e
    .catchall {:try_start_195 .. :try_end_1b1} :catchall_122

    goto :goto_199

    :cond_1b2
    if-ne v0, v12, :cond_1d9

    const/16 v8, 0x48

    if-ne v1, v8, :cond_1d9

    if-ne v2, v11, :cond_1d9

    if-ne v4, v9, :cond_1d9

    move/from16 v5, p3

    move v8, v1

    move v9, v2

    move-object v1, v6

    move v2, v10

    move-object/from16 v6, p4

    move v10, v4

    move/from16 v4, p2

    .line 405
    :try_start_1c7
    invoke-static/range {v1 .. v6}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeChapterFrame(Landroid/media/internal/exo/util/ParsableByteArray;IIZILandroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)Landroid/media/internal/exo/metadata/id3/ChapterFrame;

    move-result-object v5
    :try_end_1cb
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c7 .. :try_end_1cb} :catch_1d5
    .catchall {:try_start_1c7 .. :try_end_1cb} :catchall_1d0

    move/from16 v3, p0

    move-object/from16 v1, p1

    goto :goto_212

    :catchall_1d0
    move-exception v0

    move-object/from16 v1, p1

    goto/16 :goto_241

    :catch_1d5
    move-object/from16 v1, p1

    goto/16 :goto_238

    :cond_1d9
    move v8, v1

    move v9, v2

    move v11, v5

    move v2, v10

    move v10, v4

    if-ne v0, v12, :cond_1f7

    if-ne v8, v7, :cond_1f7

    if-ne v9, v15, :cond_1f7

    if-ne v10, v12, :cond_1f7

    move/from16 v3, p0

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 414
    :try_start_1f0
    invoke-static/range {v1 .. v6}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeChapterTOCFrame(Landroid/media/internal/exo/util/ParsableByteArray;IIZILandroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)Landroid/media/internal/exo/metadata/id3/ChapterTocFrame;

    move-result-object v5

    goto :goto_212

    :catchall_1f5
    move-exception v0

    goto :goto_241

    :cond_1f7
    move/from16 v3, p0

    move-object/from16 v1, p1

    if-ne v0, v11, :cond_20a

    const/16 v4, 0x4c

    if-ne v8, v4, :cond_20a

    if-ne v9, v4, :cond_20a

    if-ne v10, v7, :cond_20a

    .line 422
    invoke-static {v1, v2}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeMlltFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/MlltFrame;

    move-result-object v5

    goto :goto_212

    .line 424
    :cond_20a
    invoke-static {v3, v0, v8, v9, v10}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v4

    .line 425
    invoke-static {v1, v2, v4}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeBinaryFrame(Landroid/media/internal/exo/util/ParsableByteArray;ILjava/lang/String;)Landroid/media/internal/exo/metadata/id3/BinaryFrame;

    move-result-object v5

    :goto_212
    if-nez v5, :cond_234

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to decode frame: id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-static {v3, v0, v8, v9, v10}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frameSize="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 428
    invoke-static {v14, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_234
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f0 .. :try_end_234} :catch_238
    .catchall {:try_start_1f0 .. :try_end_234} :catchall_1f5

    .line 440
    :cond_234
    invoke-virtual {v1, v13}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v5

    .line 437
    :catch_238
    :goto_238
    :try_start_238
    const-string v0, "Unsupported character encoding"

    invoke-static {v14, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23d
    .catchall {:try_start_238 .. :try_end_23d} :catchall_1f5

    .line 440
    invoke-virtual {v1, v13}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v16

    :goto_241
    invoke-virtual {v1, v13}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 441
    throw v0

    .line 352
    :goto_245
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v14, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v1, v13}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v16
.end method

.method private static blacklist decodeGeobFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/GeobFrame;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 540
    invoke-static {v0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 542
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 543
    invoke-virtual {p0, v2, v3, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 545
    invoke-static {v2, v3}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p0

    .line 546
    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, v2, v3, p0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    .line 549
    invoke-static {v2, p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    .line 550
    invoke-static {v2, p0, v3, v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 552
    invoke-static {v0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 553
    invoke-static {v2, v3, v0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v5

    .line 555
    invoke-static {v2, v3, v5, v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 557
    invoke-static {v0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v0

    add-int/2addr v5, v0

    .line 558
    invoke-static {v2, v5, p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object p1

    .line 560
    new-instance v0, Landroid/media/internal/exo/metadata/id3/GeobFrame;

    invoke-direct {v0, v4, p0, v1, p1}, Landroid/media/internal/exo/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v0
.end method

.method private static blacklist decodeHeader(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;
    .registers 9

    .line 158
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const-string v3, "Id3Decoder"

    if-ge v0, v1, :cond_11

    .line 159
    const-string p0, "Data too short to be an ID3 tag"

    invoke-static {v3, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 163
    :cond_11
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    const v1, 0x494433

    if-eq v0, v1, :cond_3d

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected first three bytes of ID3 tag header: 0x"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%06X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 169
    :cond_3d
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x1

    .line 170
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 171
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 172
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    if-ne v0, v6, :cond_5b

    and-int/lit8 p0, v4, 0x40

    if-eqz p0, :cond_82

    .line 177
    const-string p0, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v3, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_5b
    const/4 v6, 0x3

    if-ne v0, v6, :cond_6c

    and-int/lit8 v2, v4, 0x40

    if-eqz v2, :cond_82

    .line 183
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    .line 184
    invoke-virtual {p0, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    add-int/2addr v2, v7

    sub-int/2addr v5, v2

    goto :goto_82

    :cond_6c
    if-ne v0, v7, :cond_90

    and-int/lit8 v2, v4, 0x40

    if-eqz v2, :cond_7c

    .line 190
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    add-int/lit8 v3, v2, -0x4

    .line 191
    invoke-virtual {p0, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v5, v2

    :cond_7c
    and-int/lit8 p0, v4, 0x10

    if-eqz p0, :cond_82

    add-int/lit8 v5, v5, -0xa

    :cond_82
    :goto_82
    if-ge v0, v7, :cond_89

    and-int/lit16 p0, v4, 0x80

    if-eqz p0, :cond_89

    goto :goto_8a

    :cond_89
    const/4 v1, 0x0

    .line 205
    :goto_8a
    new-instance p0, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {p0, v0, v1, v5}, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    return-object p0

    .line 199
    :cond_90
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static blacklist decodeMlltFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/MlltFrame;
    .registers 12

    .line 717
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    .line 718
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    .line 719
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    .line 720
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 721
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    .line 723
    new-instance v5, Landroid/media/internal/exo/util/ParsableBitArray;

    invoke-direct {v5}, Landroid/media/internal/exo/util/ParsableBitArray;-><init>()V

    .line 724
    invoke-virtual {v5, p0}, Landroid/media/internal/exo/util/ParsableBitArray;->reset(Landroid/media/internal/exo/util/ParsableByteArray;)V

    add-int/lit8 p1, p1, -0xa

    mul-int/lit8 p1, p1, 0x8

    add-int p0, v0, v4

    .line 727
    div-int/2addr p1, p0

    move p0, v4

    .line 728
    new-array v4, p1, [I

    move-object v6, v5

    .line 729
    new-array v5, p1, [I

    const/4 v7, 0x0

    :goto_2a
    if-ge v7, p1, :cond_3b

    .line 731
    invoke-virtual {v6, v0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 732
    invoke-virtual {v6, p0}, Landroid/media/internal/exo/util/ParsableBitArray;->readBits(I)I

    move-result v9

    .line 733
    aput v8, v4, v7

    .line 734
    aput v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 737
    :cond_3b
    new-instance v0, Landroid/media/internal/exo/metadata/id3/MlltFrame;

    invoke-direct/range {v0 .. v5}, Landroid/media/internal/exo/metadata/id3/MlltFrame;-><init>(III[I[I)V

    return-object v0
.end method

.method private static blacklist decodePrivFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/PrivFrame;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 525
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 526
    invoke-virtual {p0, v0, v1, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 528
    invoke-static {v0, v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p0

    .line 529
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, v0, v1, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    .line 532
    invoke-static {v0, p0, p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object p0

    .line 534
    new-instance p1, Landroid/media/internal/exo/metadata/id3/PrivFrame;

    invoke-direct {p1, v2, p0}, Landroid/media/internal/exo/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object p1
.end method

.method private static blacklist decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-le p2, p1, :cond_d

    .line 864
    array-length v0, p0

    if-le p2, v0, :cond_6

    goto :goto_d

    .line 867
    :cond_6
    new-instance v0, Ljava/lang/String;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0

    .line 865
    :cond_d
    :goto_d
    const-string p0, ""

    return-object p0
.end method

.method private static blacklist decodeTextInformationFrame(Landroid/media/internal/exo/util/ParsableByteArray;ILjava/lang/String;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_5

    return-object v0

    .line 476
    :cond_5
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 477
    invoke-static {v2}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 479
    new-array v1, p1, [B

    const/4 v4, 0x0

    .line 480
    invoke-virtual {p0, v1, v4, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 482
    invoke-static {v1, v4, v2}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result p0

    .line 483
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v4, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 485
    new-instance p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    invoke-direct {p0, p2, v0, p1}, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static blacklist decodeTxxxFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 452
    :cond_5
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 453
    invoke-static {v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p1, v0

    .line 455
    new-array v0, p1, [B

    const/4 v3, 0x0

    .line 456
    invoke-virtual {p0, v0, v3, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 458
    invoke-static {v0, v3, v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result p0

    .line 459
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 461
    invoke-static {v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v3

    add-int/2addr p0, v3

    .line 462
    invoke-static {v0, p0, v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v1

    .line 463
    invoke-static {v0, p0, v1, v2}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 465
    new-instance v0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    const-string v1, "TXXX"

    invoke-direct {v0, v1, p1, p0}, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist decodeUrlLinkFrame(Landroid/media/internal/exo/util/ParsableByteArray;ILjava/lang/String;)Landroid/media/internal/exo/metadata/id3/UrlLinkFrame;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 514
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 515
    invoke-virtual {p0, v0, v1, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 517
    invoke-static {v0, v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result p0

    .line 518
    new-instance p1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {p1, v0, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 520
    new-instance p0, Landroid/media/internal/exo/metadata/id3/UrlLinkFrame;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/media/internal/exo/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static blacklist decodeWxxxFrame(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/UrlLinkFrame;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 496
    :cond_5
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    .line 497
    invoke-static {v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p1, v0

    .line 499
    new-array v0, p1, [B

    const/4 v3, 0x0

    .line 500
    invoke-virtual {p0, v0, v3, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 502
    invoke-static {v0, v3, v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result p0

    .line 503
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 505
    invoke-static {v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v1

    add-int/2addr p0, v1

    .line 506
    invoke-static {v0, p0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v1

    .line 507
    const-string v2, "ISO-8859-1"

    invoke-static {v0, p0, v1, v2}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 509
    new-instance v0, Landroid/media/internal/exo/metadata/id3/UrlLinkFrame;

    const-string v1, "WXXX"

    invoke-direct {v0, v1, p1, p0}, Landroid/media/internal/exo/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist delimiterLength(I)I
    .registers 2

    .line 0
    if-eqz p0, :cond_8

    const/4 v0, 0x3

    if-ne p0, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x2

    return p0

    :cond_8
    :goto_8
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist getCharsetName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    .line 790
    const-string p0, "ISO-8859-1"

    return-object p0

    .line 787
    :cond_c
    const-string p0, "UTF-8"

    return-object p0

    .line 785
    :cond_f
    const-string p0, "UTF-16BE"

    return-object p0

    .line 783
    :cond_12
    const-string p0, "UTF-16"

    return-object p0
.end method

.method private static blacklist getFrameId(IIIII)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1c

    .line 797
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%c%c%c"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 798
    :cond_1c
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%c%c%c%c"

    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist indexOfEos([BII)I
    .registers 5

    .line 802
    invoke-static {p0, p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    if-eqz p2, :cond_25

    const/4 v1, 0x3

    if-ne p2, v1, :cond_a

    goto :goto_25

    .line 810
    :cond_a
    :goto_a
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    if-ge v0, p2, :cond_23

    sub-int p2, v0, p1

    .line 811
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1c

    add-int/lit8 p2, v0, 0x1

    aget-byte p2, p0, p2

    if-nez p2, :cond_1c

    return v0

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    .line 814
    invoke-static {p0, v0}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    goto :goto_a

    .line 817
    :cond_23
    array-length p0, p0

    return p0

    :cond_25
    :goto_25
    return v0
.end method

.method private static blacklist indexOfZeroByte([BI)I
    .registers 3

    .line 821
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_b

    .line 822
    aget-byte v0, p0, p1

    if-nez v0, :cond_8

    return p1

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 826
    :cond_b
    array-length p0, p0

    return p0
.end method

.method private static blacklist removeUnsynchronization(Landroid/media/internal/exo/util/ParsableByteArray;I)I
    .registers 7

    .line 762
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 763
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result p0

    move v1, p0

    :goto_9
    add-int/lit8 v2, v1, 0x1

    add-int v3, p0, p1

    if-ge v2, v3, :cond_29

    .line 765
    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_27

    aget-byte v3, v0, v2

    if-nez v3, :cond_27

    sub-int v3, v1, p0

    add-int/lit8 v1, v1, 0x2

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, -0x2

    .line 767
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    :cond_27
    move v1, v2

    goto :goto_9

    :cond_29
    return p1
.end method

.method private static blacklist validateFrames(Landroid/media/internal/exo/util/ParsableByteArray;IIZ)Z
    .registers 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 213
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 215
    :goto_8
    :try_start_8
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_ae

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_25

    .line 221
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 222
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v8

    .line 223
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    goto :goto_2f

    :catchall_22
    move-exception v0

    goto/16 :goto_b2

    .line 225
    :cond_25
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v7

    .line 226
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v8
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_22

    int-to-long v8, v8

    move v10, v6

    :goto_2f
    const-wide/16 v11, 0x0

    if-nez v7, :cond_3d

    cmp-long v7, v8, v11

    if-nez v7, :cond_3d

    if-nez v10, :cond_3d

    .line 273
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return v4

    :cond_3d
    const/4 v7, 0x4

    if-ne v0, v7, :cond_6e

    if-nez p3, :cond_6e

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v11, v13, v11

    if-eqz v11, :cond_4e

    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return v6

    :cond_4e
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x10

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0xe

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x18

    shr-long/2addr v8, v15

    and-long/2addr v8, v11

    const/16 v11, 0x15

    shl-long/2addr v8, v11

    or-long/2addr v8, v13

    :cond_6e
    if-ne v0, v7, :cond_7e

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_76

    move v3, v4

    goto :goto_77

    :cond_76
    move v3, v6

    :goto_77
    and-int/lit8 v7, v10, 0x1

    if-eqz v7, :cond_7c

    goto :goto_8e

    :cond_7c
    move v4, v6

    goto :goto_8e

    :cond_7e
    if-ne v0, v3, :cond_8c

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_86

    move v3, v4

    goto :goto_87

    :cond_86
    move v3, v6

    :goto_87
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_7c

    goto :goto_8e

    :cond_8c
    move v3, v6

    move v4, v3

    :goto_8e
    if-eqz v4, :cond_92

    add-int/lit8 v3, v3, 0x4

    :cond_92
    int-to-long v3, v3

    cmp-long v3, v8, v3

    if-gez v3, :cond_9b

    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return v6

    .line 265
    :cond_9b
    :try_start_9b
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result v3
    :try_end_9f
    .catchall {:try_start_9b .. :try_end_9f} :catchall_22

    int-to-long v3, v3

    cmp-long v3, v3, v8

    if-gez v3, :cond_a8

    .line 273
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return v6

    :cond_a8
    long-to-int v3, v8

    .line 268
    :try_start_a9
    invoke-virtual {v1, v3}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_22

    goto/16 :goto_8

    .line 273
    :cond_ae
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return v4

    :goto_b2
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 274
    throw v0
.end method


# virtual methods
.method public blacklist decode([BI)Landroid/media/internal/exo/metadata/Metadata;
    .registers 9

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v1, Landroid/media/internal/exo/util/ParsableByteArray;

    invoke-direct {v1, p1, p2}, Landroid/media/internal/exo/util/ParsableByteArray;-><init>([BI)V

    .line 112
    invoke-static {v1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeHeader(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_12

    return-object p2

    .line 117
    :cond_12
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v2

    .line 118
    # getter for: Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    const/4 v3, 0x6

    goto :goto_21

    :cond_1f
    const/16 v3, 0xa

    .line 119
    :goto_21
    # getter for: Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->framesSize:I
    invoke-static {p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->access$100(Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v4

    .line 120
    # getter for: Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->isUnsynchronized:Z
    invoke-static {p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->access$200(Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 121
    # getter for: Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->framesSize:I
    invoke-static {p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->access$100(Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v4

    invoke-static {v1, v4}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->removeUnsynchronization(Landroid/media/internal/exo/util/ParsableByteArray;I)I

    move-result v4

    :cond_33
    add-int/2addr v2, v4

    .line 123
    invoke-virtual {v1, v2}, Landroid/media/internal/exo/util/ParsableByteArray;->setLimit(I)V

    .line 126
    # getter for: Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->validateFrames(Landroid/media/internal/exo/util/ParsableByteArray;IIZ)Z

    move-result v2

    if-nez v2, :cond_6d

    .line 127
    # getter for: Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_52

    const/4 v2, 0x1

    invoke-static {v1, v4, v3, v2}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->validateFrames(Landroid/media/internal/exo/util/ParsableByteArray;IIZ)Z

    move-result v4

    if-eqz v4, :cond_52

    move v4, v2

    goto :goto_6d

    .line 130
    :cond_52
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Id3Decoder"

    invoke-static {p1, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 135
    :cond_6d
    :goto_6d
    invoke-virtual {v1}, Landroid/media/internal/exo/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    if-lt p2, v3, :cond_83

    .line 139
    # getter for: Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->majorVersion:I
    invoke-static {p1}, Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;->access$000(Landroid/media/internal/exo/metadata/id3/Id3Decoder$Id3Header;)I

    move-result p2

    iget-object v2, p0, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->framePredicate:Landroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;

    .line 138
    invoke-static {p2, v1, v4, v3, v2}, Landroid/media/internal/exo/metadata/id3/Id3Decoder;->decodeFrame(ILandroid/media/internal/exo/util/ParsableByteArray;ZILandroid/media/internal/exo/metadata/id3/Id3Decoder$FramePredicate;)Landroid/media/internal/exo/metadata/id3/Id3Frame;

    move-result-object p2

    if-eqz p2, :cond_6d

    .line 145
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 149
    :cond_83
    new-instance p0, Landroid/media/internal/exo/metadata/Metadata;

    invoke-direct {p0, v0}, Landroid/media/internal/exo/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object p0
.end method
