.class public interface abstract Lcom/android/internal/app/LocaleCollectorBase;
.super Ljava/lang/Object;
.source "LocaleCollectorBase.java"


# virtual methods
.method public abstract blacklist getIgnoredLocaleList(Z)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSupportedLocaleList(Lcom/android/internal/app/LocaleStore$LocaleInfo;ZZ)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "ZZ)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist hasSpecificPackageName()Z
.end method
