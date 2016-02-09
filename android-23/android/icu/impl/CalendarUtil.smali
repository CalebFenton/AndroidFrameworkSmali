.class public Landroid/icu/impl/CalendarUtil;
.super Ljava/lang/Object;
.source "CalendarUtil.java"


# static fields
.field private static final CALKEY:Ljava/lang/String; = "calendar"

.field private static CALTYPE_CACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFCAL:Ljava/lang/String; = "gregorian"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 26
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/CalendarUtil;->CALTYPE_CACHE:Landroid/icu/impl/ICUCache;

    #@7
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 12
    .param p0, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 40
    const/4 v2, 0x0

    #@1
    .line 42
    .local v2, "calType":Ljava/lang/String;
    const-string/jumbo v9, "calendar"

    #@4
    invoke-virtual {p0, v9}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    .line 43
    .local v2, "calType":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@a
    .line 44
    return-object v2

    #@b
    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 50
    .local v0, "baseLoc":Ljava/lang/String;
    sget-object v9, Landroid/icu/impl/CalendarUtil;->CALTYPE_CACHE:Landroid/icu/impl/ICUCache;

    #@11
    invoke-interface {v9, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    .end local v2    # "calType":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    #@17
    .line 51
    .restart local v2    # "calType":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@19
    .line 52
    return-object v2

    #@1a
    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@1d
    move-result-object v9

    #@1e
    invoke-static {v9}, Landroid/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;

    #@21
    move-result-object v3

    #@22
    .line 57
    .local v3, "canonical":Landroid/icu/util/ULocale;
    const-string/jumbo v9, "calendar"

    #@25
    invoke-virtual {v3, v9}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    .line 59
    if-nez v2, :cond_3

    #@2b
    .line 62
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    .line 63
    .local v8, "region":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@32
    move-result v9

    #@33
    if-nez v9, :cond_2

    #@35
    .line 64
    invoke-static {v3}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@38
    move-result-object v4

    #@39
    .line 65
    .local v4, "fullLoc":Landroid/icu/util/ULocale;
    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@3c
    move-result-object v8

    #@3d
    .line 72
    .end local v4    # "fullLoc":Landroid/icu/util/ULocale;
    :cond_2
    :try_start_0
    const-string/jumbo v9, "android/icu/impl/data/icudt55b"

    #@40
    .line 73
    const-string/jumbo v10, "supplementalData"

    #@43
    .line 74
    sget-object v11, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@45
    .line 71
    invoke-static {v9, v10, v11}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@48
    move-result-object v7

    #@49
    .line 75
    .local v7, "rb":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v9, "calendarPreferenceData"

    #@4c
    invoke-virtual {v7, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    #@4f
    move-result-object v1

    #@50
    .line 76
    .local v1, "calPref":Landroid/icu/util/UResourceBundle;
    const/4 v6, 0x0

    #@51
    .line 78
    .local v6, "order":Landroid/icu/util/UResourceBundle;
    :try_start_1
    invoke-virtual {v1, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    #@54
    move-result-object v6

    #@55
    .line 84
    .local v6, "order":Landroid/icu/util/UResourceBundle;
    :goto_0
    const/4 v9, 0x0

    #@56
    :try_start_2
    invoke-virtual {v6, v9}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    #@59
    move-result-object v2

    #@5a
    .line 89
    .end local v1    # "calPref":Landroid/icu/util/UResourceBundle;
    .end local v6    # "order":Landroid/icu/util/UResourceBundle;
    .end local v7    # "rb":Landroid/icu/util/UResourceBundle;
    :goto_1
    if-nez v2, :cond_3

    #@5c
    .line 91
    const-string/jumbo v2, "gregorian"

    #@5f
    .line 96
    .end local v8    # "region":Ljava/lang/String;
    :cond_3
    sget-object v9, Landroid/icu/impl/CalendarUtil;->CALTYPE_CACHE:Landroid/icu/impl/ICUCache;

    #@61
    invoke-interface {v9, v0, v2}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@64
    .line 98
    return-object v2

    #@65
    .line 79
    .restart local v1    # "calPref":Landroid/icu/util/UResourceBundle;
    .local v6, "order":Landroid/icu/util/UResourceBundle;
    .restart local v7    # "rb":Landroid/icu/util/UResourceBundle;
    .restart local v8    # "region":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@66
    .line 81
    .local v5, "mre":Ljava/util/MissingResourceException;
    :try_start_3
    const-string/jumbo v9, "001"

    #@69
    invoke-virtual {v1, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    #@6c
    move-result-object v6

    #@6d
    .local v6, "order":Landroid/icu/util/UResourceBundle;
    goto :goto_0

    #@6e
    .line 85
    .end local v1    # "calPref":Landroid/icu/util/UResourceBundle;
    .end local v5    # "mre":Ljava/util/MissingResourceException;
    .end local v6    # "order":Landroid/icu/util/UResourceBundle;
    .end local v7    # "rb":Landroid/icu/util/UResourceBundle;
    :catch_1
    move-exception v5

    #@6f
    .restart local v5    # "mre":Ljava/util/MissingResourceException;
    goto :goto_1
.end method
