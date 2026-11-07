.class Landroid/icu/impl/duration/MultiUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# instance fields
.field private blacklist nPeriods:I


# direct methods
.method constructor blacklist <init>(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .registers 3
    .param p1, "nPeriods"    # I
    .param p2, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 495
    invoke-direct {p0, p2}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    .line 496
    iput p1, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    .line 497
    return-void
.end method

.method public static blacklist get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;
    .registers 3
    .param p0, "nPeriods"    # I
    .param p1, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 500
    if-lez p0, :cond_a

    if-eqz p1, :cond_a

    .line 501
    new-instance v0, Landroid/icu/impl/duration/MultiUnitBuilder;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/duration/MultiUnitBuilder;-><init>(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0

    .line 503
    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected blacklist handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .registers 17
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J
    .param p5, "inPast"    # Z

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, "period":Landroid/icu/impl/duration/Period;
    const/4 v1, 0x0

    .line 516
    .local v1, "n":I
    iget-object v2, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v2}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v2

    .line 517
    .local v2, "uset":S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_9
    sget-object v4, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v4, v4

    if-ge v3, v4, :cond_58

    .line 518
    const/4 v4, 0x1

    shl-int/2addr v4, v3

    and-int/2addr v4, v2

    if-eqz v4, :cond_53

    .line 519
    sget-object v4, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v4, v4, v3

    .line 520
    .local v4, "unit":Landroid/icu/impl/duration/TimeUnit;
    iget v5, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    if-ne v1, v5, :cond_1e

    .line 521
    move/from16 v10, p5

    goto :goto_5a

    .line 523
    :cond_1e
    invoke-virtual {p0, v4}, Landroid/icu/impl/duration/MultiUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v5

    .line 524
    .local v5, "unitDuration":J
    cmp-long v7, p1, v5

    if-gez v7, :cond_2c

    if-lez v1, :cond_29

    goto :goto_2c

    :cond_29
    move/from16 v10, p5

    goto :goto_55

    .line 525
    :cond_2c
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    .line 526
    long-to-double v7, p1

    long-to-double v9, v5

    div-double/2addr v7, v9

    .line 527
    .local v7, "count":D
    iget v9, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    if-ge v1, v9, :cond_3d

    .line 528
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    .line 529
    long-to-double v9, v5

    mul-double/2addr v9, v7

    double-to-long v9, v9

    sub-long/2addr p1, v9

    .line 531
    :cond_3d
    if-nez v0, :cond_4b

    .line 532
    double-to-float v9, v7

    invoke-static {v9, v4}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v9

    move/from16 v10, p5

    invoke-virtual {v9, v10}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    goto :goto_55

    .line 534
    :cond_4b
    move/from16 v10, p5

    double-to-float v9, v7

    invoke-virtual {v0, v9, v4}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v0

    goto :goto_55

    .line 518
    .end local v4    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .end local v5    # "unitDuration":J
    .end local v7    # "count":D
    :cond_53
    move/from16 v10, p5

    .line 517
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_58
    move/from16 v10, p5

    .line 539
    .end local v3    # "i":I
    :goto_5a
    return-object v0
.end method

.method protected blacklist withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .registers 3
    .param p1, "settingsToUse"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 508
    iget v0, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    invoke-static {v0, p1}, Landroid/icu/impl/duration/MultiUnitBuilder;->get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;

    move-result-object v0

    return-object v0
.end method
