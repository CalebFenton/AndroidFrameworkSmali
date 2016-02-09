.class Landroid/icu/impl/duration/OneOrTwoUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0
    .param p1, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    .line 421
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    #@3
    .line 420
    return-void
.end method

.method public static get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;
    .locals 1
    .param p0, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 425
    if-nez p0, :cond_0

    #@3
    .line 426
    return-object v0

    #@4
    .line 428
    :cond_0
    new-instance v0, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    #@6
    invoke-direct {v0, p0}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    #@9
    return-object v0
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 15
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J
    .param p5, "inPast"    # Z

    #@0
    .prologue
    .line 437
    const/4 v5, 0x0

    #@1
    .line 438
    .local v5, "period":Landroid/icu/impl/duration/Period;
    iget-object v10, p0, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@3
    invoke-virtual {v10}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    #@6
    move-result v7

    #@7
    .line 439
    .local v7, "uset":S
    const/4 v4, 0x0

    #@8
    .end local v5    # "period":Landroid/icu/impl/duration/Period;
    .local v4, "i":I
    :goto_0
    sget-object v10, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@a
    array-length v10, v10

    #@b
    if-ge v4, v10, :cond_1

    #@d
    .line 440
    const/4 v10, 0x1

    #@e
    shl-int/2addr v10, v4

    #@f
    and-int/2addr v10, v7

    #@10
    if-eqz v10, :cond_3

    #@12
    .line 441
    sget-object v10, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@14
    aget-object v6, v10, v4

    #@16
    .line 442
    .local v6, "unit":Landroid/icu/impl/duration/TimeUnit;
    invoke-virtual {p0, v6}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    #@19
    move-result-wide v8

    #@1a
    .line 443
    .local v8, "unitDuration":J
    cmp-long v10, p1, v8

    #@1c
    if-gez v10, :cond_0

    #@1e
    if-eqz v5, :cond_3

    #@20
    .line 444
    :cond_0
    move-wide/from16 v0, p1

    #@22
    long-to-double v10, v0

    #@23
    long-to-double v12, v8

    #@24
    div-double v2, v10, v12

    #@26
    .line 445
    .local v2, "count":D
    if-nez v5, :cond_4

    #@28
    .line 446
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    #@2a
    cmpl-double v10, v2, v10

    #@2c
    if-ltz v10, :cond_2

    #@2e
    .line 447
    double-to-float v10, v2

    #@2f
    invoke-static {v10, v6}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@32
    move-result-object v5

    #@33
    .line 461
    .end local v2    # "count":D
    .end local v6    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .end local v8    # "unitDuration":J
    :cond_1
    :goto_1
    return-object v5

    #@34
    .line 450
    .restart local v2    # "count":D
    .restart local v6    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .restart local v8    # "unitDuration":J
    :cond_2
    const/high16 v10, 0x3f800000    # 1.0f

    #@36
    invoke-static {v10, v6}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@39
    move-result-object v10

    #@3a
    move/from16 v0, p5

    #@3c
    invoke-virtual {v10, v0}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    #@3f
    move-result-object v5

    #@40
    .line 451
    .local v5, "period":Landroid/icu/impl/duration/Period;
    sub-long p1, p1, v8

    #@42
    .line 439
    .end local v2    # "count":D
    .end local v5    # "period":Landroid/icu/impl/duration/Period;
    .end local v6    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .end local v8    # "unitDuration":J
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@44
    goto :goto_0

    #@45
    .line 453
    .restart local v2    # "count":D
    .restart local v6    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .restart local v8    # "unitDuration":J
    :cond_4
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    #@47
    cmpl-double v10, v2, v10

    #@49
    if-ltz v10, :cond_1

    #@4b
    .line 454
    double-to-float v10, v2

    #@4c
    invoke-virtual {v5, v10, v6}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@4f
    move-result-object v5

    #@50
    .restart local v5    # "period":Landroid/icu/impl/duration/Period;
    goto :goto_1
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1
    .param p1, "settingsToUse"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    .line 432
    invoke-static {p1}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
