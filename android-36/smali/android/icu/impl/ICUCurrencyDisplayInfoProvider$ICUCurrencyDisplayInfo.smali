.class Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
.super Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICUCurrencyDisplayInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;,
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;,
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;,
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    }
.end annotation


# instance fields
.field final blacklist fallback:Z

.field private volatile blacklist formattingDataCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

.field final blacklist locale:Landroid/icu/util/ULocale;

.field private volatile blacklist parsingDataCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist pluralsDataCache:[Ljava/lang/String;

.field private final blacklist rb:Landroid/icu/impl/ICUResourceBundle;

.field private volatile blacklist spacingInfoCache:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

.field private volatile blacklist unitPatternsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile blacklist variantSymbolCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Z)V
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "rb"    # Landroid/icu/impl/ICUResourceBundle;
    .param p3, "fallback"    # Z

    .line 144
    invoke-direct {p0}, Landroid/icu/impl/CurrencyData$CurrencyDisplayInfo;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->formattingDataCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    .line 86
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->variantSymbolCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    .line 98
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->pluralsDataCache:[Ljava/lang/String;

    .line 103
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->parsingDataCache:Ljava/lang/ref/SoftReference;

    .line 108
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->unitPatternsCache:Ljava/util/Map;

    .line 113
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->spacingInfoCache:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    .line 145
    iput-object p1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->locale:Landroid/icu/util/ULocale;

    .line 146
    iput-boolean p3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    .line 147
    iput-object p2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    .line 148
    return-void
.end method


# virtual methods
.method blacklist fetchFormattingData(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;
    .registers 7
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 280
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->formattingDataCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    .line 281
    .local v0, "result":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;
    if-eqz v0, :cond_c

    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->isoCode:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 282
    :cond_c
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    invoke-direct {v1, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 283
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    iget-boolean v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCIES:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 284
    .local v1, "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    .line 285
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Currencies/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 286
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->formattingDataCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    .line 288
    .end local v1    # "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    :cond_39
    return-object v0
.end method

.method blacklist fetchParsingData()Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;
    .registers 5

    .line 317
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->parsingDataCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    .line 318
    .local v0, "result":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;
    if-nez v0, :cond_2b

    .line 319
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    invoke-direct {v1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;-><init>()V

    move-object v0, v1

    .line 320
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    iget-boolean v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->TOP:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 321
    .local v1, "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    .line 322
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    const-string v3, ""

    invoke-virtual {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 323
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->parsingDataCache:Ljava/lang/ref/SoftReference;

    .line 325
    .end local v1    # "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    :cond_2b
    return-object v0
.end method

.method blacklist fetchPluralsData(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->pluralsDataCache:[Ljava/lang/String;

    .line 305
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_d

    aget-object v2, v0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 306
    :cond_d
    sget v2, Landroid/icu/impl/StandardPlural;->COUNT:I

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 307
    aput-object p1, v0, v1

    .line 308
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    iget-boolean v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_PLURALS:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 309
    .local v1, "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->pluralsData:[Ljava/lang/String;

    .line 310
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrencyPlurals/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 311
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->pluralsDataCache:[Ljava/lang/String;

    .line 313
    .end local v1    # "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    :cond_3c
    return-object v0
.end method

.method blacklist fetchSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
    .registers 5

    .line 341
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->spacingInfoCache:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    .line 342
    .local v0, "result":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
    if-nez v0, :cond_20

    .line 343
    new-instance v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    invoke-direct {v1}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;-><init>()V

    move-object v0, v1

    .line 344
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    iget-boolean v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_SPACING:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 345
    .local v1, "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    .line 346
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    const-string v3, "currencySpacing"

    invoke-virtual {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 347
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->spacingInfoCache:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    .line 349
    .end local v1    # "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    :cond_20
    return-object v0
.end method

.method blacklist fetchUnitPatterns()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->unitPatternsCache:Ljava/util/Map;

    .line 330
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1d

    .line 331
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v0, v1

    .line 332
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    const/4 v2, 0x0

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_UNIT_PATTERNS:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 333
    .local v1, "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->unitPatterns:Ljava/util/Map;

    .line 334
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    const-string v3, "CurrencyUnitPatterns"

    invoke-virtual {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 335
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->unitPatternsCache:Ljava/util/Map;

    .line 337
    .end local v1    # "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    :cond_1d
    return-object v0
.end method

.method blacklist fetchVariantSymbol(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;
    .registers 8
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "variant"    # Ljava/lang/String;

    .line 292
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->variantSymbolCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    .line 293
    .local v0, "result":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;
    if-eqz v0, :cond_14

    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->isoCode:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->variant:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 294
    :cond_14
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    invoke-direct {v1, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 295
    new-instance v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;

    iget-boolean v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    xor-int/lit8 v2, v2, 0x1

    sget-object v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_VARIANT:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;-><init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V

    .line 296
    .local v1, "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    iput-object v0, v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->variantSymbol:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    .line 297
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Currencies%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 298
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->variantSymbolCache:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    .line 300
    .end local v1    # "sink":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
    :cond_4b
    return-object v0
.end method

.method public blacklist getFormalSymbol(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 190
    const-string v0, "formal"

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchVariantSymbol(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    move-result-object v0

    .line 193
    .local v0, "variantSymbol":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    if-nez v1, :cond_13

    iget-boolean v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz v1, :cond_13

    .line 194
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 196
    :cond_13
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getFormatInfo(Ljava/lang/String;)Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;
    .registers 4
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 260
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchFormattingData(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    move-result-object v0

    .line 261
    .local v0, "formattingData":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->formatInfo:Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    return-object v1
.end method

.method public blacklist getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 157
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchFormattingData(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    move-result-object v0

    .line 160
    .local v0, "formattingData":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz v1, :cond_d

    .line 161
    return-object p1

    .line 163
    :cond_d
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getNarrowSymbol(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 179
    const-string v0, "narrow"

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchVariantSymbol(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    move-result-object v0

    .line 182
    .local v0, "variantSymbol":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    if-nez v1, :cond_13

    iget-boolean v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz v1, :cond_13

    .line 183
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 185
    :cond_13
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getPluralName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "pluralKey"    # Ljava/lang/String;

    .line 212
    invoke-static {p2}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    .line 213
    .local v0, "plural":Landroid/icu/impl/StandardPlural;
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchPluralsData(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "pluralsData":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchUnitPatterns()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 217
    .local v2, "pluralKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 218
    .local v3, "result":Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 219
    invoke-virtual {v0}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v1, v4

    .line 221
    :cond_1b
    if-nez v3, :cond_31

    iget-boolean v4, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-nez v4, :cond_27

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 224
    :cond_27
    sget-object v4, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v4}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v1, v4

    .line 226
    :cond_31
    if-nez v3, :cond_43

    iget-boolean v4, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-nez v4, :cond_3d

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 228
    :cond_3d
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchFormattingData(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    move-result-object v4

    .line 229
    .local v4, "formattingData":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;
    iget-object v3, v4, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    .line 231
    .end local v4    # "formattingData":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;
    :cond_43
    if-nez v3, :cond_4a

    iget-boolean v4, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz v4, :cond_4a

    .line 233
    move-object v3, p1

    .line 235
    :cond_4a
    return-object v3
.end method

.method public blacklist getSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
    .registers 3

    .line 266
    invoke-virtual {p0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchSpacingInfo()Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    move-result-object v0

    .line 269
    .local v0, "spacingInfo":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;
    iget-boolean v1, v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasBeforeCurrency:Z

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasAfterCurrency:Z

    if-nez v1, :cond_13

    :cond_c
    iget-boolean v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz v1, :cond_13

    .line 270
    sget-object v1, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->DEFAULT:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    return-object v1

    .line 272
    :cond_13
    return-object v0
.end method

.method public blacklist getSymbol(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 168
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchFormattingData(Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    move-result-object v0

    .line 171
    .local v0, "formattingData":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    if-nez v1, :cond_d

    iget-boolean v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz v1, :cond_d

    .line 172
    return-object p1

    .line 174
    :cond_d
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    return-object v1
.end method

.method public blacklist getULocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->rb:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnitPatterns()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchUnitPatterns()Ljava/util/Map;

    move-result-object v0

    .line 255
    .local v0, "unitPatterns":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method

.method public blacklist getVariantSymbol(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "isoCode"    # Ljava/lang/String;

    .line 201
    const-string v0, "variant"

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchVariantSymbol(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    move-result-object v0

    .line 204
    .local v0, "variantSymbol":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    if-nez v1, :cond_13

    iget-boolean v1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fallback:Z

    if-eqz v1, :cond_13

    .line 205
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->getSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 207
    :cond_13
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    return-object v1
.end method

.method public blacklist nameMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchParsingData()Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    move-result-object v0

    .line 247
    .local v0, "parsingData":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->nameToIsoCode:Ljava/util/Map;

    return-object v1
.end method

.method public blacklist symbolMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;->fetchParsingData()Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    move-result-object v0

    .line 241
    .local v0, "parsingData":Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;
    iget-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->symbolToIsoCode:Ljava/util/Map;

    return-object v1
.end method
