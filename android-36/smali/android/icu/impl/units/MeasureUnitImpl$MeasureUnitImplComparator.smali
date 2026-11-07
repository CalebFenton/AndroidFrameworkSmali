.class Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;
.super Ljava/lang/Object;
.source "MeasureUnitImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/MeasureUnitImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MeasureUnitImplComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/icu/impl/units/MeasureUnitImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist conversionRates:Landroid/icu/impl/units/ConversionRates;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/units/ConversionRates;)V
    .registers 2
    .param p1, "conversionRates"    # Landroid/icu/impl/units/ConversionRates;

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput-object p1, p0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->conversionRates:Landroid/icu/impl/units/ConversionRates;

    .line 798
    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;)I
    .registers 8
    .param p1, "o1"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p2, "o2"    # Landroid/icu/impl/units/MeasureUnitImpl;

    .line 802
    iget-object v0, p0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->conversionRates:Landroid/icu/impl/units/ConversionRates;

    invoke-virtual {v0, p1}, Landroid/icu/impl/units/ConversionRates;->getSpecialMappingName(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, "special1":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->conversionRates:Landroid/icu/impl/units/ConversionRates;

    invoke-virtual {v1, p2}, Landroid/icu/impl/units/ConversionRates;->getSpecialMappingName(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "special2":Ljava/lang/String;
    if-nez v0, :cond_2a

    if-eqz v1, :cond_11

    goto :goto_2a

    .line 816
    :cond_11
    iget-object v2, p0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->conversionRates:Landroid/icu/impl/units/ConversionRates;

    invoke-virtual {v2, p1}, Landroid/icu/impl/units/ConversionRates;->getFactorToBase(Landroid/icu/impl/units/MeasureUnitImpl;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object v2

    .line 817
    .local v2, "factor1":Ljava/math/BigDecimal;
    iget-object v3, p0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->conversionRates:Landroid/icu/impl/units/ConversionRates;

    invoke-virtual {v3, p2}, Landroid/icu/impl/units/ConversionRates;->getFactorToBase(Landroid/icu/impl/units/MeasureUnitImpl;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object v3

    .line 819
    .local v3, "factor2":Ljava/math/BigDecimal;
    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v4

    return v4

    .line 805
    .end local v2    # "factor1":Ljava/math/BigDecimal;
    .end local v3    # "factor2":Ljava/math/BigDecimal;
    :cond_2a
    :goto_2a
    if-nez v0, :cond_2e

    .line 807
    const/4 v2, -0x1

    return v2

    .line 809
    :cond_2e
    if-nez v1, :cond_32

    .line 811
    const/4 v2, 0x1

    return v2

    .line 814
    :cond_32
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 793
    check-cast p1, Landroid/icu/impl/units/MeasureUnitImpl;

    check-cast p2, Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->compare(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;)I

    move-result p1

    return p1
.end method
