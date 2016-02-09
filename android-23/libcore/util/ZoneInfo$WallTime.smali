.class public Llibcore/util/ZoneInfo$WallTime;
.super Ljava/lang/Object;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallTime"
.end annotation


# instance fields
.field private final calendar:Ljava/util/GregorianCalendar;

.field private gmtOffsetSeconds:I

.field private hour:I

.field private isDst:I

.field private minute:I

.field private month:I

.field private monthDay:I

.field private second:I

.field private weekDay:I

.field private year:I

.field private yearDay:I


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 374
    invoke-static {}, Llibcore/util/ZoneInfo$WallTime;->createGregorianCalendar()Ljava/util/GregorianCalendar;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@9
    .line 375
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@b
    const-string/jumbo v1, "UTC"

    #@e
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@15
    .line 373
    return-void
.end method

.method private copyFieldsFromCalendar()V
    .locals 2

    #@0
    .prologue
    .line 831
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@6
    move-result v0

    #@7
    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    #@9
    .line 832
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    #@12
    .line 833
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@14
    const/4 v1, 0x5

    #@15
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@18
    move-result v0

    #@19
    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    #@1b
    .line 834
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@1d
    const/16 v1, 0xb

    #@1f
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@22
    move-result v0

    #@23
    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    #@25
    .line 835
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@27
    const/16 v1, 0xc

    #@29
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    #@2f
    .line 836
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@31
    const/16 v1, 0xd

    #@33
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@36
    move-result v0

    #@37
    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    #@39
    .line 839
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@3b
    const/4 v1, 0x7

    #@3c
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@3f
    move-result v0

    #@40
    add-int/lit8 v0, v0, -0x1

    #@42
    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    #@44
    .line 841
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@46
    const/4 v1, 0x6

    #@47
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@4a
    move-result v0

    #@4b
    add-int/lit8 v0, v0, -0x1

    #@4d
    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    #@4f
    .line 830
    return-void
.end method

.method private copyFieldsToCalendar()V
    .locals 3

    #@0
    .prologue
    .line 822
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@2
    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@8
    .line 823
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@a
    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    #@c
    const/4 v2, 0x2

    #@d
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@10
    .line 824
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@12
    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    #@14
    const/4 v2, 0x5

    #@15
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@18
    .line 825
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@1a
    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    #@1c
    const/16 v2, 0xb

    #@1e
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@21
    .line 826
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@23
    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    #@25
    const/16 v2, 0xc

    #@27
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@2a
    .line 827
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@2c
    iget v1, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    #@2e
    const/16 v2, 0xd

    #@30
    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@33
    .line 821
    return-void
.end method

.method private static createGregorianCalendar()Ljava/util/GregorianCalendar;
    .locals 2

    #@0
    .prologue
    .line 381
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    #@6
    return-object v0
.end method

.method private doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;
    .locals 20
    .param p1, "zoneInfo"    # Llibcore/util/ZoneInfo;
    .param p2, "initialTransitionIndex"    # I
    .param p3, "wallTimeSeconds"    # I
    .param p4, "mustMatchDst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    #@0
    .prologue
    .line 649
    const v8, 0x15180

    #@3
    .line 650
    .local v8, "MAX_SEARCH_SECONDS":I
    const/4 v10, 0x0

    #@4
    .local v10, "clampTop":Z
    const/4 v9, 0x0

    #@5
    .line 651
    .local v9, "clampBottom":Z
    const/4 v12, 0x0

    #@6
    .line 654
    .end local v9    # "clampBottom":Z
    .end local v10    # "clampTop":Z
    .local v12, "loop":I
    :cond_0
    add-int/lit8 v2, v12, 0x1

    #@8
    div-int/lit8 v16, v2, 0x2

    #@a
    .line 655
    .local v16, "transitionIndexDelta":I
    rem-int/lit8 v2, v12, 0x2

    #@c
    const/4 v3, 0x1

    #@d
    if-ne v2, v3, :cond_1

    #@f
    .line 656
    mul-int/lit8 v16, v16, -0x1

    #@11
    .line 658
    :cond_1
    add-int/lit8 v12, v12, 0x1

    #@13
    .line 661
    if-lez v16, :cond_2

    #@15
    if-nez v10, :cond_3

    #@17
    .line 662
    :cond_2
    if-gez v16, :cond_4

    #@19
    .line 661
    if-eqz v9, :cond_4

    #@1b
    .line 737
    :cond_3
    :goto_0
    if-eqz v10, :cond_e

    #@1d
    move v2, v9

    #@1e
    :goto_1
    if-eqz v2, :cond_0

    #@20
    .line 738
    const/4 v2, 0x0

    #@21
    return-object v2

    #@22
    .line 667
    :cond_4
    add-int v6, p2, v16

    #@24
    .line 669
    .local v6, "currentTransitionIndex":I
    move-object/from16 v0, p1

    #@26
    invoke-static {v0, v6}, Llibcore/util/ZoneInfo$OffsetInterval;->create(Llibcore/util/ZoneInfo;I)Llibcore/util/ZoneInfo$OffsetInterval;

    #@29
    move-result-object v5

    #@2a
    .line 670
    .local v5, "offsetInterval":Llibcore/util/ZoneInfo$OffsetInterval;
    if-nez v5, :cond_7

    #@2c
    .line 673
    if-lez v16, :cond_5

    #@2e
    const/4 v2, 0x1

    #@2f
    :goto_2
    or-int/2addr v10, v2

    #@30
    .line 674
    .local v10, "clampTop":Z
    if-gez v16, :cond_6

    #@32
    const/4 v2, 0x1

    #@33
    :goto_3
    or-int/2addr v9, v2

    #@34
    .line 675
    .local v9, "clampBottom":Z
    goto :goto_0

    #@35
    .line 673
    .end local v9    # "clampBottom":Z
    .end local v10    # "clampTop":Z
    :cond_5
    const/4 v2, 0x0

    #@36
    goto :goto_2

    #@37
    .line 674
    .restart local v10    # "clampTop":Z
    :cond_6
    const/4 v2, 0x0

    #@38
    goto :goto_3

    #@39
    .line 679
    .end local v10    # "clampTop":Z
    :cond_7
    if-eqz p4, :cond_9

    #@3b
    .line 682
    move/from16 v0, p3

    #@3d
    int-to-long v2, v0

    #@3e
    invoke-virtual {v5, v2, v3}, Llibcore/util/ZoneInfo$OffsetInterval;->containsWallTime(J)Z

    #@41
    move-result v2

    #@42
    if-eqz v2, :cond_a

    #@44
    .line 683
    move-object/from16 v0, p0

    #@46
    iget v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@48
    const/4 v3, -0x1

    #@49
    if-eq v2, v3, :cond_8

    #@4b
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    #@4e
    move-result v2

    #@4f
    move-object/from16 v0, p0

    #@51
    iget v3, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@53
    if-ne v2, v3, :cond_a

    #@55
    .line 688
    :cond_8
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getTotalOffsetSeconds()I

    #@58
    move-result v15

    #@59
    .line 689
    .local v15, "totalOffsetSeconds":I
    move/from16 v0, p3

    #@5b
    invoke-static {v0, v15}, Llibcore/util/ZoneInfo;->-wrap1(II)I

    #@5e
    move-result v13

    #@5f
    .line 692
    .local v13, "returnValue":I
    invoke-direct/range {p0 .. p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    #@62
    .line 693
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    #@65
    move-result v2

    #@66
    move-object/from16 v0, p0

    #@68
    iput v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@6a
    .line 694
    move-object/from16 v0, p0

    #@6c
    iput v15, v0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    #@6e
    .line 695
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@71
    move-result-object v2

    #@72
    return-object v2

    #@73
    .line 707
    .end local v13    # "returnValue":I
    .end local v15    # "totalOffsetSeconds":I
    :cond_9
    move-object/from16 v0, p0

    #@75
    iget v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@77
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    #@7a
    move-result v3

    #@7b
    if-eq v2, v3, :cond_a

    #@7d
    .line 708
    move-object/from16 v0, p0

    #@7f
    iget v7, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@81
    .local v7, "isDstToFind":I
    move-object/from16 v2, p0

    #@83
    move-object/from16 v3, p1

    #@85
    move/from16 v4, p3

    #@87
    .line 709
    invoke-direct/range {v2 .. v7}, Llibcore/util/ZoneInfo$WallTime;->tryOffsetAdjustments(Llibcore/util/ZoneInfo;ILlibcore/util/ZoneInfo$OffsetInterval;II)Ljava/lang/Integer;

    #@8a
    move-result-object v14

    #@8b
    .line 711
    .local v14, "returnValue":Ljava/lang/Integer;
    if-eqz v14, :cond_a

    #@8d
    .line 712
    return-object v14

    #@8e
    .line 718
    .end local v7    # "isDstToFind":I
    .end local v14    # "returnValue":Ljava/lang/Integer;
    :cond_a
    if-lez v16, :cond_c

    #@90
    .line 722
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getEndWallTimeSeconds()J

    #@93
    move-result-wide v2

    #@94
    move/from16 v0, p3

    #@96
    int-to-long v0, v0

    #@97
    move-wide/from16 v18, v0

    #@99
    sub-long v2, v2, v18

    #@9b
    .line 723
    const-wide/32 v18, 0x15180

    #@9e
    .line 722
    cmp-long v2, v2, v18

    #@a0
    if-lez v2, :cond_b

    #@a2
    const/4 v11, 0x1

    #@a3
    .line 724
    .local v11, "endSearch":Z
    :goto_4
    if-eqz v11, :cond_3

    #@a5
    .line 725
    const/4 v10, 0x1

    #@a6
    .local v10, "clampTop":Z
    goto/16 :goto_0

    #@a8
    .line 722
    .end local v10    # "clampTop":Z
    .end local v11    # "endSearch":Z
    :cond_b
    const/4 v11, 0x0

    #@a9
    .restart local v11    # "endSearch":Z
    goto :goto_4

    #@aa
    .line 727
    .end local v11    # "endSearch":Z
    :cond_c
    if-gez v16, :cond_3

    #@ac
    .line 728
    move/from16 v0, p3

    #@ae
    int-to-long v2, v0

    #@af
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getStartWallTimeSeconds()J

    #@b2
    move-result-wide v18

    #@b3
    sub-long v2, v2, v18

    #@b5
    .line 729
    const-wide/32 v18, 0x15180

    #@b8
    .line 728
    cmp-long v2, v2, v18

    #@ba
    if-ltz v2, :cond_d

    #@bc
    const/4 v11, 0x1

    #@bd
    .line 730
    .restart local v11    # "endSearch":Z
    :goto_5
    if-eqz v11, :cond_3

    #@bf
    .line 734
    const/4 v9, 0x1

    #@c0
    .local v9, "clampBottom":Z
    goto/16 :goto_0

    #@c2
    .line 728
    .end local v9    # "clampBottom":Z
    .end local v11    # "endSearch":Z
    :cond_d
    const/4 v11, 0x0

    #@c3
    .restart local v11    # "endSearch":Z
    goto :goto_5

    #@c4
    .line 737
    .end local v5    # "offsetInterval":Llibcore/util/ZoneInfo$OffsetInterval;
    .end local v6    # "currentTransitionIndex":I
    .end local v11    # "endSearch":Z
    :cond_e
    const/4 v2, 0x0

    #@c5
    goto/16 :goto_1
.end method

.method private static findTransitionIndex(Llibcore/util/ZoneInfo;I)I
    .locals 4
    .param p0, "timeZone"    # Llibcore/util/ZoneInfo;
    .param p1, "timeSeconds"    # I

    #@0
    .prologue
    .line 852
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    #@3
    move-result-object v1

    #@4
    int-to-long v2, p1

    #@5
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    #@8
    move-result v0

    #@9
    .line 853
    .local v0, "matchingRawTransition":I
    if-gez v0, :cond_0

    #@b
    .line 854
    not-int v1, v0

    #@c
    add-int/lit8 v0, v1, -0x1

    #@e
    .line 856
    :cond_0
    return v0
.end method

.method private static getOffsetsOfType(Llibcore/util/ZoneInfo;II)[I
    .locals 13
    .param p0, "zoneInfo"    # Llibcore/util/ZoneInfo;
    .param p1, "startIndex"    # I
    .param p2, "isDst"    # I

    #@0
    .prologue
    const/4 v12, -0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 576
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get1(Llibcore/util/ZoneInfo;)[I

    #@5
    move-result-object v10

    #@6
    array-length v10, v10

    #@7
    add-int/lit8 v10, v10, 0x1

    #@9
    new-array v5, v10, [I

    #@b
    .line 577
    .local v5, "offsets":[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get1(Llibcore/util/ZoneInfo;)[I

    #@e
    move-result-object v10

    #@f
    array-length v10, v10

    #@10
    new-array v6, v10, [Z

    #@12
    .line 578
    .local v6, "seen":[Z
    const/4 v3, 0x0

    #@13
    .line 580
    .local v3, "numFound":I
    const/4 v2, 0x0

    #@14
    .line 581
    .local v2, "delta":I
    const/4 v1, 0x0

    #@15
    .line 582
    .local v1, "clampTop":Z
    const/4 v0, 0x0

    #@16
    .local v0, "clampBottom":Z
    move v4, v3

    #@17
    .line 585
    .end local v3    # "numFound":I
    .local v4, "numFound":I
    :goto_0
    mul-int/lit8 v2, v2, -0x1

    #@19
    .line 586
    if-ltz v2, :cond_0

    #@1b
    .line 587
    add-int/lit8 v2, v2, 0x1

    #@1d
    .line 590
    :cond_0
    add-int v8, p1, v2

    #@1f
    .line 591
    .local v8, "transitionIndex":I
    if-gez v2, :cond_1

    #@21
    if-ge v8, v12, :cond_1

    #@23
    .line 592
    const/4 v0, 0x1

    #@24
    move v3, v4

    #@25
    .line 614
    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    :goto_1
    if-eqz v1, :cond_4

    #@27
    move v10, v0

    #@28
    :goto_2
    if-nez v10, :cond_5

    #@2a
    move v4, v3

    #@2b
    .end local v3    # "numFound":I
    .restart local v4    # "numFound":I
    goto :goto_0

    #@2c
    .line 594
    :cond_1
    if-lez v2, :cond_2

    #@2e
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get4(Llibcore/util/ZoneInfo;)[B

    #@31
    move-result-object v10

    #@32
    array-length v10, v10

    #@33
    if-lt v8, v10, :cond_2

    #@35
    .line 595
    const/4 v1, 0x1

    #@36
    move v3, v4

    #@37
    .line 596
    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    goto :goto_1

    #@38
    .line 599
    .end local v3    # "numFound":I
    .restart local v4    # "numFound":I
    :cond_2
    if-ne v8, v12, :cond_3

    #@3a
    .line 600
    if-nez p2, :cond_7

    #@3c
    .line 603
    add-int/lit8 v3, v4, 0x1

    #@3e
    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    aput v11, v5, v4

    #@40
    goto :goto_1

    #@41
    .line 607
    .end local v3    # "numFound":I
    .restart local v4    # "numFound":I
    :cond_3
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get4(Llibcore/util/ZoneInfo;)[B

    #@44
    move-result-object v10

    #@45
    aget-byte v9, v10, v8

    #@47
    .line 608
    .local v9, "type":B
    aget-boolean v10, v6, v9

    #@49
    if-nez v10, :cond_7

    #@4b
    .line 609
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get0(Llibcore/util/ZoneInfo;)[B

    #@4e
    move-result-object v10

    #@4f
    aget-byte v10, v10, v9

    #@51
    if-ne v10, p2, :cond_6

    #@53
    .line 610
    add-int/lit8 v3, v4, 0x1

    #@55
    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->-get1(Llibcore/util/ZoneInfo;)[I

    #@58
    move-result-object v10

    #@59
    aget v10, v10, v9

    #@5b
    aput v10, v5, v4

    #@5d
    .line 612
    :goto_3
    const/4 v10, 0x1

    #@5e
    aput-boolean v10, v6, v9

    #@60
    goto :goto_1

    #@61
    .end local v9    # "type":B
    :cond_4
    move v10, v11

    #@62
    .line 614
    goto :goto_2

    #@63
    .line 616
    :cond_5
    new-array v7, v3, [I

    #@65
    .line 617
    .local v7, "toReturn":[I
    invoke-static {v5, v11, v7, v11, v3}, Ljava/lang/System;->arraycopy([II[III)V

    #@68
    .line 618
    return-object v7

    #@69
    .end local v3    # "numFound":I
    .end local v7    # "toReturn":[I
    .restart local v4    # "numFound":I
    .restart local v9    # "type":B
    :cond_6
    move v3, v4

    #@6a
    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    goto :goto_3

    #@6b
    .end local v3    # "numFound":I
    .end local v9    # "type":B
    .restart local v4    # "numFound":I
    :cond_7
    move v3, v4

    #@6c
    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    goto :goto_1
.end method

.method private tryOffsetAdjustments(Llibcore/util/ZoneInfo;ILlibcore/util/ZoneInfo$OffsetInterval;II)Ljava/lang/Integer;
    .locals 18
    .param p1, "zoneInfo"    # Llibcore/util/ZoneInfo;
    .param p2, "oldWallTimeSeconds"    # I
    .param p3, "targetInterval"    # Llibcore/util/ZoneInfo$OffsetInterval;
    .param p4, "transitionIndex"    # I
    .param p5, "isDstToFind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    #@0
    .prologue
    .line 546
    move-object/from16 v0, p1

    #@2
    move/from16 v1, p4

    #@4
    move/from16 v2, p5

    #@6
    invoke-static {v0, v1, v2}, Llibcore/util/ZoneInfo$WallTime;->getOffsetsOfType(Llibcore/util/ZoneInfo;II)[I

    #@9
    move-result-object v8

    #@a
    .line 547
    .local v8, "offsetsToTry":[I
    const/4 v6, 0x0

    #@b
    .local v6, "j":I
    :goto_0
    array-length v12, v8

    #@c
    if-ge v6, v12, :cond_1

    #@e
    .line 548
    invoke-static/range {p1 .. p1}, Llibcore/util/ZoneInfo;->-get2(Llibcore/util/ZoneInfo;)I

    #@11
    move-result v12

    #@12
    div-int/lit16 v9, v12, 0x3e8

    #@14
    .line 549
    .local v9, "rawOffsetSeconds":I
    aget v12, v8, v6

    #@16
    add-int v7, v9, v12

    #@18
    .line 550
    .local v7, "jOffsetSeconds":I
    invoke-virtual/range {p3 .. p3}, Llibcore/util/ZoneInfo$OffsetInterval;->getTotalOffsetSeconds()I

    #@1b
    move-result v11

    #@1c
    .line 551
    .local v11, "targetIntervalOffsetSeconds":I
    sub-int v5, v11, v7

    #@1e
    .line 552
    .local v5, "adjustmentSeconds":I
    move/from16 v0, p2

    #@20
    int-to-long v12, v0

    #@21
    invoke-static {v12, v13, v5}, Llibcore/util/ZoneInfo;->-wrap0(JI)I

    #@24
    move-result v4

    #@25
    .line 553
    .local v4, "adjustedWallTimeSeconds":I
    int-to-long v12, v4

    #@26
    move-object/from16 v0, p3

    #@28
    invoke-virtual {v0, v12, v13}, Llibcore/util/ZoneInfo$OffsetInterval;->containsWallTime(J)Z

    #@2b
    move-result v12

    #@2c
    if-eqz v12, :cond_0

    #@2e
    .line 555
    invoke-static {v4, v11}, Llibcore/util/ZoneInfo;->-wrap1(II)I

    #@31
    move-result v10

    #@32
    .line 559
    .local v10, "returnValue":I
    move-object/from16 v0, p0

    #@34
    iget-object v12, v0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@36
    int-to-long v14, v4

    #@37
    const-wide/16 v16, 0x3e8

    #@39
    mul-long v14, v14, v16

    #@3b
    invoke-virtual {v12, v14, v15}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@3e
    .line 560
    invoke-direct/range {p0 .. p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    #@41
    .line 561
    invoke-virtual/range {p3 .. p3}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    #@44
    move-result v12

    #@45
    move-object/from16 v0, p0

    #@47
    iput v12, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@49
    .line 562
    move-object/from16 v0, p0

    #@4b
    iput v11, v0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    #@4d
    .line 563
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v12

    #@51
    return-object v12

    #@52
    .line 547
    .end local v10    # "returnValue":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    #@54
    goto :goto_0

    #@55
    .line 566
    .end local v4    # "adjustedWallTimeSeconds":I
    .end local v5    # "adjustmentSeconds":I
    .end local v7    # "jOffsetSeconds":I
    .end local v9    # "rawOffsetSeconds":I
    .end local v11    # "targetIntervalOffsetSeconds":I
    :cond_1
    const/4 v12, 0x0

    #@56
    return-object v12
.end method


# virtual methods
.method public getGmtOffset()I
    .locals 1

    #@0
    .prologue
    .line 814
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    #@2
    return v0
.end method

.method public getHour()I
    .locals 1

    #@0
    .prologue
    .line 794
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    #@2
    return v0
.end method

.method public getIsDst()I
    .locals 1

    #@0
    .prologue
    .line 818
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@2
    return v0
.end method

.method public getMinute()I
    .locals 1

    #@0
    .prologue
    .line 798
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    #@2
    return v0
.end method

.method public getMonth()I
    .locals 1

    #@0
    .prologue
    .line 786
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    #@2
    return v0
.end method

.method public getMonthDay()I
    .locals 1

    #@0
    .prologue
    .line 790
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    #@2
    return v0
.end method

.method public getSecond()I
    .locals 1

    #@0
    .prologue
    .line 802
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    #@2
    return v0
.end method

.method public getWeekDay()I
    .locals 1

    #@0
    .prologue
    .line 806
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    #@2
    return v0
.end method

.method public getYear()I
    .locals 1

    #@0
    .prologue
    .line 782
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    #@2
    return v0
.end method

.method public getYearDay()I
    .locals 1

    #@0
    .prologue
    .line 810
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    #@2
    return v0
.end method

.method public localtime(ILlibcore/util/ZoneInfo;)V
    .locals 12
    .param p1, "timeSeconds"    # I
    .param p2, "zoneInfo"    # Llibcore/util/ZoneInfo;

    #@0
    .prologue
    .line 393
    :try_start_0
    invoke-static {p2}, Llibcore/util/ZoneInfo;->-get2(Llibcore/util/ZoneInfo;)I

    #@3
    move-result v6

    #@4
    div-int/lit16 v2, v6, 0x3e8

    #@6
    .line 397
    .local v2, "offsetSeconds":I
    invoke-static {p2}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    #@9
    move-result-object v6

    #@a
    array-length v6, v6

    #@b
    if-nez v6, :cond_0

    #@d
    .line 398
    const/4 v1, 0x0

    #@e
    .line 415
    :goto_0
    int-to-long v6, p1

    #@f
    invoke-static {v6, v7, v2}, Llibcore/util/ZoneInfo;->-wrap0(JI)I

    #@12
    move-result v5

    #@13
    .line 418
    .local v5, "wallTimeSeconds":I
    iget-object v6, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@15
    int-to-long v8, v5

    #@16
    const-wide/16 v10, 0x3e8

    #@18
    mul-long/2addr v8, v10

    #@19
    invoke-virtual {v6, v8, v9}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@1c
    .line 419
    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    #@1f
    .line 420
    iput v1, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@21
    .line 421
    iput v2, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    #@23
    .line 391
    .end local v2    # "offsetSeconds":I
    .end local v5    # "wallTimeSeconds":I
    :goto_1
    return-void

    #@24
    .line 401
    .restart local v2    # "offsetSeconds":I
    :cond_0
    invoke-static {p2, p1}, Llibcore/util/ZoneInfo$WallTime;->findTransitionIndex(Llibcore/util/ZoneInfo;I)I

    #@27
    move-result v3

    #@28
    .line 402
    .local v3, "transitionIndex":I
    if-gez v3, :cond_1

    #@2a
    .line 406
    const/4 v1, 0x0

    #@2b
    .local v1, "isDst":B
    goto :goto_0

    #@2c
    .line 408
    .end local v1    # "isDst":B
    :cond_1
    invoke-static {p2}, Llibcore/util/ZoneInfo;->-get4(Llibcore/util/ZoneInfo;)[B

    #@2f
    move-result-object v6

    #@30
    aget-byte v4, v6, v3

    #@32
    .line 409
    .local v4, "transitionType":B
    invoke-static {p2}, Llibcore/util/ZoneInfo;->-get1(Llibcore/util/ZoneInfo;)[I

    #@35
    move-result-object v6

    #@36
    aget v6, v6, v4

    #@38
    add-int/2addr v2, v6

    #@39
    .line 410
    invoke-static {p2}, Llibcore/util/ZoneInfo;->-get0(Llibcore/util/ZoneInfo;)[B

    #@3c
    move-result-object v6

    #@3d
    aget-byte v1, v6, v4
    :try_end_0
    .catch Llibcore/util/ZoneInfo$CheckedArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    .local v1, "isDst":B
    goto :goto_0

    #@40
    .line 422
    .end local v1    # "isDst":B
    .end local v2    # "offsetSeconds":I
    .end local v3    # "transitionIndex":I
    .end local v4    # "transitionType":B
    :catch_0
    move-exception v0

    #@41
    .local v0, "e":Llibcore/util/ZoneInfo$CheckedArithmeticException;
    goto :goto_1
.end method

.method public mktime(Llibcore/util/ZoneInfo;)I
    .locals 14
    .param p1, "zoneInfo"    # Llibcore/util/ZoneInfo;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, -0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 453
    iget v11, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@5
    if-lez v11, :cond_1

    #@7
    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@9
    :goto_0
    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@b
    .line 455
    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsToCalendar()V

    #@e
    .line 456
    iget-object v8, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    #@10
    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@13
    move-result-wide v10

    #@14
    const-wide/16 v12, 0x3e8

    #@16
    div-long v2, v10, v12

    #@18
    .line 457
    .local v2, "longWallTimeSeconds":J
    const-wide/32 v10, -0x80000000

    #@1b
    cmp-long v8, v10, v2

    #@1d
    if-gtz v8, :cond_0

    #@1f
    .line 458
    const-wide/32 v10, 0x7fffffff

    #@22
    cmp-long v8, v2, v10

    #@24
    if-lez v8, :cond_3

    #@26
    .line 461
    :cond_0
    return v9

    #@27
    .line 453
    .end local v2    # "longWallTimeSeconds":J
    :cond_1
    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@29
    if-gez v8, :cond_2

    #@2b
    iput v9, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@2d
    move v8, v9

    #@2e
    goto :goto_0

    #@2f
    :cond_2
    move v8, v10

    #@30
    goto :goto_0

    #@31
    .line 465
    .restart local v2    # "longWallTimeSeconds":J
    :cond_3
    long-to-int v7, v2

    #@32
    .line 466
    .local v7, "wallTimeSeconds":I
    :try_start_0
    invoke-static {p1}, Llibcore/util/ZoneInfo;->-get2(Llibcore/util/ZoneInfo;)I

    #@35
    move-result v8

    #@36
    div-int/lit16 v4, v8, 0x3e8

    #@38
    .line 467
    .local v4, "rawOffsetSeconds":I
    invoke-static {v7, v4}, Llibcore/util/ZoneInfo;->-wrap1(II)I

    #@3b
    move-result v5

    #@3c
    .line 469
    .local v5, "rawTimeSeconds":I
    invoke-static {p1}, Llibcore/util/ZoneInfo;->-get3(Llibcore/util/ZoneInfo;)[J

    #@3f
    move-result-object v8

    #@40
    array-length v8, v8

    #@41
    if-nez v8, :cond_5

    #@43
    .line 471
    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@45
    if-lez v8, :cond_4

    #@47
    .line 473
    return v9

    #@48
    .line 475
    :cond_4
    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    #@4b
    .line 476
    const/4 v8, 0x0

    #@4c
    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@4e
    .line 477
    iput v4, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    #@50
    .line 478
    return v5

    #@51
    .line 489
    :cond_5
    invoke-static {p1, v5}, Llibcore/util/ZoneInfo$WallTime;->findTransitionIndex(Llibcore/util/ZoneInfo;I)I

    #@54
    move-result v1

    #@55
    .line 491
    .local v1, "initialTransitionIndex":I
    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@57
    if-gez v8, :cond_7

    #@59
    .line 498
    const/4 v8, 0x1

    #@5a
    .line 497
    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    #@5d
    move-result-object v6

    #@5e
    .line 499
    .local v6, "result":Ljava/lang/Integer;
    if-nez v6, :cond_6

    #@60
    :goto_1
    return v9

    #@61
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    #@64
    move-result v9

    #@65
    goto :goto_1

    #@66
    .line 508
    .end local v6    # "result":Ljava/lang/Integer;
    :cond_7
    const/4 v8, 0x1

    #@67
    .line 507
    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    #@6a
    move-result-object v6

    #@6b
    .line 509
    .restart local v6    # "result":Ljava/lang/Integer;
    if-nez v6, :cond_8

    #@6d
    .line 511
    const/4 v8, 0x0

    #@6e
    .line 510
    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    #@71
    move-result-object v6

    #@72
    .line 513
    :cond_8
    if-nez v6, :cond_9

    #@74
    .line 514
    const/4 v8, -0x1

    #@75
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v6

    #@79
    .line 516
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Llibcore/util/ZoneInfo$CheckedArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    #@7c
    move-result v8

    #@7d
    return v8

    #@7e
    .line 517
    .end local v1    # "initialTransitionIndex":I
    .end local v4    # "rawOffsetSeconds":I
    .end local v5    # "rawTimeSeconds":I
    .end local v6    # "result":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    #@7f
    .line 518
    .local v0, "e":Llibcore/util/ZoneInfo$CheckedArithmeticException;
    return v9
.end method

.method public setGmtOffset(I)V
    .locals 0
    .param p1, "gmtoff"    # I

    #@0
    .prologue
    .line 778
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    #@2
    .line 777
    return-void
.end method

.method public setHour(I)V
    .locals 0
    .param p1, "hour"    # I

    #@0
    .prologue
    .line 754
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    #@2
    .line 753
    return-void
.end method

.method public setIsDst(I)V
    .locals 0
    .param p1, "isDst"    # I

    #@0
    .prologue
    .line 774
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    #@2
    .line 773
    return-void
.end method

.method public setMinute(I)V
    .locals 0
    .param p1, "minute"    # I

    #@0
    .prologue
    .line 758
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    #@2
    .line 757
    return-void
.end method

.method public setMonth(I)V
    .locals 0
    .param p1, "month"    # I

    #@0
    .prologue
    .line 746
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    #@2
    .line 745
    return-void
.end method

.method public setMonthDay(I)V
    .locals 0
    .param p1, "monthDay"    # I

    #@0
    .prologue
    .line 750
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    #@2
    .line 749
    return-void
.end method

.method public setSecond(I)V
    .locals 0
    .param p1, "second"    # I

    #@0
    .prologue
    .line 762
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    #@2
    .line 761
    return-void
.end method

.method public setWeekDay(I)V
    .locals 0
    .param p1, "weekDay"    # I

    #@0
    .prologue
    .line 766
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    #@2
    .line 765
    return-void
.end method

.method public setYear(I)V
    .locals 0
    .param p1, "year"    # I

    #@0
    .prologue
    .line 742
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    #@2
    .line 741
    return-void
.end method

.method public setYearDay(I)V
    .locals 0
    .param p1, "yearDay"    # I

    #@0
    .prologue
    .line 770
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    #@2
    .line 769
    return-void
.end method
