.class final Landroid/icu/util/CurrencyServiceShim;
.super Landroid/icu/util/Currency$ServiceShim;
.source "CurrencyServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/CurrencyServiceShim$CFService;
    }
.end annotation


# static fields
.field static final blacklist service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Landroid/icu/util/CurrencyServiceShim$CFService;

    invoke-direct {v0}, Landroid/icu/util/CurrencyServiceShim$CFService;-><init>()V

    sput-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/icu/util/Currency$ServiceShim;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .registers 3
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 45
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 46
    invoke-static {p1}, Landroid/icu/util/Currency;->createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0

    .line 48
    :cond_d
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Currency;

    .line 49
    .local v0, "curr":Landroid/icu/util/Currency;
    return-object v0
.end method

.method blacklist getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    .line 29
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 30
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 32
    :cond_d
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method blacklist getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 2

    .line 36
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 39
    :cond_d
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method blacklist registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .registers 4
    .param p1, "currency"    # Landroid/icu/util/Currency;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 53
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method blacklist unregister(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "registryKey"    # Ljava/lang/Object;

    .line 57
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result v0

    return v0
.end method
