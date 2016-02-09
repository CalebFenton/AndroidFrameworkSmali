.class abstract Landroid/icu/impl/duration/PeriodBuilderImpl;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodBuilder;


# instance fields
.field protected settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;


# direct methods
.method protected constructor <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .locals 0
    .param p1, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@0
    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 352
    iput-object p1, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@5
    .line 351
    return-void
.end method


# virtual methods
.method public approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J
    .locals 2
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    #@0
    .prologue
    .line 315
    invoke-static {p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public create(J)Landroid/icu/impl/duration/Period;
    .locals 3
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 311
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/duration/PeriodBuilderImpl;->createWithReferenceDate(JJ)Landroid/icu/impl/duration/Period;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public createWithReferenceDate(JJ)Landroid/icu/impl/duration/Period;
    .locals 7
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J

    #@0
    .prologue
    .line 319
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-gez v1, :cond_2

    #@6
    const/4 v6, 0x1

    #@7
    .line 320
    .local v6, "inPast":Z
    :goto_0
    if-eqz v6, :cond_0

    #@9
    .line 321
    neg-long p1, p1

    #@a
    .line 323
    :cond_0
    iget-object v1, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@c
    invoke-virtual {v1, p1, p2, v6}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->createLimited(JZ)Landroid/icu/impl/duration/Period;

    #@f
    move-result-object v0

    #@10
    .line 324
    .local v0, "ts":Landroid/icu/impl/duration/Period;
    if-nez v0, :cond_1

    #@12
    move-object v1, p0

    #@13
    move-wide v2, p1

    #@14
    move-wide v4, p3

    #@15
    .line 325
    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/duration/PeriodBuilderImpl;->handleCreate(JJZ)Landroid/icu/impl/duration/Period;

    #@18
    move-result-object v0

    #@19
    .line 326
    if-nez v0, :cond_1

    #@1b
    .line 327
    const/high16 v1, 0x3f800000    # 1.0f

    #@1d
    iget-object v2, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@1f
    invoke-virtual {v2}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveMinUnit()Landroid/icu/impl/duration/TimeUnit;

    #@22
    move-result-object v2

    #@23
    invoke-static {v1, v2}, Landroid/icu/impl/duration/Period;->lessThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, v6}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    #@2a
    move-result-object v0

    #@2b
    .line 330
    :cond_1
    return-object v0

    #@2c
    .line 319
    .end local v0    # "ts":Landroid/icu/impl/duration/Period;
    .end local v6    # "inPast":Z
    :cond_2
    const/4 v6, 0x0

    #@2d
    .restart local v6    # "inPast":Z
    goto :goto_0
.end method

.method protected abstract handleCreate(JJZ)Landroid/icu/impl/duration/Period;
.end method

.method public withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 2
    .param p1, "localeName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 339
    iget-object v1, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@2
    invoke-virtual {v1, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@5
    move-result-object v0

    #@6
    .line 340
    .local v0, "newSettings":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    iget-object v1, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    #@8
    if-eq v0, v1, :cond_0

    #@a
    .line 341
    invoke-virtual {p0, v0}, Landroid/icu/impl/duration/PeriodBuilderImpl;->withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 343
    :cond_0
    return-object p0
.end method

.method protected abstract withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilder;
    .locals 0
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 335
    return-object p0
.end method
