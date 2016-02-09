.class public Lcom/android/internal/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;,
        Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final ENGLISH_LOCALE:Ljava/util/Locale;

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
    .line 59
    new-instance v0, Ljava/util/Locale;

    #@2
    const-string/jumbo v1, "en"

    #@5
    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    #@a
    .line 60
    const/4 v0, -0x1

    #@b
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->NOT_A_SUBTYPE_ID_STR:Ljava/lang/String;

    #@11
    .line 70
    const/4 v0, 0x3

    #@12
    new-array v0, v0, [Ljava/util/Locale;

    #@14
    .line 71
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@16
    const/4 v2, 0x0

    #@17
    aput-object v1, v0, v2

    #@19
    .line 72
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1b
    const/4 v2, 0x1

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 73
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    #@20
    const/4 v2, 0x2

    #@21
    aput-object v1, v0, v2

    #@23
    .line 70
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->SEARCH_ORDER_OF_FALLBACK_LOCALES:[Ljava/util/Locale;

    #@25
    .line 1308
    new-instance v0, Ljava/util/Locale;

    #@27
    const-string/jumbo v1, "en"

    #@2a
    const-string/jumbo v2, "US"

    #@2d
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    #@32
    .line 1309
    new-instance v0, Ljava/util/Locale;

    #@34
    const-string/jumbo v1, "en"

    #@37
    const-string/jumbo v2, "GB"

    #@3a
    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@3d
    sput-object v0, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    #@3f
    .line 52
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static canAddToLastInputMethod(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .locals 2
    .param p0, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 645
    if-nez p0, :cond_0

    #@3
    return v0

    #@4
    .line 646
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
    .line 762
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 763
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 764
    :catch_0
    move-exception v0

    #@6
    .line 765
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    #@7
    return v1
.end method

.method public static constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 7
    .param p0, "localeStr"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v2, 0x3

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 375
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 376
    return-object v6

    #@c
    .line 379
    :cond_0
    const-string/jumbo v1, "_"

    #@f
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    .line 382
    .local v0, "localeParams":[Ljava/lang/String;
    array-length v1, v0

    #@14
    if-ne v1, v4, :cond_2

    #@16
    .line 383
    array-length v1, v0

    #@17
    if-lt v1, v4, :cond_1

    #@19
    const-string/jumbo v1, "tl"

    #@1c
    aget-object v2, v0, v3

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 389
    const-string/jumbo v1, "fil"

    #@27
    aput-object v1, v0, v3

    #@29
    .line 391
    :cond_1
    new-instance v1, Ljava/util/Locale;

    #@2b
    aget-object v2, v0, v3

    #@2d
    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@30
    return-object v1

    #@31
    .line 392
    :cond_2
    array-length v1, v0

    #@32
    if-ne v1, v5, :cond_3

    #@34
    .line 393
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
    .line 394
    :cond_3
    array-length v1, v0

    #@3f
    if-ne v1, v2, :cond_4

    #@41
    .line 395
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
    .line 397
    :cond_4
    return-object v6
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
    .line 402
    if-nez p1, :cond_0

    #@3
    .line 403
    return v6

    #@4
    .line 405
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@7
    move-result v0

    #@8
    .line 406
    .local v0, "N":I
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    #@b
    .line 407
    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@e
    move-result-object v2

    #@f
    .line 408
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz p2, :cond_3

    #@11
    .line 409
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocaleObject()Ljava/util/Locale;

    #@14
    move-result-object v3

    #@15
    .line 410
    .local v3, "subtypeLocale":Ljava/util/Locale;
    if-eqz v3, :cond_4

    #@17
    .line 411
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
    .line 412
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
    .line 422
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
    .line 423
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@44
    move-result v4

    #@45
    .line 422
    if-eqz v4, :cond_4

    #@47
    .line 424
    :cond_2
    const/4 v4, 0x1

    #@48
    return v4

    #@49
    .line 416
    .end local v3    # "subtypeLocale":Ljava/util/Locale;
    :cond_3
    new-instance v3, Ljava/util/Locale;

    #@4b
    .line 417
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    .line 416
    invoke-static {v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@56
    .line 418
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
    .line 406
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@66
    goto :goto_0

    #@67
    .line 427
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
    .line 596
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@6
    move-result v9

    #@7
    if-nez v9, :cond_1

    #@9
    .line 597
    :cond_0
    return-object v10

    #@a
    .line 599
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v9

    #@e
    if-eqz v9, :cond_2

    #@10
    .line 600
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
    .line 602
    :cond_2
    invoke-static {p3}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    .line 603
    .local v4, "language":Ljava/lang/String;
    const/4 v5, 0x0

    #@1f
    .line 604
    .local v5, "partialMatchFound":Z
    const/4 v1, 0x0

    #@20
    .line 605
    .local v1, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v2, 0x0

    #@21
    .line 606
    .local v2, "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@24
    move-result v0

    #@25
    .line 607
    .local v0, "N":I
    const/4 v3, 0x0

    #@26
    .end local v1    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v2    # "firstMatchedModeSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_5

    #@28
    .line 608
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    #@2e
    .line 609
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@31
    move-result-object v8

    #@32
    .line 610
    .local v8, "subtypeLocale":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    .line 613
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
    .line 614
    :cond_3
    if-nez v2, :cond_4

    #@4a
    .line 615
    move-object v2, v6

    #@4b
    .line 617
    :cond_4
    invoke-virtual {p3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v9

    #@4f
    if-eqz v9, :cond_6

    #@51
    .line 619
    move-object v1, v6

    #@52
    .line 629
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v7    # "subtypeLanguage":Ljava/lang/String;
    .end local v8    # "subtypeLocale":Ljava/lang/String;
    :cond_5
    if-nez v1, :cond_8

    #@54
    if-eqz p4, :cond_8

    #@56
    .line 630
    return-object v2

    #@57
    .line 621
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
    .line 623
    move-object v1, v6

    #@60
    .line 624
    .local v1, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v5, 0x1

    #@61
    .line 607
    .end local v1    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    #@63
    goto :goto_0

    #@64
    .line 641
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
    .line 97
    const-string/jumbo v0, ""

    #@3
    .line 99
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
    .line 100
    :catch_0
    move-exception v1

    #@a
    .line 101
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@d
    move-result-object v2

    #@e
    .line 102
    .local v2, "frames":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x1

    #@f
    .local v3, "j":I
    :goto_0
    array-length v5, v2

    #@10
    if-ge v3, v5, :cond_1

    #@12
    .line 103
    aget-object v5, v2, v3

    #@14
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    #@17
    move-result-object v4

    #@18
    .line 104
    .local v4, "tempCallStack":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 106
    move-object v0, v4

    #@1f
    .line 102
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@21
    goto :goto_0

    #@22
    .line 107
    :cond_0
    const-string/jumbo v5, "Transact("

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@28
    move-result v5

    #@29
    if-gez v5, :cond_1

    #@2b
    .line 109
    move-object v0, v4

    #@2c
    goto :goto_1

    #@2d
    .line 115
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
    .line 349
    invoke-static {p2, p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getFallbackLocaleForDefaultIme(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/Locale;

    #@4
    move-result-object v4

    #@5
    .line 350
    .local v4, "fallbackLocale":Ljava/util/Locale;
    if-nez p1, :cond_0

    #@7
    .line 355
    invoke-static {p2, p0, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithoutSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@a
    move-result-object v0

    #@b
    .line 357
    sget-object v6, Lcom/android/internal/inputmethod/InputMethodUtils;->SUBTYPE_MODE_ANY:Ljava/lang/String;

    #@d
    move-object v1, p2

    #@e
    move-object v2, p0

    #@f
    move v5, v3

    #@10
    .line 355
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
    .line 366
    :cond_0
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSystemLocaleFromContext(Landroid/content/Context;)Ljava/util/Locale;

    #@1c
    move-result-object v9

    #@1d
    .line 367
    .local v9, "systemLocale":Ljava/util/Locale;
    invoke-static {p2, p0, v9, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->getMinimumKeyboardSetWithSystemLocale(Ljava/util/ArrayList;Landroid/content/Context;Ljava/util/Locale;Ljava/util/Locale;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@20
    move-result-object v5

    #@21
    .line 369
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
    .line 367
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
    .line 146
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
    .line 147
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
    .line 148
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    #@17
    .line 150
    const-string/jumbo v5, "keyboard"

    #@1a
    move-object v1, p1

    #@1b
    move v4, v2

    #@1c
    .line 148
    invoke-static/range {v0 .. v5}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    #@1f
    move-result v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 151
    return-object v3

    #@23
    .line 147
    :cond_0
    add-int/lit8 v10, v10, 0x1

    #@25
    goto :goto_1

    #@26
    .line 146
    :cond_1
    add-int/lit8 v0, v7, 0x1

    #@28
    move v7, v0

    #@29
    goto :goto_0

    #@2a
    .line 157
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
    .line 158
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
    .line 159
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v4

    #@3d
    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    #@3f
    .line 161
    const-string/jumbo v9, "keyboard"

    #@42
    move-object v5, p1

    #@43
    move-object v7, v3

    #@44
    move v8, v2

    #@45
    .line 159
    invoke-static/range {v4 .. v9}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemImeThatHasSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Z

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_3

    #@4b
    .line 162
    return-object v3

    #@4c
    .line 158
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@4e
    goto :goto_3

    #@4f
    .line 157
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_2

    #@52
    .line 166
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
    .line 167
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
    .line 741
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    .line 742
    .local v0, "imiLabel":Ljava/lang/CharSequence;
    if-eqz p2, :cond_0

    #@a
    .line 743
    const/4 v1, 0x2

    #@b
    new-array v2, v1, [Ljava/lang/CharSequence;

    #@d
    .line 744
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
    .line 743
    invoke-virtual {p2, p0, v1, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@1a
    move-result-object v1

    #@1b
    const/4 v3, 0x0

    #@1c
    aput-object v1, v2, v3

    #@1e
    .line 745
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 746
    const-string/jumbo v1, ""

    #@27
    .line 745
    :goto_0
    const/4 v3, 0x1

    #@28
    aput-object v1, v2, v3

    #@2a
    .line 743
    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@2d
    move-result-object v0

    #@2e
    .line 742
    .end local v0    # "imiLabel":Ljava/lang/CharSequence;
    :cond_0
    return-object v0

    #@2f
    .line 746
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
    .locals 20
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
    .line 497
    invoke-static/range {p1 .. p1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSubtypes(Landroid/view/inputmethod/InputMethodInfo;)Ljava/util/ArrayList;

    #@3
    move-result-object v15

    #@4
    .line 498
    .local v15, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v18

    #@8
    move-object/from16 v0, v18

    #@a
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@c
    move-object/from16 v18, v0

    #@e
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->toString()Ljava/lang/String;

    #@11
    move-result-object v17

    #@12
    .line 499
    .local v17, "systemLocale":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@15
    move-result v18

    #@16
    if-eqz v18, :cond_0

    #@18
    new-instance v18, Ljava/util/ArrayList;

    #@1a
    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    #@1d
    return-object v18

    #@1e
    .line 500
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@21
    move-result-object v18

    #@22
    move-object/from16 v0, v18

    #@24
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@26
    move-object/from16 v18, v0

    #@28
    invoke-virtual/range {v18 .. v18}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@2b
    move-result-object v16

    #@2c
    .line 502
    .local v16, "systemLanguage":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    #@2e
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@31
    .line 503
    .local v5, "applicableModeAndSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@34
    move-result v4

    #@35
    .line 504
    .local v4, "N":I
    const/4 v8, 0x0

    #@36
    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_2

    #@38
    .line 506
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v14

    #@3c
    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    #@3e
    .line 507
    .local v14, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@41
    move-result v18

    #@42
    if-eqz v18, :cond_1

    #@44
    .line 508
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@47
    move-result-object v13

    #@48
    .line 509
    .local v13, "mode":Ljava/lang/String;
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@4b
    move-result v18

    #@4c
    if-nez v18, :cond_1

    #@4e
    .line 510
    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@51
    .line 504
    .end local v13    # "mode":Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    #@53
    goto :goto_0

    #@54
    .line 514
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    #@57
    move-result v18

    #@58
    if-lez v18, :cond_3

    #@5a
    .line 515
    new-instance v18, Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@5f
    move-result-object v19

    #@60
    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@63
    return-object v18

    #@64
    .line 517
    :cond_3
    const/4 v8, 0x0

    #@65
    :goto_1
    if-ge v8, v4, :cond_7

    #@67
    .line 518
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@6a
    move-result-object v14

    #@6b
    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    #@6d
    .line 519
    .restart local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@70
    move-result-object v12

    #@71
    .line 520
    .local v12, "locale":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@74
    move-result-object v13

    #@75
    .line 521
    .restart local v13    # "mode":Ljava/lang/String;
    invoke-static {v12}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v10

    #@79
    .line 536
    .local v10, "language":Ljava/lang/String;
    move-object/from16 v0, v16

    #@7b
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7e
    move-result v18

    #@7f
    if-eqz v18, :cond_4

    #@81
    move-object/from16 v0, v17

    #@83
    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@86
    move-result v18

    #@87
    if-eqz v18, :cond_4

    #@89
    .line 537
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    move-result-object v6

    #@8d
    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    #@8f
    .line 539
    .local v6, "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v6, :cond_6

    #@91
    .line 540
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    #@94
    move-result-object v18

    #@95
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@98
    move-result v18

    #@99
    if-eqz v18, :cond_5

    #@9b
    .line 517
    .end local v6    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    #@9d
    goto :goto_1

    #@9e
    .line 541
    .restart local v6    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_5
    move-object/from16 v0, v17

    #@a0
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a3
    move-result v18

    #@a4
    if-eqz v18, :cond_4

    #@a6
    .line 543
    :cond_6
    invoke-virtual {v5, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    goto :goto_2

    #@aa
    .line 547
    .end local v6    # "applicableSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v10    # "language":Ljava/lang/String;
    .end local v12    # "locale":Ljava/lang/String;
    .end local v13    # "mode":Ljava/lang/String;
    .end local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_7
    const-string/jumbo v18, "keyboard"

    #@ad
    move-object/from16 v0, v18

    #@af
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b2
    move-result-object v9

    #@b3
    check-cast v9, Landroid/view/inputmethod/InputMethodSubtype;

    #@b5
    .line 548
    .local v9, "keyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    new-instance v7, Ljava/util/ArrayList;

    #@b7
    .line 549
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@ba
    move-result-object v18

    #@bb
    .line 548
    move-object/from16 v0, v18

    #@bd
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@c0
    .line 550
    .local v7, "applicableSubtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    if-eqz v9, :cond_8

    #@c2
    const-string/jumbo v18, "AsciiCapable"

    #@c5
    move-object/from16 v0, v18

    #@c7
    invoke-virtual {v9, v0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    #@ca
    move-result v18

    #@cb
    if-eqz v18, :cond_a

    #@cd
    .line 560
    :cond_8
    if-nez v9, :cond_9

    #@cf
    .line 562
    const-string/jumbo v18, "keyboard"

    #@d2
    const/16 v19, 0x1

    #@d4
    .line 561
    move-object/from16 v0, p0

    #@d6
    move-object/from16 v1, v18

    #@d8
    move-object/from16 v2, v17

    #@da
    move/from16 v3, v19

    #@dc
    invoke-static {v0, v15, v1, v2, v3}, Lcom/android/internal/inputmethod/InputMethodUtils;->findLastResortApplicableSubtypeLocked(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/inputmethod/InputMethodSubtype;

    #@df
    move-result-object v11

    #@e0
    .line 563
    .local v11, "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v11, :cond_9

    #@e2
    .line 564
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e5
    .line 567
    .end local v11    # "lastResortKeyboardSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_9
    return-object v7

    #@e6
    .line 551
    :cond_a
    const/4 v8, 0x0

    #@e7
    :goto_3
    if-ge v8, v4, :cond_8

    #@e9
    .line 552
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@ec
    move-result-object v14

    #@ed
    check-cast v14, Landroid/view/inputmethod/InputMethodSubtype;

    #@ef
    .line 553
    .restart local v14    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    #@f2
    move-result-object v13

    #@f3
    .line 554
    .restart local v13    # "mode":Ljava/lang/String;
    const-string/jumbo v18, "keyboard"

    #@f6
    move-object/from16 v0, v18

    #@f8
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v18

    #@fc
    if-eqz v18, :cond_b

    #@fe
    .line 555
    const-string/jumbo v18, "EnabledWhenDefaultIsNotAsciiCapable"

    #@101
    .line 554
    move-object/from16 v0, v18

    #@103
    invoke-virtual {v14, v0}, Landroid/view/inputmethod/InputMethodSubtype;->containsExtraValueKey(Ljava/lang/String;)Z

    #@106
    move-result v18

    #@107
    if-eqz v18, :cond_b

    #@109
    .line 556
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10c
    .line 551
    :cond_b
    add-int/lit8 v8, v8, 0x1

    #@10e
    goto :goto_3
.end method

.method public static getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 575
    const/16 v1, 0x5f

    #@3
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v0

    #@7
    .line 576
    .local v0, "idx":I
    if-gez v0, :cond_0

    #@9
    .line 577
    return-object p0

    #@a
    .line 579
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
    .line 311
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;)V

    #@8
    .line 313
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
    .line 312
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@12
    .line 314
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 315
    return-object v0

    #@19
    .line 318
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
    .line 317
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@23
    .line 319
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_1

    #@29
    .line 320
    return-object v0

    #@2a
    .line 323
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
    .line 322
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@34
    .line 324
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@37
    move-result v1

    #@38
    if-nez v1, :cond_2

    #@3a
    .line 325
    return-object v0

    #@3b
    .line 328
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
    .line 327
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@45
    .line 329
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@48
    move-result v1

    #@49
    if-nez v1, :cond_3

    #@4b
    .line 330
    return-object v0

    #@4c
    .line 333
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
    .line 332
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@57
    .line 334
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@5a
    move-result v1

    #@5b
    if-nez v1, :cond_4

    #@5d
    .line 335
    return-object v0

    #@5e
    .line 338
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
    .line 337
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@69
    .line 339
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@6c
    move-result v1

    #@6d
    if-nez v1, :cond_5

    #@6f
    .line 340
    return-object v0

    #@70
    .line 342
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
    .line 343
    const-string/jumbo v3, " systemLocale="

    #@8e
    .line 342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v2

    #@96
    .line 343
    const-string/jumbo v3, " fallbackLocale="

    #@99
    .line 342
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
    .line 344
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
    .line 272
    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;-><init>(Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;)V

    #@8
    .line 274
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
    .line 273
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@12
    .line 275
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 276
    return-object v0

    #@19
    .line 279
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
    .line 278
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@24
    .line 280
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@27
    move-result v1

    #@28
    if-nez v1, :cond_1

    #@2a
    .line 281
    return-object v0

    #@2b
    .line 284
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
    .line 283
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@35
    .line 285
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_2

    #@3b
    .line 286
    return-object v0

    #@3c
    .line 289
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
    .line 288
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->fillImes(Ljava/util/ArrayList;Landroid/content/Context;ZLjava/util/Locale;ZLjava/lang/String;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;

    #@47
    .line 290
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodListBuilder;->isEmpty()Z

    #@4a
    move-result v1

    #@4b
    if-nez v1, :cond_3

    #@4d
    .line 291
    return-object v0

    #@4e
    .line 293
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
    .line 294
    const-string/jumbo v3, " fallbackLocale="

    #@6c
    .line 293
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
    .line 295
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
    .line 453
    if-eqz p0, :cond_0

    #@4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_1

    #@a
    .line 454
    :cond_0
    return-object v4

    #@b
    .line 457
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@e
    move-result v1

    #@f
    .line 458
    .local v1, "i":I
    const/4 v0, -0x1

    #@10
    .line 459
    .local v0, "firstFoundSystemIme":I
    :cond_2
    :goto_0
    if-lez v1, :cond_4

    #@12
    .line 460
    add-int/lit8 v1, v1, -0x1

    #@14
    .line 461
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    #@1a
    .line 462
    .local v2, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_2

    #@20
    .line 465
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_3

    #@26
    .line 466
    sget-object v3, Lcom/android/internal/inputmethod/InputMethodUtils;->ENGLISH_LOCALE:Ljava/util/Locale;

    #@28
    .line 467
    const-string/jumbo v4, "keyboard"

    #@2b
    .line 466
    invoke-static {v2, v3, v5, v4}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    #@2e
    move-result v3

    #@2f
    .line 465
    if-eqz v3, :cond_3

    #@31
    .line 468
    return-object v2

    #@32
    .line 470
    :cond_3
    if-gez v0, :cond_2

    #@34
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_2

    #@3a
    .line 471
    move v0, v1

    #@3b
    goto :goto_0

    #@3c
    .line 474
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
    .line 441
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 442
    .local v3, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@8
    move-result v2

    #@9
    .line 443
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@c
    .line 444
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@f
    move-result-object v1

    #@10
    .line 445
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
    .line 446
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@23
    .line 443
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0

    #@26
    .line 449
    .end local v1    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_1
    return-object v3
.end method

.method public static getStackTrace()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 85
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    #@7
    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    #@a
    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 86
    :catch_0
    move-exception v0

    #@c
    .line 87
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@f
    move-result-object v1

    #@10
    .line 89
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    #@11
    .local v2, "j":I
    :goto_0
    array-length v4, v1

    #@12
    if-ge v2, v4, :cond_0

    #@14
    .line 90
    aget-object v4, v1, v2

    #@16
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    const-string/jumbo v5, "\n"

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    .line 89
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 93
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    return-object v4
.end method

.method public static getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I
    .locals 4
    .param p0, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p1, "subtypeHashCode"    # I

    #@0
    .prologue
    .line 482
    if-eqz p0, :cond_1

    #@2
    .line 483
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@5
    move-result v2

    #@6
    .line 484
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 485
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@c
    move-result-object v1

    #@d
    .line 486
    .local v1, "ims":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    #@10
    move-result v3

    #@11
    if-ne p1, v3, :cond_0

    #@13
    .line 487
    return v0

    #@14
    .line 484
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 491
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
    .line 431
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 432
    .local v2, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@8
    move-result v1

    #@9
    .line 433
    .local v1, "subtypeCount":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 434
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 433
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 436
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
    .line 1352
    if-eqz p0, :cond_a

    #@2
    .line 1353
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@5
    move-result-object v4

    #@6
    .line 1354
    .local v4, "language":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@9
    move-result v10

    #@a
    if-eqz v10, :cond_4

    #@c
    const/4 v2, 0x0

    #@d
    .line 1355
    .local v2, "hasLanguage":Z
    :goto_0
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .line 1356
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@14
    move-result v10

    #@15
    if-eqz v10, :cond_5

    #@17
    const/4 v1, 0x0

    #@18
    .line 1357
    .local v1, "hasCountry":Z
    :goto_1
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@1b
    move-result-object v9

    #@1c
    .line 1358
    .local v9, "variant":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@1f
    move-result v10

    #@20
    if-eqz v10, :cond_6

    #@22
    const/4 v3, 0x0

    #@23
    .line 1359
    .local v3, "hasVariant":Z
    :goto_2
    if-eqz v2, :cond_7

    #@25
    if-eqz v1, :cond_7

    #@27
    if-eqz v3, :cond_7

    #@29
    .line 1360
    new-instance v8, Ljava/util/Locale;

    #@2b
    invoke-direct {v8, v4, v0, v9}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    .line 1364
    :goto_3
    if-eqz v2, :cond_8

    #@30
    if-eqz v1, :cond_8

    #@32
    .line 1365
    new-instance v7, Ljava/util/Locale;

    #@34
    invoke-direct {v7, v4, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@37
    .line 1369
    :goto_4
    if-eqz v2, :cond_9

    #@39
    .line 1370
    new-instance v6, Ljava/util/Locale;

    #@3b
    invoke-direct {v6, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@3e
    .line 1380
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
    .line 1381
    .local v5, "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    if-eqz v8, :cond_0

    #@45
    .line 1382
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    .line 1385
    :cond_0
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@4a
    invoke-virtual {v10, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@4d
    move-result v10

    #@4e
    if-eqz v10, :cond_c

    #@50
    .line 1386
    if-eqz v7, :cond_b

    #@52
    .line 1393
    if-eqz v7, :cond_1

    #@54
    .line 1394
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@57
    .line 1396
    :cond_1
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    #@59
    invoke-virtual {v10, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@5c
    move-result v10

    #@5d
    if-nez v10, :cond_2

    #@5f
    .line 1397
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    #@61
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@64
    .line 1399
    :cond_2
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    #@66
    invoke-virtual {v10, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v10

    #@6a
    if-nez v10, :cond_3

    #@6c
    .line 1400
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    #@6e
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@71
    .line 1402
    :cond_3
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@73
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@76
    .line 1430
    :goto_6
    return-object v5

    #@77
    .line 1354
    .end local v5    # "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    .restart local v4    # "language":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    #@78
    .restart local v2    # "hasLanguage":Z
    goto :goto_0

    #@79
    .line 1356
    .restart local v0    # "country":Ljava/lang/String;
    :cond_5
    const/4 v1, 0x1

    #@7a
    .restart local v1    # "hasCountry":Z
    goto :goto_1

    #@7b
    .line 1358
    .restart local v9    # "variant":Ljava/lang/String;
    :cond_6
    const/4 v3, 0x1

    #@7c
    .restart local v3    # "hasVariant":Z
    goto :goto_2

    #@7d
    .line 1362
    :cond_7
    const/4 v8, 0x0

    #@7e
    .local v8, "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    goto :goto_3

    #@7f
    .line 1367
    .end local v8    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    :cond_8
    const/4 v7, 0x0

    #@80
    .local v7, "systemLocaleLanguageCountry":Ljava/util/Locale;
    goto :goto_4

    #@81
    .line 1372
    .end local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    :cond_9
    const/4 v6, 0x0

    #@82
    .local v6, "systemLocaleLanguage":Ljava/util/Locale;
    goto :goto_5

    #@83
    .line 1375
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
    .line 1376
    .restart local v8    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    const/4 v7, 0x0

    #@85
    .line 1377
    .restart local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    const/4 v6, 0x0

    #@86
    .restart local v6    # "systemLocaleLanguage":Ljava/util/Locale;
    goto :goto_5

    #@87
    .line 1409
    .end local v6    # "systemLocaleLanguage":Ljava/util/Locale;
    .end local v7    # "systemLocaleLanguageCountry":Ljava/util/Locale;
    .end local v8    # "systemLocaleLanguageCountryVariant":Ljava/util/Locale;
    .restart local v5    # "locales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    :cond_b
    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@89
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@8c
    .line 1410
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    #@8e
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@91
    .line 1411
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    #@93
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@96
    goto :goto_6

    #@97
    .line 1420
    :cond_c
    if-eqz v7, :cond_d

    #@99
    .line 1421
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@9c
    .line 1423
    :cond_d
    if-eqz v6, :cond_e

    #@9e
    .line 1424
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a1
    .line 1426
    :cond_e
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_US:Ljava/util/Locale;

    #@a3
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a6
    .line 1427
    sget-object v10, Lcom/android/internal/inputmethod/InputMethodUtils;->LOCALE_EN_GB:Ljava/util/Locale;

    #@a8
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ab
    .line 1428
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
    .line 193
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
    .line 194
    :catch_0
    move-exception v0

    #@c
    .line 195
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
    .line 172
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 173
    return v4

    #@8
    .line 175
    :cond_0
    if-eqz p2, :cond_1

    #@a
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    #@d
    move-result v3

    #@e
    if-eqz v3, :cond_2

    #@10
    .line 178
    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->isAuxiliaryIme()Z

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_3

    #@16
    .line 179
    return v4

    #@17
    .line 176
    :cond_2
    return v4

    #@18
    .line 181
    :cond_3
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    #@1b
    move-result v2

    #@1c
    .line 182
    .local v2, "subtypeCount":I
    const/4 v0, 0x0

    #@1d
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_5

    #@1f
    .line 183
    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    #@22
    move-result-object v1

    #@23
    .line 184
    .local v1, "s":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    #@26
    move-result v3

    #@27
    if-eqz v3, :cond_4

    #@29
    .line 185
    const/4 v3, 0x1

    #@2a
    return v3

    #@2b
    .line 182
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 188
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
    .line 120
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
    .line 128
    invoke-static {p0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 129
    return v1

    #@8
    .line 131
    :cond_0
    if-eqz p2, :cond_1

    #@a
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodInfo;->isDefault(Landroid/content/Context;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 134
    :cond_1
    invoke-static {p0, p3, p4, p5}, Lcom/android/internal/inputmethod/InputMethodUtils;->containsSubtypeOf(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/Locale;ZLjava/lang/String;)Z

    #@13
    move-result v0

    #@14
    if-nez v0, :cond_3

    #@16
    .line 135
    return v1

    #@17
    .line 132
    :cond_2
    return v1

    #@18
    .line 137
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
    .line 478
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

.method private static setDisabledUntilUsed(Landroid/content/pm/IPackageManager;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p0, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 712
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result v7

    #@4
    .line 718
    .local v7, "state":I
    if-eqz v7, :cond_0

    #@6
    .line 719
    const/4 v0, 0x1

    #@7
    if-ne v7, v0, :cond_1

    #@9
    .line 725
    :cond_0
    const/4 v2, 0x4

    #@a
    .line 726
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
    .line 724
    :try_start_1
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@12
    .line 709
    :cond_1
    return-void

    #@13
    .line 713
    .end local v7    # "state":I
    :catch_0
    move-exception v6

    #@14
    .line 714
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
    .line 715
    const-string/jumbo v2, " userId="

    #@2a
    .line 714
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
    .line 716
    return-void

    #@3a
    .line 727
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v7    # "state":I
    :catch_1
    move-exception v6

    #@3b
    .line 728
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
    .line 729
    const-string/jumbo v2, " userId="

    #@51
    .line 728
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v1

    #@59
    .line 729
    const-string/jumbo v2, " callingPackage="

    #@5c
    .line 728
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
    .line 730
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
    .line 655
    .local p1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v12

    #@4
    .line 656
    const v13, 0x1070033

    #@7
    .line 655
    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    #@a
    move-result-object v11

    #@b
    .line 657
    .local v11, "systemImesDisabledUntilUsed":[Ljava/lang/String;
    if-eqz v11, :cond_0

    #@d
    array-length v12, v11

    #@e
    if-nez v12, :cond_1

    #@10
    .line 658
    :cond_0
    return-void

    #@11
    .line 662
    :cond_1
    invoke-static {}, Landroid/view/textservice/TextServicesManager;->getInstance()Landroid/view/textservice/TextServicesManager;

    #@14
    move-result-object v12

    #@15
    invoke-virtual {v12}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    #@18
    move-result-object v4

    #@19
    .line 663
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
    .line 667
    .local v10, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    #@20
    .line 668
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
    .line 669
    move-object/from16 v0, p1

    #@29
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, Landroid/view/inputmethod/InputMethodInfo;

    #@2f
    .line 670
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
    .line 671
    const/4 v6, 0x1

    #@3a
    .line 675
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    if-eqz v6, :cond_5

    #@3c
    .line 663
    :cond_3
    :goto_2
    add-int/lit8 v12, v12, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 668
    .restart local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    #@41
    goto :goto_1

    #@42
    .line 679
    .end local v7    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    if-eqz v4, :cond_6

    #@44
    .line 680
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    #@47
    move-result-object v14

    #@48
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v14

    #@4c
    .line 679
    if-nez v14, :cond_3

    #@4e
    .line 687
    :cond_6
    const/4 v3, 0x0

    #@4f
    .line 690
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    const v14, 0x8000

    #@52
    .line 689
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
    .line 696
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_3

    #@5c
    .line 700
    iget v14, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    #@5e
    and-int/lit8 v14, v14, 0x1

    #@60
    if-eqz v14, :cond_7

    #@62
    const/4 v8, 0x1

    #@63
    .line 701
    .local v8, "isSystemPackage":Z
    :goto_3
    if-eqz v8, :cond_3

    #@65
    .line 704
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
    .line 691
    .end local v8    # "isSystemPackage":Z
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v5

    #@70
    .line 692
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
    .line 693
    const-string/jumbo v16, " userId="

    #@86
    .line 692
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
    .line 700
    .end local v5    # "e":Landroid/os/RemoteException;
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    :cond_7
    const/4 v8, 0x0

    #@99
    .restart local v8    # "isSystemPackage":Z
    goto :goto_3

    #@9a
    .line 651
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "enabledIme":Z
    .end local v8    # "isSystemPackage":Z
    .end local v9    # "j":I
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_8
    return-void
.end method
