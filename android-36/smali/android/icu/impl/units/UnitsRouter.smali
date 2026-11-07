.class public Landroid/icu/impl/units/UnitsRouter;
.super Ljava/lang/Object;
.source "UnitsRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/units/UnitsRouter$ConverterPreference;,
        Landroid/icu/impl/units/UnitsRouter$RouteResult;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist converterPreferences_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/impl/units/UnitsRouter$ConverterPreference;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist outputUnits_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/util/MeasureUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .registers 16
    .param p1, "inputUnit"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "usage"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/units/UnitsRouter;->outputUnits_:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/units/UnitsRouter;->converterPreferences_:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Landroid/icu/impl/units/UnitsData;

    invoke-direct {v0}, Landroid/icu/impl/units/UnitsData;-><init>()V

    .line 61
    .local v0, "data":Landroid/icu/impl/units/UnitsData;
    invoke-virtual {v0, p1}, Landroid/icu/impl/units/UnitsData;->getCategory(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "category":Ljava/lang/String;
    invoke-virtual {v0, v1, p3, p2}, Landroid/icu/impl/units/UnitsData;->getPreferencesFor(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)[Landroid/icu/impl/units/UnitPreferences$UnitPreference;

    move-result-object v2

    .line 64
    .local v2, "unitPreferences":[Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    array-length v4, v2

    if-ge v3, v4, :cond_67

    .line 65
    aget-object v4, v2, v3

    .line 67
    .local v4, "preference":Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    nop

    .line 68
    invoke-virtual {v4}, Landroid/icu/impl/units/UnitPreferences$UnitPreference;->getUnit()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/icu/impl/units/MeasureUnitImpl$UnitsParser;->parseForIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v8

    .line 70
    .local v8, "complexTargetUnitImpl":Landroid/icu/impl/units/MeasureUnitImpl;
    invoke-virtual {v4}, Landroid/icu/impl/units/UnitPreferences$UnitPreference;->getSkeleton()Ljava/lang/String;

    move-result-object v10

    .line 77
    .local v10, "precision":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    const-string v5, "precision-increment"

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    goto :goto_48

    .line 78
    :cond_40
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "Only `precision-increment` is allowed"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 81
    :cond_48
    :goto_48
    iget-object v5, p0, Landroid/icu/impl/units/UnitsRouter;->outputUnits_:Ljava/util/ArrayList;

    invoke-virtual {v8}, Landroid/icu/impl/units/MeasureUnitImpl;->build()Landroid/icu/util/MeasureUnit;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v5, p0, Landroid/icu/impl/units/UnitsRouter;->converterPreferences_:Ljava/util/ArrayList;

    new-instance v6, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;

    .line 83
    invoke-virtual {v4}, Landroid/icu/impl/units/UnitPreferences$UnitPreference;->getGeq()Ljava/math/BigDecimal;

    move-result-object v9

    .line 84
    invoke-virtual {v0}, Landroid/icu/impl/units/UnitsData;->getConversionRates()Landroid/icu/impl/units/ConversionRates;

    move-result-object v11

    move-object v7, p1

    .end local p1    # "inputUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    .local v7, "inputUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    invoke-direct/range {v6 .. v11}, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;-><init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Ljava/math/BigDecimal;Ljava/lang/String;Landroid/icu/impl/units/ConversionRates;)V

    .line 82
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v4    # "preference":Landroid/icu/impl/units/UnitPreferences$UnitPreference;
    .end local v8    # "complexTargetUnitImpl":Landroid/icu/impl/units/MeasureUnitImpl;
    .end local v10    # "precision":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 86
    .end local v3    # "i":I
    .end local v7    # "inputUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    .restart local p1    # "inputUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    :cond_67
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .registers 5
    .param p1, "inputUnitIdentifier"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "usage"    # Ljava/lang/String;

    .line 53
    invoke-static {p1}, Landroid/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/icu/impl/units/UnitsRouter;-><init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/util/ULocale;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private static blacklist parseSkeletonToPrecision(Ljava/lang/String;)Landroid/icu/number/Precision;
    .registers 4
    .param p0, "precisionSkeleton"    # Ljava/lang/String;

    .line 125
    const-string v0, "precision-increment/"

    .line 126
    .local v0, "kSkeletonPrefix":Ljava/lang/String;
    const-string v1, "precision-increment/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "incrementValue":Ljava/lang/String;
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/icu/number/Precision;->increment(Ljava/math/BigDecimal;)Landroid/icu/number/Precision;

    move-result-object v2

    return-object v2

    .line 127
    .end local v1    # "incrementValue":Ljava/lang/String;
    :cond_1c
    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v2, "precisionSkeleton is only precision-increment"

    invoke-direct {v1, v2}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public blacklist getOutputUnits()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/util/MeasureUnit;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Landroid/icu/impl/units/UnitsRouter;->outputUnits_:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist route(Ljava/math/BigDecimal;Landroid/icu/impl/number/MicroProps;)Landroid/icu/impl/units/UnitsRouter$RouteResult;
    .registers 10
    .param p1, "quantity"    # Ljava/math/BigDecimal;
    .param p2, "micros"    # Landroid/icu/impl/number/MicroProps;

    .line 90
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_6

    :cond_4
    iget-object v0, p2, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    .line 91
    .local v0, "rounder":Landroid/icu/number/Precision;
    :goto_6
    const/4 v1, 0x0

    .line 92
    .local v1, "converterPreference":Landroid/icu/impl/units/UnitsRouter$ConverterPreference;
    iget-object v2, p0, Landroid/icu/impl/units/UnitsRouter;->converterPreferences_:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;

    .line 93
    .local v3, "itr":Landroid/icu/impl/units/UnitsRouter$ConverterPreference;
    move-object v1, v3

    .line 94
    iget-object v4, v1, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;->converter:Landroid/icu/impl/units/ComplexUnitsConverter;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v5

    iget-object v6, v1, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;->limit:Ljava/math/BigDecimal;

    invoke-virtual {v4, v5, v6}, Landroid/icu/impl/units/ComplexUnitsConverter;->greaterThanOrEqual(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 96
    goto :goto_2a

    .line 98
    .end local v3    # "itr":Landroid/icu/impl/units/UnitsRouter$ConverterPreference;
    :cond_29
    goto :goto_d

    .line 99
    :cond_2a
    :goto_2a
    nop

    .line 100
    nop

    .line 103
    if-eqz v0, :cond_55

    instance-of v2, v0, Landroid/icu/number/Precision$BogusRounder;

    if-eqz v2, :cond_55

    .line 104
    move-object v2, v0

    check-cast v2, Landroid/icu/number/Precision$BogusRounder;

    .line 105
    .local v2, "bogus":Landroid/icu/number/Precision$BogusRounder;
    iget-object v3, v1, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;->precision:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_48

    .line 106
    iget-object v3, v1, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;->precision:Ljava/lang/String;

    invoke-static {v3}, Landroid/icu/impl/units/UnitsRouter;->parseSkeletonToPrecision(Ljava/lang/String;)Landroid/icu/number/Precision;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/number/Precision$BogusRounder;->into(Landroid/icu/number/Precision;)Landroid/icu/number/Precision;

    move-result-object v0

    goto :goto_55

    .line 111
    :cond_48
    invoke-static {}, Landroid/icu/number/Precision;->integer()Landroid/icu/number/FractionPrecision;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/icu/number/FractionPrecision;->withMinDigits(I)Landroid/icu/number/Precision;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/icu/number/Precision$BogusRounder;->into(Landroid/icu/number/Precision;)Landroid/icu/number/Precision;

    move-result-object v0

    .line 115
    .end local v2    # "bogus":Landroid/icu/number/Precision$BogusRounder;
    :cond_55
    :goto_55
    if-eqz p2, :cond_59

    .line 116
    iput-object v0, p2, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    .line 118
    :cond_59
    new-instance v2, Landroid/icu/impl/units/UnitsRouter$RouteResult;

    iget-object v3, v1, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;->converter:Landroid/icu/impl/units/ComplexUnitsConverter;

    .line 119
    invoke-virtual {v3, p1, v0}, Landroid/icu/impl/units/ComplexUnitsConverter;->convert(Ljava/math/BigDecimal;Landroid/icu/number/Precision;)Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

    move-result-object v3

    iget-object v4, v1, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;->targetUnit:Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v2, p0, v3, v4}, Landroid/icu/impl/units/UnitsRouter$RouteResult;-><init>(Landroid/icu/impl/units/UnitsRouter;Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;Landroid/icu/impl/units/MeasureUnitImpl;)V

    .line 118
    return-object v2
.end method
