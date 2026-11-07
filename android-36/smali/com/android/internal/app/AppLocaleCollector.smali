.class public Lcom/android/internal/app/AppLocaleCollector;
.super Ljava/lang/Object;
.source "AppLocaleCollector.java"

# interfaces
.implements Lcom/android/internal/app/LocaleCollectorBase;


# static fields
.field private static final blacklist ENABLED:Z = true

.field private static final blacklist PROP_APP_LANGUAGE_SUGGESTION:Ljava/lang/String; = "android.app.language.suggestion.enhanced"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mAllAppActiveLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field private final blacklist mAppPackageName:Ljava/lang/String;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mImeLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lcom/android/internal/app/AppLocaleCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/AppLocaleCollector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPackageName"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppPackageName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method private blacklist addImeSuggestionFlag(Ljava/util/Set;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 313
    .local p1, "localeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 314
    .local v1, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-object v2, p0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 315
    .local v3, "imeLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 316
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->extendSuggestionOfType(I)V

    .line 319
    .end local v3    # "imeLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_35
    goto :goto_16

    .line 320
    .end local v1    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_36
    goto :goto_4

    .line 321
    :cond_37
    return-object p1
.end method

.method private blacklist addSystemSuggestionFlag(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Set;)Z
    .registers 7
    .param p1, "localeInfo"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)Z"
        }
    .end annotation

    .line 301
    .local p2, "appLocaleSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 302
    .local v1, "info":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 303
    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->extendSuggestionOfType(I)V

    .line 305
    const/4 v0, 0x1

    return v0

    .line 307
    .end local v1    # "info":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_25
    goto :goto_4

    .line 308
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist filterSameLanguageAndCountry(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 327
    .local p1, "newLocaleList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    .local p2, "existingLocaleList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 328
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 329
    .local v2, "appLocaleInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    const/4 v3, 0x0

    .line 330
    .local v3, "same":Z
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    .line 331
    .local v4, "appLocale":Ljava/util/Locale;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_51

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 332
    .local v6, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    .line 333
    .local v7, "suggested":Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 334
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 335
    const/4 v3, 0x1

    .line 336
    goto :goto_51

    .line 338
    .end local v6    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v7    # "suggested":Ljava/util/Locale;
    :cond_50
    goto :goto_22

    .line 339
    :cond_51
    :goto_51
    if-nez v3, :cond_56

    .line 340
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v2    # "appLocaleInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v3    # "same":Z
    .end local v4    # "appLocale":Ljava/util/Locale;
    :cond_56
    goto :goto_d

    .line 343
    :cond_57
    return-object v0
.end method

.method private blacklist filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 349
    .local p1, "suggestedLocales":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    .local p2, "appSupportedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 351
    .local v0, "filteredList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 352
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 353
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 355
    :cond_23
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    .line 356
    .local v4, "l":Ljava/util/Locale;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/os/LocaleList;->matchesLanguageAndScript(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 357
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    goto :goto_42

    .line 360
    .end local v4    # "l":Ljava/util/Locale;
    :cond_41
    goto :goto_27

    .line 362
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_42
    :goto_42
    goto :goto_9

    .line 363
    :cond_43
    return-object v0
.end method

.method private blacklist getActiveIme(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;
    .registers 8
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "activeIme":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    iget-object v2, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 121
    const-string v4, "default_input_method"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "imeId":Ljava/lang/String;
    if-eqz v1, :cond_37

    if-eqz v2, :cond_37

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 125
    .local v4, "method":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 126
    move-object v0, v4

    .line 128
    .end local v4    # "method":Landroid/view/inputmethod/InputMethodInfo;
    :cond_36
    goto :goto_1f

    .line 130
    :cond_37
    return-object v0
.end method

.method private blacklist getSuggestedLocales(Ljava/util/Set;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 295
    .local p1, "localeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 296
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    .line 295
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static synthetic blacklist lambda$getActiveImeLocales$1(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .registers 2
    .param p0, "info"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 113
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static synthetic blacklist lambda$getAllAppActiveLocales$0(Ljava/util/HashSet;Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .registers 3
    .param p0, "result"    # Ljava/util/HashSet;
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "localeInfo"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 86
    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getIgnoredLocaleList$3(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .registers 3
    .param p0, "langTagsToIgnore"    # Ljava/util/Set;
    .param p1, "info"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 180
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getIgnoredLocaleList$4(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .registers 3
    .param p0, "langTagsToIgnore"    # Ljava/util/Set;
    .param p1, "info"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 182
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$getSuggestedLocales$5(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .registers 2
    .param p0, "localeInfo"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 295
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$getSystemCurrentLocales$2(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z
    .registers 2
    .param p0, "info"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public blacklist getActiveImeLocales()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "activeImeLocales":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 100
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1d

    .line 101
    invoke-direct {p0, v1}, Lcom/android/internal/app/AppLocaleCollector;->getActiveIme(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v2

    .line 102
    .local v2, "activeIme":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v2, :cond_1d

    .line 103
    nop

    .line 104
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    .line 103
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore;->transformImeLanguageTagToLocaleInfo(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 107
    .end local v2    # "activeIme":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1d
    if-nez v0, :cond_24

    .line 108
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    move-result-object v2

    return-object v2

    .line 110
    :cond_24
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 114
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    .line 113
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 110
    return-object v2
.end method

.method public blacklist getAllAppActiveLocales()Ljava/util/Set;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 72
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/LocaleManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LocaleManager;

    .line 73
    .local v1, "lm":Landroid/app/LocaleManager;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 74
    .local v2, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    if-eqz v0, :cond_62

    if-eqz v1, :cond_62

    .line 75
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    nop

    .line 77
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v4

    .line 76
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 78
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/internal/app/LocaleStore;->getAppActivatedLocaleInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v6

    .line 82
    .local v6, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-eqz v6, :cond_59

    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_59

    .line 83
    invoke-virtual {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_59
    goto :goto_2d

    .line 86
    :cond_5a
    new-instance v4, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda2;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 88
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_62
    return-object v2
.end method

.method public blacklist getAppCurrentLocale()Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocaleStore;->getAppActivatedLocaleInfo(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAppSupportedLocales()Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/app/AppLocaleStore;->getAppSupportedLocales(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;

    move-result-object v0

    return-object v0
.end method

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

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 173
    .local v0, "langTagsToIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v1, :cond_16

    .line 174
    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_16
    const-string v1, "android.app.language.suggestion.enhanced"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 179
    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    new-instance v2, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 182
    iget-object v1, p0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    new-instance v2, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 186
    :cond_33
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    .line 187
    .local v1, "systemLangList":Landroid/os/LocaleList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_38
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 188
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 190
    .end local v2    # "i":I
    :cond_4c
    return-object v0
.end method

.method public blacklist getSupportedLocaleList(Lcom/android/internal/app/LocaleStore$LocaleInfo;ZZ)Ljava/util/Set;
    .registers 20
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

    .line 196
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v2, :cond_e

    .line 197
    invoke-virtual {v0}, Lcom/android/internal/app/AppLocaleCollector;->getAppCurrentLocale()Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 199
    :cond_e
    iget-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    if-nez v2, :cond_18

    .line 200
    invoke-virtual {v0}, Lcom/android/internal/app/AppLocaleCollector;->getAllAppActiveLocales()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    .line 202
    :cond_18
    iget-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    if-nez v2, :cond_22

    .line 203
    invoke-virtual {v0}, Lcom/android/internal/app/AppLocaleCollector;->getActiveImeLocales()Ljava/util/Set;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    .line 205
    :cond_22
    invoke-virtual {v0}, Lcom/android/internal/app/AppLocaleCollector;->getAppSupportedLocales()Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;

    move-result-object v2

    .line 206
    .local v2, "result":Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
    invoke-virtual {v0, v1}, Lcom/android/internal/app/AppLocaleCollector;->getIgnoredLocaleList(Z)Ljava/util/Set;

    move-result-object v3

    .line 207
    .local v3, "langTagsToIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 209
    .local v4, "appLocaleList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    iget-object v5, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v6, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_LOCAL_CONFIG:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_40

    iget-object v5, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    sget-object v6, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;->GET_SUPPORTED_LANGUAGE_FROM_ASSET:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    if-ne v5, v6, :cond_3e

    goto :goto_40

    :cond_3e
    move v5, v7

    goto :goto_41

    :cond_40
    :goto_40
    move v5, v8

    .line 214
    .local v5, "shouldShowList":Z
    :goto_41
    if-eqz p3, :cond_4a

    .line 215
    move-object/from16 v6, p1

    invoke-virtual {v0, v3, v6, v1}, Lcom/android/internal/app/AppLocaleCollector;->getSystemSupportedLocale(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v9

    .local v9, "systemLocaleList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    goto :goto_51

    .line 217
    .end local v9    # "systemLocaleList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_4a
    move-object/from16 v6, p1

    const/4 v9, 0x0

    invoke-virtual {v0, v3, v9, v1}, Lcom/android/internal/app/AppLocaleCollector;->getSystemSupportedLocale(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v9

    .line 221
    .restart local v9    # "systemLocaleList":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :goto_51
    iget-object v10, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v10, :cond_5c

    if-nez p3, :cond_5c

    .line 222
    iget-object v10, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_5c
    if-nez p3, :cond_a6

    .line 229
    nop

    .line 230
    invoke-virtual {v0}, Lcom/android/internal/app/AppLocaleCollector;->getSystemCurrentLocales()Ljava/util/Set;

    move-result-object v10

    iget-object v11, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {v0, v10, v11}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object v10

    .line 231
    .local v10, "localeInfoSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 232
    .local v12, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-object v13, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-eqz v13, :cond_8f

    .line 233
    invoke-virtual {v12}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v13

    iget-object v14, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8f

    move v13, v8

    goto :goto_90

    :cond_8f
    move v13, v7

    .line 236
    .local v13, "isCurrentLocale":Z
    :goto_90
    iget-object v14, v0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    invoke-direct {v0, v12, v14}, Lcom/android/internal/app/AppLocaleCollector;->addSystemSuggestionFlag(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Set;)Z

    move-result v14

    .line 237
    .local v14, "existsInApp":Z
    iget-object v15, v0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    invoke-direct {v0, v12, v15}, Lcom/android/internal/app/AppLocaleCollector;->addSystemSuggestionFlag(Lcom/android/internal/app/LocaleStore$LocaleInfo;Ljava/util/Set;)Z

    move-result v15

    .line 238
    .local v15, "existsInIme":Z
    if-nez v13, :cond_a5

    if-nez v14, :cond_a5

    if-nez v15, :cond_a5

    .line 239
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    .end local v12    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_a5
    goto :goto_6d

    .line 245
    .end local v10    # "localeInfoSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    .end local v13    # "isCurrentLocale":Z
    .end local v14    # "existsInApp":Z
    .end local v15    # "existsInIme":Z
    :cond_a6
    const/4 v10, 0x0

    .line 246
    .local v10, "suggestedSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    if-eqz v5, :cond_b6

    .line 247
    iget-object v11, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {v0, v9, v11}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 249
    invoke-direct {v0, v4}, Lcom/android/internal/app/AppLocaleCollector;->getSuggestedLocales(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    .line 252
    :cond_b6
    if-nez p3, :cond_ec

    const-string v11, "android.app.language.suggestion.enhanced"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_ec

    .line 255
    iget-object v11, v0, Lcom/android/internal/app/AppLocaleCollector;->mAllAppActiveLocales:Ljava/util/Set;

    iget-object v12, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {v0, v11, v12}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object v11

    .line 257
    .local v11, "localeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    if-eqz v10, :cond_d2

    .line 260
    invoke-direct {v0, v11, v10}, Lcom/android/internal/app/AppLocaleCollector;->filterSameLanguageAndCountry(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    .line 262
    invoke-direct {v0, v11}, Lcom/android/internal/app/AppLocaleCollector;->addImeSuggestionFlag(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    .line 264
    :cond_d2
    invoke-interface {v4, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 265
    invoke-interface {v10, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 268
    iget-object v12, v0, Lcom/android/internal/app/AppLocaleCollector;->mImeLocales:Ljava/util/Set;

    iget-object v13, v2, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    invoke-direct {v0, v12, v13}, Lcom/android/internal/app/AppLocaleCollector;->filterSupportedLocales(Ljava/util/Set;Ljava/util/HashSet;)Ljava/util/Set;

    move-result-object v11

    .line 269
    if-eqz v10, :cond_e6

    .line 270
    invoke-direct {v0, v11, v10}, Lcom/android/internal/app/AppLocaleCollector;->filterSameLanguageAndCountry(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    .line 272
    :cond_e6
    invoke-interface {v4, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 273
    invoke-interface {v10, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 277
    .end local v11    # "localeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_ec
    if-nez p3, :cond_fc

    if-eqz v5, :cond_fc

    .line 278
    iget-object v11, v0, Lcom/android/internal/app/AppLocaleCollector;->mAppCurrentLocale:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    if-nez v11, :cond_f5

    move v7, v8

    :cond_f5
    invoke-static {v7}, Lcom/android/internal/app/LocaleStore;->getSystemDefaultLocaleInfo(Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_fc
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v7

    if-eqz v7, :cond_11a

    .line 283
    sget-object v7, Lcom/android/internal/app/AppLocaleCollector;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App locale list: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_11a
    return-object v4
.end method

.method public blacklist getSystemCurrentLocales()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-static {}, Lcom/android/internal/app/LocaleStore;->getSystemCurrentLocales()Ljava/util/Set;

    move-result-object v0

    .line 162
    .local v0, "sysLocales":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/internal/app/AppLocaleCollector$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 166
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    .line 165
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 162
    return-object v1
.end method

.method public blacklist getSystemSupportedLocale(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .registers 5
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 153
    .local p1, "langTagsToIgnore":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/internal/app/AppLocaleCollector;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/app/LocaleStore;->getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasSpecificPackageName()Z
    .registers 2

    .line 291
    const/4 v0, 0x1

    return v0
.end method
