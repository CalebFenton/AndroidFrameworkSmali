.class public Landroid/icu/impl/ICULocaleService;
.super Landroid/icu/impl/ICUService;
.source "ICULocaleService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICULocaleService$LocaleKey;,
        Landroid/icu/impl/ICULocaleService$LocaleKeyFactory;,
        Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;,
        Landroid/icu/impl/ICULocaleService$ICUResourceBundleFactory;
    }
.end annotation


# instance fields
.field private fallbackLocale:Landroid/icu/util/ULocale;

.field private fallbackLocaleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Landroid/icu/impl/ICUService;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/icu/impl/ICUService;-><init>(Ljava/lang/String;)V

    #@3
    .line 29
    return-void
.end method


# virtual methods
.method public createKey(Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Key;
    .locals 1
    .param p1, "l"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I

    #@0
    .prologue
    .line 614
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonical(Landroid/icu/util/ULocale;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 606
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICULocaleService$LocaleKey;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public createKey(Ljava/lang/String;I)Landroid/icu/impl/ICUService$Key;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "kind"    # I

    #@0
    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->validateFallbackLocale()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0, p2}, Landroid/icu/impl/ICULocaleService$LocaleKey;->createWithCanonicalFallback(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/impl/ICULocaleService$LocaleKey;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public get(Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 39
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get(Landroid/icu/util/ULocale;I)Ljava/lang/Object;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 7
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "kind"    # I
    .param p3, "actualReturn"    # [Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 65
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICULocaleService;->createKey(Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Key;

    #@4
    move-result-object v0

    #@5
    .line 66
    .local v0, "key":Landroid/icu/impl/ICUService$Key;
    if-nez p3, :cond_0

    #@7
    .line 67
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICULocaleService;->getKey(Landroid/icu/impl/ICUService$Key;)Ljava/lang/Object;

    #@a
    move-result-object v4

    #@b
    return-object v4

    #@c
    .line 70
    :cond_0
    const/4 v4, 0x1

    #@d
    new-array v3, v4, [Ljava/lang/String;

    #@f
    .line 71
    .local v3, "temp":[Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Landroid/icu/impl/ICULocaleService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    .line 72
    .local v2, "result":Ljava/lang/Object;
    if-eqz v2, :cond_2

    #@15
    .line 73
    aget-object v4, v3, v6

    #@17
    const-string/jumbo v5, "/"

    #@1a
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1d
    move-result v1

    #@1e
    .line 74
    .local v1, "n":I
    if-ltz v1, :cond_1

    #@20
    .line 75
    aget-object v4, v3, v6

    #@22
    add-int/lit8 v5, v1, 0x1

    #@24
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    aput-object v4, v3, v6

    #@2a
    .line 77
    :cond_1
    new-instance v4, Landroid/icu/util/ULocale;

    #@2c
    aget-object v5, v3, v6

    #@2e
    invoke-direct {v4, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@31
    aput-object v4, p3, v6

    #@33
    .line 79
    .end local v1    # "n":I
    :cond_2
    return-object v2
.end method

.method public get(Landroid/icu/util/ULocale;[Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "actualReturn"    # [Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 55
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 8

    #@0
    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;

    #@3
    move-result-object v6

    #@4
    .line 125
    .local v6, "visIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->size()I

    #@7
    move-result v7

    #@8
    new-array v3, v7, [Ljava/util/Locale;

    #@a
    .line 126
    .local v3, "locales":[Ljava/util/Locale;
    const/4 v4, 0x0

    #@b
    .line 127
    .local v4, "n":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v7

    #@13
    if-eqz v7, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    .line 128
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/impl/LocaleUtility;->getLocaleFromName(Ljava/lang/String;)Ljava/util/Locale;

    #@1e
    move-result-object v2

    #@1f
    .line 129
    .local v2, "loc":Ljava/util/Locale;
    add-int/lit8 v5, v4, 0x1

    #@21
    .end local v4    # "n":I
    .local v5, "n":I
    aput-object v2, v3, v4

    #@23
    move v4, v5

    #@24
    .end local v5    # "n":I
    .restart local v4    # "n":I
    goto :goto_0

    #@25
    .line 131
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "loc":Ljava/util/Locale;
    :cond_0
    return-object v3
.end method

.method public getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 7

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->getVisibleIDs()Ljava/util/Set;

    #@3
    move-result-object v5

    #@4
    .line 140
    .local v5, "visIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    #@7
    move-result v6

    #@8
    new-array v2, v6, [Landroid/icu/util/ULocale;

    #@a
    .line 141
    .local v2, "locales":[Landroid/icu/util/ULocale;
    const/4 v3, 0x0

    #@b
    .line 142
    .local v3, "n":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "id$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v6

    #@13
    if-eqz v6, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Ljava/lang/String;

    #@1b
    .line 143
    .local v0, "id":Ljava/lang/String;
    add-int/lit8 v4, v3, 0x1

    #@1d
    .end local v3    # "n":I
    .local v4, "n":I
    new-instance v6, Landroid/icu/util/ULocale;

    #@1f
    invoke-direct {v6, v0}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@22
    aput-object v6, v2, v3

    #@24
    move v3, v4

    #@25
    .end local v4    # "n":I
    .restart local v3    # "n":I
    goto :goto_0

    #@26
    .line 145
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 88
    const/4 v0, -0x1

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;I)Landroid/icu/impl/ICUService$Factory;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "kind"    # I

    #@0
    .prologue
    .line 106
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "kind"    # I
    .param p4, "visible"    # Z

    #@0
    .prologue
    .line 114
    new-instance v0, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;

    #@2
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/icu/impl/ICULocaleService$SimpleLocaleKeyFactory;-><init>(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)V

    #@5
    .line 115
    .local v0, "factory":Landroid/icu/impl/ICUService$Factory;
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    #@8
    move-result-object v1

    #@9
    return-object v1
.end method

.method public registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;Z)Landroid/icu/impl/ICUService$Factory;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "visible"    # Z

    #@0
    .prologue
    .line 97
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;IZ)Landroid/icu/impl/ICUService$Factory;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public validateFallbackLocale()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 592
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    .line 593
    .local v0, "loc":Landroid/icu/util/ULocale;
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    #@6
    if-eq v0, v1, :cond_1

    #@8
    .line 594
    monitor-enter p0

    #@9
    .line 595
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    #@b
    if-eq v0, v1, :cond_0

    #@d
    .line 596
    iput-object v0, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocale:Landroid/icu/util/ULocale;

    #@f
    .line 597
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    iput-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    #@15
    .line 598
    invoke-virtual {p0}, Landroid/icu/impl/ICULocaleService;->clearServiceCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    :cond_0
    monitor-exit p0

    #@19
    .line 602
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/ICULocaleService;->fallbackLocaleName:Ljava/lang/String;

    #@1b
    return-object v1

    #@1c
    .line 594
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1
.end method
