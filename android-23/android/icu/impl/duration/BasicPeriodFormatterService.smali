.class public Landroid/icu/impl/duration/BasicPeriodFormatterService;
.super Ljava/lang/Object;
.source "BasicPeriodFormatterService.java"

# interfaces
.implements Landroid/icu/impl/duration/PeriodFormatterService;


# static fields
.field private static instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;


# instance fields
.field private ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;


# direct methods
.method public constructor <init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V
    .locals 0
    .param p1, "ds"    # Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    iput-object p1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@5
    .line 43
    return-void
.end method

.method public static getInstance()Landroid/icu/impl/duration/BasicPeriodFormatterService;
    .locals 2

    #@0
    .prologue
    .line 29
    sget-object v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 30
    invoke-static {}, Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;->getInstance()Landroid/icu/impl/duration/impl/ResourceBasedPeriodFormatterDataService;

    #@7
    move-result-object v0

    #@8
    .line 32
    .local v0, "ds":Landroid/icu/impl/duration/impl/PeriodFormatterDataService;
    new-instance v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;

    #@a
    invoke-direct {v1, v0}, Landroid/icu/impl/duration/BasicPeriodFormatterService;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    #@d
    sput-object v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    #@f
    .line 34
    :cond_0
    sget-object v1, Landroid/icu/impl/duration/BasicPeriodFormatterService;->instance:Landroid/icu/impl/duration/BasicPeriodFormatterService;

    #@11
    return-object v1
.end method


# virtual methods
.method public getAvailableLocaleNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/duration/impl/PeriodFormatterDataService;->getAvailableLocales()Ljava/util/Collection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;
    .locals 1

    #@0
    .prologue
    .line 48
    new-instance v0, Landroid/icu/impl/duration/BasicDurationFormatterFactory;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/duration/BasicDurationFormatterFactory;-><init>(Landroid/icu/impl/duration/BasicPeriodFormatterService;)V

    #@5
    return-object v0
.end method

.method public newPeriodBuilderFactory()Landroid/icu/impl/duration/PeriodBuilderFactory;
    .locals 2

    #@0
    .prologue
    .line 56
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;

    #@2
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@4
    invoke-direct {v0, v1}, Landroid/icu/impl/duration/BasicPeriodBuilderFactory;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    #@7
    return-object v0
.end method

.method public newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;
    .locals 2

    #@0
    .prologue
    .line 52
    new-instance v0, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;

    #@2
    iget-object v1, p0, Landroid/icu/impl/duration/BasicPeriodFormatterService;->ds:Landroid/icu/impl/duration/impl/PeriodFormatterDataService;

    #@4
    invoke-direct {v0, v1}, Landroid/icu/impl/duration/BasicPeriodFormatterFactory;-><init>(Landroid/icu/impl/duration/impl/PeriodFormatterDataService;)V

    #@7
    return-object v0
.end method
