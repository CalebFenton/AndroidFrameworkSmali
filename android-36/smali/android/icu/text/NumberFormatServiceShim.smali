.class Landroid/icu/text/NumberFormatServiceShim;
.super Landroid/icu/text/NumberFormat$NumberFormatShim;
.source "NumberFormatServiceShim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/NumberFormatServiceShim$NFFactory;,
        Landroid/icu/text/NumberFormatServiceShim$NFService;
    }
.end annotation


# static fields
.field private static blacklist service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 124
    new-instance v0, Landroid/icu/text/NumberFormatServiceShim$NFService;

    invoke-direct {v0}, Landroid/icu/text/NumberFormatServiceShim$NFService;-><init>()V

    sput-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .registers 8
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "choice"    # I

    .line 86
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/icu/util/ULocale;

    .line 87
    .local v1, "actualLoc":[Landroid/icu/util/ULocale;
    sget-object v2, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v2, p1, p2, v1}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/NumberFormat;

    .line 89
    .local v2, "fmt":Landroid/icu/text/NumberFormat;
    if-eqz v2, :cond_35

    .line 92
    invoke-virtual {v2}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/icu/text/NumberFormat;

    .line 96
    if-eq p2, v0, :cond_27

    const/4 v0, 0x5

    if-eq p2, v0, :cond_27

    const/4 v0, 0x6

    if-eq p2, v0, :cond_27

    const/4 v0, 0x7

    if-eq p2, v0, :cond_27

    const/16 v0, 0x8

    if-eq p2, v0, :cond_27

    const/16 v0, 0x9

    if-ne p2, v0, :cond_2e

    .line 102
    :cond_27
    invoke-static {p1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    .line 105
    :cond_2e
    const/4 v0, 0x0

    aget-object v0, v1, v0

    .line 106
    .local v0, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {v2, v0, v0}, Landroid/icu/text/NumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 107
    return-object v2

    .line 90
    .end local v0    # "uloc":Landroid/icu/util/ULocale;
    :cond_35
    new-instance v0, Ljava/util/MissingResourceException;

    const-string v3, "Unable to construct NumberFormat"

    const-string v4, ""

    invoke-direct {v0, v3, v4, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method blacklist getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    .line 31
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 32
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 34
    :cond_d
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method blacklist getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 2

    .line 38
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 39
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    .line 41
    :cond_d
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method blacklist registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
    .registers 4
    .param p1, "factory"    # Landroid/icu/text/NumberFormat$NumberFormatFactory;

    .line 72
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    new-instance v1, Landroid/icu/text/NumberFormatServiceShim$NFFactory;

    invoke-direct {v1, p1}, Landroid/icu/text/NumberFormatServiceShim$NFFactory;-><init>(Landroid/icu/text/NumberFormat$NumberFormatFactory;)V

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method blacklist unregister(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "registryKey"    # Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    move-object v1, p1

    check-cast v1, Landroid/icu/impl/ICUService$Factory;

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICULocaleService;->unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z

    move-result v0

    return v0
.end method
