.class public abstract Landroid/icu/util/BasicTimeZone;
.super Landroid/icu/util/TimeZone;
.source "BasicTimeZone.java"


# static fields
.field protected static final FORMER_LATTER_MASK:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_DST:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_FORMER:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_LATTER:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCAL_STD:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final MILLIS_PER_YEAR:J = 0x757b12c00L

.field protected static final STD_DST_MASK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x2c77e2591bf19444L


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 605
    invoke-direct {p0}, Landroid/icu/util/TimeZone;-><init>()V

    #@3
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 616
    invoke-direct {p0, p1}, Landroid/icu/util/TimeZone;-><init>(Ljava/lang/String;)V

    #@3
    .line 615
    return-void
.end method


# virtual methods
.method public abstract getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
.end method

.method public getOffsetFromLocal(JII[I)V
    .locals 2
    .param p1, "date"    # J
    .param p3, "nonExistingTimeOpt"    # I
    .param p4, "duplicatedTimeOpt"    # I
    .param p5, "offsets"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 598
    new-instance v0, Ljava/lang/IllegalStateException;

    #@2
    const-string/jumbo v1, "Not implemented"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public abstract getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
.end method

.method public getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;
    .locals 27
    .param p1, "date"    # J

    #@0
    .prologue
    .line 391
    const/4 v14, 0x0

    #@1
    .line 392
    .local v14, "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    const/16 v20, 0x0

    #@3
    .line 394
    .local v20, "initialRule":Landroid/icu/util/TimeZoneRule;
    const/4 v5, 0x0

    #@4
    move-object/from16 v0, p0

    #@6
    move-wide/from16 v1, p1

    #@8
    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@b
    move-result-object v26

    #@c
    .line 395
    .local v26, "tr":Landroid/icu/util/TimeZoneTransition;
    if-eqz v26, :cond_9

    #@e
    .line 396
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@15
    move-result-object v18

    #@16
    .line 397
    .local v18, "initialName":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@1d
    move-result v19

    #@1e
    .line 398
    .local v19, "initialRaw":I
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@25
    move-result v17

    #@26
    .line 402
    .local v17, "initialDst":I
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@29
    move-result-wide v22

    #@2a
    .line 403
    .local v22, "nextTransitionTime":J
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@31
    move-result v5

    #@32
    if-nez v5, :cond_4

    #@34
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@3b
    move-result v5

    #@3c
    if-eqz v5, :cond_4

    #@3e
    .line 405
    :goto_0
    const-wide v8, 0x757b12c00L

    #@43
    add-long v8, v8, p1

    #@45
    cmp-long v5, v8, v22

    #@47
    if-lez v5, :cond_3

    #@49
    .line 406
    const/4 v5, 0x2

    #@4a
    new-array v14, v5, [Landroid/icu/util/AnnualTimeZoneRule;

    #@4c
    .line 409
    .local v14, "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@53
    move-result v5

    #@54
    int-to-long v8, v5

    #@55
    .line 408
    add-long v8, v8, v22

    #@57
    .line 409
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@5a
    move-result-object v5

    #@5b
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@5e
    move-result v5

    #@5f
    int-to-long v10, v5

    #@60
    .line 408
    add-long/2addr v8, v10

    #@61
    .line 409
    const/4 v5, 0x0

    #@62
    .line 408
    invoke-static {v8, v9, v5}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@65
    move-result-object v16

    #@66
    .line 410
    .local v16, "dtfields":[I
    const/4 v5, 0x0

    #@67
    aget v5, v16, v5

    #@69
    const/4 v8, 0x1

    #@6a
    aget v8, v16, v8

    #@6c
    const/4 v9, 0x2

    #@6d
    aget v9, v16, v9

    #@6f
    invoke-static {v5, v8, v9}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    #@72
    move-result v6

    #@73
    .line 412
    .local v6, "weekInMonth":I
    new-instance v4, Landroid/icu/util/DateTimeRule;

    #@75
    const/4 v5, 0x1

    #@76
    aget v5, v16, v5

    #@78
    const/4 v8, 0x3

    #@79
    aget v7, v16, v8

    #@7b
    .line 413
    const/4 v8, 0x5

    #@7c
    aget v8, v16, v8

    #@7e
    const/4 v9, 0x0

    #@7f
    .line 412
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    #@82
    .line 415
    .local v4, "dtr":Landroid/icu/util/DateTimeRule;
    const/16 v25, 0x0

    #@84
    .line 423
    .local v25, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    new-instance v7, Landroid/icu/util/AnnualTimeZoneRule;

    #@86
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    .line 424
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@95
    move-result v10

    #@96
    .line 425
    const/4 v5, 0x0

    #@97
    aget v12, v16, v5

    #@99
    const v13, 0x7fffffff

    #@9c
    move/from16 v9, v19

    #@9e
    move-object v11, v4

    #@9f
    .line 423
    invoke-direct/range {v7 .. v13}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    #@a2
    const/4 v5, 0x0

    #@a3
    aput-object v7, v14, v5

    #@a5
    .line 427
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@a8
    move-result-object v5

    #@a9
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@ac
    move-result v5

    #@ad
    move/from16 v0, v19

    #@af
    if-ne v5, v0, :cond_c

    #@b1
    .line 430
    const/4 v5, 0x0

    #@b2
    move-object/from16 v0, p0

    #@b4
    move-wide/from16 v1, v22

    #@b6
    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@b9
    move-result-object v26

    #@ba
    .line 431
    if-eqz v26, :cond_c

    #@bc
    .line 434
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@bf
    move-result-object v5

    #@c0
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@c3
    move-result v5

    #@c4
    if-nez v5, :cond_5

    #@c6
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@c9
    move-result-object v5

    #@ca
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@cd
    move-result v5

    #@ce
    if-eqz v5, :cond_5

    #@d0
    .line 437
    :cond_0
    const-wide v8, 0x757b12c00L

    #@d5
    add-long v8, v8, v22

    #@d7
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@da
    move-result-wide v10

    #@db
    cmp-long v5, v8, v10

    #@dd
    if-lez v5, :cond_6

    #@df
    .line 439
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@e2
    move-result-wide v8

    #@e3
    .line 440
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@e6
    move-result-object v5

    #@e7
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@ea
    move-result v5

    #@eb
    int-to-long v10, v5

    #@ec
    .line 439
    add-long/2addr v8, v10

    #@ed
    .line 440
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@f0
    move-result-object v5

    #@f1
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@f4
    move-result v5

    #@f5
    int-to-long v10, v5

    #@f6
    .line 439
    add-long/2addr v8, v10

    #@f7
    move-object/from16 v0, v16

    #@f9
    invoke-static {v8, v9, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@fc
    move-result-object v16

    #@fd
    .line 442
    const/4 v5, 0x0

    #@fe
    aget v5, v16, v5

    #@100
    const/4 v8, 0x1

    #@101
    aget v8, v16, v8

    #@103
    .line 443
    const/4 v9, 0x2

    #@104
    aget v9, v16, v9

    #@106
    .line 442
    invoke-static {v5, v8, v9}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    #@109
    move-result v6

    #@10a
    .line 444
    new-instance v4, Landroid/icu/util/DateTimeRule;

    #@10c
    .end local v4    # "dtr":Landroid/icu/util/DateTimeRule;
    const/4 v5, 0x1

    #@10d
    aget v5, v16, v5

    #@10f
    const/4 v8, 0x3

    #@110
    aget v7, v16, v8

    #@112
    .line 445
    const/4 v8, 0x5

    #@113
    aget v8, v16, v8

    #@115
    const/4 v9, 0x0

    #@116
    .line 444
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    #@119
    .line 446
    .restart local v4    # "dtr":Landroid/icu/util/DateTimeRule;
    new-instance v7, Landroid/icu/util/AnnualTimeZoneRule;

    #@11b
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@11e
    move-result-object v5

    #@11f
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@122
    move-result-object v8

    #@123
    .line 447
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@126
    move-result-object v5

    #@127
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@12a
    move-result v9

    #@12b
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@12e
    move-result-object v5

    #@12f
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@132
    move-result v10

    #@133
    .line 448
    const/4 v5, 0x0

    #@134
    aget v5, v16, v5

    #@136
    add-int/lit8 v12, v5, -0x1

    #@138
    const v13, 0x7fffffff

    #@13b
    move-object v11, v4

    #@13c
    .line 446
    invoke-direct/range {v7 .. v13}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    #@13f
    .line 450
    .local v7, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@142
    .end local v25    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    move-result-object v5

    #@143
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@146
    move-result v10

    #@147
    .line 451
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@14a
    move-result-object v5

    #@14b
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@14e
    move-result v11

    #@14f
    const/4 v12, 0x1

    #@150
    move-wide/from16 v8, p1

    #@152
    .line 450
    invoke-virtual/range {v7 .. v12}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    #@155
    move-result-object v15

    #@156
    .line 452
    .local v15, "d":Ljava/util/Date;
    if-eqz v15, :cond_1

    #@158
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    #@15b
    move-result-wide v8

    #@15c
    cmp-long v5, v8, p1

    #@15e
    if-gtz v5, :cond_1

    #@160
    .line 453
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@163
    move-result-object v5

    #@164
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@167
    move-result v5

    #@168
    move/from16 v0, v19

    #@16a
    if-ne v0, v5, :cond_1

    #@16c
    .line 454
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@16f
    move-result-object v5

    #@170
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@173
    move-result v5

    #@174
    move/from16 v0, v17

    #@176
    if-ne v0, v5, :cond_1

    #@178
    .line 456
    const/4 v5, 0x1

    #@179
    aput-object v7, v14, v5

    #@17b
    .line 462
    .end local v15    # "d":Ljava/util/Date;
    :cond_1
    :goto_1
    const/4 v5, 0x1

    #@17c
    aget-object v5, v14, v5

    #@17e
    if-nez v5, :cond_2

    #@180
    .line 464
    const/4 v5, 0x1

    #@181
    move-object/from16 v0, p0

    #@183
    move-wide/from16 v1, p1

    #@185
    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@188
    move-result-object v26

    #@189
    .line 465
    if-eqz v26, :cond_2

    #@18b
    .line 468
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@18e
    move-result-object v5

    #@18f
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@192
    move-result v5

    #@193
    if-nez v5, :cond_7

    #@195
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@198
    move-result-object v5

    #@199
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@19c
    move-result v5

    #@19d
    if-eqz v5, :cond_7

    #@19f
    .line 472
    :goto_2
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@1a2
    move-result-wide v8

    #@1a3
    .line 473
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@1a6
    move-result-object v5

    #@1a7
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@1aa
    move-result v5

    #@1ab
    int-to-long v10, v5

    #@1ac
    .line 472
    add-long/2addr v8, v10

    #@1ad
    .line 473
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@1b0
    move-result-object v5

    #@1b1
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@1b4
    move-result v5

    #@1b5
    int-to-long v10, v5

    #@1b6
    .line 472
    add-long/2addr v8, v10

    #@1b7
    move-object/from16 v0, v16

    #@1b9
    invoke-static {v8, v9, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@1bc
    move-result-object v16

    #@1bd
    .line 475
    const/4 v5, 0x0

    #@1be
    aget v5, v16, v5

    #@1c0
    const/4 v8, 0x1

    #@1c1
    aget v8, v16, v8

    #@1c3
    .line 476
    const/4 v9, 0x2

    #@1c4
    aget v9, v16, v9

    #@1c6
    .line 475
    invoke-static {v5, v8, v9}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    #@1c9
    move-result v6

    #@1ca
    .line 477
    new-instance v4, Landroid/icu/util/DateTimeRule;

    #@1cc
    .end local v4    # "dtr":Landroid/icu/util/DateTimeRule;
    const/4 v5, 0x1

    #@1cd
    aget v9, v16, v5

    #@1cf
    const/4 v5, 0x3

    #@1d0
    aget v11, v16, v5

    #@1d2
    .line 478
    const/4 v5, 0x5

    #@1d3
    aget v12, v16, v5

    #@1d5
    const/4 v13, 0x0

    #@1d6
    move-object v8, v4

    #@1d7
    move v10, v6

    #@1d8
    .line 477
    invoke-direct/range {v8 .. v13}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    #@1db
    .line 482
    .restart local v4    # "dtr":Landroid/icu/util/DateTimeRule;
    new-instance v7, Landroid/icu/util/AnnualTimeZoneRule;

    #@1dd
    .line 483
    .end local v7    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@1e0
    move-result-object v5

    #@1e1
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@1e4
    move-result-object v8

    #@1e5
    .line 484
    const/4 v5, 0x0

    #@1e6
    aget-object v5, v14, v5

    #@1e8
    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getStartYear()I

    #@1eb
    move-result v5

    #@1ec
    add-int/lit8 v12, v5, -0x1

    #@1ee
    const v13, 0x7fffffff

    #@1f1
    move/from16 v9, v19

    #@1f3
    move/from16 v10, v17

    #@1f5
    move-object v11, v4

    #@1f6
    .line 482
    invoke-direct/range {v7 .. v13}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    #@1f9
    .line 488
    .restart local v7    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@1fc
    move-result-object v5

    #@1fd
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@200
    move-result v10

    #@201
    .line 489
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@204
    move-result-object v5

    #@205
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@208
    move-result v11

    #@209
    const/4 v12, 0x0

    #@20a
    move-wide/from16 v8, p1

    #@20c
    .line 488
    invoke-virtual/range {v7 .. v12}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@20f
    move-result-object v15

    #@210
    .line 490
    .restart local v15    # "d":Ljava/util/Date;
    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    #@213
    move-result-wide v8

    #@214
    cmp-long v5, v8, v22

    #@216
    if-lez v5, :cond_2

    #@218
    .line 492
    const/4 v5, 0x1

    #@219
    aput-object v7, v14, v5

    #@21b
    .line 497
    .end local v15    # "d":Ljava/util/Date;
    :cond_2
    const/4 v5, 0x1

    #@21c
    aget-object v5, v14, v5

    #@21e
    if-nez v5, :cond_8

    #@220
    .line 499
    const/4 v14, 0x0

    #@221
    .line 507
    .end local v4    # "dtr":Landroid/icu/util/DateTimeRule;
    .end local v6    # "weekInMonth":I
    .end local v7    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v14    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .end local v16    # "dtfields":[I
    :cond_3
    :goto_3
    new-instance v20, Landroid/icu/util/InitialTimeZoneRule;

    #@223
    .end local v20    # "initialRule":Landroid/icu/util/TimeZoneRule;
    move-object/from16 v0, v20

    #@225
    move-object/from16 v1, v18

    #@227
    move/from16 v2, v19

    #@229
    move/from16 v3, v17

    #@22b
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@22e
    .line 522
    .end local v17    # "initialDst":I
    .end local v18    # "initialName":Ljava/lang/String;
    .end local v19    # "initialRaw":I
    .end local v22    # "nextTransitionTime":J
    .local v20, "initialRule":Landroid/icu/util/TimeZoneRule;
    :goto_4
    const/16 v24, 0x0

    #@230
    .line 523
    .local v24, "result":[Landroid/icu/util/TimeZoneRule;
    if-nez v14, :cond_b

    #@232
    .line 524
    const/4 v5, 0x1

    #@233
    new-array v0, v5, [Landroid/icu/util/TimeZoneRule;

    #@235
    move-object/from16 v24, v0

    #@237
    .line 525
    .local v24, "result":[Landroid/icu/util/TimeZoneRule;
    const/4 v5, 0x0

    #@238
    aput-object v20, v24, v5

    #@23a
    .line 533
    :goto_5
    return-object v24

    #@23b
    .line 404
    .end local v24    # "result":[Landroid/icu/util/TimeZoneRule;
    .local v14, "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v17    # "initialDst":I
    .restart local v18    # "initialName":Ljava/lang/String;
    .restart local v19    # "initialRaw":I
    .local v20, "initialRule":Landroid/icu/util/TimeZoneRule;
    .restart local v22    # "nextTransitionTime":J
    :cond_4
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@23e
    move-result-object v5

    #@23f
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@242
    move-result v5

    #@243
    if-eqz v5, :cond_3

    #@245
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@248
    move-result-object v5

    #@249
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@24c
    move-result v5

    #@24d
    if-nez v5, :cond_3

    #@24f
    goto/16 :goto_0

    #@251
    .line 435
    .restart local v4    # "dtr":Landroid/icu/util/DateTimeRule;
    .restart local v6    # "weekInMonth":I
    .local v14, "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v16    # "dtfields":[I
    .restart local v25    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_5
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@254
    move-result-object v5

    #@255
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@258
    move-result v5

    #@259
    if-eqz v5, :cond_6

    #@25b
    .line 436
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@25e
    move-result-object v5

    #@25f
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@262
    move-result v5

    #@263
    if-eqz v5, :cond_0

    #@265
    :cond_6
    move-object/from16 v7, v25

    #@267
    .line 437
    .restart local v7    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    goto/16 :goto_1

    #@269
    .line 469
    .end local v25    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_7
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@26c
    move-result-object v5

    #@26d
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@270
    move-result v5

    #@271
    if-eqz v5, :cond_2

    #@273
    .line 470
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@276
    move-result-object v5

    #@277
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@27a
    move-result v5

    #@27b
    if-nez v5, :cond_2

    #@27d
    goto/16 :goto_2

    #@27f
    .line 502
    :cond_8
    const/4 v5, 0x0

    #@280
    aget-object v5, v14, v5

    #@282
    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    #@285
    move-result-object v18

    #@286
    .line 503
    const/4 v5, 0x0

    #@287
    aget-object v5, v14, v5

    #@289
    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@28c
    move-result v19

    #@28d
    .line 504
    const/4 v5, 0x0

    #@28e
    aget-object v5, v14, v5

    #@290
    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@293
    move-result v17

    #@294
    goto :goto_3

    #@295
    .line 510
    .end local v4    # "dtr":Landroid/icu/util/DateTimeRule;
    .end local v6    # "weekInMonth":I
    .end local v7    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v16    # "dtfields":[I
    .end local v17    # "initialDst":I
    .end local v18    # "initialName":Ljava/lang/String;
    .end local v19    # "initialRaw":I
    .end local v22    # "nextTransitionTime":J
    .local v14, "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    :cond_9
    const/4 v5, 0x1

    #@296
    move-object/from16 v0, p0

    #@298
    move-wide/from16 v1, p1

    #@29a
    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@29d
    move-result-object v26

    #@29e
    .line 511
    if-eqz v26, :cond_a

    #@2a0
    .line 512
    new-instance v20, Landroid/icu/util/InitialTimeZoneRule;

    #@2a2
    .end local v20    # "initialRule":Landroid/icu/util/TimeZoneRule;
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@2a5
    move-result-object v5

    #@2a6
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@2a9
    move-result-object v5

    #@2aa
    .line 513
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@2ad
    move-result-object v8

    #@2ae
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@2b1
    move-result v8

    #@2b2
    invoke-virtual/range {v26 .. v26}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@2b5
    move-result-object v9

    #@2b6
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@2b9
    move-result v9

    #@2ba
    .line 512
    move-object/from16 v0, v20

    #@2bc
    invoke-direct {v0, v5, v8, v9}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@2bf
    .local v20, "initialRule":Landroid/icu/util/TimeZoneRule;
    goto/16 :goto_4

    #@2c1
    .line 516
    .local v20, "initialRule":Landroid/icu/util/TimeZoneRule;
    :cond_a
    const/4 v5, 0x2

    #@2c2
    new-array v0, v5, [I

    #@2c4
    move-object/from16 v21, v0

    #@2c6
    .line 517
    .local v21, "offsets":[I
    const/4 v5, 0x0

    #@2c7
    move-object/from16 v0, p0

    #@2c9
    move-wide/from16 v1, p1

    #@2cb
    move-object/from16 v3, v21

    #@2cd
    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    #@2d0
    .line 518
    new-instance v20, Landroid/icu/util/InitialTimeZoneRule;

    #@2d2
    .end local v20    # "initialRule":Landroid/icu/util/TimeZoneRule;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    #@2d5
    move-result-object v5

    #@2d6
    const/4 v8, 0x0

    #@2d7
    aget v8, v21, v8

    #@2d9
    const/4 v9, 0x1

    #@2da
    aget v9, v21, v9

    #@2dc
    move-object/from16 v0, v20

    #@2de
    invoke-direct {v0, v5, v8, v9}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@2e1
    .local v20, "initialRule":Landroid/icu/util/TimeZoneRule;
    goto/16 :goto_4

    #@2e3
    .line 527
    .end local v14    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .end local v21    # "offsets":[I
    .local v24, "result":[Landroid/icu/util/TimeZoneRule;
    :cond_b
    const/4 v5, 0x3

    #@2e4
    new-array v0, v5, [Landroid/icu/util/TimeZoneRule;

    #@2e6
    move-object/from16 v24, v0

    #@2e8
    .line 528
    .local v24, "result":[Landroid/icu/util/TimeZoneRule;
    const/4 v5, 0x0

    #@2e9
    aput-object v20, v24, v5

    #@2eb
    .line 529
    const/4 v5, 0x0

    #@2ec
    aget-object v5, v14, v5

    #@2ee
    const/4 v8, 0x1

    #@2ef
    aput-object v5, v24, v8

    #@2f1
    .line 530
    const/4 v5, 0x1

    #@2f2
    aget-object v5, v14, v5

    #@2f4
    const/4 v8, 0x2

    #@2f5
    aput-object v5, v24, v8

    #@2f7
    goto/16 :goto_5

    #@2f9
    .end local v24    # "result":[Landroid/icu/util/TimeZoneRule;
    .restart local v4    # "dtr":Landroid/icu/util/DateTimeRule;
    .restart local v6    # "weekInMonth":I
    .local v14, "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v16    # "dtfields":[I
    .restart local v17    # "initialDst":I
    .restart local v18    # "initialName":Ljava/lang/String;
    .restart local v19    # "initialRaw":I
    .local v20, "initialRule":Landroid/icu/util/TimeZoneRule;
    .restart local v22    # "nextTransitionTime":J
    .restart local v25    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_c
    move-object/from16 v7, v25

    #@2fb
    .restart local v7    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    goto/16 :goto_1
.end method

.method public abstract getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
.end method

.method public getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;
    .locals 41
    .param p1, "start"    # J

    #@0
    .prologue
    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    #@3
    move-result-object v16

    #@4
    .line 238
    .local v16, "all":[Landroid/icu/util/TimeZoneRule;
    const/4 v5, 0x1

    #@5
    move-object/from16 v0, p0

    #@7
    move-wide/from16 v1, p1

    #@9
    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@c
    move-result-object v39

    #@d
    .line 239
    .local v39, "tzt":Landroid/icu/util/TimeZoneTransition;
    if-nez v39, :cond_0

    #@f
    .line 241
    return-object v16

    #@10
    .line 244
    :cond_0
    new-instance v28, Ljava/util/BitSet;

    #@12
    move-object/from16 v0, v16

    #@14
    array-length v5, v0

    #@15
    move-object/from16 v0, v28

    #@17
    invoke-direct {v0, v5}, Ljava/util/BitSet;-><init>(I)V

    #@1a
    .line 245
    .local v28, "isProcessed":Ljava/util/BitSet;
    new-instance v23, Ljava/util/LinkedList;

    #@1c
    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    #@1f
    .line 248
    .local v23, "filteredRules":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/util/TimeZoneRule;>;"
    new-instance v27, Landroid/icu/util/InitialTimeZoneRule;

    #@21
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@24
    move-result-object v5

    #@25
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 249
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@30
    move-result v6

    #@31
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@38
    move-result v7

    #@39
    .line 248
    move-object/from16 v0, v27

    #@3b
    invoke-direct {v0, v5, v6, v7}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@3e
    .line 250
    .local v27, "initial":Landroid/icu/util/TimeZoneRule;
    move-object/from16 v0, v23

    #@40
    move-object/from16 v1, v27

    #@42
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@45
    .line 251
    const/4 v5, 0x0

    #@46
    move-object/from16 v0, v28

    #@48
    invoke-virtual {v0, v5}, Ljava/util/BitSet;->set(I)V

    #@4b
    .line 254
    const/16 v25, 0x1

    #@4d
    .local v25, "i":I
    :goto_0
    move-object/from16 v0, v16

    #@4f
    array-length v5, v0

    #@50
    move/from16 v0, v25

    #@52
    if-ge v0, v5, :cond_2

    #@54
    .line 255
    aget-object v5, v16, v25

    #@56
    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@59
    move-result v8

    #@5a
    .line 256
    invoke-virtual/range {v27 .. v27}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@5d
    move-result v9

    #@5e
    const/4 v10, 0x0

    #@5f
    move-wide/from16 v6, p1

    #@61
    .line 255
    invoke-virtual/range {v5 .. v10}, Landroid/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    #@64
    move-result-object v21

    #@65
    .line 257
    .local v21, "d":Ljava/util/Date;
    if-nez v21, :cond_1

    #@67
    .line 258
    move-object/from16 v0, v28

    #@69
    move/from16 v1, v25

    #@6b
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    #@6e
    .line 254
    :cond_1
    add-int/lit8 v25, v25, 0x1

    #@70
    goto :goto_0

    #@71
    .line 262
    .end local v21    # "d":Ljava/util/Date;
    :cond_2
    move-wide/from16 v34, p1

    #@73
    .line 263
    .local v34, "time":J
    const/16 v20, 0x0

    #@75
    .local v20, "bFinalStd":Z
    const/16 v19, 0x0

    #@77
    .line 264
    .local v19, "bFinalDst":Z
    :cond_3
    :goto_1
    if-eqz v20, :cond_5

    #@79
    if-eqz v19, :cond_5

    #@7b
    .line 364
    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    #@7e
    move-result v5

    #@7f
    new-array v5, v5, [Landroid/icu/util/TimeZoneRule;

    #@81
    move-object/from16 v0, v23

    #@83
    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@86
    move-result-object v30

    #@87
    check-cast v30, [Landroid/icu/util/TimeZoneRule;

    #@89
    .line 365
    .local v30, "rules":[Landroid/icu/util/TimeZoneRule;
    return-object v30

    #@8a
    .line 265
    .end local v30    # "rules":[Landroid/icu/util/TimeZoneRule;
    :cond_5
    const/4 v5, 0x0

    #@8b
    move-object/from16 v0, p0

    #@8d
    move-wide/from16 v1, v34

    #@8f
    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@92
    move-result-object v39

    #@93
    .line 266
    if-eqz v39, :cond_4

    #@95
    .line 269
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@98
    move-result-wide v34

    #@99
    .line 271
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@9c
    move-result-object v38

    #@9d
    .line 272
    .local v38, "toRule":Landroid/icu/util/TimeZoneRule;
    const/16 v29, 0x1

    #@9f
    .line 273
    .local v29, "ruleIdx":I
    :goto_2
    move-object/from16 v0, v16

    #@a1
    array-length v5, v0

    #@a2
    move/from16 v0, v29

    #@a4
    if-ge v0, v5, :cond_6

    #@a6
    .line 274
    aget-object v5, v16, v29

    #@a8
    move-object/from16 v0, v38

    #@aa
    invoke-virtual {v5, v0}, Landroid/icu/util/TimeZoneRule;->equals(Ljava/lang/Object;)Z

    #@ad
    move-result v5

    #@ae
    if-eqz v5, :cond_7

    #@b0
    .line 278
    :cond_6
    move-object/from16 v0, v16

    #@b2
    array-length v5, v0

    #@b3
    move/from16 v0, v29

    #@b5
    if-lt v0, v5, :cond_8

    #@b7
    .line 279
    new-instance v5, Ljava/lang/IllegalStateException;

    #@b9
    const-string/jumbo v6, "The rule was not found"

    #@bc
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@bf
    throw v5

    #@c0
    .line 273
    :cond_7
    add-int/lit8 v29, v29, 0x1

    #@c2
    goto :goto_2

    #@c3
    .line 281
    :cond_8
    invoke-virtual/range {v28 .. v29}, Ljava/util/BitSet;->get(I)Z

    #@c6
    move-result v5

    #@c7
    if-nez v5, :cond_3

    #@c9
    .line 284
    move-object/from16 v0, v38

    #@cb
    instance-of v5, v0, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@cd
    if-eqz v5, :cond_11

    #@cf
    move-object/from16 v31, v38

    #@d1
    .line 285
    check-cast v31, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@d3
    .line 288
    .local v31, "tar":Landroid/icu/util/TimeArrayTimeZoneRule;
    move-wide/from16 v32, p1

    #@d5
    .line 290
    .local v32, "t":J
    :goto_3
    const/4 v5, 0x0

    #@d6
    move-object/from16 v0, p0

    #@d8
    move-wide/from16 v1, v32

    #@da
    invoke-virtual {v0, v1, v2, v5}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@dd
    move-result-object v39

    #@de
    .line 291
    if-nez v39, :cond_b

    #@e0
    .line 299
    :cond_9
    if-eqz v39, :cond_a

    #@e2
    .line 301
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@e5
    move-result-object v5

    #@e6
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@e9
    move-result v5

    #@ea
    .line 302
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@ed
    move-result-object v6

    #@ee
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@f1
    move-result v6

    #@f2
    .line 301
    move-object/from16 v0, v31

    #@f4
    invoke-virtual {v0, v5, v6}, Landroid/icu/util/TimeArrayTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    #@f7
    move-result-object v24

    #@f8
    .line 303
    .local v24, "firstStart":Ljava/util/Date;
    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J

    #@fb
    move-result-wide v6

    #@fc
    cmp-long v5, v6, p1

    #@fe
    if-lez v5, :cond_c

    #@100
    .line 305
    move-object/from16 v0, v23

    #@102
    move-object/from16 v1, v31

    #@104
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@107
    .line 362
    .end local v24    # "firstStart":Ljava/util/Date;
    .end local v31    # "tar":Landroid/icu/util/TimeArrayTimeZoneRule;
    .end local v32    # "t":J
    :cond_a
    :goto_4
    invoke-virtual/range {v28 .. v29}, Ljava/util/BitSet;->set(I)V

    #@10a
    goto/16 :goto_1

    #@10c
    .line 294
    .restart local v31    # "tar":Landroid/icu/util/TimeArrayTimeZoneRule;
    .restart local v32    # "t":J
    :cond_b
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@10f
    move-result-object v5

    #@110
    move-object/from16 v0, v31

    #@112
    invoke-virtual {v5, v0}, Landroid/icu/util/TimeZoneRule;->equals(Ljava/lang/Object;)Z

    #@115
    move-result v5

    #@116
    if-nez v5, :cond_9

    #@118
    .line 297
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@11b
    move-result-wide v32

    #@11c
    goto :goto_3

    #@11d
    .line 308
    .restart local v24    # "firstStart":Ljava/util/Date;
    :cond_c
    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getStartTimes()[J

    #@120
    move-result-object v37

    #@121
    .line 309
    .local v37, "times":[J
    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    #@124
    move-result v36

    #@125
    .line 311
    .local v36, "timeType":I
    const/16 v26, 0x0

    #@127
    .local v26, "idx":I
    :goto_5
    move-object/from16 v0, v37

    #@129
    array-length v5, v0

    #@12a
    move/from16 v0, v26

    #@12c
    if-ge v0, v5, :cond_f

    #@12e
    .line 312
    aget-wide v32, v37, v26

    #@130
    .line 313
    const/4 v5, 0x1

    #@131
    move/from16 v0, v36

    #@133
    if-ne v0, v5, :cond_d

    #@135
    .line 314
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@138
    move-result-object v5

    #@139
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@13c
    move-result v5

    #@13d
    int-to-long v6, v5

    #@13e
    sub-long v32, v32, v6

    #@140
    .line 316
    :cond_d
    if-nez v36, :cond_e

    #@142
    .line 317
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@145
    move-result-object v5

    #@146
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@149
    move-result v5

    #@14a
    int-to-long v6, v5

    #@14b
    sub-long v32, v32, v6

    #@14d
    .line 319
    :cond_e
    cmp-long v5, v32, p1

    #@14f
    if-lez v5, :cond_10

    #@151
    .line 323
    :cond_f
    move-object/from16 v0, v37

    #@153
    array-length v5, v0

    #@154
    sub-int v18, v5, v26

    #@156
    .line 324
    .local v18, "asize":I
    if-lez v18, :cond_a

    #@158
    .line 325
    move/from16 v0, v18

    #@15a
    new-array v8, v0, [J

    #@15c
    .line 326
    .local v8, "newtimes":[J
    const/4 v5, 0x0

    #@15d
    move-object/from16 v0, v37

    #@15f
    move/from16 v1, v26

    #@161
    move/from16 v2, v18

    #@163
    invoke-static {v0, v1, v8, v5, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@166
    .line 327
    new-instance v4, Landroid/icu/util/TimeArrayTimeZoneRule;

    #@168
    .line 328
    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getName()Ljava/lang/String;

    #@16b
    move-result-object v5

    #@16c
    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getRawOffset()I

    #@16f
    move-result v6

    #@170
    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getDSTSavings()I

    #@173
    move-result v7

    #@174
    .line 329
    invoke-virtual/range {v31 .. v31}, Landroid/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    #@177
    move-result v9

    #@178
    .line 327
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    #@17b
    .line 330
    .local v4, "newtar":Landroid/icu/util/TimeArrayTimeZoneRule;
    move-object/from16 v0, v23

    #@17d
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@180
    goto :goto_4

    #@181
    .line 311
    .end local v4    # "newtar":Landroid/icu/util/TimeArrayTimeZoneRule;
    .end local v8    # "newtimes":[J
    .end local v18    # "asize":I
    :cond_10
    add-int/lit8 v26, v26, 0x1

    #@183
    goto :goto_5

    #@184
    .line 334
    .end local v24    # "firstStart":Ljava/util/Date;
    .end local v26    # "idx":I
    .end local v31    # "tar":Landroid/icu/util/TimeArrayTimeZoneRule;
    .end local v32    # "t":J
    .end local v36    # "timeType":I
    .end local v37    # "times":[J
    :cond_11
    move-object/from16 v0, v38

    #@186
    instance-of v5, v0, Landroid/icu/util/AnnualTimeZoneRule;

    #@188
    if-eqz v5, :cond_a

    #@18a
    move-object/from16 v17, v38

    #@18c
    .line 335
    check-cast v17, Landroid/icu/util/AnnualTimeZoneRule;

    #@18e
    .line 336
    .local v17, "ar":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@191
    move-result-object v5

    #@192
    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@195
    move-result v5

    #@196
    .line 337
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@199
    move-result-object v6

    #@19a
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@19d
    move-result v6

    #@19e
    .line 336
    move-object/from16 v0, v17

    #@1a0
    invoke-virtual {v0, v5, v6}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    #@1a3
    move-result-object v24

    #@1a4
    .line 338
    .restart local v24    # "firstStart":Ljava/util/Date;
    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J

    #@1a7
    move-result-wide v6

    #@1a8
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@1ab
    move-result-wide v10

    #@1ac
    cmp-long v5, v6, v10

    #@1ae
    if-nez v5, :cond_12

    #@1b0
    .line 340
    move-object/from16 v0, v23

    #@1b2
    move-object/from16 v1, v17

    #@1b4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1b7
    .line 352
    :goto_6
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    #@1ba
    move-result v5

    #@1bb
    const v6, 0x7fffffff

    #@1be
    if-ne v5, v6, :cond_a

    #@1c0
    .line 355
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@1c3
    move-result v5

    #@1c4
    if-nez v5, :cond_13

    #@1c6
    .line 356
    const/16 v20, 0x1

    #@1c8
    goto/16 :goto_4

    #@1ca
    .line 343
    :cond_12
    const/4 v5, 0x6

    #@1cb
    new-array v0, v5, [I

    #@1cd
    move-object/from16 v22, v0

    #@1cf
    .line 344
    .local v22, "dfields":[I
    invoke-virtual/range {v39 .. v39}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@1d2
    move-result-wide v6

    #@1d3
    move-object/from16 v0, v22

    #@1d5
    invoke-static {v6, v7, v0}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    #@1d8
    .line 346
    new-instance v9, Landroid/icu/util/AnnualTimeZoneRule;

    #@1da
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    #@1dd
    move-result-object v10

    #@1de
    .line 347
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    #@1e1
    move-result v11

    #@1e2
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    #@1e5
    move-result v12

    #@1e6
    .line 348
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    #@1e9
    move-result-object v13

    #@1ea
    const/4 v5, 0x0

    #@1eb
    aget v14, v22, v5

    #@1ed
    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    #@1f0
    move-result v15

    #@1f1
    .line 346
    invoke-direct/range {v9 .. v15}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    #@1f4
    .line 349
    .local v9, "newar":Landroid/icu/util/AnnualTimeZoneRule;
    move-object/from16 v0, v23

    #@1f6
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f9
    goto :goto_6

    #@1fa
    .line 358
    .end local v9    # "newar":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v22    # "dfields":[I
    :cond_13
    const/16 v19, 0x1

    #@1fc
    goto/16 :goto_4
.end method

.method public hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z
    .locals 8
    .param p1, "tz"    # Landroid/icu/util/TimeZone;
    .param p2, "start"    # J
    .param p4, "end"    # J

    #@0
    .prologue
    .line 82
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p2

    #@4
    move-wide v4, p4

    #@5
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/BasicTimeZone;->hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJZ)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJZ)Z
    .locals 12
    .param p1, "tz"    # Landroid/icu/util/TimeZone;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "ignoreDstAmount"    # Z

    #@0
    .prologue
    .line 108
    if-ne p0, p1, :cond_0

    #@2
    .line 109
    const/4 v8, 0x1

    #@3
    return v8

    #@4
    .line 112
    :cond_0
    instance-of v8, p1, Landroid/icu/util/BasicTimeZone;

    #@6
    if-nez v8, :cond_1

    #@8
    .line 113
    const/4 v8, 0x0

    #@9
    return v8

    #@a
    .line 117
    :cond_1
    const/4 v8, 0x2

    #@b
    new-array v2, v8, [I

    #@d
    .line 118
    .local v2, "offsets1":[I
    const/4 v8, 0x2

    #@e
    new-array v3, v8, [I

    #@10
    .line 120
    .local v3, "offsets2":[I
    const/4 v8, 0x0

    #@11
    invoke-virtual {p0, p2, p3, v8, v2}, Landroid/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    #@14
    .line 121
    const/4 v8, 0x0

    #@15
    invoke-virtual {p1, p2, p3, v8, v3}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@18
    .line 123
    if-eqz p6, :cond_5

    #@1a
    .line 124
    const/4 v8, 0x0

    #@1b
    aget v8, v2, v8

    #@1d
    const/4 v9, 0x1

    #@1e
    aget v9, v2, v9

    #@20
    add-int/2addr v8, v9

    #@21
    const/4 v9, 0x0

    #@22
    aget v9, v3, v9

    #@24
    const/4 v10, 0x1

    #@25
    aget v10, v3, v10

    #@27
    add-int/2addr v9, v10

    #@28
    if-ne v8, v9, :cond_2

    #@2a
    .line 125
    const/4 v8, 0x1

    #@2b
    aget v8, v2, v8

    #@2d
    if-eqz v8, :cond_3

    #@2f
    const/4 v8, 0x1

    #@30
    aget v8, v3, v8

    #@32
    if-nez v8, :cond_3

    #@34
    .line 127
    :cond_2
    const/4 v8, 0x0

    #@35
    return v8

    #@36
    .line 126
    :cond_3
    const/4 v8, 0x1

    #@37
    aget v8, v2, v8

    #@39
    if-nez v8, :cond_4

    #@3b
    const/4 v8, 0x1

    #@3c
    aget v8, v3, v8

    #@3e
    if-nez v8, :cond_2

    #@40
    .line 136
    :cond_4
    move-wide v4, p2

    #@41
    .line 138
    .local v4, "time":J
    :goto_0
    const/4 v8, 0x0

    #@42
    invoke-virtual {p0, v4, v5, v8}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@45
    move-result-object v6

    #@46
    .local v6, "tr1":Landroid/icu/util/TimeZoneTransition;
    move-object v8, p1

    #@47
    .line 139
    check-cast v8, Landroid/icu/util/BasicTimeZone;

    #@49
    const/4 v9, 0x0

    #@4a
    invoke-virtual {v8, v4, v5, v9}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@4d
    move-result-object v7

    #@4e
    .line 141
    .local v7, "tr2":Landroid/icu/util/TimeZoneTransition;
    if-eqz p6, :cond_8

    #@50
    .line 144
    :goto_1
    if-eqz v6, :cond_7

    #@52
    .line 145
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@55
    move-result-wide v8

    #@56
    cmp-long v8, v8, p4

    #@58
    if-gtz v8, :cond_7

    #@5a
    .line 146
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@5d
    move-result-object v8

    #@5e
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@61
    move-result v8

    #@62
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@65
    move-result-object v9

    #@66
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@69
    move-result v9

    #@6a
    add-int/2addr v8, v9

    #@6b
    .line 147
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@6e
    move-result-object v9

    #@6f
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@72
    move-result v9

    #@73
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@76
    move-result-object v10

    #@77
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@7a
    move-result v10

    #@7b
    add-int/2addr v9, v10

    #@7c
    .line 146
    if-ne v8, v9, :cond_7

    #@7e
    .line 148
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@81
    move-result-object v8

    #@82
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@85
    move-result v8

    #@86
    if-eqz v8, :cond_7

    #@88
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@8b
    move-result-object v8

    #@8c
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@8f
    move-result v8

    #@90
    if-eqz v8, :cond_7

    #@92
    .line 149
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@95
    move-result-wide v8

    #@96
    const/4 v10, 0x0

    #@97
    invoke-virtual {p0, v8, v9, v10}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@9a
    move-result-object v6

    #@9b
    goto :goto_1

    #@9c
    .line 130
    .end local v4    # "time":J
    .end local v6    # "tr1":Landroid/icu/util/TimeZoneTransition;
    .end local v7    # "tr2":Landroid/icu/util/TimeZoneTransition;
    :cond_5
    const/4 v8, 0x0

    #@9d
    aget v8, v2, v8

    #@9f
    const/4 v9, 0x0

    #@a0
    aget v9, v3, v9

    #@a2
    if-ne v8, v9, :cond_6

    #@a4
    const/4 v8, 0x1

    #@a5
    aget v8, v2, v8

    #@a7
    const/4 v9, 0x1

    #@a8
    aget v9, v3, v9

    #@aa
    if-eq v8, v9, :cond_4

    #@ac
    .line 131
    :cond_6
    const/4 v8, 0x0

    #@ad
    return v8

    #@ae
    .line 155
    .restart local v4    # "time":J
    .restart local v6    # "tr1":Landroid/icu/util/TimeZoneTransition;
    .restart local v7    # "tr2":Landroid/icu/util/TimeZoneTransition;
    :cond_7
    :goto_2
    if-eqz v7, :cond_8

    #@b0
    .line 156
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@b3
    move-result-wide v8

    #@b4
    cmp-long v8, v8, p4

    #@b6
    if-gtz v8, :cond_8

    #@b8
    .line 157
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@bb
    move-result-object v8

    #@bc
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@bf
    move-result v8

    #@c0
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@c3
    move-result-object v9

    #@c4
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@c7
    move-result v9

    #@c8
    add-int/2addr v8, v9

    #@c9
    .line 158
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@cc
    move-result-object v9

    #@cd
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@d0
    move-result v9

    #@d1
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@d4
    move-result-object v10

    #@d5
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@d8
    move-result v10

    #@d9
    add-int/2addr v9, v10

    #@da
    .line 157
    if-ne v8, v9, :cond_8

    #@dc
    .line 159
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    #@df
    move-result-object v8

    #@e0
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@e3
    move-result v8

    #@e4
    if-eqz v8, :cond_8

    #@e6
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@e9
    move-result-object v8

    #@ea
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@ed
    move-result v8

    #@ee
    if-eqz v8, :cond_8

    #@f0
    move-object v8, p1

    #@f1
    .line 160
    check-cast v8, Landroid/icu/util/BasicTimeZone;

    #@f3
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@f6
    move-result-wide v10

    #@f7
    const/4 v9, 0x0

    #@f8
    invoke-virtual {v8, v10, v11, v9}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@fb
    move-result-object v7

    #@fc
    goto :goto_2

    #@fd
    .line 167
    :cond_8
    const/4 v0, 0x0

    #@fe
    .line 168
    .local v0, "inRange1":Z
    const/4 v1, 0x0

    #@ff
    .line 169
    .local v1, "inRange2":Z
    if-eqz v6, :cond_9

    #@101
    .line 170
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@104
    move-result-wide v8

    #@105
    cmp-long v8, v8, p4

    #@107
    if-gtz v8, :cond_9

    #@109
    .line 171
    const/4 v0, 0x1

    #@10a
    .line 174
    :cond_9
    if-eqz v7, :cond_a

    #@10c
    .line 175
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@10f
    move-result-wide v8

    #@110
    cmp-long v8, v8, p4

    #@112
    if-gtz v8, :cond_a

    #@114
    .line 176
    const/4 v1, 0x1

    #@115
    .line 179
    :cond_a
    if-nez v0, :cond_b

    #@117
    if-eqz v1, :cond_13

    #@119
    .line 183
    :cond_b
    if-eqz v0, :cond_c

    #@11b
    if-eqz v1, :cond_c

    #@11d
    .line 186
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@120
    move-result-wide v8

    #@121
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@124
    move-result-wide v10

    #@125
    cmp-long v8, v8, v10

    #@127
    if-eqz v8, :cond_d

    #@129
    .line 187
    const/4 v8, 0x0

    #@12a
    return v8

    #@12b
    .line 184
    :cond_c
    const/4 v8, 0x0

    #@12c
    return v8

    #@12d
    .line 189
    :cond_d
    if-eqz p6, :cond_11

    #@12f
    .line 190
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@132
    move-result-object v8

    #@133
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@136
    move-result v8

    #@137
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@13a
    move-result-object v9

    #@13b
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@13e
    move-result v9

    #@13f
    add-int/2addr v8, v9

    #@140
    .line 191
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@143
    move-result-object v9

    #@144
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@147
    move-result v9

    #@148
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@14b
    move-result-object v10

    #@14c
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@14f
    move-result v10

    #@150
    add-int/2addr v9, v10

    #@151
    .line 190
    if-ne v8, v9, :cond_e

    #@153
    .line 192
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@156
    move-result-object v8

    #@157
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@15a
    move-result v8

    #@15b
    if-eqz v8, :cond_f

    #@15d
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@160
    move-result-object v8

    #@161
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@164
    move-result v8

    #@165
    if-nez v8, :cond_f

    #@167
    .line 194
    :cond_e
    const/4 v8, 0x0

    #@168
    return v8

    #@169
    .line 193
    :cond_f
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@16c
    move-result-object v8

    #@16d
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@170
    move-result v8

    #@171
    if-nez v8, :cond_10

    #@173
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@176
    move-result-object v8

    #@177
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@17a
    move-result v8

    #@17b
    if-nez v8, :cond_e

    #@17d
    .line 202
    :cond_10
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@180
    move-result-wide v4

    #@181
    goto/16 :goto_0

    #@183
    .line 197
    :cond_11
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@186
    move-result-object v8

    #@187
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@18a
    move-result v8

    #@18b
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@18e
    move-result-object v9

    #@18f
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    #@192
    move-result v9

    #@193
    if-ne v8, v9, :cond_12

    #@195
    .line 198
    invoke-virtual {v6}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@198
    move-result-object v8

    #@199
    invoke-virtual {v8}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@19c
    move-result v8

    #@19d
    invoke-virtual {v7}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    #@1a0
    move-result-object v9

    #@1a1
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    #@1a4
    move-result v9

    #@1a5
    if-eq v8, v9, :cond_10

    #@1a7
    .line 199
    :cond_12
    const/4 v8, 0x0

    #@1a8
    return v8

    #@1a9
    .line 204
    :cond_13
    const/4 v8, 0x1

    #@1aa
    return v8
.end method
