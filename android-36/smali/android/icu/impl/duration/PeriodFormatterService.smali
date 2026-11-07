.class public interface abstract Landroid/icu/impl/duration/PeriodFormatterService;
.super Ljava/lang/Object;
.source "PeriodFormatterService.java"


# virtual methods
.method public abstract blacklist getAvailableLocaleNames()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist newDurationFormatterFactory()Landroid/icu/impl/duration/DurationFormatterFactory;
.end method

.method public abstract blacklist newPeriodBuilderFactory()Landroid/icu/impl/duration/PeriodBuilderFactory;
.end method

.method public abstract blacklist newPeriodFormatterFactory()Landroid/icu/impl/duration/PeriodFormatterFactory;
.end method
