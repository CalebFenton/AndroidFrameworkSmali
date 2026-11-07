.class public Lcom/android/i18n/timezone/WallTime;
.super Ljava/lang/Object;
.source "WallTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;,
        Lcom/android/i18n/timezone/WallTime$OffsetInterval;
    }
.end annotation


# instance fields
.field private final blacklist calendar:Ljava/util/GregorianCalendar;

.field private blacklist gmtOffsetSeconds:I

.field private blacklist hour:I

.field private blacklist isDst:I

.field private blacklist minute:I

.field private blacklist month:I

.field private blacklist monthDay:I

.field private blacklist second:I

.field private blacklist weekDay:I

.field private blacklist year:I

.field private blacklist yearDay:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smsaturated32BitAdd(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/i18n/timezone/WallTime;->saturated32BitAdd(JI)I

    move-result p0

    return p0
.end method

.method public constructor blacklist test-api <init>()V
    .registers 8

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    .line 76
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 77
    return-void
.end method

.method private static blacklist checked32BitAdd(JI)I
    .registers 7
    .param p0, "a"    # J
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;
        }
    .end annotation

    .line 692
    int-to-long v0, p2

    add-long/2addr v0, p0

    .line 693
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_a

    .line 696
    long-to-int v2, v0

    return v2

    .line 694
    :cond_a
    new-instance v2, Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;-><init>(Lcom/android/i18n/timezone/WallTime-IA;)V

    throw v2
.end method

.method private static blacklist checked32BitSubtract(JI)I
    .registers 7
    .param p0, "a"    # J
    .param p2, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;
        }
    .end annotation

    .line 706
    int-to-long v0, p2

    sub-long v0, p0, v0

    .line 707
    .local v0, "result":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 710
    long-to-int v2, v0

    return v2

    .line 708
    :cond_b
    new-instance v2, Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;-><init>(Lcom/android/i18n/timezone/WallTime-IA;)V

    throw v2
.end method

.method private blacklist copyFieldsFromCalendar()V
    .registers 4

    .line 548
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/i18n/timezone/WallTime;->year:I

    .line 549
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/i18n/timezone/WallTime;->month:I

    .line 550
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/i18n/timezone/WallTime;->monthDay:I

    .line 551
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/i18n/timezone/WallTime;->hour:I

    .line 552
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/i18n/timezone/WallTime;->minute:I

    .line 553
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/i18n/timezone/WallTime;->second:I

    .line 556
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/i18n/timezone/WallTime;->weekDay:I

    .line 558
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/i18n/timezone/WallTime;->yearDay:I

    .line 559
    return-void
.end method

.method private blacklist copyFieldsToCalendar()V
    .registers 4

    .line 538
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/i18n/timezone/WallTime;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 539
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/i18n/timezone/WallTime;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 540
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/i18n/timezone/WallTime;->monthDay:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 541
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/i18n/timezone/WallTime;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 542
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/i18n/timezone/WallTime;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 543
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/i18n/timezone/WallTime;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 544
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 545
    return-void
.end method

.method private blacklist doWallTimeSearch(Lcom/android/i18n/timezone/ZoneInfoData;IIZ)Ljava/lang/Integer;
    .registers 22
    .param p1, "zoneInfo"    # Lcom/android/i18n/timezone/ZoneInfoData;
    .param p2, "initialTransitionIndex"    # I
    .param p3, "wallTimeSeconds"    # I
    .param p4, "mustMatchDst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;
        }
    .end annotation

    .line 346
    move-object/from16 v0, p0

    move/from16 v2, p3

    const v6, 0x15180

    .line 347
    .local v6, "MAX_SEARCH_SECONDS":I
    const/4 v1, 0x0

    .local v1, "clampTop":Z
    const/4 v3, 0x0

    .line 348
    .local v3, "clampBottom":Z
    const/4 v4, 0x0

    move v7, v1

    move v8, v3

    .line 351
    .end local v1    # "clampTop":Z
    .end local v3    # "clampBottom":Z
    .local v4, "loop":I
    .local v7, "clampTop":Z
    .local v8, "clampBottom":Z
    :goto_c
    add-int/lit8 v1, v4, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 352
    .local v1, "transitionIndexDelta":I
    rem-int/lit8 v3, v4, 0x2

    const/4 v9, 0x1

    if-ne v3, v9, :cond_19

    .line 353
    mul-int/lit8 v1, v1, -0x1

    move v10, v1

    goto :goto_1a

    .line 352
    :cond_19
    move v10, v1

    .line 355
    .end local v1    # "transitionIndexDelta":I
    .local v10, "transitionIndexDelta":I
    :goto_1a
    add-int/lit8 v11, v4, 0x1

    .line 358
    .end local v4    # "loop":I
    .local v11, "loop":I
    if-lez v10, :cond_20

    if-nez v7, :cond_ac

    :cond_20
    if-gez v10, :cond_26

    if-eqz v8, :cond_26

    .line 360
    goto/16 :goto_ac

    .line 364
    :cond_26
    add-int v4, p2, v10

    .line 365
    .local v4, "currentTransitionIndex":I
    nop

    .line 366
    move-object/from16 v1, p1

    invoke-static {v1, v4}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->create(Lcom/android/i18n/timezone/ZoneInfoData;I)Lcom/android/i18n/timezone/WallTime$OffsetInterval;

    move-result-object v3

    .line 367
    .local v3, "offsetInterval":Lcom/android/i18n/timezone/WallTime$OffsetInterval;
    const/4 v12, 0x0

    if-nez v3, :cond_42

    .line 370
    if-lez v10, :cond_36

    move v5, v9

    goto :goto_37

    :cond_36
    move v5, v12

    :goto_37
    or-int/2addr v5, v7

    .line 371
    .end local v7    # "clampTop":Z
    .local v5, "clampTop":Z
    if-gez v10, :cond_3b

    goto :goto_3c

    :cond_3b
    move v9, v12

    :goto_3c
    or-int v7, v8, v9

    .line 372
    .end local v8    # "clampBottom":Z
    .local v7, "clampBottom":Z
    move v8, v7

    move v7, v5

    goto/16 :goto_ac

    .line 376
    .end local v5    # "clampTop":Z
    .local v7, "clampTop":Z
    .restart local v8    # "clampBottom":Z
    :cond_42
    if-eqz p4, :cond_71

    .line 379
    int-to-long v13, v2

    invoke-virtual {v3, v13, v14}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->containsWallTime(J)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 380
    iget v5, v0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    const/4 v13, -0x1

    if-eq v5, v13, :cond_58

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->getIsDst()I

    move-result v5

    iget v13, v0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    if-ne v5, v13, :cond_82

    .line 385
    :cond_58
    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->getTotalOffsetSeconds()I

    move-result v5

    .line 386
    .local v5, "totalOffsetSeconds":I
    int-to-long v12, v2

    invoke-static {v12, v13, v5}, Lcom/android/i18n/timezone/WallTime;->checked32BitSubtract(JI)I

    move-result v9

    .line 388
    .local v9, "returnValue":I
    invoke-direct {v0}, Lcom/android/i18n/timezone/WallTime;->copyFieldsFromCalendar()V

    .line 389
    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->getIsDst()I

    move-result v12

    iput v12, v0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    .line 390
    iput v5, v0, Lcom/android/i18n/timezone/WallTime;->gmtOffsetSeconds:I

    .line 391
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    return-object v12

    .line 403
    .end local v5    # "totalOffsetSeconds":I
    .end local v9    # "returnValue":I
    :cond_71
    iget v5, v0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->getIsDst()I

    move-result v13

    if-eq v5, v13, :cond_82

    .line 404
    iget v5, v0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    .line 405
    .local v5, "isDstToFind":I
    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/timezone/WallTime;->tryOffsetAdjustments(Lcom/android/i18n/timezone/ZoneInfoData;ILcom/android/i18n/timezone/WallTime$OffsetInterval;II)Ljava/lang/Integer;

    move-result-object v13

    .line 407
    .local v13, "returnValue":Ljava/lang/Integer;
    if-eqz v13, :cond_82

    .line 408
    return-object v13

    .line 414
    .end local v5    # "isDstToFind":I
    .end local v13    # "returnValue":Ljava/lang/Integer;
    :cond_82
    if-lez v10, :cond_97

    .line 418
    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->getEndWallTimeSeconds()J

    move-result-wide v13

    const-wide/32 v15, 0x15180

    int-to-long v0, v2

    sub-long/2addr v13, v0

    cmp-long v0, v13, v15

    if-lez v0, :cond_92

    goto :goto_93

    :cond_92
    move v9, v12

    .line 420
    .local v9, "endSearch":Z
    :goto_93
    if-eqz v9, :cond_96

    .line 421
    const/4 v7, 0x1

    .line 423
    .end local v9    # "endSearch":Z
    :cond_96
    goto :goto_ac

    :cond_97
    const-wide/32 v15, 0x15180

    if-gez v10, :cond_96

    .line 424
    int-to-long v0, v2

    invoke-virtual {v3}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->getStartWallTimeSeconds()J

    move-result-wide v13

    sub-long/2addr v0, v13

    cmp-long v0, v0, v15

    if-ltz v0, :cond_a7

    goto :goto_a8

    :cond_a7
    move v9, v12

    .line 426
    .restart local v9    # "endSearch":Z
    :goto_a8
    if-eqz v9, :cond_ac

    .line 430
    const/4 v0, 0x1

    move v8, v0

    .line 433
    .end local v3    # "offsetInterval":Lcom/android/i18n/timezone/WallTime$OffsetInterval;
    .end local v4    # "currentTransitionIndex":I
    .end local v9    # "endSearch":Z
    .end local v10    # "transitionIndexDelta":I
    :cond_ac
    :goto_ac
    if-eqz v7, :cond_b2

    if-eqz v8, :cond_b2

    .line 434
    const/4 v0, 0x0

    return-object v0

    .line 351
    :cond_b2
    move-object/from16 v0, p0

    move v4, v11

    goto/16 :goto_c
.end method

.method private static blacklist getOffsetsOfType(Lcom/android/i18n/timezone/ZoneInfoData;II)[I
    .registers 15
    .param p0, "zoneInfo"    # Lcom/android/i18n/timezone/ZoneInfoData;
    .param p1, "startIndex"    # I
    .param p2, "isDst"    # I

    .line 273
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 274
    .local v0, "offsets":[I
    iget-object v2, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    array-length v2, v2

    new-array v2, v2, [Z

    .line 275
    .local v2, "seen":[Z
    const/4 v3, 0x0

    .line 277
    .local v3, "numFound":I
    const/4 v4, 0x0

    .line 278
    .local v4, "delta":I
    const/4 v5, 0x0

    .line 279
    .local v5, "clampTop":Z
    const/4 v6, 0x0

    .line 282
    .local v6, "clampBottom":Z
    :cond_10
    const/4 v7, -0x1

    mul-int/2addr v4, v7

    .line 283
    if-ltz v4, :cond_16

    .line 284
    add-int/lit8 v4, v4, 0x1

    .line 287
    :cond_16
    add-int v8, p1, v4

    .line 288
    .local v8, "transitionIndex":I
    const/4 v9, 0x0

    if-gez v4, :cond_1f

    if-ge v8, v7, :cond_1f

    .line 289
    const/4 v6, 0x1

    .line 290
    goto :goto_4d

    .line 291
    :cond_1f
    if-lez v4, :cond_28

    iget-object v10, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    array-length v10, v10

    if-lt v8, v10, :cond_28

    .line 292
    const/4 v5, 0x1

    .line 293
    goto :goto_4d

    .line 296
    :cond_28
    if-ne v8, v7, :cond_32

    .line 297
    if-nez p2, :cond_4d

    .line 300
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "numFound":I
    .local v7, "numFound":I
    aput v9, v0, v3

    move v3, v7

    goto :goto_4d

    .line 304
    .end local v7    # "numFound":I
    .restart local v3    # "numFound":I
    :cond_32
    iget-object v7, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mTypes:[B

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    .line 305
    .local v7, "type":I
    aget-boolean v10, v2, v7

    if-nez v10, :cond_4d

    .line 306
    iget-object v10, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    aget-byte v10, v10, v7

    if-ne v10, p2, :cond_4b

    .line 307
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "numFound":I
    .local v10, "numFound":I
    iget-object v11, p0, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    aget v11, v11, v7

    aput v11, v0, v3

    move v3, v10

    .line 309
    .end local v10    # "numFound":I
    .restart local v3    # "numFound":I
    :cond_4b
    aput-boolean v1, v2, v7

    .line 311
    .end local v7    # "type":I
    .end local v8    # "transitionIndex":I
    :cond_4d
    :goto_4d
    if-eqz v5, :cond_10

    if-eqz v6, :cond_10

    .line 313
    new-array v1, v3, [I

    .line 314
    .local v1, "toReturn":[I
    invoke-static {v0, v9, v1, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    return-object v1
.end method

.method private static blacklist saturated32BitAdd(JI)I
    .registers 7
    .param p0, "a"    # J
    .param p2, "b"    # I

    .line 718
    int-to-long v0, p2

    add-long/2addr v0, p0

    .line 719
    .local v0, "result":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_d

    .line 720
    const v2, 0x7fffffff

    return v2

    .line 721
    :cond_d
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_17

    .line 722
    const/high16 v2, -0x80000000

    return v2

    .line 724
    :cond_17
    long-to-int v2, v0

    return v2
.end method

.method private blacklist tryOffsetAdjustments(Lcom/android/i18n/timezone/ZoneInfoData;ILcom/android/i18n/timezone/WallTime$OffsetInterval;II)Ljava/lang/Integer;
    .registers 23
    .param p1, "zoneInfo"    # Lcom/android/i18n/timezone/ZoneInfoData;
    .param p2, "oldWallTimeSeconds"    # I
    .param p3, "targetInterval"    # Lcom/android/i18n/timezone/WallTime$OffsetInterval;
    .param p4, "transitionIndex"    # I
    .param p5, "isDstToFind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;
        }
    .end annotation

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-static {v1, v2, v3}, Lcom/android/i18n/timezone/WallTime;->getOffsetsOfType(Lcom/android/i18n/timezone/ZoneInfoData;II)[I

    move-result-object v4

    .line 244
    .local v4, "offsetsToTry":[I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_d
    array-length v6, v4

    if-ge v5, v6, :cond_54

    .line 245
    invoke-virtual {v1}, Lcom/android/i18n/timezone/ZoneInfoData;->getRawOffset()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    .line 246
    .local v6, "rawOffsetSeconds":I
    aget v7, v4, v5

    add-int/2addr v7, v6

    .line 247
    .local v7, "jOffsetSeconds":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->getTotalOffsetSeconds()I

    move-result v8

    .line 248
    .local v8, "targetIntervalOffsetSeconds":I
    sub-int v9, v8, v7

    .line 249
    .local v9, "adjustmentSeconds":I
    move/from16 v10, p2

    int-to-long v11, v10

    invoke-static {v11, v12, v9}, Lcom/android/i18n/timezone/WallTime;->checked32BitAdd(JI)I

    move-result v11

    .line 250
    .local v11, "adjustedWallTimeSeconds":I
    int-to-long v12, v11

    move-object/from16 v14, p3

    invoke-virtual {v14, v12, v13}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->containsWallTime(J)Z

    move-result v12

    if-eqz v12, :cond_4d

    .line 252
    int-to-long v12, v11

    invoke-static {v12, v13, v8}, Lcom/android/i18n/timezone/WallTime;->checked32BitSubtract(JI)I

    move-result v12

    .line 256
    .local v12, "returnValue":I
    iget-object v13, v0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    int-to-long v1, v11

    const-wide/16 v15, 0x3e8

    mul-long/2addr v1, v15

    invoke-virtual {v13, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 257
    invoke-direct {v0}, Lcom/android/i18n/timezone/WallTime;->copyFieldsFromCalendar()V

    .line 258
    invoke-virtual {v14}, Lcom/android/i18n/timezone/WallTime$OffsetInterval;->getIsDst()I

    move-result v1

    iput v1, v0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    .line 259
    iput v8, v0, Lcom/android/i18n/timezone/WallTime;->gmtOffsetSeconds:I

    .line 260
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 244
    .end local v6    # "rawOffsetSeconds":I
    .end local v7    # "jOffsetSeconds":I
    .end local v8    # "targetIntervalOffsetSeconds":I
    .end local v9    # "adjustmentSeconds":I
    .end local v11    # "adjustedWallTimeSeconds":I
    .end local v12    # "returnValue":I
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p4

    goto :goto_d

    :cond_54
    move/from16 v10, p2

    move-object/from16 v14, p3

    .line 263
    .end local v5    # "j":I
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist test-api getGmtOffset()I
    .registers 2

    .line 529
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->gmtOffsetSeconds:I

    return v0
.end method

.method public blacklist test-api getHour()I
    .registers 2

    .line 504
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->hour:I

    return v0
.end method

.method public blacklist test-api getIsDst()I
    .registers 2

    .line 534
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    return v0
.end method

.method public blacklist test-api getMinute()I
    .registers 2

    .line 509
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->minute:I

    return v0
.end method

.method public blacklist test-api getMonth()I
    .registers 2

    .line 494
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->month:I

    return v0
.end method

.method public blacklist test-api getMonthDay()I
    .registers 2

    .line 499
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->monthDay:I

    return v0
.end method

.method public blacklist test-api getSecond()I
    .registers 2

    .line 514
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->second:I

    return v0
.end method

.method public blacklist test-api getWeekDay()I
    .registers 2

    .line 519
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->weekDay:I

    return v0
.end method

.method public blacklist test-api getYear()I
    .registers 2

    .line 489
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->year:I

    return v0
.end method

.method public blacklist test-api getYearDay()I
    .registers 2

    .line 524
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->yearDay:I

    return v0
.end method

.method public blacklist test-api localtime(ILcom/android/i18n/timezone/ZoneInfoData;)V
    .registers 11
    .param p1, "timeSeconds"    # I
    .param p2, "zoneInfo"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 89
    :try_start_0
    invoke-virtual {p2}, Lcom/android/i18n/timezone/ZoneInfoData;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    .line 93
    .local v0, "offsetSeconds":I
    iget-object v1, p2, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    array-length v1, v1

    if-nez v1, :cond_d

    .line 94
    const/4 v1, 0x0

    .local v1, "isDst":B
    goto :goto_29

    .line 97
    .end local v1    # "isDst":B
    :cond_d
    int-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Lcom/android/i18n/timezone/ZoneInfoData;->findOffsetIndexForTimeInSeconds(J)I

    move-result v1

    .line 98
    .local v1, "offsetIndex":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    .line 102
    invoke-virtual {p2}, Lcom/android/i18n/timezone/ZoneInfoData;->getEarliestRawOffset()I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    move v0, v2

    .line 103
    const/4 v2, 0x0

    move v1, v2

    .local v2, "isDst":B
    goto :goto_29

    .line 105
    .end local v2    # "isDst":B
    :cond_1f
    iget-object v2, p2, Lcom/android/i18n/timezone/ZoneInfoData;->mOffsets:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 106
    iget-object v2, p2, Lcom/android/i18n/timezone/ZoneInfoData;->mIsDsts:[B

    aget-byte v2, v2, v1

    move v1, v2

    .line 111
    .local v1, "isDst":B
    :goto_29
    int-to-long v2, p1

    invoke-static {v2, v3, v0}, Lcom/android/i18n/timezone/WallTime;->checked32BitAdd(JI)I

    move-result v2

    .line 114
    .local v2, "wallTimeSeconds":I
    iget-object v3, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    int-to-long v4, v2

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 115
    invoke-direct {p0}, Lcom/android/i18n/timezone/WallTime;->copyFieldsFromCalendar()V

    .line 116
    iput v1, p0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    .line 117
    iput v0, p0, Lcom/android/i18n/timezone/WallTime;->gmtOffsetSeconds:I
    :try_end_3e
    .catch Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException; {:try_start_0 .. :try_end_3e} :catch_3f

    .line 120
    .end local v0    # "offsetSeconds":I
    .end local v1    # "isDst":B
    .end local v2    # "wallTimeSeconds":I
    goto :goto_40

    .line 118
    :catch_3f
    move-exception v0

    .line 121
    :goto_40
    return-void
.end method

.method public blacklist test-api mktime(Lcom/android/i18n/timezone/ZoneInfoData;)I
    .registers 12
    .param p1, "zoneInfo"    # Lcom/android/i18n/timezone/ZoneInfoData;

    .line 150
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-lez v0, :cond_b

    iput v2, p0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    move v0, v2

    goto :goto_14

    :cond_b
    iget v0, p0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    if-gez v0, :cond_13

    iput v3, p0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    move v0, v3

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    iput v0, p0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    .line 152
    invoke-direct {p0}, Lcom/android/i18n/timezone/WallTime;->copyFieldsToCalendar()V

    .line 153
    iget-object v0, p0, Lcom/android/i18n/timezone/WallTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 154
    .local v4, "longWallTimeSeconds":J
    const-wide/32 v6, -0x80000000

    cmp-long v0, v6, v4

    if-gtz v0, :cond_7d

    const-wide/32 v6, 0x7fffffff

    cmp-long v0, v4, v6

    if-lez v0, :cond_31

    goto :goto_7d

    .line 162
    :cond_31
    long-to-int v0, v4

    .line 163
    .local v0, "wallTimeSeconds":I
    :try_start_32
    invoke-virtual {p1}, Lcom/android/i18n/timezone/ZoneInfoData;->getRawOffset()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    .line 164
    .local v6, "rawOffsetSeconds":I
    int-to-long v7, v0

    invoke-static {v7, v8, v6}, Lcom/android/i18n/timezone/WallTime;->checked32BitSubtract(JI)I

    move-result v7

    .line 166
    .local v7, "rawTimeSeconds":I
    iget-object v8, p1, Lcom/android/i18n/timezone/ZoneInfoData;->mTransitions:[J

    array-length v8, v8

    if-nez v8, :cond_4f

    .line 168
    iget v2, p0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    if-lez v2, :cond_47

    .line 170
    return v3

    .line 172
    :cond_47
    invoke-direct {p0}, Lcom/android/i18n/timezone/WallTime;->copyFieldsFromCalendar()V

    .line 173
    iput v1, p0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    .line 174
    iput v6, p0, Lcom/android/i18n/timezone/WallTime;->gmtOffsetSeconds:I

    .line 175
    return v7

    .line 186
    :cond_4f
    int-to-long v8, v7

    invoke-virtual {p1, v8, v9}, Lcom/android/i18n/timezone/ZoneInfoData;->findTransitionIndex(J)I

    move-result v8

    .line 188
    .local v8, "initialTransitionIndex":I
    iget v9, p0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    if-gez v9, :cond_64

    .line 194
    invoke-direct {p0, p1, v8, v0, v2}, Lcom/android/i18n/timezone/WallTime;->doWallTimeSearch(Lcom/android/i18n/timezone/ZoneInfoData;IIZ)Ljava/lang/Integer;

    move-result-object v1

    .line 196
    .local v1, "result":Ljava/lang/Integer;
    if-nez v1, :cond_5f

    goto :goto_63

    :cond_5f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_63
    return v3

    .line 204
    .end local v1    # "result":Ljava/lang/Integer;
    :cond_64
    invoke-direct {p0, p1, v8, v0, v2}, Lcom/android/i18n/timezone/WallTime;->doWallTimeSearch(Lcom/android/i18n/timezone/ZoneInfoData;IIZ)Ljava/lang/Integer;

    move-result-object v2

    .line 206
    .local v2, "result":Ljava/lang/Integer;
    if-nez v2, :cond_6f

    .line 207
    invoke-direct {p0, p1, v8, v0, v1}, Lcom/android/i18n/timezone/WallTime;->doWallTimeSearch(Lcom/android/i18n/timezone/ZoneInfoData;IIZ)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    .line 210
    :cond_6f
    if-nez v2, :cond_76

    .line 211
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, v1

    .line 213
    :cond_76
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_7a
    .catch Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException; {:try_start_32 .. :try_end_7a} :catch_7b

    return v1

    .line 214
    .end local v0    # "wallTimeSeconds":I
    .end local v2    # "result":Ljava/lang/Integer;
    .end local v6    # "rawOffsetSeconds":I
    .end local v7    # "rawTimeSeconds":I
    .end local v8    # "initialTransitionIndex":I
    :catch_7b
    move-exception v0

    .line 215
    .local v0, "e":Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;
    return v3

    .line 158
    .end local v0    # "e":Lcom/android/i18n/timezone/WallTime$CheckedArithmeticException;
    :cond_7d
    :goto_7d
    return v3
.end method

.method public blacklist test-api setGmtOffset(I)V
    .registers 2
    .param p1, "gmtoff"    # I

    .line 484
    iput p1, p0, Lcom/android/i18n/timezone/WallTime;->gmtOffsetSeconds:I

    .line 485
    return-void
.end method

.method public blacklist test-api setHour(I)V
    .registers 2
    .param p1, "hour"    # I

    .line 454
    iput p1, p0, Lcom/android/i18n/timezone/WallTime;->hour:I

    .line 455
    return-void
.end method

.method public blacklist test-api setIsDst(I)V
    .registers 2
    .param p1, "isDst"    # I

    .line 479
    iput p1, p0, Lcom/android/i18n/timezone/WallTime;->isDst:I

    .line 480
    return-void
.end method

.method public blacklist test-api setMinute(I)V
    .registers 2
    .param p1, "minute"    # I

    .line 459
    iput p1, p0, Lcom/android/i18n/timezone/WallTime;->minute:I

    .line 460
    return-void
.end method

.method public blacklist test-api setMonth(I)V
    .registers 2
    .param p1, "month"    # I

    .line 444
    iput p1, p0, Lcom/android/i18n/timezone/WallTime;->month:I

    .line 445
    return-void
.end method

.method public blacklist test-api setMonthDay(I)V
    .registers 2
    .param p1, "monthDay"    # I

    .line 449
    iput p1, p0, Lcom/android/i18n/timezone/WallTime;->monthDay:I

    .line 450
    return-void
.end method

.method public blacklist test-api setSecond(I)V
    .registers 2
    .param p1, "second"    # I

    .line 464
    iput p1, p0, Lcom/android/i18n/timezone/WallTime;->second:I

    .line 465
    return-void
.end method

.method public blacklist test-api setWeekDay(I)V
    .registers 2
    .param p1, "weekDay"    # I

    .line 469
    iput p1, p0, Lcom/android/i18n/timezone/WallTime;->weekDay:I

    .line 470
    return-void
.end method

.method public blacklist test-api setYear(I)V
    .registers 2
    .param p1, "year"    # I

    .line 439
    iput p1, p0, Lcom/android/i18n/timezone/WallTime;->year:I

    .line 440
    return-void
.end method

.method public blacklist test-api setYearDay(I)V
    .registers 2
    .param p1, "yearDay"    # I

    .line 474
    iput p1, p0, Lcom/android/i18n/timezone/WallTime;->yearDay:I

    .line 475
    return-void
.end method
