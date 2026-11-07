.class public abstract Landroid/icu/text/CurrencyDisplayNames;
.super Ljava/lang/Object;
.source "CurrencyDisplayNames.java"


# direct methods
.method protected constructor greylist-max-o <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    return-void
.end method

.method public static greylist-max-o getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 38
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/text/CurrencyDisplayNames;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "noSubstitute"    # Z

    .line 70
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getInstance(Ljava/util/Locale;)Landroid/icu/text/CurrencyDisplayNames;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 53
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Ljava/util/Locale;Z)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getInstance(Ljava/util/Locale;Z)Landroid/icu/text/CurrencyDisplayNames;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "noSubstitute"    # Z

    .line 87
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/text/CurrencyDisplayNames;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o hasData()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 98
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    invoke-interface {v0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->hasData()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract blacklist getFormalSymbol(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist-max-o getName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract blacklist getNarrowSymbol(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist-max-o getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist-max-o getSymbol(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist-max-o getULocale()Landroid/icu/util/ULocale;
.end method

.method public abstract blacklist getVariantSymbol(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract greylist-max-o nameMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract greylist-max-o symbolMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
