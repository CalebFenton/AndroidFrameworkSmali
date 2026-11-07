.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist TIER_LANGUAGE:I = 0x1

.field private static final blacklist TIER_NUMBERING:I = 0x3

.field private static final blacklist TIER_REGION:I = 0x2

.field private static blacklist sFullyInitialized:Z

.field private static final blacklist sLocaleCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    .line 48
    const-class v0, Lcom/android/internal/app/LocaleStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocaleStore;->TAG:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addLocaleInfoToMap(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/HashMap;)V
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "localeInfo"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .line 752
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 753
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    .line 754
    .local v0, "localeWithNumberingSystem":Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 755
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    .end local v0    # "localeWithNumberingSystem":Ljava/util/Locale;
    :cond_1f
    return-void
.end method

.method private static blacklist addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 443
    if-nez p0, :cond_3

    .line 444
    return-void

    .line 446
    :cond_3
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 448
    return-void

    .line 451
    :cond_e
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 452
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 454
    iget v3, v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 456
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_38
    goto :goto_18

    .line 457
    :cond_39
    return-void
.end method

.method public static blacklist convertExplicitLocales(Landroid/os/LocaleList;Ljava/util/Collection;)Ljava/util/HashMap;
    .registers 11
    .param p0, "explicitLocales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/LocaleList;",
            "Ljava/util/Collection<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 658
    .local p1, "localeinfo":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static {p0, p1}, Lcom/android/internal/app/LocaleStore;->matchLocaleFromSupportedLocaleList(Landroid/os/LocaleList;Ljava/util/Collection;)Landroid/os/LocaleList;

    move-result-object v0

    .line 661
    .local v0, "localeList":Landroid/os/LocaleList;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 662
    .local v1, "localeInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 663
    invoke-virtual {v0, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 664
    .local v3, "locale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_51

    .line 668
    new-instance v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 669
    .local v4, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 670
    goto :goto_4e

    .line 672
    :cond_2f
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    .line 674
    .local v6, "parent":Ljava/util/Locale;
    if-eqz v6, :cond_4e

    .line 675
    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 676
    .local v7, "parentId":Ljava/lang/String;
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    .line 677
    new-instance v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v8, v6, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v4    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v6    # "parent":Ljava/util/Locale;
    .end local v7    # "parentId":Ljava/lang/String;
    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 665
    .restart local v3    # "locale":Ljava/util/Locale;
    :cond_51
    new-instance v4, Ljava/util/IllformedLocaleException;

    const-string v5, "Bad locale entry"

    invoke-direct {v4, v5}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 681
    .end local v2    # "i":I
    .end local v3    # "locale":Ljava/util/Locale;
    :cond_59
    return-object v1
.end method

.method public static greylist fillCache(Landroid/content/Context;)V
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .line 461
    sget-boolean v0, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    if-eqz v0, :cond_5

    .line 462
    return-void

    .line 465
    :cond_5
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 467
    .local v0, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "development_settings_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    .line 469
    .local v1, "isInDeveloperMode":Z
    :goto_1a
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 470
    .local v4, "numberSystemLocaleList":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Locale;>;"
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_25
    if-ge v7, v6, :cond_3f

    aget-object v8, v5, v7

    .line 471
    .local v8, "localeId":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    const-string v10, "nu"

    invoke-virtual {v9, v10}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3c

    .line 472
    invoke-static {v8}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 470
    .end local v8    # "localeId":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 475
    :cond_3f
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_45
    const/4 v8, 0x0

    if-ge v7, v6, :cond_b7

    aget-object v9, v5, v7

    .line 476
    .local v9, "localeId":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_af

    .line 479
    new-instance v10, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v10, v9, v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 481
    .local v10, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-static {v11}, Landroid/os/LocaleList;->isPseudoLocale(Ljava/util/Locale;)Z

    move-result v11

    if-eqz v11, :cond_6c

    .line 482
    if-eqz v1, :cond_ac

    .line 483
    invoke-virtual {v10, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 484
    invoke-static {v10, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 485
    iget v11, v10, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/2addr v11, v2

    iput v11, v10, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 492
    :cond_6c
    invoke-virtual {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7f

    .line 493
    iget v11, v10, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/2addr v11, v2

    iput v11, v10, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 495
    :cond_7f
    new-instance v11, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;

    invoke-direct {v11, v10}, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    invoke-interface {v4, v11}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 501
    sget-object v11, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    invoke-virtual {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v11

    .line 503
    .local v11, "parent":Ljava/util/Locale;
    if-eqz v11, :cond_ac

    .line 504
    invoke-virtual {v11}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v12

    .line 505
    .local v12, "parentId":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v13, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ac

    .line 506
    sget-object v13, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    new-instance v14, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v14, v11, v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    invoke-virtual {v13, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .end local v9    # "localeId":Ljava/lang/String;
    .end local v10    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v11    # "parent":Ljava/util/Locale;
    .end local v12    # "parentId":Ljava/lang/String;
    :cond_ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 477
    .restart local v9    # "localeId":Ljava/lang/String;
    :cond_af
    new-instance v2, Ljava/util/IllformedLocaleException;

    const-string v3, "Bad locale entry in locale_config.xml"

    invoke-direct {v2, v3}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 512
    .end local v9    # "localeId":Ljava/lang/String;
    :cond_b7
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 513
    .local v5, "localizedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_c1
    if-ge v3, v7, :cond_131

    aget-object v9, v6, v3

    .line 514
    .restart local v9    # "localeId":Ljava/lang/String;
    new-instance v10, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v10, v9, v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 515
    .restart local v10    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 517
    .local v11, "country":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_127

    .line 518
    const/4 v12, 0x0

    .line 519
    .local v12, "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v13, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f3

    .line 520
    sget-object v13, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v12, v13

    check-cast v12, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    goto :goto_11f

    .line 522
    :cond_f3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 523
    .local v13, "langScriptCtry":Ljava/lang/String;
    sget-object v14, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11f

    .line 524
    sget-object v14, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v14, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v12, v14

    check-cast v12, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 527
    .end local v13    # "langScriptCtry":Ljava/lang/String;
    :cond_11f
    :goto_11f
    if-eqz v12, :cond_127

    .line 528
    iget v13, v12, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v13, v13, 0x2

    iput v13, v12, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 531
    .end local v12    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_127
    invoke-static {v10}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v9    # "localeId":Ljava/lang/String;
    .end local v10    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v11    # "country":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c1

    .line 534
    :cond_131
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_153

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 535
    .local v6, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 536
    .end local v6    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_13b

    .line 538
    :cond_153
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    .line 540
    sput-boolean v2, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    .line 541
    return-void
.end method

.method public static greylist fromLocale(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 766
    new-instance v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    return-object v0
.end method

.method public static blacklist getAppActivatedLocaleInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "isAppSelected"    # Z

    .line 358
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 359
    return-object v0

    .line 362
    :cond_4
    const-class v1, Landroid/app/LocaleManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LocaleManager;

    .line 364
    .local v1, "localeManager":Landroid/app/LocaleManager;
    if-nez v1, :cond_10

    .line 365
    move-object v2, v0

    goto :goto_14

    :cond_10
    :try_start_10
    invoke-virtual {v1, p1}, Landroid/app/LocaleManager;->getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    .line 366
    .local v2, "localeList":Landroid/os/LocaleList;
    :goto_14
    if-nez v2, :cond_18

    move-object v3, v0

    goto :goto_1d

    :cond_18
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 368
    .local v3, "locale":Ljava/util/Locale;
    :goto_1d
    if-eqz v3, :cond_3a

    .line 369
    sget-object v4, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    .line 370
    .local v4, "cacheInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    new-instance v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v5, v4, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 371
    .local v5, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz p2, :cond_33

    .line 372
    iget v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    goto :goto_39

    .line 374
    :cond_33
    iget v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_39} :catch_3b

    .line 376
    :goto_39
    return-object v5

    .line 380
    .end local v2    # "localeList":Landroid/os/LocaleList;
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v4    # "cacheInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v5    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_3a
    goto :goto_43

    .line 378
    :catch_3b
    move-exception v2

    .line 379
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/internal/app/LocaleStore;->TAG:Ljava/lang/String;

    const-string v4, "IllegalArgumentException "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_43
    return-object v0
.end method

.method public static greylist getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 584
    .local p1, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLandroid/os/LocaleList;)Ljava/util/Set;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z
    .param p4, "explicitLocales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z",
            "Landroid/os/LocaleList;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 599
    .local p1, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_5

    .line 600
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 603
    :cond_5
    if-nez p4, :cond_a

    .line 604
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    goto :goto_14

    .line 605
    :cond_a
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/internal/app/LocaleStore;->convertExplicitLocales(Landroid/os/LocaleList;Ljava/util/Collection;)Ljava/util/HashMap;

    move-result-object v0

    :goto_14
    nop

    .line 606
    .local v0, "supportedLcoaleInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static {p1, p2, p3, v0}, Lcom/android/internal/app/LocaleStore;->getTierLocales(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/util/HashMap;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public static greylist getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 712
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v0

    .line 713
    .local v0, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocaleStore;->addLocaleInfoToMap(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/HashMap;)V

    .line 714
    return-object v0
.end method

.method private static blacklist getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;"
        }
    .end annotation

    .line 719
    .local p1, "localeInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 721
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 724
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v1

    .line 725
    .local v1, "filteredLocale":Ljava/util/Locale;
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_42

    .line 726
    new-instance v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 727
    .local v2, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 730
    .local v3, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 731
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 732
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v4

    invoke-static {v2, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 733
    iget v4, v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    iput v4, v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 734
    return-object v2

    .line 736
    .end local v2    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v3    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_42
    new-instance v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 737
    .end local v1    # "filteredLocale":Ljava/util/Locale;
    .restart local v2    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_4f

    .line 738
    .end local v2    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_48
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 740
    .restart local v2    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :goto_4f
    return-object v2
.end method

.method private static blacklist getLocaleTier(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .registers 2
    .param p0, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 557
    if-nez p0, :cond_4

    .line 558
    const/4 v0, 0x1

    return v0

    .line 559
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 560
    const/4 v0, 0x2

    return v0

    .line 562
    :cond_14
    const/4 v0, 0x3

    return v0
.end method

.method private static blacklist getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;

    .line 744
    new-instance v0, Ljava/util/Locale$Builder;

    invoke-direct {v0}, Ljava/util/Locale$Builder;-><init>()V

    .line 745
    invoke-virtual {p0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale$Builder;->setLocale(Ljava/util/Locale;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 746
    const-string v1, "nu"

    invoke-virtual {p0, v1}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Locale$Builder;->setUnicodeLocaleKeyword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Locale$Builder;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Ljava/util/Locale$Builder;->build()Ljava/util/Locale;

    move-result-object v0

    .line 744
    return-object v0
.end method

.method private static blacklist getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 303
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 305
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_35

    .line 306
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "iso":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    .line 308
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_22
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    .line 313
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v2    # "iso":Ljava/lang/String;
    :cond_35
    return-object v0
.end method

.method public static blacklist getSystemCurrentLocales()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 413
    .local v0, "localeList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    .line 414
    .local v1, "systemLangList":Landroid/os/LocaleList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 415
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->getLocaleWithOnlyNumberingSystem(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    .line 416
    .local v3, "sysLocale":Ljava/util/Locale;
    sget-object v4, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v4

    .line 417
    .local v4, "cacheInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    new-instance v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 418
    .local v5, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 419
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 414
    .end local v3    # "sysLocale":Ljava/util/Locale;
    .end local v4    # "cacheInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v5    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 421
    .end local v2    # "i":I
    :cond_30
    return-object v0
.end method

.method public static blacklist getSystemDefaultLocaleInfo(Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 4
    .param p0, "hasAppLanguage"    # Z

    .line 429
    new-instance v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 430
    .local v0, "systemDefaultInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 431
    if-eqz p0, :cond_16

    .line 432
    iget v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 434
    :cond_16
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 435
    return-object v0
.end method

.method private static blacklist getTierLocales(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;ZLjava/util/HashMap;)Ljava/util/Set;
    .registers 12
    .param p1, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 615
    .local p0, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "supportedLocaleInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    const/4 v0, 0x1

    if-eqz p1, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 616
    .local v1, "hasTargetParent":Z
    :goto_6
    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    .line 617
    .local v2, "parentId":Ljava/lang/String;
    :goto_e
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 618
    .local v3, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 619
    .local v5, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {p0, v5, p2}, Lcom/android/internal/app/LocaleStore;->isShallIgnore(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 620
    goto :goto_1b

    .line 622
    :cond_2e
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore;->getLocaleTier(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v6

    packed-switch v6, :pswitch_data_8c

    goto :goto_8a

    .line 642
    :pswitch_36
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v6

    .line 643
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 644
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 634
    :pswitch_50
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8a

    .line 635
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v6

    .line 636
    .local v6, "locale":Ljava/util/Locale;
    invoke-static {v6, p3}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v7

    .line 637
    .local v7, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v6, v7, p3}, Lcom/android/internal/app/LocaleStore;->addLocaleInfoToMap(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/HashMap;)V

    .line 638
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 639
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v7    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_8a

    .line 624
    :pswitch_71
    invoke-virtual {v5, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggestionOfType(I)Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 625
    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8a

    .line 627
    :cond_7b
    invoke-virtual {v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    .line 628
    .restart local v6    # "locale":Ljava/util/Locale;
    invoke-static {v6, p3}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v7

    .line 629
    .restart local v7    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v6, v7, p3}, Lcom/android/internal/app/LocaleStore;->addLocaleInfoToMap(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/HashMap;)V

    .line 630
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 632
    .end local v6    # "locale":Ljava/util/Locale;
    .end local v7    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    nop

    .line 648
    .end local v5    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_8a
    :goto_8a
    goto :goto_1b

    .line 649
    :cond_8b
    return-object v3

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_71
        :pswitch_50
        :pswitch_36
    .end packed-switch
.end method

.method private static blacklist isShallIgnore(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Z
    .registers 6
    .param p1, "li"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)Z"
        }
    .end annotation

    .line 545
    .local p0, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/internal/app/LocaleStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 548
    return v1

    .line 550
    :cond_11
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    return v2

    .line 551
    :cond_19
    if-eqz p2, :cond_22

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    if-nez v0, :cond_22

    return v1

    .line 552
    :cond_22
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_29

    return v2

    .line 553
    :cond_29
    return v1
.end method

.method static synthetic blacklist lambda$fillCache$0(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Locale;)V
    .registers 4
    .param p0, "li"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p1, "l"    # Ljava/util/Locale;

    .line 496
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 497
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmHasNumberingSystems(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 499
    :cond_16
    return-void
.end method

.method static synthetic blacklist lambda$isShallIgnore$1(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/lang/String;)Z
    .registers 4
    .param p0, "li"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p1, "tag"    # Ljava/lang/String;

    .line 546
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v0

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->stripExtensions()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 546
    return v0
.end method

.method private static blacklist matchLocaleFromSupportedLocaleList(Landroid/os/LocaleList;Ljava/util/Collection;)Landroid/os/LocaleList;
    .registers 9
    .param p0, "explicitLocales"    # Landroid/os/LocaleList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/LocaleList;",
            "Ljava/util/Collection<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Landroid/os/LocaleList;"
        }
    .end annotation

    .line 686
    .local p1, "localeInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    if-nez p1, :cond_3

    .line 687
    return-object p0

    .line 690
    :cond_3
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Locale;

    .line 691
    .local v0, "resultLocales":[Ljava/util/Locale;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    .line 692
    invoke-virtual {p0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 693
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    .line 694
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 695
    .local v4, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 696
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    .line 697
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    .line 696
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 698
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    aput-object v3, v0, v1

    .line 699
    goto :goto_52

    .line 701
    .end local v4    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_51
    goto :goto_22

    .line 703
    :cond_52
    :goto_52
    aget-object v3, v0, v1

    if-nez v3, :cond_58

    .line 704
    aput-object v2, v0, v1

    .line 691
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 707
    .end local v1    # "i":I
    :cond_5b
    new-instance v1, Landroid/os/LocaleList;

    invoke-direct {v1, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object v1
.end method

.method public static blacklist transformImeLanguageTagToLocaleInfo(Ljava/util/List;)Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 392
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 393
    .local v0, "imeLocales":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 394
    .local v1, "languageTagSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 395
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v4

    .line 396
    .local v4, "languageTag":Ljava/lang/String;
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 397
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-static {v4}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v5

    .line 399
    .local v5, "locale":Ljava/util/Locale;
    sget-object v6, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-static {v5, v6}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;Ljava/util/HashMap;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v6

    .line 400
    .local v6, "cacheInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    new-instance v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore-IA;)V

    .line 401
    .local v7, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget v8, v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 402
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    .end local v3    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v4    # "languageTag":Ljava/lang/String;
    .end local v5    # "locale":Ljava/util/Locale;
    .end local v6    # "cacheInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v7    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_40
    goto :goto_e

    .line 405
    :cond_41
    return-object v0
.end method

.method public static blacklist updateSimCountries(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 335
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 337
    .local v0, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 342
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 343
    iget v3, v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;->mSuggestionFlags:I

    .line 345
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_2e
    goto :goto_e

    .line 346
    :cond_2f
    return-void
.end method
