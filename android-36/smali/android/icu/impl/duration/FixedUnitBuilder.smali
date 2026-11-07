.class Landroid/icu/impl/duration/FixedUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# instance fields
.field private blacklist unit:Landroid/icu/impl/duration/TimeUnit;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .registers 3
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 387
    invoke-direct {p0, p2}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    .line 388
    iput-object p1, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    .line 389
    return-void
.end method

.method public static blacklist get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;
    .registers 5
    .param p0, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p1, "settingsToUse"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 380
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    move-result v0

    const/4 v1, 0x1

    iget-byte v2, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    shl-int/2addr v1, v2

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    .line 381
    new-instance v0, Landroid/icu/impl/duration/FixedUnitBuilder;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/duration/FixedUnitBuilder;-><init>(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    return-object v0

    .line 383
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected blacklist handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .registers 12
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J
    .param p5, "inPast"    # Z

    .line 399
    iget-object v0, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    if-nez v0, :cond_6

    .line 400
    const/4 v0, 0x0

    return-object v0

    .line 402
    :cond_6
    iget-object v0, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    invoke-virtual {p0, v0}, Landroid/icu/impl/duration/FixedUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v0

    .line 403
    .local v0, "unitDuration":J
    long-to-double v2, p1

    long-to-double v4, v0

    div-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {v2, v3}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object v2

    .line 404
    invoke-virtual {v2, p5}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object v2

    .line 403
    return-object v2
.end method

.method protected blacklist withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .registers 3
    .param p1, "settingsToUse"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 393
    iget-object v0, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    invoke-static {v0, p1}, Landroid/icu/impl/duration/FixedUnitBuilder;->get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;

    move-result-object v0

    return-object v0
.end method
