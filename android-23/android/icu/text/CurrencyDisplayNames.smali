.class public abstract Landroid/icu/text/CurrencyDisplayNames;
.super Ljava/lang/Object;
.source "CurrencyDisplayNames.java"


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/CurrencyDisplayNames;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 36
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-interface {v0, p0, v1}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/text/CurrencyDisplayNames;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "noSubstitute"    # Z

    #@0
    .prologue
    .line 71
    sget-object v1, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    #@2
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    invoke-interface {v1, p0, v0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/CurrencyDisplayNames;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 53
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Ljava/util/Locale;Z)Landroid/icu/text/CurrencyDisplayNames;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Z)Landroid/icu/text/CurrencyDisplayNames;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "noSubstitute"    # Z

    #@0
    .prologue
    .line 90
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/text/CurrencyDisplayNames;->getInstance(Landroid/icu/util/ULocale;Z)Landroid/icu/text/CurrencyDisplayNames;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static hasData()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 101
    sget-object v0, Landroid/icu/impl/CurrencyData;->provider:Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;

    #@2
    invoke-interface {v0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfoProvider;->hasData()Z

    #@5
    move-result v0

    #@6
    return v0
.end method


# virtual methods
.method public abstract getName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSymbol(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getULocale()Landroid/icu/util/ULocale;
.end method

.method public abstract nameMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract symbolMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
