.class public abstract Landroid/icu/util/BasicTimeZone;
.super Landroid/icu/util/TimeZone;
.source "BasicTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/BasicTimeZone$LocalOption;
    }
.end annotation


# static fields
.field protected static final greylist-max-o FORMER_LATTER_MASK:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final greylist-max-o LOCAL_DST:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final greylist-max-o LOCAL_FORMER:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final greylist-max-o LOCAL_LATTER:I = 0xc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final greylist-max-o LOCAL_STD:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o MILLIS_PER_YEAR:J = 0x757b12c00L

.field protected static final greylist-max-o STD_DST_MASK:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x2c77e2591bf19444L


# direct methods
.method protected constructor greylist-max-o <init>()V
    .registers 1

    .line 655
    invoke-direct {p0}, Landroid/icu/util/TimeZone;-><init>()V

    .line 656
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "ID"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    invoke-direct {p0, p1}, Landroid/icu/util/TimeZone;-><init>(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method protected static blacklist getLocalOptionValue(Landroid/icu/util/BasicTimeZone$LocalOption;)I
    .registers 2
    .param p0, "locOpt"    # Landroid/icu/util/BasicTimeZone$LocalOption;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 593
    invoke-static {p0}, Landroid/icu/util/BasicTimeZone$LocalOption;->-$$Nest$fgetflagVal(Landroid/icu/util/BasicTimeZone$LocalOption;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract greylist-max-o getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;
.end method

.method public blacklist getOffsetFromLocal(JLandroid/icu/util/BasicTimeZone$LocalOption;Landroid/icu/util/BasicTimeZone$LocalOption;[I)V
    .registers 8
    .param p1, "date"    # J
    .param p3, "nonExistingTimeOpt"    # Landroid/icu/util/BasicTimeZone$LocalOption;
    .param p4, "duplicatedTimeOpt"    # Landroid/icu/util/BasicTimeZone$LocalOption;
    .param p5, "offsets"    # [I

    .line 649
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract greylist-max-o getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;
.end method

.method public greylist-max-o getSimpleTimeZoneRulesNear(J)[Landroid/icu/util/TimeZoneRule;
    .registers 42
    .param p1, "date"    # J

    .line 380
    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    const/4 v1, 0x0

    .line 381
    .local v1, "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    const/4 v7, 0x0

    .line 383
    .local v7, "initialRule":Landroid/icu/util/TimeZoneRule;
    const/4 v8, 0x0

    invoke-virtual {v0, v2, v3, v8}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v4

    .line 384
    .local v4, "tr":Landroid/icu/util/TimeZoneTransition;
    const/4 v10, 0x2

    if-eqz v4, :cond_2be

    .line 385
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v12

    .line 386
    .local v12, "initialName":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v15

    .line 387
    .local v15, "initialRaw":I
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    .line 391
    .local v5, "initialDst":I
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    .line 392
    .local v13, "nextTransitionTime":J
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_3e

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_52

    .line 393
    :cond_3e
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-eqz v6, :cond_2aa

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    if-nez v6, :cond_2aa

    :cond_52
    const-wide v20, 0x757b12c00L

    add-long v16, v2, v20

    cmp-long v6, v16, v13

    if-lez v6, :cond_2aa

    .line 395
    new-array v1, v10, [Landroid/icu/util/AnnualTimeZoneRule;

    .line 397
    nop

    .line 398
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v6

    move/from16 v23, v10

    const/16 v22, 0x3

    int-to-long v9, v6

    add-long/2addr v9, v13

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    move-object/from16 v25, v12

    const/16 v24, 0x1

    .end local v12    # "initialName":Ljava/lang/String;
    .local v25, "initialName":Ljava/lang/String;
    int-to-long v11, v6

    add-long/2addr v9, v11

    .line 397
    const/4 v6, 0x0

    invoke-static {v9, v10, v6}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v6

    .line 399
    .local v6, "dtfields":[I
    aget v9, v6, v8

    aget v10, v6, v24

    aget v11, v6, v23

    invoke-static {v9, v10, v11}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v28

    .line 401
    .local v28, "weekInMonth":I
    new-instance v17, Landroid/icu/util/DateTimeRule;

    aget v27, v6, v24

    aget v29, v6, v22

    const/4 v9, 0x5

    aget v30, v6, v9

    const/16 v31, 0x0

    move-object/from16 v26, v17

    invoke-direct/range {v26 .. v31}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    .line 404
    .local v17, "dtr":Landroid/icu/util/DateTimeRule;
    const/4 v10, 0x0

    .line 412
    .local v10, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    move-wide v11, v13

    .end local v13    # "nextTransitionTime":J
    .local v11, "nextTransitionTime":J
    new-instance v13, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v14

    .line 413
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v16

    aget v18, v6, v8

    const v19, 0x7fffffff

    invoke-direct/range {v13 .. v19}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    aput-object v13, v1, v8

    .line 416
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    if-ne v13, v15, :cond_1bd

    .line 419
    invoke-virtual {v0, v11, v12, v8}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v13

    .line 420
    .end local v4    # "tr":Landroid/icu/util/TimeZoneTransition;
    .local v13, "tr":Landroid/icu/util/TimeZoneTransition;
    if-eqz v13, :cond_1b3

    .line 423
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_dd

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_f1

    .line 424
    :cond_dd
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-eqz v4, :cond_1ac

    .line 425
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_1a5

    :cond_f1
    add-long v18, v11, v20

    .line 426
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v20

    cmp-long v4, v18, v20

    if-lez v4, :cond_19e

    .line 428
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v18

    .line 429
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    move v14, v9

    move-object/from16 v16, v10

    .end local v10    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v16, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    int-to-long v9, v4

    add-long v18, v18, v9

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    int-to-long v9, v4

    add-long v9, v18, v9

    .line 428
    invoke-static {v9, v10, v6}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v9

    .line 431
    .end local v6    # "dtfields":[I
    .local v9, "dtfields":[I
    aget v4, v9, v8

    aget v6, v9, v24

    aget v10, v9, v23

    invoke-static {v4, v6, v10}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v31

    .line 433
    .end local v28    # "weekInMonth":I
    .local v31, "weekInMonth":I
    new-instance v29, Landroid/icu/util/DateTimeRule;

    aget v30, v9, v24

    aget v32, v9, v22

    aget v33, v9, v14

    const/16 v34, 0x0

    invoke-direct/range {v29 .. v34}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    move-object/from16 v36, v29

    .line 435
    .end local v17    # "dtr":Landroid/icu/util/DateTimeRule;
    .local v36, "dtr":Landroid/icu/util/DateTimeRule;
    new-instance v32, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v33

    .line 436
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v34

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v35

    aget v4, v9, v8

    add-int/lit8 v37, v4, -0x1

    const v38, 0x7fffffff

    invoke-direct/range {v32 .. v38}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    .line 439
    .end local v16    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v32, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    .line 440
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    .line 439
    move/from16 v16, v5

    move v5, v6

    .end local v5    # "initialDst":I
    .local v16, "initialDst":I
    const/4 v6, 0x1

    move-object/from16 v20, v1

    move/from16 v10, v16

    move-object/from16 v1, v32

    .end local v16    # "initialDst":I
    .end local v32    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v1, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v10, "initialDst":I
    .local v20, "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getPreviousStart(JIIZ)Ljava/util/Date;

    move-result-object v4

    .line 441
    .local v4, "d":Ljava/util/Date;
    if-eqz v4, :cond_197

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_197

    .line 442
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    if-ne v15, v5, :cond_197

    .line 443
    invoke-virtual {v13}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    if-ne v10, v5, :cond_197

    .line 445
    aput-object v1, v20, v24

    .line 451
    .end local v4    # "d":Ljava/util/Date;
    :cond_197
    move-object v6, v9

    move-object v4, v13

    move/from16 v28, v31

    move-object/from16 v17, v36

    goto :goto_1c5

    .line 426
    .end local v9    # "dtfields":[I
    .end local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .end local v31    # "weekInMonth":I
    .end local v36    # "dtr":Landroid/icu/util/DateTimeRule;
    .local v1, "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v5    # "initialDst":I
    .restart local v6    # "dtfields":[I
    .local v10, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v17    # "dtr":Landroid/icu/util/DateTimeRule;
    .restart local v28    # "weekInMonth":I
    :cond_19e
    move-object/from16 v20, v1

    move v14, v9

    move-object/from16 v16, v10

    move v10, v5

    .end local v1    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .end local v5    # "initialDst":I
    .local v10, "initialDst":I
    .local v16, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    goto :goto_1b9

    .line 425
    .end local v16    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v1    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v5    # "initialDst":I
    .local v10, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_1a5
    move-object/from16 v20, v1

    move v14, v9

    move-object/from16 v16, v10

    move v10, v5

    .end local v1    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .end local v5    # "initialDst":I
    .local v10, "initialDst":I
    .restart local v16    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    goto :goto_1b9

    .line 424
    .end local v16    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v1    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v5    # "initialDst":I
    .local v10, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_1ac
    move-object/from16 v20, v1

    move v14, v9

    move-object/from16 v16, v10

    move v10, v5

    .end local v1    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .end local v5    # "initialDst":I
    .local v10, "initialDst":I
    .restart local v16    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    goto :goto_1b9

    .line 420
    .end local v16    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v1    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v5    # "initialDst":I
    .local v10, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_1b3
    move-object/from16 v20, v1

    move v14, v9

    move-object/from16 v16, v10

    move v10, v5

    .line 451
    .end local v1    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .end local v5    # "initialDst":I
    .local v10, "initialDst":I
    .restart local v16    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    :goto_1b9
    move-object v4, v13

    move-object/from16 v1, v16

    goto :goto_1c5

    .line 416
    .end local v13    # "tr":Landroid/icu/util/TimeZoneTransition;
    .end local v16    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v1    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .local v4, "tr":Landroid/icu/util/TimeZoneTransition;
    .restart local v5    # "initialDst":I
    .local v10, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    :cond_1bd
    move-object/from16 v20, v1

    move v14, v9

    move-object/from16 v16, v10

    move v10, v5

    .end local v1    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .end local v5    # "initialDst":I
    .local v10, "initialDst":I
    .restart local v16    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    move-object/from16 v1, v16

    .line 451
    .end local v16    # "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    .local v1, "secondRule":Landroid/icu/util/AnnualTimeZoneRule;
    :goto_1c5
    aget-object v5, v20, v24

    if-nez v5, :cond_284

    .line 453
    move/from16 v5, v24

    invoke-virtual {v0, v2, v3, v5}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v9

    .line 454
    .end local v4    # "tr":Landroid/icu/util/TimeZoneTransition;
    .local v9, "tr":Landroid/icu/util/TimeZoneTransition;
    if-eqz v9, :cond_280

    .line 457
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_1e5

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_1f9

    .line 458
    :cond_1e5
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-eqz v4, :cond_27d

    .line 459
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v4

    if-nez v4, :cond_27a

    .line 461
    :cond_1f9
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v4

    .line 462
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    move/from16 v18, v14

    move/from16 v16, v15

    .end local v15    # "initialRaw":I
    .local v16, "initialRaw":I
    int-to-long v14, v13

    add-long/2addr v4, v14

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v4, v13

    .line 461
    invoke-static {v4, v5, v6}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    move-result-object v21

    .line 464
    .end local v6    # "dtfields":[I
    .local v21, "dtfields":[I
    aget v4, v21, v8

    const/16 v24, 0x1

    aget v5, v21, v24

    aget v6, v21, v23

    invoke-static {v4, v5, v6}, Landroid/icu/impl/Grego;->getDayOfWeekInMonth(III)I

    move-result v31

    .line 466
    .end local v28    # "weekInMonth":I
    .restart local v31    # "weekInMonth":I
    new-instance v29, Landroid/icu/util/DateTimeRule;

    aget v30, v21, v24

    aget v32, v21, v22

    aget v33, v21, v18

    const/16 v34, 0x0

    invoke-direct/range {v29 .. v34}, Landroid/icu/util/DateTimeRule;-><init>(IIIII)V

    move-object/from16 v17, v29

    .line 471
    new-instance v13, Landroid/icu/util/AnnualTimeZoneRule;

    .line 472
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v14

    aget-object v4, v20, v8

    .line 473
    invoke-virtual {v4}, Landroid/icu/util/AnnualTimeZoneRule;->getStartYear()I

    move-result v4

    const/16 v24, 0x1

    add-int/lit8 v18, v4, -0x1

    const v19, 0x7fffffff

    move/from16 v15, v16

    move/from16 v16, v10

    .end local v10    # "initialDst":I
    .restart local v15    # "initialRaw":I
    .local v16, "initialDst":I
    invoke-direct/range {v13 .. v19}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    move-object v1, v13

    .line 477
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    .line 478
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    .line 477
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/AnnualTimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v4

    .line 479
    .local v4, "d":Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v5, v5, v11

    if-lez v5, :cond_274

    .line 481
    const/16 v24, 0x1

    aput-object v1, v20, v24

    .line 486
    .end local v4    # "d":Ljava/util/Date;
    :cond_274
    move-object v4, v9

    move-object/from16 v6, v21

    move/from16 v28, v31

    goto :goto_286

    .line 459
    .end local v16    # "initialDst":I
    .end local v21    # "dtfields":[I
    .end local v31    # "weekInMonth":I
    .restart local v6    # "dtfields":[I
    .restart local v10    # "initialDst":I
    .restart local v28    # "weekInMonth":I
    :cond_27a
    move/from16 v16, v10

    .end local v10    # "initialDst":I
    .restart local v16    # "initialDst":I
    goto :goto_282

    .line 458
    .end local v16    # "initialDst":I
    .restart local v10    # "initialDst":I
    :cond_27d
    move/from16 v16, v10

    .end local v10    # "initialDst":I
    .restart local v16    # "initialDst":I
    goto :goto_282

    .line 454
    .end local v16    # "initialDst":I
    .restart local v10    # "initialDst":I
    :cond_280
    move/from16 v16, v10

    .line 486
    .end local v10    # "initialDst":I
    .restart local v16    # "initialDst":I
    :goto_282
    move-object v4, v9

    goto :goto_286

    .line 451
    .end local v9    # "tr":Landroid/icu/util/TimeZoneTransition;
    .end local v16    # "initialDst":I
    .local v4, "tr":Landroid/icu/util/TimeZoneTransition;
    .restart local v10    # "initialDst":I
    :cond_284
    move/from16 v16, v10

    .line 486
    .end local v10    # "initialDst":I
    .restart local v16    # "initialDst":I
    :goto_286
    const/16 v24, 0x1

    aget-object v5, v20, v24

    if-nez v5, :cond_293

    .line 488
    const/4 v5, 0x0

    move-object v1, v5

    move/from16 v5, v16

    move-object/from16 v6, v25

    .end local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .local v5, "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    goto :goto_2b7

    .line 491
    .end local v5    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .restart local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    :cond_293
    aget-object v5, v20, v8

    invoke-virtual {v5}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v5

    .line 492
    .end local v25    # "initialName":Ljava/lang/String;
    .local v5, "initialName":Ljava/lang/String;
    aget-object v9, v20, v8

    invoke-virtual {v9}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v15

    .line 493
    aget-object v9, v20, v8

    invoke-virtual {v9}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v9

    move-object v6, v5

    move v5, v9

    move-object/from16 v1, v20

    .end local v16    # "initialDst":I
    .local v9, "initialDst":I
    goto :goto_2b7

    .line 393
    .end local v6    # "dtfields":[I
    .end local v9    # "initialDst":I
    .end local v11    # "nextTransitionTime":J
    .end local v17    # "dtr":Landroid/icu/util/DateTimeRule;
    .end local v20    # "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .end local v28    # "weekInMonth":I
    .local v1, "annualRules":[Landroid/icu/util/AnnualTimeZoneRule;
    .local v5, "initialDst":I
    .restart local v12    # "initialName":Ljava/lang/String;
    .local v13, "nextTransitionTime":J
    :cond_2aa
    move/from16 v16, v5

    move/from16 v23, v10

    move-object/from16 v25, v12

    move-wide v11, v13

    const/16 v22, 0x3

    .line 496
    .end local v5    # "initialDst":I
    .end local v12    # "initialName":Ljava/lang/String;
    .end local v13    # "nextTransitionTime":J
    .restart local v11    # "nextTransitionTime":J
    .restart local v16    # "initialDst":I
    .restart local v25    # "initialName":Ljava/lang/String;
    move/from16 v5, v16

    move-object/from16 v6, v25

    .end local v16    # "initialDst":I
    .end local v25    # "initialName":Ljava/lang/String;
    .restart local v5    # "initialDst":I
    .local v6, "initialName":Ljava/lang/String;
    :goto_2b7
    new-instance v9, Landroid/icu/util/InitialTimeZoneRule;

    invoke-direct {v9, v6, v15, v5}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 497
    .end local v5    # "initialDst":I
    .end local v6    # "initialName":Ljava/lang/String;
    .end local v7    # "initialRule":Landroid/icu/util/TimeZoneRule;
    .end local v11    # "nextTransitionTime":J
    .end local v15    # "initialRaw":I
    .local v9, "initialRule":Landroid/icu/util/TimeZoneRule;
    const/4 v11, 0x1

    goto :goto_2ff

    .line 499
    .end local v9    # "initialRule":Landroid/icu/util/TimeZoneRule;
    .restart local v7    # "initialRule":Landroid/icu/util/TimeZoneRule;
    :cond_2be
    move/from16 v23, v10

    const/16 v22, 0x3

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v5}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v4

    .line 500
    if-eqz v4, :cond_2e9

    .line 501
    new-instance v5, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v6

    .line 502
    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v9

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v10

    invoke-direct {v5, v6, v9, v10}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object v9, v5

    const/4 v11, 0x1

    .end local v7    # "initialRule":Landroid/icu/util/TimeZoneRule;
    .restart local v9    # "initialRule":Landroid/icu/util/TimeZoneRule;
    goto :goto_2ff

    .line 505
    .end local v9    # "initialRule":Landroid/icu/util/TimeZoneRule;
    .restart local v7    # "initialRule":Landroid/icu/util/TimeZoneRule;
    :cond_2e9
    move/from16 v5, v23

    new-array v6, v5, [I

    .line 506
    .local v6, "offsets":[I
    invoke-virtual {v0, v2, v3, v8, v6}, Landroid/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    .line 507
    new-instance v5, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->getID()Ljava/lang/String;

    move-result-object v9

    aget v10, v6, v8

    const/4 v11, 0x1

    aget v12, v6, v11

    invoke-direct {v5, v9, v10, v12}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object v9, v5

    .line 511
    .end local v6    # "offsets":[I
    .end local v7    # "initialRule":Landroid/icu/util/TimeZoneRule;
    .restart local v9    # "initialRule":Landroid/icu/util/TimeZoneRule;
    :goto_2ff
    const/4 v5, 0x0

    .line 512
    .local v5, "result":[Landroid/icu/util/TimeZoneRule;
    if-nez v1, :cond_307

    .line 513
    new-array v5, v11, [Landroid/icu/util/TimeZoneRule;

    .line 514
    aput-object v9, v5, v8

    goto :goto_317

    .line 516
    :cond_307
    move/from16 v6, v22

    new-array v5, v6, [Landroid/icu/util/TimeZoneRule;

    .line 517
    aput-object v9, v5, v8

    .line 518
    aget-object v6, v1, v8

    aput-object v6, v5, v11

    .line 519
    aget-object v6, v1, v11

    const/16 v23, 0x2

    aput-object v6, v5, v23

    .line 522
    :goto_317
    return-object v5
.end method

.method public abstract greylist-max-o getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;
.end method

.method public greylist-max-o getTimeZoneRules(J)[Landroid/icu/util/TimeZoneRule;
    .registers 34
    .param p1, "start"    # J

    .line 228
    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    invoke-virtual {v0}, Landroid/icu/util/BasicTimeZone;->getTimeZoneRules()[Landroid/icu/util/TimeZoneRule;

    move-result-object v7

    .line 229
    .local v7, "all":[Landroid/icu/util/TimeZoneRule;
    const/4 v8, 0x1

    invoke-virtual {v0, v2, v3, v8}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v9

    .line 230
    .local v9, "tzt":Landroid/icu/util/TimeZoneTransition;
    if-nez v9, :cond_10

    .line 232
    return-object v7

    .line 235
    :cond_10
    new-instance v1, Ljava/util/BitSet;

    array-length v4, v7

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    move-object v10, v1

    .line 236
    .local v10, "isProcessed":Ljava/util/BitSet;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v11, v1

    .line 239
    .local v11, "filteredRules":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/TimeZoneRule;>;"
    new-instance v1, Landroid/icu/util/InitialTimeZoneRule;

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/TimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v5

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v6

    invoke-direct {v1, v4, v5, v6}, Landroid/icu/util/InitialTimeZoneRule;-><init>(Ljava/lang/String;II)V

    move-object v12, v1

    .line 241
    .local v12, "initial":Landroid/icu/util/TimeZoneRule;
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/BitSet;->set(I)V

    .line 245
    const/4 v1, 0x1

    move v14, v1

    .local v14, "i":I
    :goto_44
    array-length v1, v7

    if-ge v14, v1, :cond_60

    .line 246
    aget-object v1, v7, v14

    invoke-virtual {v12}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v4

    .line 247
    invoke-virtual {v12}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v5

    .line 246
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/TimeZoneRule;->getNextStart(JIIZ)Ljava/util/Date;

    move-result-object v1

    .line 248
    .local v1, "d":Ljava/util/Date;
    if-nez v1, :cond_5b

    .line 249
    invoke-virtual {v10, v14}, Ljava/util/BitSet;->set(I)V

    .line 245
    .end local v1    # "d":Ljava/util/Date;
    :cond_5b
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v2, p1

    goto :goto_44

    .line 253
    .end local v14    # "i":I
    :cond_60
    move-wide/from16 v1, p1

    .line 254
    .local v1, "time":J
    const/4 v3, 0x0

    .local v3, "bFinalStd":Z
    const/4 v4, 0x0

    .line 255
    .local v4, "bFinalDst":Z
    :goto_64
    if-eqz v3, :cond_68

    if-nez v4, :cond_6f

    .line 256
    :cond_68
    invoke-virtual {v0, v1, v2, v13}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v9

    .line 257
    if-nez v9, :cond_7c

    .line 258
    nop

    .line 355
    :cond_6f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/icu/util/TimeZoneRule;

    invoke-interface {v11, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/icu/util/TimeZoneRule;

    .line 356
    .local v5, "rules":[Landroid/icu/util/TimeZoneRule;
    return-object v5

    .line 260
    .end local v5    # "rules":[Landroid/icu/util/TimeZoneRule;
    :cond_7c
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v1

    .line 262
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v5

    .line 263
    .local v5, "toRule":Landroid/icu/util/TimeZoneRule;
    const/4 v6, 0x1

    .line 264
    .local v6, "ruleIdx":I
    :goto_85
    array-length v14, v7

    if-ge v6, v14, :cond_94

    .line 265
    aget-object v14, v7, v6

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_91

    .line 266
    goto :goto_94

    .line 264
    :cond_91
    add-int/lit8 v6, v6, 0x1

    goto :goto_85

    .line 269
    :cond_94
    :goto_94
    array-length v14, v7

    if-ge v6, v14, :cond_1ec

    .line 272
    invoke-virtual {v10, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_9e

    .line 273
    goto :goto_64

    .line 275
    :cond_9e
    instance-of v14, v5, Landroid/icu/util/TimeArrayTimeZoneRule;

    if-eqz v14, :cond_168

    .line 276
    move-object v14, v5

    check-cast v14, Landroid/icu/util/TimeArrayTimeZoneRule;

    .line 279
    .local v14, "tar":Landroid/icu/util/TimeArrayTimeZoneRule;
    move-wide/from16 v15, p1

    move-wide/from16 v29, v15

    move-object/from16 v16, v9

    move-wide/from16 v8, v29

    .line 281
    .end local v9    # "tzt":Landroid/icu/util/TimeZoneTransition;
    .local v8, "t":J
    .local v16, "tzt":Landroid/icu/util/TimeZoneTransition;
    :goto_ad
    invoke-virtual {v0, v8, v9, v13}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v16

    .line 282
    if-nez v16, :cond_b4

    .line 283
    goto :goto_bf

    .line 285
    :cond_b4
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15b

    .line 286
    nop

    .line 290
    :goto_bf
    if-eqz v16, :cond_14f

    .line 292
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v15

    .line 293
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    .line 292
    invoke-virtual {v14, v15, v13}, Landroid/icu/util/TimeArrayTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v13

    .line 294
    .local v13, "firstStart":Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    cmp-long v15, v20, p1

    if-lez v15, :cond_e6

    .line 296
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v20, v1

    move/from16 v17, v3

    goto/16 :goto_153

    .line 299
    :cond_e6
    invoke-virtual {v14}, Landroid/icu/util/TimeArrayTimeZoneRule;->getStartTimes()[J

    move-result-object v15

    .line 300
    .local v15, "times":[J
    invoke-virtual {v14}, Landroid/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    move-result v0

    .line 302
    .local v0, "timeType":I
    const/16 v18, 0x0

    move-wide/from16 v20, v1

    move/from16 v1, v18

    .local v1, "idx":I
    .local v20, "time":J
    :goto_f4
    array-length v2, v15

    if-ge v1, v2, :cond_121

    .line 303
    aget-wide v8, v15, v1

    .line 304
    const/4 v2, 0x1

    if-ne v0, v2, :cond_109

    .line 305
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v2

    move/from16 v17, v3

    .end local v3    # "bFinalStd":Z
    .local v17, "bFinalStd":Z
    int-to-long v2, v2

    sub-long/2addr v8, v2

    goto :goto_10b

    .line 304
    .end local v17    # "bFinalStd":Z
    .restart local v3    # "bFinalStd":Z
    :cond_109
    move/from16 v17, v3

    .line 307
    .end local v3    # "bFinalStd":Z
    .restart local v17    # "bFinalStd":Z
    :goto_10b
    if-nez v0, :cond_117

    .line 308
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v8, v2

    .line 310
    :cond_117
    cmp-long v2, v8, p1

    if-lez v2, :cond_11c

    .line 311
    goto :goto_123

    .line 302
    :cond_11c
    add-int/lit8 v1, v1, 0x1

    move/from16 v3, v17

    goto :goto_f4

    .end local v17    # "bFinalStd":Z
    .restart local v3    # "bFinalStd":Z
    :cond_121
    move/from16 v17, v3

    .line 314
    .end local v3    # "bFinalStd":Z
    .restart local v17    # "bFinalStd":Z
    :goto_123
    array-length v2, v15

    sub-int/2addr v2, v1

    .line 315
    .local v2, "asize":I
    if-lez v2, :cond_14c

    .line 316
    new-array v3, v2, [J

    .line 317
    .local v3, "newtimes":[J
    move/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "timeType":I
    .local v28, "timeType":I
    invoke-static {v15, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    new-instance v22, Landroid/icu/util/TimeArrayTimeZoneRule;

    .line 319
    invoke-virtual {v14}, Landroid/icu/util/TimeArrayTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v14}, Landroid/icu/util/TimeArrayTimeZoneRule;->getRawOffset()I

    move-result v24

    invoke-virtual {v14}, Landroid/icu/util/TimeArrayTimeZoneRule;->getDSTSavings()I

    move-result v25

    .line 320
    invoke-virtual {v14}, Landroid/icu/util/TimeArrayTimeZoneRule;->getTimeType()I

    move-result v27

    move-object/from16 v26, v3

    .end local v3    # "newtimes":[J
    .local v26, "newtimes":[J
    invoke-direct/range {v22 .. v27}, Landroid/icu/util/TimeArrayTimeZoneRule;-><init>(Ljava/lang/String;II[JI)V

    move-object/from16 v0, v22

    .line 321
    .local v0, "newtar":Landroid/icu/util/TimeArrayTimeZoneRule;
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_153

    .line 315
    .end local v26    # "newtimes":[J
    .end local v28    # "timeType":I
    .local v0, "timeType":I
    :cond_14c
    move/from16 v28, v0

    .end local v0    # "timeType":I
    .restart local v28    # "timeType":I
    goto :goto_153

    .line 290
    .end local v2    # "asize":I
    .end local v13    # "firstStart":Ljava/util/Date;
    .end local v15    # "times":[J
    .end local v17    # "bFinalStd":Z
    .end local v20    # "time":J
    .end local v28    # "timeType":I
    .local v1, "time":J
    .local v3, "bFinalStd":Z
    :cond_14f
    move-wide/from16 v20, v1

    move/from16 v17, v3

    .line 325
    .end local v1    # "time":J
    .end local v3    # "bFinalStd":Z
    .end local v8    # "t":J
    .end local v14    # "tar":Landroid/icu/util/TimeArrayTimeZoneRule;
    .restart local v17    # "bFinalStd":Z
    .restart local v20    # "time":J
    :goto_153
    move-object/from16 v9, v16

    move/from16 v3, v17

    const/16 v19, 0x0

    goto/16 :goto_1e0

    .line 288
    .end local v17    # "bFinalStd":Z
    .end local v20    # "time":J
    .restart local v1    # "time":J
    .restart local v3    # "bFinalStd":Z
    .restart local v8    # "t":J
    .restart local v14    # "tar":Landroid/icu/util/TimeArrayTimeZoneRule;
    :cond_15b
    move-wide/from16 v20, v1

    move/from16 v17, v3

    .end local v1    # "time":J
    .end local v3    # "bFinalStd":Z
    .restart local v17    # "bFinalStd":Z
    .restart local v20    # "time":J
    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    move-object/from16 v0, p0

    const/4 v13, 0x0

    goto/16 :goto_ad

    .line 325
    .end local v8    # "t":J
    .end local v14    # "tar":Landroid/icu/util/TimeArrayTimeZoneRule;
    .end local v16    # "tzt":Landroid/icu/util/TimeZoneTransition;
    .end local v17    # "bFinalStd":Z
    .end local v20    # "time":J
    .restart local v1    # "time":J
    .restart local v3    # "bFinalStd":Z
    .restart local v9    # "tzt":Landroid/icu/util/TimeZoneTransition;
    :cond_168
    move-wide/from16 v20, v1

    move/from16 v17, v3

    .end local v1    # "time":J
    .end local v3    # "bFinalStd":Z
    .restart local v17    # "bFinalStd":Z
    .restart local v20    # "time":J
    instance-of v0, v5, Landroid/icu/util/AnnualTimeZoneRule;

    if-eqz v0, :cond_1dc

    .line 326
    move-object v0, v5

    check-cast v0, Landroid/icu/util/AnnualTimeZoneRule;

    .line 327
    .local v0, "ar":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v1

    .line 328
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v2

    .line 327
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/AnnualTimeZoneRule;->getFirstStart(II)Ljava/util/Date;

    move-result-object v1

    .line 329
    .local v1, "firstStart":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    cmp-long v2, v2, v13

    if-nez v2, :cond_199

    .line 331
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v19, 0x0

    goto :goto_1c5

    .line 334
    :cond_199
    const/4 v2, 0x6

    new-array v2, v2, [I

    .line 335
    .local v2, "dfields":[I
    invoke-virtual {v9}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    invoke-static {v13, v14, v2}, Landroid/icu/impl/Grego;->timeToFields(J[I)[I

    .line 337
    new-instance v22, Landroid/icu/util/AnnualTimeZoneRule;

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getName()Ljava/lang/String;

    move-result-object v23

    .line 338
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRawOffset()I

    move-result v24

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v25

    .line 339
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getRule()Landroid/icu/util/DateTimeRule;

    move-result-object v26

    const/16 v19, 0x0

    aget v27, v2, v19

    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v28

    invoke-direct/range {v22 .. v28}, Landroid/icu/util/AnnualTimeZoneRule;-><init>(Ljava/lang/String;IILandroid/icu/util/DateTimeRule;II)V

    move-object/from16 v3, v22

    .line 340
    .local v3, "newar":Landroid/icu/util/AnnualTimeZoneRule;
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    .end local v2    # "dfields":[I
    .end local v3    # "newar":Landroid/icu/util/AnnualTimeZoneRule;
    :goto_1c5
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getEndYear()I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1de

    .line 346
    invoke-virtual {v0}, Landroid/icu/util/AnnualTimeZoneRule;->getDSTSavings()I

    move-result v2

    if-nez v2, :cond_1d7

    .line 347
    const/4 v2, 0x1

    move v3, v2

    .end local v17    # "bFinalStd":Z
    .local v2, "bFinalStd":Z
    goto :goto_1e0

    .line 349
    .end local v2    # "bFinalStd":Z
    .restart local v17    # "bFinalStd":Z
    :cond_1d7
    const/4 v2, 0x1

    move v4, v2

    move/from16 v3, v17

    .end local v4    # "bFinalDst":Z
    .local v2, "bFinalDst":Z
    goto :goto_1e0

    .line 325
    .end local v0    # "ar":Landroid/icu/util/AnnualTimeZoneRule;
    .end local v1    # "firstStart":Ljava/util/Date;
    .end local v2    # "bFinalDst":Z
    .restart local v4    # "bFinalDst":Z
    :cond_1dc
    const/16 v19, 0x0

    .line 353
    :cond_1de
    move/from16 v3, v17

    .end local v17    # "bFinalStd":Z
    .local v3, "bFinalStd":Z
    :goto_1e0
    invoke-virtual {v10, v6}, Ljava/util/BitSet;->set(I)V

    .line 354
    .end local v5    # "toRule":Landroid/icu/util/TimeZoneRule;
    .end local v6    # "ruleIdx":I
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v13, v19

    move-wide/from16 v1, v20

    goto/16 :goto_64

    .line 270
    .end local v20    # "time":J
    .local v1, "time":J
    .restart local v5    # "toRule":Landroid/icu/util/TimeZoneRule;
    .restart local v6    # "ruleIdx":I
    :cond_1ec
    move-wide/from16 v20, v1

    .end local v1    # "time":J
    .restart local v20    # "time":J
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The rule was not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJ)Z
    .registers 13
    .param p1, "tz"    # Landroid/icu/util/TimeZone;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 79
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "tz":Landroid/icu/util/TimeZone;
    .end local p2    # "start":J
    .end local p4    # "end":J
    .local v1, "tz":Landroid/icu/util/TimeZone;
    .local v2, "start":J
    .local v4, "end":J
    invoke-virtual/range {v0 .. v6}, Landroid/icu/util/BasicTimeZone;->hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJZ)Z

    move-result p1

    return p1
.end method

.method public greylist-max-o hasEquivalentTransitions(Landroid/icu/util/TimeZone;JJZ)Z
    .registers 25
    .param p1, "tz"    # Landroid/icu/util/TimeZone;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .param p6, "ignoreDstAmount"    # Z

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const/4 v4, 0x1

    if-ne v0, v1, :cond_a

    .line 104
    return v4

    .line 107
    :cond_a
    instance-of v5, v1, Landroid/icu/util/BasicTimeZone;

    const/4 v6, 0x0

    if-nez v5, :cond_10

    .line 108
    return v6

    .line 112
    :cond_10
    const/4 v5, 0x2

    new-array v7, v5, [I

    .line 113
    .local v7, "offsets1":[I
    new-array v5, v5, [I

    .line 115
    .local v5, "offsets2":[I
    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/icu/util/BasicTimeZone;->getOffset(JZ[I)V

    .line 116
    invoke-virtual {v1, v2, v3, v6, v5}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 118
    if-eqz p6, :cond_3a

    .line 119
    aget v8, v7, v6

    aget v9, v7, v4

    add-int/2addr v8, v9

    aget v9, v5, v6

    aget v10, v5, v4

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_39

    aget v8, v7, v4

    if-eqz v8, :cond_31

    aget v8, v5, v4

    if-eqz v8, :cond_39

    :cond_31
    aget v8, v7, v4

    if-nez v8, :cond_48

    aget v8, v5, v4

    if-eqz v8, :cond_48

    .line 122
    :cond_39
    return v6

    .line 125
    :cond_3a
    aget v8, v7, v6

    aget v9, v5, v6

    if-ne v8, v9, :cond_19e

    aget v8, v7, v4

    aget v9, v5, v4

    if-eq v8, v9, :cond_48

    goto/16 :goto_19e

    .line 131
    :cond_48
    move-wide/from16 v8, p2

    .line 133
    .local v8, "time":J
    :goto_4a
    invoke-virtual {v0, v8, v9, v6}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v10

    .line 134
    .local v10, "tr1":Landroid/icu/util/TimeZoneTransition;
    move-object v11, v1

    check-cast v11, Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v11, v8, v9, v6}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v11

    .line 136
    .local v11, "tr2":Landroid/icu/util/TimeZoneTransition;
    if-eqz p6, :cond_f0

    .line 139
    :goto_57
    if-eqz v10, :cond_a2

    .line 140
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    cmp-long v12, v12, p4

    if-gtz v12, :cond_a2

    .line 141
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v12

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    add-int/2addr v12, v13

    .line 142
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    add-int/2addr v13, v14

    if-ne v12, v13, :cond_a2

    .line 143
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v12

    if-eqz v12, :cond_a2

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v12

    if-eqz v12, :cond_a2

    .line 144
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13, v6}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v10

    goto :goto_57

    .line 150
    :cond_a2
    :goto_a2
    if-eqz v11, :cond_f0

    .line 151
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v12

    cmp-long v12, v12, p4

    if-gtz v12, :cond_f0

    .line 152
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v12

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v13

    add-int/2addr v12, v13

    .line 153
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v13

    invoke-virtual {v13}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v13

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    add-int/2addr v13, v14

    if-ne v12, v13, :cond_f0

    .line 154
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getFrom()Landroid/icu/util/TimeZoneRule;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v12

    if-eqz v12, :cond_f0

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v12

    if-eqz v12, :cond_f0

    .line 155
    move-object v12, v1

    check-cast v12, Landroid/icu/util/BasicTimeZone;

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14, v6}, Landroid/icu/util/BasicTimeZone;->getNextTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v11

    goto :goto_a2

    .line 162
    :cond_f0
    const/4 v12, 0x0

    .line 163
    .local v12, "inRange1":Z
    const/4 v13, 0x0

    .line 164
    .local v13, "inRange2":Z
    if-eqz v10, :cond_fd

    .line 165
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v14

    cmp-long v14, v14, p4

    if-gtz v14, :cond_fd

    .line 166
    const/4 v12, 0x1

    .line 169
    :cond_fd
    if-eqz v11, :cond_108

    .line 170
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v14

    cmp-long v14, v14, p4

    if-gtz v14, :cond_108

    .line 171
    const/4 v13, 0x1

    .line 174
    :cond_108
    if-nez v12, :cond_10e

    if-nez v13, :cond_10e

    .line 176
    nop

    .line 199
    .end local v10    # "tr1":Landroid/icu/util/TimeZoneTransition;
    .end local v11    # "tr2":Landroid/icu/util/TimeZoneTransition;
    .end local v12    # "inRange1":Z
    .end local v13    # "inRange2":Z
    return v4

    .line 178
    .restart local v10    # "tr1":Landroid/icu/util/TimeZoneTransition;
    .restart local v11    # "tr2":Landroid/icu/util/TimeZoneTransition;
    .restart local v12    # "inRange1":Z
    .restart local v13    # "inRange2":Z
    :cond_10e
    if-eqz v12, :cond_19d

    if-nez v13, :cond_114

    goto/16 :goto_19d

    .line 181
    :cond_114
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v14

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_121

    .line 182
    return v6

    .line 184
    :cond_121
    if-eqz p6, :cond_171

    .line 185
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    add-int/2addr v14, v15

    .line 186
    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v15

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v16

    add-int v15, v15, v16

    if-ne v14, v15, :cond_170

    .line 187
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    if-eqz v14, :cond_15c

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    if-eqz v14, :cond_170

    .line 188
    :cond_15c
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    if-nez v14, :cond_196

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    if-eqz v14, :cond_196

    .line 189
    :cond_170
    return v6

    .line 192
    :cond_171
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v14

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Landroid/icu/util/TimeZoneRule;->getRawOffset()I

    move-result v15

    if-ne v14, v15, :cond_19c

    .line 193
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v14

    invoke-virtual {v14}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v14

    invoke-virtual {v11}, Landroid/icu/util/TimeZoneTransition;->getTo()Landroid/icu/util/TimeZoneRule;

    move-result-object v15

    invoke-virtual {v15}, Landroid/icu/util/TimeZoneRule;->getDSTSavings()I

    move-result v15

    if-eq v14, v15, :cond_196

    goto :goto_19c

    .line 197
    :cond_196
    invoke-virtual {v10}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v8

    .line 198
    .end local v10    # "tr1":Landroid/icu/util/TimeZoneTransition;
    .end local v11    # "tr2":Landroid/icu/util/TimeZoneTransition;
    .end local v12    # "inRange1":Z
    .end local v13    # "inRange2":Z
    goto/16 :goto_4a

    .line 194
    .restart local v10    # "tr1":Landroid/icu/util/TimeZoneTransition;
    .restart local v11    # "tr2":Landroid/icu/util/TimeZoneTransition;
    .restart local v12    # "inRange1":Z
    .restart local v13    # "inRange2":Z
    :cond_19c
    :goto_19c
    return v6

    .line 179
    :cond_19d
    :goto_19d
    return v6

    .line 126
    .end local v8    # "time":J
    .end local v10    # "tr1":Landroid/icu/util/TimeZoneTransition;
    .end local v11    # "tr2":Landroid/icu/util/TimeZoneTransition;
    .end local v12    # "inRange1":Z
    .end local v13    # "inRange2":Z
    :cond_19e
    :goto_19e
    return v6
.end method
