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
.field private static service:Landroid/icu/impl/ICULocaleService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 118
    new-instance v0, Landroid/icu/text/NumberFormatServiceShim$NFService;

    #@2
    invoke-direct {v0}, Landroid/icu/text/NumberFormatServiceShim$NFService;-><init>()V

    #@5
    sput-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@7
    .line 25
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Landroid/icu/text/NumberFormat$NumberFormatShim;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method createInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;
    .locals 7
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "choice"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 83
    new-array v0, v4, [Landroid/icu/util/ULocale;

    #@3
    .line 84
    .local v0, "actualLoc":[Landroid/icu/util/ULocale;
    sget-object v3, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@5
    invoke-virtual {v3, p1, p2, v0}, Landroid/icu/impl/ICULocaleService;->get(Landroid/icu/util/ULocale;I[Landroid/icu/util/ULocale;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    check-cast v1, Landroid/icu/text/NumberFormat;

    #@b
    .line 86
    .local v1, "fmt":Landroid/icu/text/NumberFormat;
    if-nez v1, :cond_0

    #@d
    .line 87
    new-instance v3, Ljava/util/MissingResourceException;

    #@f
    const-string/jumbo v4, "Unable to construct NumberFormat"

    #@12
    const-string/jumbo v5, ""

    #@15
    const-string/jumbo v6, ""

    #@18
    invoke-direct {v3, v4, v5, v6}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 89
    :cond_0
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    .end local v1    # "fmt":Landroid/icu/text/NumberFormat;
    check-cast v1, Landroid/icu/text/NumberFormat;

    #@22
    .line 93
    .restart local v1    # "fmt":Landroid/icu/text/NumberFormat;
    if-eq p2, v4, :cond_1

    #@24
    .line 94
    const/4 v3, 0x5

    #@25
    if-ne p2, v3, :cond_3

    #@27
    .line 96
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/icu/util/Currency;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Currency;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v1, v3}, Landroid/icu/text/NumberFormat;->setCurrency(Landroid/icu/util/Currency;)V

    #@2e
    .line 99
    :cond_2
    const/4 v3, 0x0

    #@2f
    aget-object v2, v0, v3

    #@31
    .line 100
    .local v2, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {v1, v2, v2}, Landroid/icu/text/NumberFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@34
    .line 101
    return-object v1

    #@35
    .line 95
    .end local v2    # "uloc":Landroid/icu/util/ULocale;
    :cond_3
    const/4 v3, 0x6

    #@36
    if-ne p2, v3, :cond_2

    #@38
    goto :goto_0
.end method

.method getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 28
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 29
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 31
    :cond_0
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

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
    .line 35
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->isDefault()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 36
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 38
    :cond_0
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@f
    invoke-virtual {v0}, Landroid/icu/impl/ICULocaleService;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method registerFactory(Landroid/icu/text/NumberFormat$NumberFormatFactory;)Ljava/lang/Object;
    .locals 2
    .param p1, "factory"    # Landroid/icu/text/NumberFormat$NumberFormatFactory;

    #@0
    .prologue
    .line 69
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

    #@2
    new-instance v1, Landroid/icu/text/NumberFormatServiceShim$NFFactory;

    #@4
    invoke-direct {v1, p1}, Landroid/icu/text/NumberFormatServiceShim$NFFactory;-><init>(Landroid/icu/text/NumberFormat$NumberFormatFactory;)V

    #@7
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICULocaleService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method unregister(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "registryKey"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 73
    sget-object v0, Landroid/icu/text/NumberFormatServiceShim;->service:Landroid/icu/impl/ICULocaleService;

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
