.class public Landroid/icu/impl/units/UnitsData;
.super Ljava/lang/Object;
.source "UnitsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/units/UnitsData$Categories;,
        Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;,
        Landroid/icu/impl/units/UnitsData$CategoriesSink;,
        Landroid/icu/impl/units/UnitsData$Constants;
    }
.end annotation


# static fields
.field private static blacklist simpleUnitCategories:[I

.field private static blacklist simpleUnits:[Ljava/lang/String;


# instance fields
.field private blacklist conversionRates:Landroid/icu/impl/units/ConversionRates;

.field private blacklist unitPreferences:Landroid/icu/impl/units/UnitPreferences;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 28
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/impl/units/UnitsData;->simpleUnits:[Ljava/lang/String;

    .line 32
    sput-object v0, Landroid/icu/impl/units/UnitsData;->simpleUnitCategories:[I

    .line 50
    const-string v0, "android/icu/impl/data/icudata"

    const-string v1, "units"

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 51
    .local v0, "resource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;

    invoke-direct {v1}, Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;-><init>()V

    .line 52
    .local v1, "sink":Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;
    const-string v2, "convertUnits"

    invoke-virtual {v0, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 53
    iget-object v2, v1, Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnits:[Ljava/lang/String;

    sput-object v2, Landroid/icu/impl/units/UnitsData;->simpleUnits:[Ljava/lang/String;

    .line 54
    iget-object v2, v1, Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;->simpleUnitCategories:[I

    sput-object v2, Landroid/icu/impl/units/UnitsData;->simpleUnitCategories:[I

    .line 55
    .end local v0    # "resource":Landroid/icu/impl/ICUResourceBundle;
    .end local v1    # "sink":Landroid/icu/impl/units/UnitsData$SimpleUnitIdentifiersSink;
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/icu/impl/units/ConversionRates;

    invoke-direct {v0}, Landroid/icu/impl/units/ConversionRates;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/units/UnitsData;->conversionRates:Landroid/icu/impl/units/ConversionRates;

    .line 40
    new-instance v0, Landroid/icu/impl/units/UnitPreferences;

    invoke-direct {v0}, Landroid/icu/impl/units/UnitPreferences;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/units/UnitsData;->unitPreferences:Landroid/icu/impl/units/UnitPreferences;

    .line 41
    return-void
.end method

.method public static blacklist getCategoryIndexOfSimpleUnit(I)I
    .registers 2
    .param p0, "simpleUnitIndex"    # I

    .line 66
    sget-object v0, Landroid/icu/impl/units/UnitsData;->simpleUnitCategories:[I

    aget v0, v0, p0

    return v0
.end method

.method public static blacklist getSimpleUnits()[Ljava/lang/String;
    .registers 1

    .line 44
    sget-object v0, Landroid/icu/impl/units/UnitsData;->simpleUnits:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public blacklist getCategory(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/lang/String;
    .registers 9
    .param p1, "measureUnit"    # Landroid/icu/impl/units/MeasureUnitImpl;

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Landroid/icu/impl/units/UnitsData;->getConversionRates()Landroid/icu/impl/units/ConversionRates;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/icu/impl/units/ConversionRates;->extractCompoundBaseUnit(Landroid/icu/impl/units/MeasureUnitImpl;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    .line 76
    .local v0, "baseMeasureUnitImpl":Landroid/icu/impl/units/MeasureUnitImpl;
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->serialize()V

    .line 77
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "identifier":Ljava/lang/String;
    sget-object v2, Landroid/icu/impl/units/UnitsData$Categories;->baseUnitToIndex:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 83
    .local v2, "index":Ljava/lang/Integer;
    if-nez v2, :cond_2d

    .line 84
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->takeReciprocal()V

    .line 85
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->serialize()V

    .line 86
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 87
    sget-object v3, Landroid/icu/impl/units/UnitsData$Categories;->baseUnitToIndex:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/Integer;

    .line 91
    :cond_2d
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->takeReciprocal()V

    .line 92
    invoke-virtual {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->copyAndSimplify()Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v3

    .line 93
    .local v3, "simplifiedUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    if-nez v2, :cond_46

    .line 94
    invoke-virtual {v3}, Landroid/icu/impl/units/MeasureUnitImpl;->serialize()V

    .line 95
    invoke-virtual {v3}, Landroid/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 96
    sget-object v4, Landroid/icu/impl/units/UnitsData$Categories;->baseUnitToIndex:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    .line 100
    :cond_46
    if-nez v2, :cond_5b

    .line 101
    invoke-virtual {v3}, Landroid/icu/impl/units/MeasureUnitImpl;->takeReciprocal()V

    .line 102
    invoke-virtual {v3}, Landroid/icu/impl/units/MeasureUnitImpl;->serialize()V

    .line 103
    invoke-virtual {v3}, Landroid/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 104
    sget-object v4, Landroid/icu/impl/units/UnitsData$Categories;->baseUnitToIndex:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/lang/Integer;

    .line 108
    :cond_5b
    if-eqz v2, :cond_66

    .line 112
    sget-object v4, Landroid/icu/impl/units/UnitsData$Categories;->indexToCategory:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    return-object v4

    .line 109
    :cond_66
    new-instance v4, Landroid/icu/impl/IllegalIcuArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This unit does not has a category"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/icu/impl/units/MeasureUnitImpl;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public blacklist getConversionRates()Landroid/icu/impl/units/ConversionRates;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/icu/impl/units/UnitsData;->conversionRates:Landroid/icu/impl/units/ConversionRates;

    return-object v0
.end method

.method public blacklist getPreferencesFor(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    .registers 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "usage"    # Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    .line 116
    iget-object v0, p0, Landroid/icu/impl/units/UnitsData;->unitPreferences:Landroid/icu/impl/units/UnitPreferences;

    invoke-virtual {v0, p1, p2, p3, p0}, Landroid/icu/impl/units/UnitPreferences;->getPreferencesFor(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/units/UnitsData;)[Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUnitPreferences()Landroid/icu/impl/units/UnitPreferences;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/icu/impl/units/UnitsData;->unitPreferences:Landroid/icu/impl/units/UnitPreferences;

    return-object v0
.end method
