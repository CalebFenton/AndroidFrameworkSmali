.class abstract Landroid/icu/impl/duration/PeriodBuilderImpl;
.super Ljava/lang/Object;
.source "BasicPeriodBuilderFactory.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodBuilder;


# instance fields
.field protected blacklist settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;


# direct methods
.method protected constructor blacklist <init>(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)V
    .registers 2
    .param p1, "settings"    # Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    iput-object p1, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    .line 373
    return-void
.end method


# virtual methods
.method public blacklist approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J
    .registers 4
    .param p1, "unit"    # Landroid/icu/impl/duration/TimeUnit;

    .line 332
    invoke-static {p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;->approximateDurationOf(Landroid/icu/impl/duration/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist create(J)Landroid/icu/impl/duration/Period;
    .registers 5
    .param p1, "duration"    # J

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/duration/PeriodBuilderImpl;->createWithReferenceDate(JJ)Landroid/icu/impl/duration/Period;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createWithReferenceDate(JJ)Landroid/icu/impl/duration/Period;
    .registers 12
    .param p1, "duration"    # J
    .param p3, "referenceDate"    # J

    .line 337
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    move v6, v0

    .line 338
    .local v6, "inPast":Z
    if-eqz v6, :cond_f

    .line 339
    neg-long p1, p1

    move-wide v2, p1

    goto :goto_10

    .line 338
    :cond_f
    move-wide v2, p1

    .line 341
    .end local p1    # "duration":J
    .local v2, "duration":J
    :goto_10
    iget-object p1, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p1, v2, v3, v6}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->createLimited(JZ)Landroid/icu/impl/duration/Period;

    move-result-object p1

    .line 342
    .local p1, "ts":Landroid/icu/impl/duration/Period;
    if-nez p1, :cond_31

    .line 343
    move-object v1, p0

    move-wide v4, p3

    .end local p3    # "referenceDate":J
    .local v4, "referenceDate":J
    invoke-virtual/range {v1 .. v6}, Landroid/icu/impl/duration/PeriodBuilderImpl;->handleCreate(JJZ)Landroid/icu/impl/duration/Period;

    move-result-object p1

    .line 344
    if-nez p1, :cond_33

    .line 345
    iget-object p2, v1, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {p2}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->effectiveMinUnit()Landroid/icu/impl/duration/TimeUnit;

    move-result-object p2

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Landroid/icu/impl/duration/Period;->lessThan(FLandroid/icu/impl/duration/TimeUnit;)Landroid/icu/impl/duration/Period;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/icu/impl/duration/Period;->inPast(Z)Landroid/icu/impl/duration/Period;

    move-result-object p1

    goto :goto_33

    .line 342
    .end local v4    # "referenceDate":J
    .restart local p3    # "referenceDate":J
    :cond_31
    move-object v1, p0

    move-wide v4, p3

    .line 348
    .end local p3    # "referenceDate":J
    .restart local v4    # "referenceDate":J
    :cond_33
    :goto_33
    return-object p1
.end method

.method protected abstract blacklist handleCreate(JJZ)Landroid/icu/impl/duration/Period;
.end method

.method public blacklist withLocale(Ljava/lang/String;)Landroid/icu/impl/duration/PeriodBuilder;
    .registers 4
    .param p1, "localeName"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    invoke-virtual {v0, p1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;->setLocale(Ljava/lang/String;)Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    move-result-object v0

    .line 360
    .local v0, "newSettings":Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;
    iget-object v1, p0, Landroid/icu/impl/duration/PeriodBuilderImpl;->settings:Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;

    if-eq v0, v1, :cond_f

    .line 361
    invoke-virtual {p0, v0}, Landroid/icu/impl/duration/PeriodBuilderImpl;->withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;

    move-result-object v1

    return-object v1

    .line 363
    :cond_f
    return-object p0
.end method

.method protected abstract blacklist withSettings(Landroid/icu/impl/duration/BasicPeriodBuilderFactory$Settings;)Landroid/icu/impl/duration/PeriodBuilder;
.end method

.method public blacklist withTimeZone(Ljava/util/TimeZone;)Landroid/icu/impl/duration/PeriodBuilder;
    .registers 2
    .param p1, "timeZone"    # Ljava/util/TimeZone;

    .line 354
    return-object p0
.end method
