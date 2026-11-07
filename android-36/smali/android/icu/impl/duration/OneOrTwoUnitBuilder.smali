.class Landroid/icu/impl/duration/OneOrTwoUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .registers 2
    .param p1, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 445
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    .line 446
    return-void
.end method

.method public static blacklist get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;
    .registers 2
    .param p0, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 449
    if-nez p0, :cond_4

    .line 450
    const/4 v0, 0x0

    return-object v0

    .line 452
    :cond_4
    new-instance v0, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .registers 16
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J
    .param p5, "inPast"    # Z

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "period":Landroid/icu/impl/duration/Period;
    iget-object v1, p0, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v1

    .line 465
    .local v1, "uset":S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v3, v3

    if-ge v2, v3, :cond_4c

    .line 466
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    and-int/2addr v3, v1

    if-eqz v3, :cond_49

    .line 467
    sget-object v3, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v3, v3, v2

    .line 468
    .local v3, "unit":Landroid/icu/impl/duration/TimeUnit;
    invoke-virtual {p0, v3}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v4

    .line 469
    .local v4, "unitDuration":J
    cmp-long v6, p1, v4

    if-gez v6, :cond_20

    if-eqz v0, :cond_49

    .line 470
    :cond_20
    long-to-double v6, p1

    long-to-double v8, v4

    div-double/2addr v6, v8

    .line 471
    .local v6, "count":D
    if-nez v0, :cond_3d

    .line 472
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_31

    .line 473
    double-to-float v8, v6

    invoke-static {v8, v3}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v0

    .line 474
    goto :goto_4c

    .line 476
    :cond_31
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v3}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v8

    invoke-virtual {v8, p5}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v0

    .line 477
    sub-long/2addr p1, v4

    goto :goto_49

    .line 479
    :cond_3d
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v8, v6, v8

    if-ltz v8, :cond_4c

    .line 480
    double-to-float v8, v6

    invoke-virtual {v0, v8, v3}, Landroid/icu/impl/duration/Period;->and(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v0

    goto :goto_4c

    .line 465
    .end local v3    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .end local v4    # "unitDuration":J
    .end local v6    # "count":D
    :cond_49
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 487
    .end local v2    # "i":I
    :cond_4c
    :goto_4c
    return-object v0
.end method

.method protected blacklist withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .registers 3
    .param p1, "settingsToUse"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 457
    invoke-static {p1}, Landroid/icu/impl/duration/OneOrTwoUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/OneOrTwoUnitBuilder;

    move-result-object v0

    return-object v0
.end method
