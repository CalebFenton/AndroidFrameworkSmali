.class public Lcom/android/internal/app/SystemLocaleCollector;
.super Ljava/lang/Object;
.source "SystemLocaleCollector.java"

# interfaces
.implements Lcom/android/internal/app/LocaleCollectorBase;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mExplicitLocales:Landroid/os/LocaleList;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/SystemLocaleCollector;-><init>(Landroid/content/Context;Landroid/os/LocaleList;)V

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/LocaleList;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "explicitLocales"    # Landroid/os/LocaleList;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/internal/app/SystemLocaleCollector;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/internal/app/SystemLocaleCollector;->mExplicitLocales:Landroid/os/LocaleList;

    .line 38
    return-void
.end method


# virtual methods
.method public blacklist getIgnoredLocaleList(Z)Ljava/util/Set;
    .registers 6
    .param p1, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 43
    .local v0, "ignoreList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_18

    .line 44
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 45
    .local v1, "userLocales":Landroid/os/LocaleList;
    invoke-virtual {v1}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "langTags":[Ljava/lang/String;
    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 48
    .end local v1    # "userLocales":Landroid/os/LocaleList;
    .end local v2    # "langTags":[Ljava/lang/String;
    :cond_18
    return-object v0
.end method

.method public blacklist getSupportedLocaleList(Lcom/android/internal/app/LocaleStore$LocaleInfo;ZZ)Ljava/util/Set;
    .registers 8
    .param p1, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "translatedOnly"    # Z
    .param p3, "isForCountryMode"    # Z
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

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/internal/app/SystemLocaleCollector;->getIgnoredLocaleList(Z)Ljava/util/Set;

    move-result-object v0

    .line 56
    .local v0, "langTagsToIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p3, :cond_f

    .line 57
    iget-object v1, p0, Lcom/android/internal/app/SystemLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/app/SystemLocaleCollector;->mExplicitLocales:Landroid/os/LocaleList;

    invoke-static {v1, v0, p1, p2, v2}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;

    move-result-object v1

    .local v1, "localeList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    goto :goto_18

    .line 60
    .end local v1    # "localeList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_f
    iget-object v1, p0, Lcom/android/internal/app/SystemLocaleCollector;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/app/SystemLocaleCollector;->mExplicitLocales:Landroid/os/LocaleList;

    invoke-static {v1, v0, v2, p2, v3}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;

    move-result-object v1

    .line 63
    .restart local v1    # "localeList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :goto_18
    return-object v1
.end method

.method public blacklist hasSpecificPackageName()Z
    .registers 2

    .line 68
    const/4 v0, 0x0

    return v0
.end method
