.class public Landroid/icu/impl/duration/BasicPeriodFormatterService;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterService.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodFormatterService;


# static fields
.field private static blacklist instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;


# instance fields
.field private blacklist ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .registers 2
    .param p1, "ds"    # Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    .line 49
    return-void
.end method

.method public static blacklist getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;
    .registers 2

    .line 33
    sget-object v0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    if-nez v0, :cond_f

    .line 35
    invoke-static {}, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->getInstance()Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    move-result-object v0

    .line 36
    .local v0, "ds":Landroid/icu/impl/duration/impl/PeriodFormatterDataService;
    new-instance v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;

    invoke-direct {v1, v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    sput-object v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    .line 38
    .end local v0    # "ds":Landroid/icu/impl/duration/impl/PeriodFormatterDataService;
    :cond_f
    sget-object v0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    return-object v0
.end method


# virtual methods
.method public blacklist getAvailableLocaleNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->getAvailableLocales()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public blacklist newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;
    .registers 2

    .line 53
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;

    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;-><init>(Landroid/icu/impl/duration/BasicPeriodFormatterService;)V

    return-object v0
.end method

.method public blacklist newPeriodBuilderFactory()Landroid/icu/impl/duration/PeriodBuilderFactory;
    .registers 3

    .line 63
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-direct {v0, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    return-object v0
.end method

.method public blacklist newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;
    .registers 3

    .line 58
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    invoke-direct {v0, v1}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    return-object v0
.end method
