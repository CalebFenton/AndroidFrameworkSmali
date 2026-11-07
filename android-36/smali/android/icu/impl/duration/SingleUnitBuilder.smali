.class Landroid/icu/impl/duration/SingleUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .registers 2
    .param p1, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 410
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    .line 411
    return-void
.end method

.method public static blacklist get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;
    .registers 2
    .param p0, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 414
    if-nez p0, :cond_4

    .line 415
    const/4 v0, 0x0

    return-object v0

    .line 417
    :cond_4
    new-instance v0, Landroid/icu/impl/duration/SingleUnitBuilder;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/SingleUnitBuilder;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .registers 15
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J
    .param p5, "inPast"    # Z

    .line 428
    iget-object v0, p0, Landroid/icu/impl/duration/SingleUnitBuilder;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v0

    .line 429
    .local v0, "uset":S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    array-length v2, v2

    if-ge v1, v2, :cond_2d

    .line 430
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, v0

    if-eqz v2, :cond_2a

    .line 431
    sget-object v2, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    aget-object v2, v2, v1

    .line 432
    .local v2, "unit":Landroid/icu/impl/duration/TimeUnit;
    invoke-virtual {p0, v2}, Landroid/icu/impl/duration/SingleUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v3

    .line 433
    .local v3, "unitDuration":J
    cmp-long v5, p1, v3

    if-ltz v5, :cond_2a

    .line 434
    long-to-double v5, p1

    long-to-double v7, v3

    div-double/2addr v5, v7

    double-to-float v5, v5

    invoke-static {v5, v2}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v5

    .line 435
    invoke-virtual {v5, p5}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v5

    .line 434
    return-object v5

    .line 429
    .end local v2    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .end local v3    # "unitDuration":J
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 439
    .end local v1    # "i":I
    :cond_2d
    const/4 v1, 0x0

    return-object v1
.end method

.method protected blacklist withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .registers 3
    .param p1, "settingsToUse"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 422
    invoke-static {p1}, Landroid/icu/impl/duration/SingleUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;

    move-result-object v0

    return-object v0
.end method
