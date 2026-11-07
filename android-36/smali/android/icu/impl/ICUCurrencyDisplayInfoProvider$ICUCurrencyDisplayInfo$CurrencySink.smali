.class final Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;
.super Landroid/icu/impl/UResource$Sink;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrencySink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field final blacklist entrypointTable:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

.field blacklist formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

.field final blacklist noRoot:Z

.field blacklist parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

.field blacklist pluralsData:[Ljava/lang/String;

.field blacklist spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

.field blacklist unitPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist variantSymbol:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 356
    const-class v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;

    return-void
.end method

.method constructor blacklist <init>(ZLandroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;)V
    .registers 4
    .param p1, "noRoot"    # Z
    .param p2, "entrypointTable"    # Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    .line 380
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    .line 362
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->pluralsData:[Ljava/lang/String;

    .line 363
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    .line 364
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->unitPatterns:Ljava/util/Map;

    .line 365
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    .line 366
    iput-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->variantSymbol:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    .line 381
    iput-boolean p1, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->noRoot:Z

    .line 382
    iput-object p2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->entrypointTable:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    .line 383
    return-void
.end method

.method private blacklist consumeTopTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 6
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 419
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 420
    .local v0, "table":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 421
    const-string v2, "Currencies"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 422
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_2e

    .line 423
    :cond_17
    const-string v2, "Currencies%variant"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 424
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesVariantTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_2e

    .line 425
    :cond_23
    const-string v2, "CurrencyPlurals"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 426
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencyPluralsTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 420
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 429
    .end local v1    # "i":I
    :cond_31
    return-void
.end method


# virtual methods
.method blacklist consumeCurrenciesEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 11
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 471
    nop

    .line 472
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "isoCode":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_68

    .line 476
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v1

    .line 478
    .local v1, "array":Landroid/icu/impl/UResource$Array;
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    iget-object v2, v2, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_23

    .line 479
    invoke-interface {v1, v3, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 480
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->symbol:Ljava/lang/String;

    .line 482
    :cond_23
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    iget-object v2, v2, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v2, :cond_35

    .line 483
    invoke-interface {v1, v4, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 484
    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->displayName:Ljava/lang/String;

    .line 489
    :cond_35
    invoke-interface {v1}, Landroid/icu/impl/UResource$Array;->getSize()I

    move-result v2

    const/4 v5, 0x2

    if-le v2, v5, :cond_67

    iget-object v2, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    iget-object v2, v2, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->formatInfo:Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    if-nez v2, :cond_67

    .line 490
    invoke-interface {v1, v5, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 491
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v2

    .line 492
    .local v2, "formatArray":Landroid/icu/impl/UResource$Array;
    invoke-interface {v2, v3, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 493
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v3

    .line 494
    .local v3, "formatPattern":Ljava/lang/String;
    invoke-interface {v2, v4, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 495
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    .line 496
    .local v4, "decimalSeparator":Ljava/lang/String;
    invoke-interface {v2, v5, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 497
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    .line 498
    .local v5, "groupingSeparator":Ljava/lang/String;
    iget-object v6, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->formattingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;

    new-instance v7, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    invoke-direct {v7, v0, v3, v4, v5}, Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v6, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$FormattingData;->formatInfo:Landroid/icu/impl/CurrencyData$CurrencyFormatInfo;

    .line 501
    .end local v2    # "formatArray":Landroid/icu/impl/UResource$Array;
    .end local v3    # "formatPattern":Ljava/lang/String;
    .end local v4    # "decimalSeparator":Ljava/lang/String;
    .end local v5    # "groupingSeparator":Ljava/lang/String;
    :cond_67
    return-void

    .line 474
    .end local v1    # "array":Landroid/icu/impl/UResource$Array;
    :cond_68
    new-instance v1, Landroid/icu/util/ICUException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected data type in Currencies table for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method blacklist consumeCurrenciesTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 9
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 453
    nop

    .line 454
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 455
    .local v0, "table":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 456
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, "isoCode":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 460
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getArray()Landroid/icu/impl/UResource$Array;

    move-result-object v3

    .line 462
    .local v3, "array":Landroid/icu/impl/UResource$Array;
    iget-object v4, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v4, v4, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->symbolToIsoCode:Ljava/util/Map;

    invoke-interface {v4, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const/4 v4, 0x0

    invoke-interface {v3, v4, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 464
    iget-object v4, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v4, v4, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->symbolToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const/4 v4, 0x1

    invoke-interface {v3, v4, p2}, Landroid/icu/impl/UResource$Array;->getValue(ILandroid/icu/impl/UResource$Value;)Z

    .line 466
    iget-object v4, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v4, v4, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->nameToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .end local v2    # "isoCode":Ljava/lang/String;
    .end local v3    # "array":Landroid/icu/impl/UResource$Array;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 458
    .restart local v2    # "isoCode":Ljava/lang/String;
    :cond_44
    new-instance v3, Landroid/icu/util/ICUException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected data type in Currencies table for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 468
    .end local v1    # "i":I
    .end local v2    # "isoCode":Ljava/lang/String;
    :cond_5d
    return-void
.end method

.method blacklist consumeCurrenciesVariantEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 5
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 511
    nop

    .line 513
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->variantSymbol:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    iget-object v0, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 514
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->variantSymbol:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$VariantSymbol;->symbol:Ljava/lang/String;

    .line 516
    :cond_f
    return-void
.end method

.method blacklist consumeCurrenciesVariantTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 8
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 525
    nop

    .line 526
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 527
    .local v0, "table":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 528
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, "isoCode":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v3, v3, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->symbolToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .end local v2    # "isoCode":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 531
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method blacklist consumeCurrencyPluralsEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 9
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 561
    nop

    .line 562
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 563
    .local v0, "pluralsTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 564
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v2

    .line 565
    .local v2, "plural":Landroid/icu/impl/StandardPlural;
    if-eqz v2, :cond_33

    .line 569
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->pluralsData:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_30

    .line 570
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->pluralsData:[Ljava/lang/String;

    invoke-virtual {v2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 563
    .end local v2    # "plural":Landroid/icu/impl/StandardPlural;
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 566
    .restart local v2    # "plural":Landroid/icu/impl/StandardPlural;
    :cond_33
    new-instance v3, Landroid/icu/util/ICUException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not make StandardPlural from keyword "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 573
    .end local v1    # "j":I
    .end local v2    # "plural":Landroid/icu/impl/StandardPlural;
    :cond_4c
    return-void
.end method

.method blacklist consumeCurrencyPluralsTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 12
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 544
    nop

    .line 545
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 546
    .local v0, "table":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 547
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "isoCode":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v3

    .line 549
    .local v3, "pluralsTable":Landroid/icu/impl/UResource$Table;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_15
    invoke-interface {v3, v4, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 550
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/impl/StandardPlural;->orNullFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v5

    .line 551
    .local v5, "plural":Landroid/icu/impl/StandardPlural;
    if-eqz v5, :cond_33

    .line 555
    iget-object v6, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->parsingData:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;

    iget-object v6, v6, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$ParsingData;->nameToIsoCode:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    .end local v5    # "plural":Landroid/icu/impl/StandardPlural;
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 552
    .restart local v5    # "plural":Landroid/icu/impl/StandardPlural;
    :cond_33
    new-instance v6, Landroid/icu/util/ICUException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not make StandardPlural from keyword "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 546
    .end local v2    # "isoCode":Ljava/lang/String;
    .end local v3    # "pluralsTable":Landroid/icu/impl/UResource$Table;
    .end local v4    # "j":I
    .end local v5    # "plural":Landroid/icu/impl/StandardPlural;
    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 558
    .end local v1    # "i":I
    :cond_4f
    return-void
.end method

.method blacklist consumeCurrencySpacingTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 11
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 590
    nop

    .line 591
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 592
    .local v0, "spacingTypesTable":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 594
    const-string v2, "beforeCurrency"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    .line 595
    sget-object v2, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->BEFORE:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    .line 596
    .local v2, "type":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    iget-object v4, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    iput-boolean v3, v4, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasBeforeCurrency:Z

    goto :goto_2a

    .line 597
    .end local v2    # "type":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    :cond_1c
    const-string v2, "afterCurrency"

    invoke-virtual {p1, v2}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 598
    sget-object v2, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;->AFTER:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;

    .line 599
    .restart local v2    # "type":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    iget-object v4, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    iput-boolean v3, v4, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->hasAfterCurrency:Z

    .line 604
    :goto_2a
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v3

    .line 605
    .local v3, "patternsTable":Landroid/icu/impl/UResource$Table;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2f
    invoke-interface {v3, v4, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 607
    const-string v5, "currencyMatch"

    invoke-virtual {p1, v5}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 608
    sget-object v5, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->CURRENCY_MATCH:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .local v5, "pattern":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    goto :goto_55

    .line 609
    .end local v5    # "pattern":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    :cond_40
    const-string v5, "surroundingMatch"

    invoke-virtual {p1, v5}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 610
    sget-object v5, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->SURROUNDING_MATCH:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .restart local v5    # "pattern":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    goto :goto_55

    .line 611
    .end local v5    # "pattern":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    :cond_4b
    const-string v5, "insertBetween"

    invoke-virtual {p1, v5}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 612
    sget-object v5, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;->INSERT_BETWEEN:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;

    .line 617
    .restart local v5    # "pattern":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    :goto_55
    iget-object v6, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->spacingInfo:Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v5, v7}, Landroid/icu/impl/CurrencyData$CurrencySpacingInfo;->setSymbolIfNull(Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;Ljava/lang/String;)V

    .line 605
    .end local v5    # "pattern":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingPattern;
    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 592
    .end local v2    # "type":Landroid/icu/impl/CurrencyData$CurrencySpacingInfo$SpacingType;
    .end local v3    # "patternsTable":Landroid/icu/impl/UResource$Table;
    .end local v4    # "j":I
    :cond_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 620
    .end local v1    # "i":I
    :cond_64
    return-void
.end method

.method blacklist consumeCurrencyUnitPatternsTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V
    .registers 8
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;

    .line 629
    nop

    .line 630
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v0

    .line 631
    .local v0, "table":Landroid/icu/impl/UResource$Table;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {v0, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 632
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, "pluralKeyword":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->unitPatterns:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    .line 634
    iget-object v3, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->unitPatterns:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .end local v2    # "pluralKeyword":Ljava/lang/String;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 637
    .end local v1    # "i":I
    :cond_24
    return-void
.end method

.method public blacklist put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .registers 5
    .param p1, "key"    # Landroid/icu/impl/UResource$Key;
    .param p2, "value"    # Landroid/icu/impl/UResource$Value;
    .param p3, "isRoot"    # Z

    .line 391
    iget-boolean v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->noRoot:Z

    if-eqz v0, :cond_7

    if-eqz p3, :cond_7

    .line 393
    return-void

    .line 396
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->entrypointTable:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-virtual {v0}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    goto :goto_29

    .line 413
    :pswitch_11
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencyUnitPatternsTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_29

    .line 410
    :pswitch_15
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencySpacingTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 411
    goto :goto_29

    .line 407
    :pswitch_19
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesVariantEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 408
    goto :goto_29

    .line 404
    :pswitch_1d
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrencyPluralsEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 405
    goto :goto_29

    .line 401
    :pswitch_21
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeCurrenciesEntry(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 402
    goto :goto_29

    .line 398
    :pswitch_25
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink;->consumeTopTable(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    .line 399
    nop

    .line 416
    :goto_29
    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
    .end packed-switch
.end method
