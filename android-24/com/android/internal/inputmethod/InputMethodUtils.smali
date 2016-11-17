.class public Lcom/android/internal/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodUtils$1;,
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;,
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final ENGLISH_LOCALE:Ljava/util/Locale;

.field private static final INPUT_METHOD_SEPARATOR:C = ':'

.field private static final INPUT_METHOD_SUBTYPE_SEPARATOR:C = ';'

.field private static final LOCALE_EN_GB:Ljava/util/Locale;

.field private static final LOCALE_EN_US:Ljava/util/Locale;

.field public static final NOT_A_SUBTYPE_ID:I = -0x1

.field private static final NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

.field private static final SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

.field public static final SUBTYPE_MODE_ANY:Ljava/lang/String; = null

.field public static final SUBTYPE_MODE_KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final SUBTYPE_MODE_VOICE:Ljava/lang/String; = "voice"

.field private static final TAG:Ljava/lang/String; = "InputMethodUtils"

.field private static final TAG_ASCII_CAPABLE:Ljava/lang/String; = "AsciiCapable"

.field private static final TAG_ENABLED_WHEN_DEFAULT_IS_NOT_ASCII_CAPABLE:Ljava/lang/String; = "EnabledWhenDefaultIsNotAsciiCapable"

.field private static final sCacheLock:Ljava/lang/Object;

.field private static sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation
.end field

.field private static sCachedResult:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedSystemLocales:Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCacheLock"
    .end annotation
.end field

.field private static final sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 1
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 65
    new-instance v0, Ljava/util/Locale;

    #@2
    const-string/jumbo v1, "en"

    #@5
    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    #@a
    .line 66
    const/4 v0, -0x1

    #@b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    #@11
    .line 81
    const/4 v0, 0x3

    #@12
    new-array v0, v0, [Ljava/util/Locale;

    #@14
    .line 82
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@16
    const/4 v2, 0x0

    #@17
    aput-object v1, v0, v2

    #@19
    .line 83
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1b
    const/4 v2, 0x1

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 84
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    #@20
    const/4 v2, 0x2

    #@21
    aput-object v1, v0, v2

    #@23
    .line 81
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    #@25
    .line 90
    new-instance v0, Ljava/lang/Object;

    #@27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@2a
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    #@2c
    .line 503
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$1;

    #@2e
    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$1;-><init>()V

    #@31
    .line 502
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    #@33
    .line 1455
    new-instance v0, Ljava/util/Locale;

    #@35
    const-string/jumbo v1, "en"

    #@38
    const-string/jumbo v2, "US"

    #@3b
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3e
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    #@40
    .line 1456
    new-instance v0, Ljava/util/Locale;

    #@42
    const-string/jumbo v1, "en"

    #@45
    const-string/jumbo v2, "GB"

    #@48
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4b
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    #@4d
    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static buildInputMethodsAndSubtypesString(Landroid/util/ArrayMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 860
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@2
    const/4 v6, 0x4

    #@3
    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    .line 861
    .local v2, "imeMap":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v6

    #@a
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v6

    #@12
    if-eqz v6, :cond_1

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/util/Map$Entry;

    #@1a
    .line 862
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d
    move-result-object v3

    #@1e
    check-cast v3, Ljava/lang/String;

    #@20
    .line 863
    .local v3, "imeName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    check-cast v4, Landroid/util/ArraySet;

    #@26
    .line 864
    .local v4, "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    #@28
    const/4 v6, 0x2

    #@29
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    #@2c
    .line 865
    .local v5, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    #@2e
    .line 866
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@31
    .line 868
    :cond_0
    new-instance v6, Landroid/util/Pair;

    #@33
    invoke-direct {v6, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@36
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@39
    goto :goto_0

    #@3a
    .line 870
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "imeName":Ljava/lang/String;
    .end local v4    # "subtypeSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsSettingString(Ljava/util/List;)Ljava/lang/String;

    #@3d
    move-result-object v6

    #@3e
    return-object v6
.end method

.method public static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2
    .param p0, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 697
    if-nez p0, :cond_0

    #@3
    return v0

    #@4
    .line 698
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    const/4 v0, 0x0

    #@b
    :cond_1
    return v0
.end method

.method public static checkIfPackageBelongsToUid(Landroid/app/AppOpsManager;ILjava/lang/String;)Z
    .locals 2
    .param p0, "appOpsManager"    # Landroid/app/AppOpsManager;
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 814
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 815
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 816
    :catch_0
    move-exception v0

    #@6
    .line 817
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    #@7
    return v1
.end method

.method public static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 8
    .param p0, "localeStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 383
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 384
    return-object v7

    #@c
    .line 387
    :cond_0
    const-string/jumbo v1, "_"

    #@f
    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 388
    .local v0, "localeParams":[Ljava/lang/String;
    array-length v1, v0

    #@14
    if-lt v1, v4, :cond_1

    #@16
    const-string/jumbo v1, "tl"

    #@19
    aget-object v2, v0, v3

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 394
    const-string/jumbo v1, "fil"

    #@24
    aput-object v1, v0, v3

    #@26
    .line 398
    :cond_1
    array-length v1, v0

    #@27
    if-ne v1, v4, :cond_2

    #@29
    .line 399
    new-instance v1, Ljava/util/Locale;

    #@2b
    aget-object v2, v0, v3

    #@2d
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@30
    return-object v1

    #@31
    .line 400
    :cond_2
    array-length v1, v0

    #@32
    if-ne v1, v5, :cond_3

    #@34
    .line 401
    new-instance v1, Ljava/util/Locale;

    #@36
    aget-object v2, v0, v3

    #@38
    aget-object v3, v0, v4

    #@3a
    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3d
    return-object v1

    #@3e
    .line 402
    :cond_3
    array-length v1, v0

    #@3f
    if-ne v1, v6, :cond_4

    #@41
    .line 403
    new-instance v1, Ljava/util/Locale;

    #@43
    aget-object v2, v0, v3

    #@45
    aget-object v3, v0, v4

    #@47
    aget-object v4, v0, v5

    #@49
    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4c
    return-object v1

    #@4d
    .line 405
    :cond_4
    return-object v7
.end method

.method public static containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z
    .locals 7
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "checkCountry"    # Z
    .param p3, "mode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 410
    if-nez p1, :cond_0

    #@3
    .line 411
    return v6

    #@4
    .line 413
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@7
    move-result v0

    #@8
    .line 414
    .local v0, "N":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    #@b
    .line 415
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@e
    move-result-object v2

    #@f
    .line 416
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz p2, :cond_3

    #@11
    .line 417
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    #@14
    move-result-object v3

    #@15
    .line 418
    .local v3, "subtypeLocale":Ljava/util/Locale;
    if-eqz v3, :cond_4

    #@17
    .line 419
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@22
    move-result v4

    #@23
    if-eqz v4, :cond_4

    #@25
    .line 420
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@2c
    move-result-object v5

    #@2d
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_4

    #@33
    .line 430
    :cond_1
    sget-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    #@35
    if-eq p3, v4, :cond_2

    #@37
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_2

    #@3d
    .line 431
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@44
    move-result v4

    #@45
    .line 430
    if-eqz v4, :cond_4

    #@47
    .line 432
    :cond_2
    const/4 v4, 0x1

    #@48
    return v4

    #@49
    .line 424
    .end local v3    # "subtypeLocale":Ljava/util/Locale;
    :cond_3
    new-instance v3, Ljava/util/Locale;

    #@4b
    .line 425
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    .line 424
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@56
    .line 426
    .restart local v3    # "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    #@61
    move-result v4

    #@62
    if-nez v4, :cond_1

    #@64
    .line 414
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_0

    #@67
    .line 435
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "subtypeLocale":Ljava/util/Locale;
    :cond_5
    return v6
.end method

.method public static findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;
    .locals 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "canIgnoreLocaleAsLastResort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/view/inputmethod/InputMethodSubtype;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v10, 0x0

    #@1
    .line 648
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6
    move-result v9

    #@7
    if-nez v9, :cond_1

    #@9
    .line 649
    :cond_0
    return-object v10

    #@a
    .line 651
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v9

    #@e
    if-eqz v9, :cond_2

    #@10
    .line 652
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@13
    move-result-object v9

    #@14
    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@16
    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@19
    move-result-object p3

    #@1a
    .line 654
    :cond_2
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 655
    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    #@1f
    .line 656
    .local v5, "partialMatchFound":Z
    const/4 v1, 0x0

    #@20
    .line 657
    .local v1, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    #@21
    .line 658
    .local v2, "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@24
    move-result v0

    #@25
    .line 659
    .local v0, "N":I
    const/4 v3, 0x0

    #@26
    .end local v1    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    #@28
    .line 660
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    #@2e
    .line 661
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    .line 662
    .local v8, "subtypeLocale":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    .line 665
    .local v7, "subtypeLanguage":Ljava/lang/String;
    if-eqz p2, :cond_3

    #@38
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v9

    #@3c
    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    #@3e
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@41
    move-result-object v9

    #@42
    invoke-virtual {v9, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@45
    move-result v9

    #@46
    if-eqz v9, :cond_7

    #@48
    .line 666
    :cond_3
    if-nez v2, :cond_4

    #@4a
    .line 667
    move-object v2, v6

    #@4b
    .line 669
    :cond_4
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v9

    #@4f
    if-eqz v9, :cond_6

    #@51
    .line 671
    move-object v1, v6

    #@52
    .line 681
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeLanguage":Ljava/lang/String;
    .end local v8    # "subtypeLocale":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_8

    #@54
    if-eqz p4, :cond_8

    #@56
    .line 682
    return-object v2

    #@57
    .line 673
    .restart local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .restart local v7    # "subtypeLanguage":Ljava/lang/String;
    .restart local v8    # "subtypeLocale":Ljava/lang/String;
    :cond_6
    if-nez v5, :cond_7

    #@59
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v9

    #@5d
    if-eqz v9, :cond_7

    #@5f
    .line 675
    move-object v1, v6

    #@60
    .line 676
    .local v1, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v5, 0x1

    #@61
    .line 659
    .end local v1    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    #@63
    goto :goto_0

    #@64
    .line 693
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeLanguage":Ljava/lang/String;
    .end local v8    # "subtypeLocale":Ljava/lang/String;
    :cond_8
    return-object v1
.end method

.method public static getApiCallStack()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 105
    const-string/jumbo v0, ""

    #@3
    .line 107
    .local v0, "apiCallStack":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/RuntimeException;

    #@5
    invoke-direct {v5}, Ljava/lang/RuntimeException;-><init>()V

    #@8
    throw v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 108
    :catch_0
    move-exception v1

    #@a
    .line 109
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@d
    move-result-object v2

    #@e
    .line 110
    .local v2, "frames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x1

    #@f
    .local v3, "j":I
    :goto_0
    array-length v5, v2

    #@10
    if-ge v3, v5, :cond_1

    #@12
    .line 111
    aget-object v5, v2, v3

    #@14
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 112
    .local v4, "tempCallStack":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 114
    move-object v0, v4

    #@1f
    .line 110
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 115
    :cond_0
    const-string/jumbo v5, "Transact("

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@28
    move-result v5

    #@29
    if-gez v5, :cond_1

    #@2b
    .line 117
    move-object v0, v4

    #@2c
    goto :goto_1

    #@2d
    .line 123
    .end local v4    # "tempCallStack":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getDefaultEnabledImes(Landroid/content/Context;ZLjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSystemReady"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x1

    #@1
    .line 357
    invoke-static {p2, p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;

    #@4
    move-result-object v4

    #@5
    .line 358
    .local v4, "fallbackLocale":Ljava/util/Locale;
    if-nez p1, :cond_0

    #@7
    .line 363
    invoke-static {p2, p0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithoutSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@a
    move-result-object v0

    #@b
    .line 365
    sget-object v6, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    #@d
    move-object v1, p2

    #@e
    move-object v2, p0

    #@f
    move v5, v3

    #@10
    .line 363
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 374
    :cond_0
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    #@1c
    move-result-object v9

    #@1d
    .line 375
    .local v9, "systemLocale":Ljava/util/Locale;
    invoke-static {p2, p0, v9, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@20
    move-result-object v5

    #@21
    .line 377
    sget-object v11, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    #@23
    move-object v6, p2

    #@24
    move-object v7, p0

    #@25
    move v8, v3

    #@26
    move v10, v3

    #@27
    .line 375
    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p2, p0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillAuxiliaryImes(Ljava/util/ArrayList;Landroid/content/Context;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@2e
    move-result-object v0

    #@2f
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->build()Ljava/util/ArrayList;

    #@32
    move-result-object v0

    #@33
    return-object v0
.end method

.method public static getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Locale;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 154
    sget-object v8, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    #@4
    array-length v9, v8

    #@5
    move v7, v6

    #@6
    :goto_0
    if-ge v7, v9, :cond_2

    #@8
    aget-object v3, v8, v7

    #@a
    .line 155
    .local v3, "fallbackLocale":Ljava/util/Locale;
    const/4 v10, 0x0

    #@b
    .local v10, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v0

    #@f
    if-ge v10, v0, :cond_1

    #@11
    .line 156
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@17
    .line 158
    const-string/jumbo v5, "keyboard"

    #@1a
    move-object v1, p1

    #@1b
    move v4, v2

    #@1c
    .line 156
    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 159
    return-object v3

    #@23
    .line 155
    :cond_0
    add-int/lit8 v10, v10, 0x1

    #@25
    goto :goto_1

    #@26
    .line 154
    :cond_1
    add-int/lit8 v0, v7, 0x1

    #@28
    move v7, v0

    #@29
    goto :goto_0

    #@2a
    .line 165
    .end local v3    # "fallbackLocale":Ljava/util/Locale;
    .end local v10    # "i":I
    :cond_2
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    #@2c
    array-length v11, v1

    #@2d
    move v0, v6

    #@2e
    :goto_2
    if-ge v0, v11, :cond_5

    #@30
    aget-object v3, v1, v0

    #@32
    .line 166
    .restart local v3    # "fallbackLocale":Ljava/util/Locale;
    const/4 v10, 0x0

    #@33
    .restart local v10    # "i":I
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v4

    #@37
    if-ge v10, v4, :cond_4

    #@39
    .line 167
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    #@3f
    .line 169
    const-string/jumbo v9, "keyboard"

    #@42
    move-object v5, p1

    #@43
    move-object v7, v3

    #@44
    move v8, v2

    #@45
    .line 167
    invoke-static/range {v4 .. v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_3

    #@4b
    .line 170
    return-object v3

    #@4c
    .line 166
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@4e
    goto :goto_3

    #@4f
    .line 165
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_2

    #@52
    .line 174
    .end local v3    # "fallbackLocale":Ljava/util/Locale;
    .end local v10    # "i":I
    :cond_5
    const-string/jumbo v0, "InputMethodUtils"

    #@55
    new-instance v1, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v2, "Found no fallback locale. imis="

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@64
    move-result-object v2

    #@65
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@68
    move-result-object v2

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v1

    #@71
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@74
    .line 175
    const/4 v0, 0x0

    #@75
    return-object v0
.end method

.method public static getImeAndSubtypeDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    .line 793
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    .line 794
    .local v0, "imiLabel":Ljava/lang/CharSequence;
    if-eqz p2, :cond_0

    #@a
    .line 795
    const/4 v1, 0x2

    #@b
    new-array v2, v1, [Ljava/lang/CharSequence;

    #@d
    .line 796
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@14
    move-result-object v3

    #@15
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@17
    .line 795
    invoke-virtual {p2, p0, v1, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@1a
    move-result-object v1

    #@1b
    const/4 v3, 0x0

    #@1c
    aput-object v1, v2, v3

    #@1e
    .line 797
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 798
    const-string/jumbo v1, ""

    #@27
    .line 797
    :goto_0
    const/4 v3, 0x1

    #@28
    aput-object v1, v2, v3

    #@2a
    .line 795
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@2d
    move-result-object v0

    #@2e
    .line 794
    .end local v0    # "imiLabel":Ljava/lang/CharSequence;
    :cond_0
    return-object v0

    #@2f
    .line 798
    .restart local v0    # "imiLabel":Ljava/lang/CharSequence;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v3, " - "

    #@37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v1

    #@43
    goto :goto_0
.end method

.method public static getImplicitlyApplicableSubtypesLocked(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@7
    move-result-object v1

    #@8
    .line 515
    .local v1, "systemLocales":Landroid/os/LocaleList;
    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    #@a
    monitor-enter v3

    #@b
    .line 518
    :try_start_0
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    #@d
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_0

    #@13
    sget-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    #@15
    if-ne v2, p1, :cond_0

    #@17
    .line 519
    new-instance v2, Ljava/util/ArrayList;

    #@19
    sget-object v4, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;

    #@1b
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit v3

    #@1f
    return-object v2

    #@20
    :cond_0
    monitor-exit v3

    #@21
    .line 527
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@24
    move-result-object v0

    #@25
    .line 528
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->sCacheLock:Ljava/lang/Object;

    #@27
    monitor-enter v3

    #@28
    .line 530
    :try_start_1
    sput-object v1, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedSystemLocales:Landroid/os/LocaleList;

    #@2a
    .line 531
    sput-object p1, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedInputMethodInfo:Landroid/view/inputmethod/InputMethodInfo;

    #@2c
    .line 532
    new-instance v2, Ljava/util/ArrayList;

    #@2e
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@31
    sput-object v2, Lcom/android/internal/inputmethod/InputMethodUtils;->sCachedResult:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@33
    monitor-exit v3

    #@34
    .line 534
    return-object v0

    #@35
    .line 515
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_0
    move-exception v2

    #@36
    monitor-exit v3

    #@37
    throw v2

    #@38
    .line 528
    .restart local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_1
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2
.end method

.method private static getImplicitlyApplicableSubtypesLockedImpl(Landroid/content/res/Resources;Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 24
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 539
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@3
    move-result-object v19

    #@4
    .line 540
    .local v19, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v22

    #@8
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@b
    move-result-object v21

    #@c
    .line 541
    .local v21, "systemLocales":Landroid/os/LocaleList;
    const/16 v22, 0x0

    #@e
    invoke-virtual/range {v21 .. v22}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@11
    move-result-object v22

    #@12
    invoke-virtual/range {v22 .. v22}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@15
    move-result-object v20

    #@16
    .line 542
    .local v20, "systemLocale":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@19
    move-result v22

    #@1a
    if-eqz v22, :cond_0

    #@1c
    new-instance v22, Ljava/util/ArrayList;

    #@1e
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    #@21
    return-object v22

    #@22
    .line 543
    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    #@25
    move-result v15

    #@26
    .line 546
    .local v15, "numSubtypes":I
    new-instance v5, Ljava/util/HashMap;

    #@28
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@2b
    .line 547
    .local v5, "applicableModeAndSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v8, 0x0

    #@2c
    .local v8, "i":I
    :goto_0
    if-ge v8, v15, :cond_2

    #@2e
    .line 549
    move-object/from16 v0, v19

    #@30
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@33
    move-result-object v16

    #@34
    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    #@36
    .line 550
    .local v16, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@39
    move-result v22

    #@3a
    if-eqz v22, :cond_1

    #@3c
    .line 551
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@3f
    move-result-object v11

    #@40
    .line 552
    .local v11, "mode":Ljava/lang/String;
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@43
    move-result v22

    #@44
    if-nez v22, :cond_1

    #@46
    .line 553
    move-object/from16 v0, v16

    #@48
    invoke-virtual {v5, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 547
    .end local v11    # "mode":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    #@4d
    goto :goto_0

    #@4e
    .line 557
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    #@51
    move-result v22

    #@52
    if-lez v22, :cond_3

    #@54
    .line 558
    new-instance v22, Ljava/util/ArrayList;

    #@56
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@59
    move-result-object v23

    #@5a
    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@5d
    return-object v22

    #@5e
    .line 562
    :cond_3
    new-instance v12, Ljava/util/HashMap;

    #@60
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    #@63
    .line 563
    .local v12, "nonKeyboardSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    #@65
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@68
    .line 565
    .local v9, "keyboardSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    const/4 v8, 0x0

    #@69
    :goto_1
    if-ge v8, v15, :cond_6

    #@6b
    .line 566
    move-object/from16 v0, v19

    #@6d
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@70
    move-result-object v16

    #@71
    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    #@73
    .line 567
    .restart local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@76
    move-result-object v11

    #@77
    .line 568
    .restart local v11    # "mode":Ljava/lang/String;
    const-string/jumbo v22, "keyboard"

    #@7a
    move-object/from16 v0, v22

    #@7c
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7f
    move-result v22

    #@80
    if-eqz v22, :cond_4

    #@82
    .line 569
    move-object/from16 v0, v16

    #@84
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@87
    .line 565
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@89
    goto :goto_1

    #@8a
    .line 571
    :cond_4
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@8d
    move-result v22

    #@8e
    if-nez v22, :cond_5

    #@90
    .line 572
    new-instance v22, Ljava/util/ArrayList;

    #@92
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    #@95
    move-object/from16 v0, v22

    #@97
    invoke-virtual {v12, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9a
    .line 574
    :cond_5
    invoke-virtual {v12, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9d
    move-result-object v22

    #@9e
    check-cast v22, Ljava/util/ArrayList;

    #@a0
    move-object/from16 v0, v22

    #@a2
    move-object/from16 v1, v16

    #@a4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a7
    goto :goto_2

    #@a8
    .line 578
    .end local v11    # "mode":Ljava/lang/String;
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    #@aa
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@ad
    .line 579
    .local v6, "applicableSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v22, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    #@af
    move-object/from16 v0, v22

    #@b1
    move-object/from16 v1, v21

    #@b3
    invoke-static {v9, v0, v1, v6}, Lcom/android/internal/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    #@b6
    .line 582
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    #@b9
    move-result v22

    #@ba
    if-nez v22, :cond_a

    #@bc
    .line 583
    const/4 v7, 0x0

    #@bd
    .line 584
    .local v7, "hasAsciiCapableKeyboard":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@c0
    move-result v13

    #@c1
    .line 585
    .local v13, "numApplicationSubtypes":I
    const/4 v8, 0x0

    #@c2
    :goto_3
    if-ge v8, v13, :cond_7

    #@c4
    .line 586
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c7
    move-result-object v16

    #@c8
    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    #@ca
    .line 587
    .restart local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string/jumbo v22, "AsciiCapable"

    #@cd
    move-object/from16 v0, v16

    #@cf
    move-object/from16 v1, v22

    #@d1
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    #@d4
    move-result v22

    #@d5
    if-eqz v22, :cond_9

    #@d7
    .line 588
    const/4 v7, 0x1

    #@d8
    .line 592
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    if-nez v7, :cond_a

    #@da
    .line 593
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@dd
    move-result v14

    #@de
    .line 594
    .local v14, "numKeyboardSubtypes":I
    const/4 v8, 0x0

    #@df
    :goto_4
    if-ge v8, v14, :cond_a

    #@e1
    .line 595
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e4
    move-result-object v16

    #@e5
    check-cast v16, Landroid/view/inputmethod/InputMethodSubtype;

    #@e7
    .line 596
    .restart local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@ea
    move-result-object v11

    #@eb
    .line 597
    .restart local v11    # "mode":Ljava/lang/String;
    const-string/jumbo v22, "keyboard"

    #@ee
    move-object/from16 v0, v22

    #@f0
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f3
    move-result v22

    #@f4
    if-eqz v22, :cond_8

    #@f6
    .line 598
    const-string/jumbo v22, "EnabledWhenDefaultIsNotAsciiCapable"

    #@f9
    .line 597
    move-object/from16 v0, v16

    #@fb
    move-object/from16 v1, v22

    #@fd
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    #@100
    move-result v22

    #@101
    if-eqz v22, :cond_8

    #@103
    .line 599
    move-object/from16 v0, v16

    #@105
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@108
    .line 594
    :cond_8
    add-int/lit8 v8, v8, 0x1

    #@10a
    goto :goto_4

    #@10b
    .line 585
    .end local v11    # "mode":Ljava/lang/String;
    .end local v14    # "numKeyboardSubtypes":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    #@10d
    goto :goto_3

    #@10e
    .line 605
    .end local v7    # "hasAsciiCapableKeyboard":Z
    .end local v13    # "numApplicationSubtypes":I
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    #@111
    move-result v22

    #@112
    if-eqz v22, :cond_b

    #@114
    .line 607
    const-string/jumbo v22, "keyboard"

    #@117
    const/16 v23, 0x1

    #@119
    .line 606
    move-object/from16 v0, p0

    #@11b
    move-object/from16 v1, v19

    #@11d
    move-object/from16 v2, v22

    #@11f
    move-object/from16 v3, v20

    #@121
    move/from16 v4, v23

    #@123
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@126
    move-result-object v10

    #@127
    .line 608
    .local v10, "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v10, :cond_b

    #@129
    .line 609
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@12c
    .line 614
    .end local v10    # "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_b
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@12f
    move-result-object v22

    #@130
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@133
    move-result-object v18

    #@134
    .local v18, "subtypeList$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    #@137
    move-result v22

    #@138
    if-eqz v22, :cond_c

    #@13a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13d
    move-result-object v17

    #@13e
    check-cast v17, Ljava/util/ArrayList;

    #@140
    .line 615
    .local v17, "subtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    sget-object v22, Lcom/android/internal/inputmethod/InputMethodUtils;->sSubtypeToLocale:Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;

    #@142
    move-object/from16 v0, v17

    #@144
    move-object/from16 v1, v22

    #@146
    move-object/from16 v2, v21

    #@148
    invoke-static {v0, v1, v2, v6}, Lcom/android/internal/inputmethod/LocaleUtils;->filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V

    #@14b
    goto :goto_5

    #@14c
    .line 619
    .end local v17    # "subtypeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_c
    return-object v6
.end method

.method public static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 627
    const/16 v1, 0x5f

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 628
    .local v0, "idx":I
    if-gez v0, :cond_0

    #@9
    .line 629
    return-object p0

    #@a
    .line 631
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method private static getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemLocale"    # Ljava/util/Locale;
    .param p3, "fallbackLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v7, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    .line 319
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;)V

    #@8
    .line 321
    .local v0, "builder":Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    const-string/jumbo v6, "keyboard"

    #@b
    move-object v1, p0

    #@c
    move-object v2, p1

    #@d
    move-object v4, p2

    #@e
    move v5, v3

    #@f
    .line 320
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@12
    .line 322
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 323
    return-object v0

    #@19
    .line 326
    :cond_0
    const-string/jumbo v6, "keyboard"

    #@1c
    move-object v1, p0

    #@1d
    move-object v2, p1

    #@1e
    move-object v4, p2

    #@1f
    move v5, v7

    #@20
    .line 325
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@23
    .line 327
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_1

    #@29
    .line 328
    return-object v0

    #@2a
    .line 331
    :cond_1
    const-string/jumbo v6, "keyboard"

    #@2d
    move-object v1, p0

    #@2e
    move-object v2, p1

    #@2f
    move-object v4, p3

    #@30
    move v5, v3

    #@31
    .line 330
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@34
    .line 332
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_2

    #@3a
    .line 333
    return-object v0

    #@3b
    .line 336
    :cond_2
    const-string/jumbo v6, "keyboard"

    #@3e
    move-object v1, p0

    #@3f
    move-object v2, p1

    #@40
    move-object v4, p3

    #@41
    move v5, v7

    #@42
    .line 335
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@45
    .line 337
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@48
    move-result v1

    #@49
    if-nez v1, :cond_3

    #@4b
    .line 338
    return-object v0

    #@4c
    .line 341
    :cond_3
    const-string/jumbo v10, "keyboard"

    #@4f
    move-object v4, v0

    #@50
    move-object v5, p0

    #@51
    move-object v6, p1

    #@52
    move-object v8, p3

    #@53
    move v9, v3

    #@54
    .line 340
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@57
    .line 342
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@5a
    move-result v1

    #@5b
    if-nez v1, :cond_4

    #@5d
    .line 343
    return-object v0

    #@5e
    .line 346
    :cond_4
    const-string/jumbo v6, "keyboard"

    #@61
    move-object v1, p0

    #@62
    move-object v2, p1

    #@63
    move v3, v7

    #@64
    move-object v4, p3

    #@65
    move v5, v7

    #@66
    .line 345
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@69
    .line 347
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@6c
    move-result v1

    #@6d
    if-nez v1, :cond_5

    #@6f
    .line 348
    return-object v0

    #@70
    .line 350
    :cond_5
    const-string/jumbo v1, "InputMethodUtils"

    #@73
    new-instance v2, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v3, "No software keyboard is found. imis="

    #@7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@82
    move-result-object v3

    #@83
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@86
    move-result-object v3

    #@87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    .line 351
    const-string/jumbo v3, " systemLocale="

    #@8e
    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v2

    #@96
    .line 351
    const-string/jumbo v3, " fallbackLocale="

    #@99
    .line 350
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a8
    .line 352
    return-object v0
.end method

.method private static getMinimumKeyboardSetWithoutSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fallbackLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            ")",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "imis":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v3, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 280
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;)V

    #@8
    .line 282
    .local v0, "builder":Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;
    const-string/jumbo v6, "keyboard"

    #@b
    move-object v1, p0

    #@c
    move-object v2, p1

    #@d
    move-object v4, p2

    #@e
    move v5, v3

    #@f
    .line 281
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@12
    .line 283
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 284
    return-object v0

    #@19
    .line 287
    :cond_0
    const-string/jumbo v10, "keyboard"

    #@1c
    move-object v4, v0

    #@1d
    move-object v5, p0

    #@1e
    move-object v6, p1

    #@1f
    move-object v8, p2

    #@20
    move v9, v3

    #@21
    .line 286
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@24
    .line 288
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_1

    #@2a
    .line 289
    return-object v0

    #@2b
    .line 292
    :cond_1
    const-string/jumbo v6, "keyboard"

    #@2e
    move-object v1, p0

    #@2f
    move-object v2, p1

    #@30
    move-object v4, p2

    #@31
    move v5, v7

    #@32
    .line 291
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@35
    .line 293
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_2

    #@3b
    .line 294
    return-object v0

    #@3c
    .line 297
    :cond_2
    const-string/jumbo v6, "keyboard"

    #@3f
    move-object v1, p0

    #@40
    move-object v2, p1

    #@41
    move v3, v7

    #@42
    move-object v4, p2

    #@43
    move v5, v7

    #@44
    .line 296
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@47
    .line 298
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@4a
    move-result v1

    #@4b
    if-nez v1, :cond_3

    #@4d
    .line 299
    return-object v0

    #@4e
    .line 301
    :cond_3
    const-string/jumbo v1, "InputMethodUtils"

    #@51
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v3, "No software keyboard is found. imis="

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    invoke-virtual {p0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    #@60
    move-result-object v3

    #@61
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@64
    move-result-object v3

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    .line 302
    const-string/jumbo v3, " fallbackLocale="

    #@6c
    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v2

    #@74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v2

    #@78
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7b
    .line 303
    return-object v0
.end method

.method public static getMostApplicableDefaultIME(Ljava/util/List;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)",
            "Landroid/view/inputmethod/InputMethodInfo;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "enabledImes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 461
    if-eqz p0, :cond_0

    #@4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 462
    :cond_0
    return-object v4

    #@b
    .line 465
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@e
    move-result v1

    #@f
    .line 466
    .local v1, "i":I
    const/4 v0, -0x1

    #@10
    .line 467
    .local v0, "firstFoundSystemIme":I
    :cond_2
    :goto_0
    if-lez v1, :cond_4

    #@12
    .line 468
    add-int/lit8 v1, v1, -0x1

    #@14
    .line 469
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@1a
    .line 470
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_2

    #@20
    .line 473
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_3

    #@26
    .line 474
    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    #@28
    .line 475
    const-string/jumbo v4, "keyboard"

    #@2b
    .line 474
    invoke-static {v2, v3, v5, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    #@2e
    move-result v3

    #@2f
    .line 473
    if-eqz v3, :cond_3

    #@31
    .line 476
    return-object v2

    #@32
    .line 478
    :cond_3
    if-gez v0, :cond_2

    #@34
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 479
    move v0, v1

    #@3b
    goto :goto_0

    #@3c
    .line 482
    .end local v2    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v3

    #@40
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v3

    #@44
    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    #@46
    return-object v3
.end method

.method public static getOverridingImplicitlyEnabledSubtypes(Landroid/view/inputmethod/InputMethodInfo;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 449
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 450
    .local v3, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@8
    move-result v2

    #@9
    .line 451
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@c
    .line 452
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@f
    move-result-object v1

    #@10
    .line 453
    .local v1, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_0

    #@16
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_0

    #@20
    .line 454
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 451
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 457
    .end local v1    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    return-object v3
.end method

.method public static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    #@0
    .prologue
    .line 490
    if-eqz p0, :cond_1

    #@2
    .line 491
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@5
    move-result v2

    #@6
    .line 492
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 493
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@c
    move-result-object v1

    #@d
    .line 494
    .local v1, "ims":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@10
    move-result v3

    #@11
    if-ne p1, v3, :cond_0

    #@13
    .line 495
    return v0

    #@14
    .line 492
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 499
    .end local v0    # "i":I
    .end local v1    # "ims":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "subtypeCount":I
    :cond_1
    const/4 v3, -0x1

    #@18
    return v3
.end method

.method public static getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 439
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 440
    .local v2, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@8
    move-result v1

    #@9
    .line 441
    .local v1, "subtypeCount":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 442
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 441
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 444
    :cond_0
    return-object v2
.end method

.method public static getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "systemLocale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1499
    if-eqz p0, :cond_a

    #@2
    .line 1500
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    .line 1501
    .local v4, "language":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v10

    #@a
    if-eqz v10, :cond_4

    #@c
    const/4 v2, 0x0

    #@d
    .line 1502
    .local v2, "hasLanguage":Z
    :goto_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 1503
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v10

    #@15
    if-eqz v10, :cond_5

    #@17
    const/4 v1, 0x0

    #@18
    .line 1504
    .local v1, "hasCountry":Z
    :goto_1
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    .line 1505
    .local v9, "variant":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v10

    #@20
    if-eqz v10, :cond_6

    #@22
    const/4 v3, 0x0

    #@23
    .line 1506
    .local v3, "hasVariant":Z
    :goto_2
    if-eqz v2, :cond_7

    #@25
    if-eqz v1, :cond_7

    #@27
    if-eqz v3, :cond_7

    #@29
    .line 1507
    new-instance v8, Ljava/util/Locale;

    #@2b
    invoke-direct {v8, v4, v0, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 1511
    :goto_3
    if-eqz v2, :cond_8

    #@30
    if-eqz v1, :cond_8

    #@32
    .line 1512
    new-instance v7, Ljava/util/Locale;

    #@34
    invoke-direct {v7, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 1516
    :goto_4
    if-eqz v2, :cond_9

    #@39
    .line 1517
    new-instance v6, Ljava/util/Locale;

    #@3b
    invoke-direct {v6, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@3e
    .line 1527
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "hasCountry":Z
    .end local v2    # "hasLanguage":Z
    .end local v3    # "hasVariant":Z
    .end local v4    # "language":Ljava/lang/String;
    .end local v9    # "variant":Ljava/lang/String;
    :goto_5
    new-instance v5, Ljava/util/ArrayList;

    #@40
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@43
    .line 1528
    .local v5, "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    if-eqz v8, :cond_0

    #@45
    .line 1529
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    .line 1532
    :cond_0
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@4a
    invoke-virtual {v10, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v10

    #@4e
    if-eqz v10, :cond_c

    #@50
    .line 1533
    if-eqz v7, :cond_b

    #@52
    .line 1540
    if-eqz v7, :cond_1

    #@54
    .line 1541
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@57
    .line 1543
    :cond_1
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    #@59
    invoke-virtual {v10, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v10

    #@5d
    if-nez v10, :cond_2

    #@5f
    .line 1544
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    #@61
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    .line 1546
    :cond_2
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    #@66
    invoke-virtual {v10, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v10

    #@6a
    if-nez v10, :cond_3

    #@6c
    .line 1547
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    #@6e
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@71
    .line 1549
    :cond_3
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@73
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@76
    .line 1577
    :goto_6
    return-object v5

    #@77
    .line 1501
    .end local v5    # "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    .restart local v4    # "language":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    #@78
    .restart local v2    # "hasLanguage":Z
    goto :goto_0

    #@79
    .line 1503
    .restart local v0    # "country":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    #@7a
    .restart local v1    # "hasCountry":Z
    goto :goto_1

    #@7b
    .line 1505
    .restart local v9    # "variant":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x1

    #@7c
    .restart local v3    # "hasVariant":Z
    goto :goto_2

    #@7d
    .line 1509
    :cond_7
    const/4 v8, 0x0

    #@7e
    .local v8, "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    goto :goto_3

    #@7f
    .line 1514
    .end local v8    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    :cond_8
    const/4 v7, 0x0

    #@80
    .local v7, "systemLocaleLanguageCountry":Ljava/util/Locale;
    goto :goto_4

    #@81
    .line 1519
    .end local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    :cond_9
    const/4 v6, 0x0

    #@82
    .local v6, "systemLocaleLanguage":Ljava/util/Locale;
    goto :goto_5

    #@83
    .line 1522
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "hasCountry":Z
    .end local v2    # "hasLanguage":Z
    .end local v3    # "hasVariant":Z
    .end local v4    # "language":Ljava/lang/String;
    .end local v6    # "systemLocaleLanguage":Ljava/util/Locale;
    .end local v9    # "variant":Ljava/lang/String;
    :cond_a
    const/4 v8, 0x0

    #@84
    .line 1523
    .restart local v8    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    const/4 v7, 0x0

    #@85
    .line 1524
    .restart local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    const/4 v6, 0x0

    #@86
    .restart local v6    # "systemLocaleLanguage":Ljava/util/Locale;
    goto :goto_5

    #@87
    .line 1556
    .end local v6    # "systemLocaleLanguage":Ljava/util/Locale;
    .end local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    .end local v8    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    .restart local v5    # "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    :cond_b
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@89
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8c
    .line 1557
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    #@8e
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@91
    .line 1558
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    #@93
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@96
    goto :goto_6

    #@97
    .line 1567
    :cond_c
    if-eqz v7, :cond_d

    #@99
    .line 1568
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9c
    .line 1570
    :cond_d
    if-eqz v6, :cond_e

    #@9e
    .line 1571
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a1
    .line 1573
    :cond_e
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    #@a3
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a6
    .line 1574
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    #@a8
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ab
    .line 1575
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@ad
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b0
    goto :goto_6
.end method

.method public static getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 201
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v1

    #@8
    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    return-object v1

    #@b
    .line 202
    :catch_0
    move-exception v0

    #@c
    .line 203
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    #@d
    return-object v1
.end method

.method private static isSystemAuxilialyImeThatHasAutomaticSubtype(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;Z)Z
    .locals 5
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 180
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 181
    return v4

    #@8
    .line 183
    :cond_0
    if-eqz p2, :cond_1

    #@a
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_2

    #@10
    .line 186
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_3

    #@16
    .line 187
    return v4

    #@17
    .line 184
    :cond_2
    return v4

    #@18
    .line 189
    :cond_3
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@1b
    move-result v2

    #@1c
    .line 190
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_5

    #@1f
    .line 191
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@22
    move-result-object v1

    #@23
    .line 192
    .local v1, "s":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_4

    #@29
    .line 193
    const/4 v3, 0x1

    #@2a
    return v3

    #@2b
    .line 190
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 196
    .end local v1    # "s":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    return v4
.end method

.method public static isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 2
    .param p0, "inputMethod"    # Landroid/view/inputmethod/InputMethodInfo;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 128
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@4
    move-result-object v1

    #@5
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    #@9
    and-int/lit8 v1, v1, 0x1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checkDefaultAttribute"    # Z
    .param p3, "requiredLocale"    # Ljava/util/Locale;
    .param p4, "checkCountry"    # Z
    .param p5, "requiredSubtypeMode"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 136
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 137
    return v1

    #@8
    .line 139
    :cond_0
    if-eqz p2, :cond_1

    #@a
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 142
    :cond_1
    invoke-static {p0, p3, p4, p5}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_3

    #@16
    .line 143
    return v1

    #@17
    .line 140
    :cond_2
    return v1

    #@18
    .line 145
    :cond_3
    const/4 v0, 0x1

    #@19
    return v0
.end method

.method public static isValidSubtypeId(Landroid/view/inputmethod/InputMethodInfo;I)Z
    .locals 2
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    #@0
    .prologue
    .line 486
    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    #@3
    move-result v0

    #@4
    const/4 v1, -0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public static parseInputMethodsAndSubtypesString(Ljava/lang/String;)Landroid/util/ArrayMap;
    .locals 8
    .param p0, "inputMethodsAndSubtypesString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 831
    new-instance v3, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 832
    .local v3, "imeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v7

    #@9
    if-eqz v7, :cond_0

    #@b
    .line 833
    return-object v3

    #@c
    .line 837
    :cond_0
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    #@e
    const/16 v7, 0x3a

    #@10
    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@13
    .line 839
    .local v6, "typeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    #@15
    const/16 v7, 0x3b

    #@17
    invoke-direct {v4, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    #@1a
    .line 842
    .local v4, "subtypeSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static {p0, v6, v4}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->buildInputMethodsAndSubtypeList(Ljava/lang/String;Landroid/text/TextUtils$SimpleStringSplitter;Landroid/text/TextUtils$SimpleStringSplitter;)Ljava/util/List;

    #@1d
    move-result-object v0

    #@1e
    .line 845
    .local v0, "allImeSettings":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    .local v2, "ime$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v7

    #@26
    if-eqz v7, :cond_2

    #@28
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Landroid/util/Pair;

    #@2e
    .line 846
    .local v1, "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v5, Landroid/util/ArraySet;

    #@30
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    #@33
    .line 847
    .local v5, "subtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@35
    if-eqz v7, :cond_1

    #@37
    .line 848
    iget-object v7, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@39
    check-cast v7, Ljava/util/Collection;

    #@3b
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    #@3e
    .line 850
    :cond_1
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@40
    check-cast v7, Ljava/lang/String;

    #@42
    invoke-virtual {v3, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    goto :goto_0

    #@46
    .line 852
    .end local v1    # "ime":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v5    # "subtypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method private static setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 764
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v7

    #@4
    .line 770
    .local v7, "state":I
    if-eqz v7, :cond_0

    #@6
    .line 771
    const/4 v0, 0x1

    #@7
    if-ne v7, v0, :cond_1

    #@9
    .line 777
    :cond_0
    const/4 v2, 0x4

    #@a
    .line 778
    const/4 v3, 0x0

    #@b
    move-object v0, p0

    #@c
    move-object v1, p1

    #@d
    move v4, p2

    #@e
    move-object v5, p3

    #@f
    .line 776
    :try_start_1
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@12
    .line 761
    :cond_1
    return-void

    #@13
    .line 765
    .end local v7    # "state":I
    :catch_0
    move-exception v6

    #@14
    .line 766
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "InputMethodUtils"

    #@17
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "getApplicationEnabledSetting failed. packageName="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 767
    const-string/jumbo v2, " userId="

    #@2a
    .line 766
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    .line 768
    return-void

    #@3a
    .line 779
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v7    # "state":I
    :catch_1
    move-exception v6

    #@3b
    .line 780
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "InputMethodUtils"

    #@3e
    new-instance v1, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v2, "setApplicationEnabledSetting failed. packageName="

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 781
    const-string/jumbo v2, " userId="

    #@51
    .line 780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 781
    const-string/jumbo v2, " callingPackage="

    #@5c
    .line 780
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b
    .line 782
    return-void
.end method

.method public static setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/util/List;ILjava/lang/String;)V
    .locals 17
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/IPackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 707
    .local p1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v12

    #@4
    .line 708
    const v13, 0x1070037

    #@7
    .line 707
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@a
    move-result-object v11

    #@b
    .line 709
    .local v11, "systemImesDisabledUntilUsed":[Ljava/lang/String;
    if-eqz v11, :cond_0

    #@d
    array-length v12, v11

    #@e
    if-nez v12, :cond_1

    #@10
    .line 710
    :cond_0
    return-void

    #@11
    .line 714
    :cond_1
    invoke-static {}, Landroid/view/textservice/TextServicesManager;->getInstance()Landroid/view/textservice/TextServicesManager;

    #@14
    move-result-object v12

    #@15
    invoke-virtual {v12}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    #@18
    move-result-object v4

    #@19
    .line 715
    .local v4, "currentSpellChecker":Landroid/view/textservice/SpellCheckerInfo;
    const/4 v12, 0x0

    #@1a
    array-length v13, v11

    #@1b
    :goto_0
    if-ge v12, v13, :cond_8

    #@1d
    aget-object v10, v11, v12

    #@1f
    .line 719
    .local v10, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    #@20
    .line 720
    .local v6, "enabledIme":Z
    const/4 v9, 0x0

    #@21
    .local v9, "j":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@24
    move-result v14

    #@25
    if-ge v9, v14, :cond_2

    #@27
    .line 721
    move-object/from16 v0, p1

    #@29
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    #@2f
    .line 722
    .local v7, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    #@32
    move-result-object v14

    #@33
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v14

    #@37
    if-eqz v14, :cond_4

    #@39
    .line 723
    const/4 v6, 0x1

    #@3a
    .line 727
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    if-eqz v6, :cond_5

    #@3c
    .line 715
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 720
    .restart local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    #@41
    goto :goto_1

    #@42
    .line 731
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    if-eqz v4, :cond_6

    #@44
    .line 732
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    #@47
    move-result-object v14

    #@48
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v14

    #@4c
    .line 731
    if-nez v14, :cond_3

    #@4e
    .line 739
    :cond_6
    const/4 v3, 0x0

    #@4f
    .line 742
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    const v14, 0x8000

    #@52
    .line 741
    :try_start_0
    move-object/from16 v0, p0

    #@54
    move/from16 v1, p2

    #@56
    invoke-interface {v0, v10, v14, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@59
    move-result-object v3

    #@5a
    .line 748
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_3

    #@5c
    .line 752
    iget v14, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5e
    and-int/lit8 v14, v14, 0x1

    #@60
    if-eqz v14, :cond_7

    #@62
    const/4 v8, 0x1

    #@63
    .line 753
    .local v8, "isSystemPackage":Z
    :goto_3
    if-eqz v8, :cond_3

    #@65
    .line 756
    move-object/from16 v0, p0

    #@67
    move/from16 v1, p2

    #@69
    move-object/from16 v2, p3

    #@6b
    invoke-static {v0, v10, v1, v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V

    #@6e
    goto :goto_2

    #@6f
    .line 743
    .end local v8    # "isSystemPackage":Z
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    #@70
    .line 744
    .local v5, "e":Landroid/os/RemoteException;
    const-string/jumbo v14, "InputMethodUtils"

    #@73
    new-instance v15, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v16, "getApplicationInfo failed. packageName="

    #@7b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v15

    #@7f
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v15

    #@83
    .line 745
    const-string/jumbo v16, " userId="

    #@86
    .line 744
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v15

    #@8a
    move/from16 v0, p2

    #@8c
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v15

    #@90
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v15

    #@94
    invoke-static {v14, v15, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@97
    goto :goto_2

    #@98
    .line 752
    .end local v5    # "e":Landroid/os/RemoteException;
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_7
    const/4 v8, 0x0

    #@99
    goto :goto_3

    #@9a
    .line 703
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "enabledIme":Z
    .end local v9    # "j":I
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_8
    return-void
.end method
