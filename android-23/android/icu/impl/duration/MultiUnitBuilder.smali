.class Landroid/icu/impl/duration/MultiUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# instance fields
.field private nPeriods:I


# direct methods
.method constructor <init>(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0
    .param p1, "nPeriods"    # I
    .param p2, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    .line 469
    invoke-direct {p0, p2}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    #@3
    .line 470
    iput p1, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    #@5
    .line 468
    return-void
.end method

.method public static get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;
    .locals 1
    .param p0, "nPeriods"    # I
    .param p1, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 474
    if-lez p0, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    .line 475
    new-instance v0, Landroid/icu/impl/duration/MultiUnitBuilder;

    #@7
    invoke-direct {v0, p0, p1}, Landroid/icu/impl/duration/MultiUnitBuilder;-><init>(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    #@a
    return-object v0

    #@b
    .line 477
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 17
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J
    .param p5, "inPast"    # Z

    #@0
    .prologue
    .line 486
    const/4 v6, 0x0

    #@1
    .line 487
    .local v6, "period":Landroid/icu/impl/duration/Period;
    const/4 v5, 0x0

    #@2
    .line 488
    .local v5, "n":I
    move-object/from16 v0, p0

    #@4
    iget-object v11, v0, Landroid/icu/impl/duration/MultiUnitBuilder;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@6
    invoke-virtual {v11}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    #@9
    move-result v10

    #@a
    .line 489
    .local v10, "uset":S
    const/4 v4, 0x0

    #@b
    .end local v6    # "period":Landroid/icu/impl/duration/Period;
    .local v4, "i":I
    :goto_0
    sget-object v11, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@d
    array-length v11, v11

    #@e
    if-ge v4, v11, :cond_0

    #@10
    .line 490
    const/4 v11, 0x1

    #@11
    shl-int/2addr v11, v4

    #@12
    and-int/2addr v11, v10

    #@13
    if-eqz v11, :cond_4

    #@15
    .line 491
    sget-object v11, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@17
    aget-object v7, v11, v4

    #@19
    .line 492
    .local v7, "unit":Landroid/icu/impl/duration/TimeUnit;
    move-object/from16 v0, p0

    #@1b
    iget v11, v0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    #@1d
    if-ne v5, v11, :cond_1

    #@1f
    .line 511
    .end local v7    # "unit":Landroid/icu/impl/duration/TimeUnit;
    :cond_0
    return-object v6

    #@20
    .line 495
    .restart local v7    # "unit":Landroid/icu/impl/duration/TimeUnit;
    :cond_1
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v7}, Landroid/icu/impl/duration/MultiUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    #@25
    move-result-wide v8

    #@26
    .line 496
    .local v8, "unitDuration":J
    cmp-long v11, p1, v8

    #@28
    if-gez v11, :cond_2

    #@2a
    if-lez v5, :cond_4

    #@2c
    .line 497
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@2e
    .line 498
    move-wide/from16 v0, p1

    #@30
    long-to-double v12, v0

    #@31
    long-to-double v14, v8

    #@32
    div-double v2, v12, v14

    #@34
    .line 499
    .local v2, "count":D
    move-object/from16 v0, p0

    #@36
    iget v11, v0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    #@38
    if-ge v5, v11, :cond_3

    #@3a
    .line 500
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    #@3d
    move-result-wide v2

    #@3e
    .line 501
    long-to-double v12, v8

    #@3f
    mul-double/2addr v12, v2

    #@40
    double-to-long v12, v12

    #@41
    sub-long p1, p1, v12

    #@43
    .line 503
    :cond_3
    if-nez v6, :cond_5

    #@45
    .line 504
    double-to-float v11, v2

    #@46
    invoke-static {v11, v7}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@49
    move-result-object v11

    #@4a
    move/from16 v0, p5

    #@4c
    invoke-virtual {v11, v0}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    #@4f
    move-result-object v6

    #@50
    .line 489
    .end local v2    # "count":D
    .end local v7    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .end local v8    # "unitDuration":J
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    #@52
    goto :goto_0

    #@53
    .line 506
    .restart local v2    # "count":D
    .restart local v7    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .restart local v8    # "unitDuration":J
    :cond_5
    double-to-float v11, v2

    #@54
    invoke-virtual {v6, v11, v7}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@57
    move-result-object v6

    #@58
    .local v6, "period":Landroid/icu/impl/duration/Period;
    goto :goto_1
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1
    .param p1, "settingsToUse"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    .line 481
    iget v0, p0, Landroid/icu/impl/duration/MultiUnitBuilder;->nPeriods:I

    #@2
    invoke-static {v0, p1}, Landroid/icu/impl/duration/MultiUnitBuilder;->get(ILandroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/MultiUnitBuilder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
