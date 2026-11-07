.class public Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;
.super Ljava/lang/Object;
.source "ICUCurrencyDisplayInfoProvider.java"

# interfaces
.implements Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
    }
.end annotation


# instance fields
.field private volatile blacklist currencyDisplayInfoCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;->currencyDisplayInfoCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "withFallback"    # Z

    .line 42
    if-nez p1, :cond_4

    sget-object p1, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    .line 43
    :cond_4
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;->currencyDisplayInfoCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    .line 44
    .local v0, "instance":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
    if-eqz v0, :cond_14

    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->locale:Landroid/icu/util/ULocale;

    invoke-virtual {v1, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eq v1, p2, :cond_2e

    .line 46
    :cond_14
    const-string v1, "android/icu/impl/data/icudata/curr"

    if-eqz p2, :cond_1f

    .line 47
    sget-object v2, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v1, p1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .local v1, "rb":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_26

    .line 51
    .end local v1    # "rb":Landroid/icu/impl/ICUResourceBundle;
    :cond_1f
    :try_start_1f
    sget-object v2, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_ONLY:Landroid/icu/impl/ICUResourceBundle$OpenType;

    invoke-static {v1, p1, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1
    :try_end_25
    .catch Ljava/util/MissingResourceException; {:try_start_1f .. :try_end_25} :catch_2f

    .line 55
    .restart local v1    # "rb":Landroid/icu/impl/ICUResourceBundle;
    nop

    .line 57
    :goto_26
    new-instance v2, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    invoke-direct {v2, p1, v1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;-><init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Z)V

    move-object v0, v2

    .line 58
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;->currencyDisplayInfoCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;

    .line 60
    .end local v1    # "rb":Landroid/icu/impl/ICUResourceBundle;
    :cond_2e
    return-object v0

    .line 53
    :catch_2f
    move-exception v1

    .line 54
    .local v1, "e":Ljava/util/MissingResourceException;
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist hasData()Z
    .registers 2

    .line 65
    const/4 v0, 0x1

    return v0
.end method
