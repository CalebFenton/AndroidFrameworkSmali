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
.field static final service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 71
    new-instance v0, Landroid/icu/util/CurrencyServiceShim$CFService;

    #@2
    invoke-direct {v0}, Landroid/icu/util/CurrencyServiceShim$CFService;-><init>()V

    #@5
    sput-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@7
    .line 23
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Landroid/icu/util/Currency$ServiceShim;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;
    .locals 2
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 42
    sget-object v1, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    invoke-virtual {v1}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 43
    invoke-static {p1}, Landroid/icu/util/Currency;->createCurrency(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 45
    :cond_0
    sget-object v1, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@f
    invoke-virtual {v1, p1}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/icu/util/Currency;

    #@15
    .line 46
    .local v0, "curr":Landroid/icu/util/Currency;
    return-object v0
.end method

.method getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 26
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 27
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 29
    :cond_0
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@f
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 34
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 36
    :cond_0
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@f
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method registerInstance(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1
    .param p1, "currency"    # Landroid/icu/util/Currency;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 50
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/ICULocaleService;->registerObject(Ljava/lang/Object;Landroid/icu/util/ULocale;)Landroid/icu/impl/ICUService$Factory;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "registryKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 54
    sget-object v0, Landroid/icu/util/CurrencyServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    check-cast p1, Landroid/icu/impl/ICUService$Factory;

    #@4
    .end local p1    # "registryKey":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
