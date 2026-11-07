.class public Landroid/icu/impl/units/ConversionRates;
.super Ljava/lang/Object;
.source "ConversionRates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/units/ConversionRates$ConversionRatesSink;,
        Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;
    }
.end annotation


# instance fields
.field private blacklist mapToConversionRate:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "android/icu/impl/data/icudata"

    const-string v1, "units"

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 34
    .local v0, "resource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Landroid/icu/impl/units/ConversionRates$ConversionRatesSink;

    invoke-direct {v1}, Landroid/icu/impl/units/ConversionRates$ConversionRatesSink;-><init>()V

    .line 35
    .local v1, "sink":Landroid/icu/impl/units/ConversionRates$ConversionRatesSink;
    const-string v2, "convertUnits"

    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 36
    invoke-virtual {v1}, Landroid/icu/impl/units/ConversionRates$ConversionRatesSink;->getMapToConversionRate()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    .line 37
    return-void
.end method

.method private blacklist checkSimpleUnit(Landroid/icu/impl/units/MeasureUnitImpl;)Z
    .registers 6
    .param p1, "measureUnitImpl"    # Landroid/icu/impl/units/MeasureUnitImpl;

    .line 150
    invoke-virtual {p1}, Landroid/icu/impl/units/MeasureUnitImpl;->getComplexity()Landroid/icu/util/MeasureUnit$Complexity;

    move-result-object v0

    sget-object v1, Landroid/icu/util/MeasureUnit$Complexity;->SINGLE:Landroid/icu/util/MeasureUnit$Complexity;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_a

    return v2

    .line 151
    :cond_a
    invoke-virtual {p1}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/SingleUnitImpl;

    .line 153
    .local v0, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {v0}, Landroid/icu/impl/units/SingleUnitImpl;->getPrefix()Landroid/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v1

    sget-object v3, Landroid/icu/util/MeasureUnit$MeasurePrefix;->ONE:Landroid/icu/util/MeasureUnit$MeasurePrefix;

    if-eq v1, v3, :cond_1d

    return v2

    .line 154
    :cond_1d
    invoke-virtual {v0}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_25

    return v2

    .line 156
    :cond_25
    return v3
.end method

.method private blacklist getFactorToBase(Landroid/icu/impl/units/SingleUnitImpl;)Landroid/icu/impl/units/UnitsConverter$Factor;
    .registers 6
    .param p1, "singleUnit"    # Landroid/icu/impl/units/SingleUnitImpl;

    .line 47
    invoke-virtual {p1}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v0

    .line 48
    .local v0, "power":I
    invoke-virtual {p1}, Landroid/icu/impl/units/SingleUnitImpl;->getPrefix()Landroid/icu/util/MeasureUnit$MeasurePrefix;

    move-result-object v1

    .line 49
    .local v1, "unitPrefix":Landroid/icu/util/MeasureUnit$MeasurePrefix;
    iget-object v2, p0, Landroid/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-virtual {v2}, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->getConversionRate()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->processFactor(Ljava/lang/String;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v2

    .line 54
    .local v2, "result":Landroid/icu/impl/units/UnitsConverter$Factor;
    invoke-virtual {v2, v1}, Landroid/icu/impl/units/UnitsConverter$Factor;->applyPrefix(Landroid/icu/util/MeasureUnit$MeasurePrefix;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/icu/impl/units/UnitsConverter$Factor;->power(I)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public blacklist extractBaseUnits(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "measureUnitImpl"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/units/MeasureUnitImpl;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/icu/impl/units/SingleUnitImpl;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    invoke-virtual {p1}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v1

    .line 110
    .local v1, "singleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/units/SingleUnitImpl;

    .line 111
    .local v3, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {p0, v3}, Landroid/icu/impl/units/ConversionRates;->extractBaseUnits(Landroid/icu/impl/units/SingleUnitImpl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 112
    .end local v3    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    goto :goto_d

    .line 114
    :cond_21
    return-object v0
.end method

.method public blacklist extractBaseUnits(Landroid/icu/impl/units/SingleUnitImpl;)Ljava/util/ArrayList;
    .registers 5
    .param p1, "singleUnit"    # Landroid/icu/impl/units/SingleUnitImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/units/SingleUnitImpl;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/icu/impl/units/SingleUnitImpl;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Landroid/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-virtual {v0}, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "target":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->parseForIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v1

    .line 129
    .local v1, "targetImpl":Landroid/icu/impl/units/MeasureUnitImpl;
    invoke-virtual {p1}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/units/MeasureUnitImpl;->applyDimensionality(I)V

    .line 133
    invoke-virtual {v1}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public blacklist extractCompoundBaseUnit(Landroid/icu/impl/units/MeasureUnitImpl;)Landroid/icu/impl/units/MeasureUnitImpl;
    .registers 6
    .param p1, "measureUnit"    # Landroid/icu/impl/units/MeasureUnitImpl;

    .line 95
    invoke-virtual {p0, p1}, Landroid/icu/impl/units/ConversionRates;->extractBaseUnits(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;

    move-result-object v0

    .line 97
    .local v0, "baseUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    new-instance v1, Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v1}, Landroid/icu/impl/units/MeasureUnitImpl;-><init>()V

    .line 99
    .local v1, "result":Landroid/icu/impl/units/MeasureUnitImpl;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/units/SingleUnitImpl;

    .line 100
    .local v3, "baseUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {v1, v3}, Landroid/icu/impl/units/MeasureUnitImpl;->appendSingleUnit(Landroid/icu/impl/units/SingleUnitImpl;)Z

    .line 101
    .end local v3    # "baseUnit":Landroid/icu/impl/units/SingleUnitImpl;
    goto :goto_d

    .line 103
    :cond_1d
    return-object v1
.end method

.method public blacklist extractSystems(Landroid/icu/impl/units/SingleUnitImpl;)Ljava/lang/String;
    .registers 4
    .param p1, "singleUnit"    # Landroid/icu/impl/units/SingleUnitImpl;

    .line 140
    iget-object v0, p0, Landroid/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-virtual {v0}, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->getSystems()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFactorToBase(Landroid/icu/impl/units/MeasureUnitImpl;)Landroid/icu/impl/units/UnitsConverter$Factor;
    .registers 6
    .param p1, "measureUnit"    # Landroid/icu/impl/units/MeasureUnitImpl;

    .line 58
    new-instance v0, Landroid/icu/impl/units/UnitsConverter$Factor;

    invoke-direct {v0}, Landroid/icu/impl/units/UnitsConverter$Factor;-><init>()V

    .line 60
    .local v0, "result":Landroid/icu/impl/units/UnitsConverter$Factor;
    invoke-virtual {p1}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/units/SingleUnitImpl;

    .line 61
    .local v2, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-direct {p0, v2}, Landroid/icu/impl/units/ConversionRates;->getFactorToBase(Landroid/icu/impl/units/SingleUnitImpl;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Landroid/icu/impl/units/UnitsConverter$Factor;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v0

    .line 62
    .end local v2    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    goto :goto_d

    .line 64
    :cond_22
    return-object v0
.end method

.method protected blacklist getOffset(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/UnitsConverter$Factor;Landroid/icu/impl/units/UnitsConverter$Factor;Landroid/icu/impl/units/UnitsConverter$Convertibility;)Ljava/math/BigDecimal;
    .registers 13
    .param p1, "source"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p2, "target"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p3, "sourceToBase"    # Landroid/icu/impl/units/UnitsConverter$Factor;
    .param p4, "targetToBase"    # Landroid/icu/impl/units/UnitsConverter$Factor;
    .param p5, "convertibility"    # Landroid/icu/impl/units/UnitsConverter$Convertibility;

    .line 70
    sget-object v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;->CONVERTIBLE:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    const-wide/16 v1, 0x0

    if-eq p5, v0, :cond_b

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 71
    :cond_b
    invoke-direct {p0, p1}, Landroid/icu/impl/units/ConversionRates;->checkSimpleUnit(Landroid/icu/impl/units/MeasureUnitImpl;)Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-direct {p0, p2}, Landroid/icu/impl/units/ConversionRates;->checkSimpleUnit(Landroid/icu/impl/units/MeasureUnitImpl;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_5d

    .line 73
    :cond_18
    invoke-virtual {p1}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/SingleUnitImpl;

    invoke-virtual {v0}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "sourceSimpleIdentifier":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/units/SingleUnitImpl;

    invoke-virtual {v1}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "targetSimpleIdentifier":Ljava/lang/String;
    iget-object v2, p0, Landroid/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-virtual {v2}, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->getOffset()Ljava/math/BigDecimal;

    move-result-object v2

    .line 77
    .local v2, "sourceOffset":Ljava/math/BigDecimal;
    iget-object v3, p0, Landroid/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-virtual {v3}, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->getOffset()Ljava/math/BigDecimal;

    move-result-object v3

    .line 78
    .local v3, "targetOffset":Ljava/math/BigDecimal;
    nop

    .line 79
    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 80
    invoke-virtual {p4}, Landroid/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v6, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v4

    .line 78
    return-object v4

    .line 71
    .end local v0    # "sourceSimpleIdentifier":Ljava/lang/String;
    .end local v1    # "targetSimpleIdentifier":Ljava/lang/String;
    .end local v2    # "sourceOffset":Ljava/math/BigDecimal;
    .end local v3    # "targetOffset":Ljava/math/BigDecimal;
    :cond_5d
    :goto_5d
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getSpecialMappingName(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/lang/String;
    .registers 4
    .param p1, "simpleUnit"    # Landroid/icu/impl/units/MeasureUnitImpl;

    .line 89
    invoke-direct {p0, p1}, Landroid/icu/impl/units/ConversionRates;->checkSimpleUnit(Landroid/icu/impl/units/MeasureUnitImpl;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_8
    invoke-virtual {p1}, Landroid/icu/impl/units/MeasureUnitImpl;->getSingleUnits()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/SingleUnitImpl;

    invoke-virtual {v0}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "simpleIdentifier":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/impl/units/ConversionRates;->mapToConversionRate:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;

    invoke-virtual {v1}, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->getSpecialMappingName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
