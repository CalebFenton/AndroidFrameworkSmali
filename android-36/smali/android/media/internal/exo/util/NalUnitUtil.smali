.class public final Landroid/media/internal/exo/util/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/util/NalUnitUtil$SpsData;,
        Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;,
        Landroid/media/internal/exo/util/NalUnitUtil$PpsData;
    }
.end annotation


# static fields
.field public static final blacklist ASPECT_RATIO_IDC_VALUES:[F

.field public static final blacklist NAL_START_CODE:[B

.field private static blacklist scratchEscapePositions:[I

.field private static final blacklist scratchEscapePositionsLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x4

    .line 132
    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Landroid/media/internal/exo/util/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    .line 137
    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Landroid/media/internal/exo/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 162
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/internal/exo/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    .line 168
    new-array v0, v0, [I

    sput-object v0, Landroid/media/internal/exo/util/NalUnitUtil;->scratchEscapePositions:[I

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static blacklist clearPrefixFlags([Z)V
    .registers 3

    const/4 v0, 0x0

    .line 719
    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    .line 720
    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    .line 721
    aput-boolean v0, p0, v1

    return-void
.end method

.method public static blacklist findNalUnit([BII[Z)I
    .registers 12

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    .line 659
    :goto_9
    invoke-static {v3}, Landroid/media/internal/exo/util/Assertions;->checkState(Z)V

    if-nez v0, :cond_f

    return p2

    .line 664
    :cond_f
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_19

    .line 665
    invoke-static {p3}, Landroid/media/internal/exo/util/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_19
    const/4 v3, 0x2

    if-le v0, v2, :cond_29

    .line 667
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_29

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_29

    .line 668
    invoke-static {p3}, Landroid/media/internal/exo/util/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_29
    if-le v0, v3, :cond_3e

    .line 670
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_3e

    aget-byte v4, p0, p1

    if-nez v4, :cond_3e

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_3e

    .line 674
    invoke-static {p3}, Landroid/media/internal/exo/util/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_3e
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_41
    if-ge p1, v4, :cond_61

    .line 682
    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-eqz v6, :cond_4a

    goto :goto_5e

    :cond_4a
    add-int/lit8 v6, p1, -0x2

    .line 685
    aget-byte v7, p0, v6

    if-nez v7, :cond_5c

    add-int/lit8 v7, p1, -0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_5c

    if-ne v5, v2, :cond_5c

    .line 686
    invoke-static {p3}, Landroid/media/internal/exo/util/NalUnitUtil;->clearPrefixFlags([Z)V

    return v6

    :cond_5c
    add-int/lit8 p1, p1, -0x2

    :goto_5e
    add-int/lit8 p1, p1, 0x3

    goto :goto_41

    :cond_61
    if-le v0, v3, :cond_77

    add-int/lit8 p1, p2, -0x3

    .line 698
    aget-byte p1, p0, p1

    if-nez p1, :cond_75

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_75

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_75

    :goto_73
    move p1, v2

    goto :goto_91

    :cond_75
    move p1, v1

    goto :goto_91

    :cond_77
    if-ne v0, v3, :cond_88

    .line 700
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_75

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_75

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_75

    goto :goto_73

    .line 701
    :cond_88
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_75

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_75

    goto :goto_73

    :goto_91
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_a3

    add-int/lit8 p1, p2, -0x2

    .line 705
    aget-byte p1, p0, p1

    if-nez p1, :cond_a1

    aget-byte p1, p0, v4

    if-nez p1, :cond_a1

    :goto_9f
    move p1, v2

    goto :goto_ac

    :cond_a1
    move p1, v1

    goto :goto_ac

    .line 706
    :cond_a3
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_a1

    aget-byte p1, p0, v4

    if-nez p1, :cond_a1

    goto :goto_9f

    :goto_ac
    aput-boolean p1, p3, v2

    .line 708
    aget-byte p0, p0, v4

    if-nez p0, :cond_b3

    move v1, v2

    :cond_b3
    aput-boolean v1, p3, v3

    return p2
.end method

.method private static blacklist findNextUnescapeIndex([BII)I
    .registers 5

    :goto_0
    add-int/lit8 v0, p2, -0x2

    if-ge p1, v0, :cond_19

    .line 726
    aget-byte v0, p0, p1

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_16

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    return p1

    :cond_16
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_19
    return p2
.end method

.method public static blacklist getH265NalUnitType([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    .line 291
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist getNalUnitType([BI)I
    .registers 2

    add-int/lit8 p1, p1, 0x3

    .line 279
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static blacklist isNalUnitSei(Ljava/lang/String;B)Z
    .registers 5

    .line 264
    const-string v0, "video/avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1d

    :cond_e
    const-string v0, "video/hevc"

    .line 266
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    and-int/lit8 p0, p1, 0x7e

    shr-int/2addr p0, v1

    const/16 p1, 0x27

    if-ne p0, p1, :cond_1e

    :cond_1d
    return v1

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist parseH265SpsNalUnit([BII)Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x2

    .line 451
    invoke-static {p0, p1, p2}, Landroid/media/internal/exo/util/NalUnitUtil;->parseH265SpsNalUnitPayload([BII)Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseH265SpsNalUnitPayload([BII)Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;
    .registers 25

    .line 465
    new-instance v0, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/4 v1, 0x4

    .line 466
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v2, 0x3

    .line 467
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 468
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    const/4 v4, 0x2

    .line 469
    invoke-virtual {v0, v4}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v6

    .line 470
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v7

    const/4 v5, 0x5

    .line 471
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_28
    const/16 v12, 0x20

    const/4 v13, 0x1

    if-ge v10, v12, :cond_39

    .line 474
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_36

    shl-int v12, v13, v10

    or-int/2addr v9, v12

    :cond_36
    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    :cond_39
    const/4 v10, 0x6

    .line 478
    new-array v12, v10, [I

    move v14, v11

    :goto_3d
    const/16 v15, 0x8

    if-ge v14, v10, :cond_4a

    .line 480
    invoke-virtual {v0, v15}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    aput v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3d

    .line 482
    :cond_4a
    invoke-virtual {v0, v15}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v10

    move/from16 p0, v5

    move v5, v11

    move v14, v5

    :goto_52
    if-ge v14, v3, :cond_67

    .line 485
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_5c

    add-int/lit8 v5, v5, 0x59

    .line 488
    :cond_5c
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_64

    add-int/lit8 v5, v5, 0x8

    :cond_64
    add-int/lit8 v14, v14, 0x1

    goto :goto_52

    .line 492
    :cond_67
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    if-lez v3, :cond_72

    rsub-int/lit8 v5, v3, 0x8

    mul-int/2addr v5, v4

    .line 494
    invoke-virtual {v0, v5}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    :cond_72
    move v5, v11

    move v11, v10

    move-object v10, v12

    .line 496
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    .line 497
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    if-ne v14, v2, :cond_82

    .line 499
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 501
    :cond_82
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 502
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 503
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v17

    if-eqz v17, :cond_b9

    .line 504
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 505
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 506
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 507
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    if-eq v14, v13, :cond_a8

    if-ne v14, v4, :cond_a5

    goto :goto_a8

    :cond_a5
    move/from16 v21, v13

    goto :goto_aa

    :cond_a8
    :goto_a8
    move/from16 v21, v4

    :goto_aa
    if-ne v14, v13, :cond_ad

    move v13, v4

    :cond_ad
    add-int v17, v17, v18

    mul-int v21, v21, v17

    sub-int v2, v2, v21

    add-int v19, v19, v20

    mul-int v13, v13, v19

    sub-int v16, v16, v13

    :cond_b9
    move v13, v2

    .line 514
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 515
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 516
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 518
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_cc

    move v14, v5

    goto :goto_cd

    :cond_cc
    move v14, v3

    :goto_cd
    if-gt v14, v3, :cond_db

    .line 519
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 520
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 521
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v14, v14, 0x1

    goto :goto_cd

    .line 523
    :cond_db
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 524
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 525
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 526
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 527
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 528
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 530
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 531
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_fc

    .line 532
    invoke-static {v0}, Landroid/media/internal/exo/util/NalUnitUtil;->skipH265ScalingList(Landroid/media/internal/exo/util/ParsableNalUnitBitArray;)V

    .line 534
    :cond_fc
    invoke-virtual {v0, v4}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 535
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_111

    .line 537
    invoke-virtual {v0, v15}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 538
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 539
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 540
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 542
    :cond_111
    invoke-static {v0}, Landroid/media/internal/exo/util/NalUnitUtil;->skipShortTermReferencePictureSets(Landroid/media/internal/exo/util/ParsableNalUnitBitArray;)V

    .line 543
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    if-eqz v3, :cond_128

    .line 545
    :goto_11a
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    if-ge v5, v3, :cond_128

    add-int/lit8 v3, v2, 0x5

    .line 548
    invoke-virtual {v0, v3}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_11a

    .line 551
    :cond_128
    invoke-virtual {v0, v4}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 553
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1a5

    .line 554
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_171

    .line 555
    invoke-virtual {v0, v15}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    const/16 v4, 0xff

    if-ne v2, v4, :cond_153

    const/16 v2, 0x10

    .line 557
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 558
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    if-eqz v4, :cond_171

    if-eqz v2, :cond_171

    int-to-float v3, v4

    int-to-float v2, v2

    div-float/2addr v3, v2

    goto :goto_171

    .line 562
    :cond_153
    sget-object v4, Landroid/media/internal/exo/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v5, v4

    if-ge v2, v5, :cond_15b

    .line 563
    aget v3, v4, v2

    goto :goto_171

    .line 565
    :cond_15b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NalUnitUtil"

    invoke-static {v4, v2}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_171
    :goto_171
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_17a

    .line 569
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 571
    :cond_17a
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_18e

    .line 572
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 573
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_18e

    const/16 v1, 0x18

    .line 575
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBits(I)V

    .line 578
    :cond_18e
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_19a

    .line 579
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 580
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 582
    :cond_19a
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 583
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1a5

    mul-int/lit8 v16, v16, 0x2

    :cond_1a5
    move v15, v3

    move/from16 v14, v16

    .line 590
    new-instance v5, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;

    invoke-direct/range {v5 .. v15}, Landroid/media/internal/exo/util/NalUnitUtil$H265SpsData;-><init>(IZII[IIIIIF)V

    return-object v5
.end method

.method public static blacklist parsePpsNalUnit([BII)Landroid/media/internal/exo/util/NalUnitUtil$PpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 613
    invoke-static {p0, p1, p2}, Landroid/media/internal/exo/util/NalUnitUtil;->parsePpsNalUnitPayload([BII)Landroid/media/internal/exo/util/NalUnitUtil$PpsData;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parsePpsNalUnitPayload([BII)Landroid/media/internal/exo/util/NalUnitUtil$PpsData;
    .registers 4

    .line 626
    new-instance v0, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;-><init>([BII)V

    .line 627
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p0

    .line 628
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    .line 629
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 630
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result p2

    .line 631
    new-instance v0, Landroid/media/internal/exo/util/NalUnitUtil$PpsData;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/internal/exo/util/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v0
.end method

.method public static blacklist parseSpsNalUnit([BII)Landroid/media/internal/exo/util/NalUnitUtil$SpsData;
    .registers 3

    add-int/lit8 p1, p1, 0x1

    .line 304
    invoke-static {p0, p1, p2}, Landroid/media/internal/exo/util/NalUnitUtil;->parseSpsNalUnitPayload([BII)Landroid/media/internal/exo/util/NalUnitUtil$SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseSpsNalUnitPayload([BII)Landroid/media/internal/exo/util/NalUnitUtil$SpsData;
    .registers 24

    .line 317
    new-instance v0, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x8

    .line 318
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 319
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 320
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 321
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v6

    const/16 v2, 0x64

    const/4 v7, 0x3

    const/4 v9, 0x1

    if-eq v3, v2, :cond_4b

    const/16 v2, 0x6e

    if-eq v3, v2, :cond_4b

    const/16 v2, 0x7a

    if-eq v3, v2, :cond_4b

    const/16 v2, 0xf4

    if-eq v3, v2, :cond_4b

    const/16 v2, 0x2c

    if-eq v3, v2, :cond_4b

    const/16 v2, 0x53

    if-eq v3, v2, :cond_4b

    const/16 v2, 0x56

    if-eq v3, v2, :cond_4b

    const/16 v2, 0x76

    if-eq v3, v2, :cond_4b

    const/16 v2, 0x80

    if-eq v3, v2, :cond_4b

    const/16 v2, 0x8a

    if-ne v3, v2, :cond_48

    goto :goto_4b

    :cond_48
    move v2, v9

    const/4 v11, 0x0

    goto :goto_83

    .line 335
    :cond_4b
    :goto_4b
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    if-ne v2, v7, :cond_56

    .line 337
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    goto :goto_57

    :cond_56
    const/4 v11, 0x0

    .line 339
    :goto_57
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 340
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 341
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 342
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    if-eqz v12, :cond_83

    if-eq v2, v7, :cond_6a

    move v12, v1

    goto :goto_6c

    :cond_6a
    const/16 v12, 0xc

    :goto_6c
    const/4 v13, 0x0

    :goto_6d
    if-ge v13, v12, :cond_83

    .line 346
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_80

    const/4 v14, 0x6

    if-ge v13, v14, :cond_7b

    const/16 v14, 0x10

    goto :goto_7d

    :cond_7b
    const/16 v14, 0x40

    .line 348
    :goto_7d
    invoke-static {v0, v14}, Landroid/media/internal/exo/util/NalUnitUtil;->skipScalingList(Landroid/media/internal/exo/util/ParsableNalUnitBitArray;I)V

    :cond_80
    add-int/lit8 v13, v13, 0x1

    goto :goto_6d

    .line 354
    :cond_83
    :goto_83
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    .line 355
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v13

    if-nez v13, :cond_9d

    .line 360
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    move/from16 v16, v9

    move/from16 p1, v11

    const/16 p2, 0x10

    :goto_9b
    const/4 v15, 0x0

    goto :goto_cb

    :cond_9d
    if-ne v13, v9, :cond_c3

    .line 362
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    .line 363
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 364
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 365
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    move/from16 p1, v11

    int-to-long v10, v15

    move/from16 v16, v9

    const/16 p2, 0x10

    const/4 v15, 0x0

    :goto_b5
    int-to-long v8, v15

    cmp-long v8, v8, v10

    if-gez v8, :cond_c0

    .line 367
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v15, v15, 0x1

    goto :goto_b5

    :cond_c0
    move v15, v14

    const/4 v14, 0x0

    goto :goto_cb

    :cond_c3
    move/from16 v16, v9

    move/from16 p1, v11

    const/16 p2, 0x10

    const/4 v14, 0x0

    goto :goto_9b

    .line 370
    :goto_cb
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 371
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 373
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    .line 374
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    .line 375
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    rsub-int/lit8 v10, v11, 0x2

    mul-int/2addr v10, v9

    if-nez v11, :cond_e9

    .line 378
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 381
    :cond_e9
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    mul-int/lit8 v8, v8, 0x10

    mul-int/lit8 v10, v10, 0x10

    .line 384
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    if-eqz v9, :cond_12a

    .line 386
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    .line 387
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 388
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 389
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    if-nez v2, :cond_10b

    rsub-int/lit8 v2, v11, 0x2

    goto :goto_11f

    :cond_10b
    const/16 v20, 0x2

    if-ne v2, v7, :cond_112

    move/from16 v7, v16

    goto :goto_116

    :cond_112
    move/from16 v7, v16

    move/from16 v16, v20

    :goto_116
    if-ne v2, v7, :cond_119

    goto :goto_11b

    :cond_119
    move/from16 v20, v7

    :goto_11b
    rsub-int/lit8 v2, v11, 0x2

    mul-int v2, v2, v20

    :goto_11f
    add-int v9, v9, v17

    mul-int v9, v9, v16

    sub-int/2addr v8, v9

    add-int v18, v18, v19

    mul-int v18, v18, v2

    sub-int v10, v10, v18

    :cond_12a
    move v7, v8

    move v8, v10

    .line 406
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v2, :cond_173

    .line 408
    invoke-virtual {v0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_173

    .line 410
    invoke-virtual {v0, v1}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    const/16 v2, 0xff

    if-ne v1, v2, :cond_155

    move/from16 v2, p2

    .line 412
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 413
    invoke-virtual {v0, v2}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBits(I)I

    move-result v0

    if-eqz v1, :cond_173

    if-eqz v0, :cond_173

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v9, v1, v0

    goto :goto_173

    .line 417
    :cond_155
    sget-object v0, Landroid/media/internal/exo/util/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    array-length v2, v0

    if-ge v1, v2, :cond_15d

    .line 418
    aget v9, v0, v1

    goto :goto_173

    .line 420
    :cond_15d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NalUnitUtil"

    invoke-static {v1, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_173
    :goto_173
    new-instance v2, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;

    move/from16 v10, p1

    invoke-direct/range {v2 .. v15}, Landroid/media/internal/exo/util/NalUnitUtil$SpsData;-><init>(IIIIIIFZZIIIZ)V

    return-object v2
.end method

.method private static blacklist skipH265ScalingList(Landroid/media/internal/exo/util/ParsableNalUnitBitArray;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_36

    move v3, v0

    :goto_6
    const/4 v4, 0x6

    if-ge v3, v4, :cond_33

    .line 748
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_14

    .line 750
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_2d

    :cond_14
    shl-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v2

    shl-int v4, v5, v4

    const/16 v6, 0x40

    .line 752
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_24

    .line 755
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_24
    move v6, v0

    :goto_25
    if-ge v6, v4, :cond_2d

    .line 758
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2d
    :goto_2d
    const/4 v4, 0x3

    if-ne v1, v4, :cond_31

    move v5, v4

    :cond_31
    add-int/2addr v3, v5

    goto :goto_6

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return-void
.end method

.method private static blacklist skipScalingList(Landroid/media/internal/exo/util/ParsableNalUnitBitArray;I)V
    .registers 5

    const/16 v0, 0x8

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_5
    if-ge v2, p1, :cond_19

    if-eqz v0, :cond_12

    .line 738
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 739
    rem-int/lit16 v0, v0, 0x100

    :cond_12
    if-nez v0, :cond_15

    goto :goto_16

    :cond_15
    move v1, v0

    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

.method private static blacklist skipShortTermReferencePictureSets(Landroid/media/internal/exo/util/ParsableNalUnitBitArray;)V
    .registers 9

    .line 766
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v2, v0, :cond_4d

    if-eqz v2, :cond_10

    .line 776
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v3

    :cond_10
    if-eqz v3, :cond_27

    .line 779
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    .line 780
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move v5, v1

    :goto_19
    if-gt v5, v4, :cond_4a

    .line 782
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    if-nez v6, :cond_24

    .line 783
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 787
    :cond_27
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v4

    .line 788
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v5

    add-int v6, v4, v5

    move v7, v1

    :goto_32
    if-ge v7, v4, :cond_3d

    .line 791
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 792
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_3d
    move v4, v1

    :goto_3e
    if-ge v4, v5, :cond_49

    .line 795
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 796
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_49
    move v4, v6

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4d
    return-void
.end method

.method public static blacklist unescapeStream([BI)I
    .registers 10

    .line 182
    sget-object v0, Landroid/media/internal/exo/util/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_6
    :goto_6
    if-ge v2, p1, :cond_29

    .line 186
    :try_start_8
    invoke-static {p0, v2, p1}, Landroid/media/internal/exo/util/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v2

    if-ge v2, p1, :cond_6

    .line 188
    sget-object v4, Landroid/media/internal/exo/util/NalUnitUtil;->scratchEscapePositions:[I

    array-length v5, v4

    if-gt v5, v3, :cond_1f

    .line 190
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 191
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Landroid/media/internal/exo/util/NalUnitUtil;->scratchEscapePositions:[I

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_4d

    .line 193
    :cond_1f
    :goto_1f
    sget-object v4, Landroid/media/internal/exo/util/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_6

    :cond_29
    sub-int/2addr p1, v3

    move v2, v1

    move v4, v2

    move v5, v4

    :goto_2d
    if-ge v2, v3, :cond_46

    .line 202
    sget-object v6, Landroid/media/internal/exo/util/NalUnitUtil;->scratchEscapePositions:[I

    aget v6, v6, v2

    sub-int/2addr v6, v5

    .line 204
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    .line 206
    aput-byte v1, p0, v4

    add-int/lit8 v4, v4, 0x2

    .line 207
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_46
    sub-int v1, p1, v4

    .line 212
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    monitor-exit v0

    return p1

    .line 214
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_1d

    throw p0
.end method
