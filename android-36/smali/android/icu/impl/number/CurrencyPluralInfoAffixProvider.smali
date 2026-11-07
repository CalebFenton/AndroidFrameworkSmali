.class public Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;
.super Ljava/lang/Object;
.source "CurrencyPluralInfoAffixProvider.java"

# interfaces
.implements Landroid/icu/impl/number/AffixPatternProvider;


# instance fields
.field private final blacklist affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/CurrencyPluralInfo;Landroid/icu/impl/number/DecimalFormatProperties;)V
    .registers 10
    .param p1, "cpi"    # Landroid/icu/text/CurrencyPluralInfo;
    .param p2, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget v0, Landroid/icu/impl/StandardPlural;->COUNT:I

    new-array v0, v0, [Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    iput-object v0, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    .line 19
    new-instance v0, Landroid/icu/impl/number/DecimalFormatProperties;

    invoke-direct {v0}, Landroid/icu/impl/number/DecimalFormatProperties;-><init>()V

    .line 20
    .local v0, "pluralProperties":Landroid/icu/impl/number/DecimalFormatProperties;
    invoke-virtual {v0, p2}, Landroid/icu/impl/number/DecimalFormatProperties;->copyFrom(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/impl/number/DecimalFormatProperties;

    .line 21
    sget-object v1, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/StandardPlural;

    .line 22
    .local v2, "plural":Landroid/icu/impl/StandardPlural;
    invoke-virtual {v2}, Landroid/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/icu/text/CurrencyPluralInfo;->getCurrencyPluralPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    .local v3, "pattern":Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/icu/impl/number/PatternStringParser;->parseToExistingProperties(Ljava/lang/String;Landroid/icu/impl/number/DecimalFormatProperties;)V

    .line 24
    iget-object v4, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    invoke-virtual {v2}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v5

    new-instance v6, Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    invoke-direct {v6, v0}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;-><init>(Landroid/icu/impl/number/DecimalFormatProperties;)V

    aput-object v6, v4, v5

    .line 25
    .end local v2    # "plural":Landroid/icu/impl/StandardPlural;
    .end local v3    # "pattern":Ljava/lang/String;
    goto :goto_17

    .line 26
    :cond_3c
    return-void
.end method


# virtual methods
.method public blacklist charAt(II)C
    .registers 5
    .param p1, "flags"    # I
    .param p2, "i"    # I

    .line 30
    and-int/lit16 v0, p1, 0xff

    .line 31
    .local v0, "pluralOrdinal":I
    iget-object v1, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->charAt(II)C

    move-result v1

    return v1
.end method

.method public blacklist containsSymbolType(I)Z
    .registers 4
    .param p1, "type"    # I

    .line 68
    iget-object v0, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->containsSymbolType(I)Z

    move-result v0

    return v0
.end method

.method public blacklist currencyAsDecimal()Z
    .registers 3

    .line 78
    iget-object v0, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->currencyAsDecimal()Z

    move-result v0

    return v0
.end method

.method public blacklist getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "flags"    # I

    .line 42
    and-int/lit16 v0, p1, 0xff

    .line 43
    .local v0, "pluralOrdinal":I
    iget-object v1, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist hasBody()Z
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->hasBody()Z

    move-result v0

    return v0
.end method

.method public blacklist hasCurrencySign()Z
    .registers 3

    .line 63
    iget-object v0, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->hasCurrencySign()Z

    move-result v0

    return v0
.end method

.method public blacklist hasNegativeSubpattern()Z
    .registers 3

    .line 53
    iget-object v0, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->hasNegativeSubpattern()Z

    move-result v0

    return v0
.end method

.method public blacklist length(I)I
    .registers 4
    .param p1, "flags"    # I

    .line 36
    and-int/lit16 v0, p1, 0xff

    .line 37
    .local v0, "pluralOrdinal":I
    iget-object v1, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->length(I)I

    move-result v1

    return v1
.end method

.method public blacklist negativeHasMinusSign()Z
    .registers 3

    .line 58
    iget-object v0, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->negativeHasMinusSign()Z

    move-result v0

    return v0
.end method

.method public blacklist positiveHasPlusSign()Z
    .registers 3

    .line 48
    iget-object v0, p0, Landroid/icu/impl/number/CurrencyPluralInfoAffixProvider;->affixesByPlural:[Landroid/icu/impl/number/PropertiesAffixPatternProvider;

    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    invoke-virtual {v1}, Landroid/icu/impl/StandardPlural;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/impl/number/PropertiesAffixPatternProvider;->positiveHasPlusSign()Z

    move-result v0

    return v0
.end method
