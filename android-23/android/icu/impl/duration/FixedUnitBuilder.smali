.class Landroid/icu/impl/duration/FixedUnitBuilder;
.super Landroid/icu/impl/duration/PeriodBuilderImpl;
.source "BasicPeriodBuilderFactory.java"


# instance fields
.field private unit:Landroid/icu/impl/duration/TimeUnit;


# direct methods
.method constructor <init>(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p2, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    .line 367
    invoke-direct {p0, p2}, Landroid/icu/impl/duration/PeriodBuilderImpl;-><init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    #@3
    .line 368
    iput-object p1, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    #@5
    .line 366
    return-void
.end method

.method public static get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;
    .locals 4
    .param p0, "unit"    # Landroid/icu/impl/duration/TimeUnit;
    .param p1, "settingsToUse"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 360
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveSet()S

    #@6
    move-result v0

    #@7
    iget-byte v1, p0, Landroid/icu/impl/duration/TimeUnit;->ordinal:B

    #@9
    const/4 v2, 0x1

    #@a
    shl-int v1, v2, v1

    #@c
    and-int/2addr v0, v1

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 361
    new-instance v0, Landroid/icu/impl/duration/FixedUnitBuilder;

    #@11
    invoke-direct {v0, p0, p1}, Landroid/icu/impl/duration/FixedUnitBuilder;-><init>(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V

    #@14
    return-object v0

    #@15
    .line 363
    :cond_0
    return-object v3
.end method


# virtual methods
.method protected handleCreate(JJZ)Landroid/icu/impl/duration/Period;
    .locals 7
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J
    .param p5, "inPast"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 377
    iget-object v2, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 378
    return-object v3

    #@6
    .line 380
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    #@8
    invoke-virtual {p0, v2}, Landroid/icu/impl/duration/FixedUnitBuilder;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    #@b
    move-result-wide v0

    #@c
    .line 381
    .local v0, "unitDuration":J
    long-to-double v2, p1

    #@d
    long-to-double v4, v0

    #@e
    div-double/2addr v2, v4

    #@f
    double-to-float v2, v2

    #@10
    iget-object v3, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    #@12
    invoke-static {v2, v3}, Landroid/icu/impl/duration/Period;->at(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p5}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    #@19
    move-result-object v2

    #@1a
    return-object v2
.end method

.method protected withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 1
    .param p1, "settingsToUse"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/icu/impl/duration/FixedUnitBuilder;->unit:Landroid/icu/impl/duration/TimeUnit;

    #@2
    invoke-static {v0, p1}, Landroid/icu/impl/duration/FixedUnitBuilder;->get(Landroid/icu/impl/duration/TimeUnit;Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/FixedUnitBuilder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
