.class public abstract Landroid/icu/impl/duration/impl/PeriodFormatterDataService;
.super Ljava/lang/Object;
.source "PeriodFormatterDataService.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist get(Ljava/lang/String;)Landroid/icu/impl/duration/impl/PeriodFormatterData;
.end method

.method public abstract blacklist getAvailableLocales()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
