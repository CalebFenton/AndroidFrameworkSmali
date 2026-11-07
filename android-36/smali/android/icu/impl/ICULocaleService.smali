.class public Landroid/icu/impl/ICULocaleService;
.super Landroid/icu/impl/ICUService;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICULocaleService$LocaleKey;,
        Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;,
        Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;,
        Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;
    }
.end annotation


# instance fields
.field private blacklist fallbackLocale:Landroid/icu/util/ULocale;

.field private blacklist fallbackLocaleName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/icu/impl/ICUService;-><init>()V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUService;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist createKey(Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Key;
    .registers 4
    .param p1, "l"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I

    .line 642
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonical(Landroid/icu/util/ULocale;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 634
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICULocaleService$LocaleKey;

    move-result-object v0

    return-object v0
.end method

.method public blacklist createKey(Ljava/lang/String;I)Landroid/icu/impl/ICUService$Key;
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "kind"    # I

    .line 638
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 45
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I

    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .registers 11
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "actualReturn"    # [Landroid/icu/util/ULocale;

    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICULocaleService;->createKey(Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Key;

    move-result-object v0

    .line 72
    .local v0, "key":Landroid/icu/impl/ICUService$Key;
    if-nez p3, :cond_b

    .line 73
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICULocaleService;->getKey(Landroid/icu/impl/ICUService$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 76
    :cond_b
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 77
    .local v1, "temp":[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/ICULocaleService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "result":Ljava/lang/Object;
    if-eqz v2, :cond_32

    .line 79
    const/4 v3, 0x0

    aget-object v4, v1, v3

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 80
    .local v4, "n":I
    if-ltz v4, :cond_29

    .line 81
    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    .line 83
    :cond_29
    new-instance v5, Landroid/icu/util/ULocale;

    aget-object v6, v1, v3

    invoke-direct {v5, v6}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v5, p3, v3

    .line 85
    .end local v4    # "n":I
    :cond_32
    return-object v2
.end method

.method public blacklist get(Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "actualReturn"    # [Landroid/icu/util/ULocale;

    .line 61
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAvailableLocales()[Ljava/util/Locale;
    .registers 8

    .line 130
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;

    move-result-object v0

    .line 131
    .local v0, "visIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Locale;

    .line 132
    .local v1, "locales":[Ljava/util/Locale;
    const/4 v2, 0x0

    .line 133
    .local v2, "n":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 134
    .local v4, "id":Ljava/lang/String;
    invoke-static {v4}, Landroid/icu/impl/LocaleUtility;->getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 135
    .local v5, "loc":Ljava/util/Locale;
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "n":I
    .local v6, "n":I
    aput-object v5, v1, v2

    .line 136
    .end local v4    # "id":Ljava/lang/String;
    .end local v5    # "loc":Ljava/util/Locale;
    move v2, v6

    goto :goto_f

    .line 137
    .end local v6    # "n":I
    .restart local v2    # "n":I
    :cond_25
    return-object v1
.end method

.method public blacklist getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 8

    .line 145
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;

    move-result-object v0

    .line 146
    .local v0, "visIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Landroid/icu/util/ULocale;

    .line 147
    .local v1, "locales":[Landroid/icu/util/ULocale;
    const/4 v2, 0x0

    .line 148
    .local v2, "n":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    .local v4, "id":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "n":I
    .local v5, "n":I
    new-instance v6, Landroid/icu/util/ULocale;

    invoke-direct {v6, v4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v6, v1, v2

    .line 150
    .end local v4    # "id":Ljava/lang/String;
    move v2, v5

    goto :goto_f

    .line 151
    .end local v5    # "n":I
    .restart local v2    # "n":I
    :cond_26
    return-object v1
.end method

.method public blacklist registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 94
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Factory;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "kind"    # I

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "kind"    # I
    .param p4, "visible"    # Z

    .line 120
    new-instance v0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;-><init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)V

    .line 121
    .local v0, "factory":Landroid/icu/impl/ICUService$Factory;
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v1

    return-object v1
.end method

.method public blacklist registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;Z)Landroid/icu/impl/ICUService$Factory;
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "visible"    # Z

    .line 103
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method public blacklist validateFallbackLocale()Ljava/lang/String;
    .registers 3

    .line 619
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    .line 620
    .local v0, "loc":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    if-eq v0, v1, :cond_1d

    .line 621
    monitor-enter p0

    .line 622
    :try_start_9
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    if-eq v0, v1, :cond_18

    .line 623
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    .line 624
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->clearServiceCache()V

    .line 625
    iput-object v0, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    .line 627
    :cond_18
    monitor-exit p0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v1

    .line 629
    :cond_1d
    :goto_1d
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    return-object v1
.end method
