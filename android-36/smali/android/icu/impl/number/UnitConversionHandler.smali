.class public Landroid/icu/impl/number/UnitConversionHandler;
.super Ljava/lang/Object;
.source "UnitConversionHandler.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# instance fields
.field private blacklist fComplexUnitConverter:Landroid/icu/impl/units/ComplexUnitsConverter;

.field private blacklist fOutputUnit:Landroid/icu/util/MeasureUnit;

.field private final blacklist fParent:Landroid/icu/impl/number/MicroPropsGenerator;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/util/MeasureUnit;Landroid/icu/impl/number/MicroPropsGenerator;)V
    .registers 6
    .param p1, "targetUnit"    # Landroid/icu/util/MeasureUnit;
    .param p2, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/icu/impl/number/UnitConversionHandler;->fOutputUnit:Landroid/icu/util/MeasureUnit;

    .line 32
    iput-object p2, p0, Landroid/icu/impl/number/UnitConversionHandler;->fParent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 33
    invoke-virtual {p1}, Landroid/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    .line 34
    .local v0, "targetUnitImpl":Landroid/icu/impl/units/MeasureUnitImpl;
    new-instance v1, Landroid/icu/impl/units/ComplexUnitsConverter;

    new-instance v2, Landroid/icu/impl/units/ConversionRates;

    invoke-direct {v2}, Landroid/icu/impl/units/ConversionRates;-><init>()V

    invoke-direct {v1, v0, v2}, Landroid/icu/impl/units/ComplexUnitsConverter;-><init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/ConversionRates;)V

    iput-object v1, p0, Landroid/icu/impl/number/UnitConversionHandler;->fComplexUnitConverter:Landroid/icu/impl/units/ComplexUnitsConverter;

    .line 35
    return-void
.end method


# virtual methods
.method public blacklist processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 6
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 42
    iget-object v0, p0, Landroid/icu/impl/number/UnitConversionHandler;->fParent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 44
    .local v0, "result":Landroid/icu/impl/number/MicroProps;
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->roundToInfinity()V

    .line 45
    iget-object v1, p0, Landroid/icu/impl/number/UnitConversionHandler;->fComplexUnitConverter:Landroid/icu/impl/units/ComplexUnitsConverter;

    .line 46
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    iget-object v3, v0, Landroid/icu/impl/number/MicroProps;->rounder:Landroid/icu/number/Precision;

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/units/ComplexUnitsConverter;->convert(Ljava/math/BigDecimal;Landroid/icu/number/Precision;)Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

    move-result-object v1

    .line 48
    .local v1, "complexConverterResult":Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;
    iget-object v2, p0, Landroid/icu/impl/number/UnitConversionHandler;->fOutputUnit:Landroid/icu/util/MeasureUnit;

    iput-object v2, v0, Landroid/icu/impl/number/MicroProps;->outputUnit:Landroid/icu/util/MeasureUnit;

    .line 49
    invoke-static {v1, p1, v0}, Landroid/icu/impl/number/UsagePrefsHandler;->mixedMeasuresToMicros(Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MicroProps;)V

    .line 51
    return-object v0
.end method
