.class Landroid/icu/impl/duration/SingleUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0
    .param p1, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    .line 388
    invoke-direct {p0, p1}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    #@3
    .line 387
    return-void
.end method

.method public static get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;
    .locals 1
    .param p0, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 392
    if-nez p0, :cond_0

    #@3
    .line 393
    return-object v0

    #@4
    .line 395
    :cond_0
    new-instance v0, Landroid/icu/impl/duration/SingleUnitBuilder;

    #@6
    invoke-direct {v0, p0}, Landroid/icu/impl/duration/SingleUnitBuilder;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    #@9
    return-object v0
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 13
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J
    .param p5, "inPast"    # Z

    #@0
    .prologue
    .line 404
    iget-object v7, p0, Landroid/icu/impl/duration/SingleUnitBuilder;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@2
    invoke-virtual {v7}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    #@5
    move-result v6

    #@6
    .line 405
    .local v6, "uset":S
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    sget-object v7, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@9
    array-length v7, v7

    #@a
    if-ge v2, v7, :cond_1

    #@c
    .line 406
    const/4 v7, 0x1

    #@d
    shl-int/2addr v7, v2

    #@e
    and-int/2addr v7, v6

    #@f
    if-eqz v7, :cond_0

    #@11
    .line 407
    sget-object v7, Landroid/icu/impl/duration/TimeUnit;->units:[Landroid/icu/impl/duration/TimeUnit;

    #@13
    aget-object v3, v7, v2

    #@15
    .line 408
    .local v3, "unit":Landroid/icu/impl/duration/TimeUnit;
    invoke-virtual {p0, v3}, Landroid/icu/impl/duration/SingleUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    #@18
    move-result-wide v4

    #@19
    .line 409
    .local v4, "unitDuration":J
    cmp-long v7, p1, v4

    #@1b
    if-ltz v7, :cond_0

    #@1d
    .line 410
    long-to-double v8, p1

    #@1e
    long-to-double v10, v4

    #@1f
    div-double/2addr v8, v10

    #@20
    double-to-float v7, v8

    #@21
    invoke-static {v7, v3}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@24
    move-result-object v7

    #@25
    move/from16 v0, p5

    #@27
    invoke-virtual {v7, v0}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    #@2a
    move-result-object v7

    #@2b
    return-object v7

    #@2c
    .line 405
    .end local v3    # "unit":Landroid/icu/impl/duration/TimeUnit;
    .end local v4    # "unitDuration":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 415
    :cond_1
    const/4 v7, 0x0

    #@30
    return-object v7
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1
    .param p1, "settingsToUse"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    .line 399
    invoke-static {p1}, Landroid/icu/impl/duration/SingleUnitBuilder;->get(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/SingleUnitBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
