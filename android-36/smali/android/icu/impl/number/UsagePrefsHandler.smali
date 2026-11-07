.class public Landroid/icu/impl/number/UsagePrefsHandler;
.super Ljava/lang/Object;
.source "UsagePrefsHandler.java"

# interfaces
.implements Landroid/icu/impl/number/MicroPropsGenerator;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist fParent:Landroid/icu/impl/number/MicroPropsGenerator;

.field private blacklist fUnitsRouter:Landroid/icu/impl/units/UnitsRouter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 18
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Ljava/lang/String;Landroid/icu/impl/number/MicroPropsGenerator;)V
    .registers 7
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "inputUnit"    # Landroid/icu/util/MeasureUnit;
    .param p3, "usage"    # Ljava/lang/String;
    .param p4, "parent"    # Landroid/icu/impl/number/MicroPropsGenerator;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    nop

    .line 26
    iput-object p4, p0, Landroid/icu/impl/number/UsagePrefsHandler;->fParent:Landroid/icu/impl/number/MicroPropsGenerator;

    .line 27
    new-instance v0, Landroid/icu/impl/units/UnitsRouter;

    invoke-virtual {p2}, Landroid/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v1

    invoke-direct {v0, v1, p1, p3}, Landroid/icu/impl/units/UnitsRouter;-><init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/util/ULocale;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/impl/number/UsagePrefsHandler;->fUnitsRouter:Landroid/icu/impl/units/UnitsRouter;

    .line 28
    return-void
.end method

.method protected static blacklist mixedMeasuresToMicros(Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MicroProps;)V
    .registers 5
    .param p0, "complexConverterResult"    # Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "outMicros"    # Landroid/icu/impl/number/MicroProps;

    .line 36
    iget-object v0, p0, Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;->measures:Ljava/util/List;

    iput-object v0, p2, Landroid/icu/impl/number/MicroProps;->mixedMeasures:Ljava/util/List;

    .line 37
    iget v0, p0, Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;->indexOfQuantity:I

    iput v0, p2, Landroid/icu/impl/number/MicroProps;->indexOfQuantity:I

    .line 38
    iget-object v0, p2, Landroid/icu/impl/number/MicroProps;->mixedMeasures:Ljava/util/List;

    iget v1, p2, Landroid/icu/impl/number/MicroProps;->indexOfQuantity:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Measure;

    invoke-virtual {v0}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v0

    check-cast v0, Ljava/math/BigDecimal;

    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 39
    return-void
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

    .line 49
    iget-object v0, p0, Landroid/icu/impl/number/UsagePrefsHandler;->fUnitsRouter:Landroid/icu/impl/units/UnitsRouter;

    invoke-virtual {v0}, Landroid/icu/impl/units/UnitsRouter;->getOutputUnits()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;
    .registers 5
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 61
    iget-object v0, p0, Landroid/icu/impl/number/UsagePrefsHandler;->fParent:Landroid/icu/impl/number/MicroPropsGenerator;

    invoke-interface {v0, p1}, Landroid/icu/impl/number/MicroPropsGenerator;->processQuantity(Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/number/MicroProps;

    move-result-object v0

    .line 63
    .local v0, "micros":Landroid/icu/impl/number/MicroProps;
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->roundToInfinity()V

    .line 64
    iget-object v1, p0, Landroid/icu/impl/number/UsagePrefsHandler;->fUnitsRouter:Landroid/icu/impl/units/UnitsRouter;

    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/units/UnitsRouter;->route(Ljava/math/BigDecimal;Landroid/icu/impl/number/MicroProps;)Landroid/icu/impl/units/UnitsRouter$RouteResult;

    move-result-object v1

    .line 65
    .local v1, "routed":Landroid/icu/impl/units/UnitsRouter$RouteResult;
    iget-object v2, v1, Landroid/icu/impl/units/UnitsRouter$RouteResult;->outputUnit:Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {v2}, Landroid/icu/impl/units/MeasureUnitImpl;->build()Landroid/icu/util/MeasureUnit;

    move-result-object v2

    iput-object v2, v0, Landroid/icu/impl/number/MicroProps;->outputUnit:Landroid/icu/util/MeasureUnit;

    .line 66
    iget-object v2, v1, Landroid/icu/impl/units/UnitsRouter$RouteResult;->complexConverterResult:Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

    invoke-static {v2, p1, v0}, Landroid/icu/impl/number/UsagePrefsHandler;->mixedMeasuresToMicros(Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MicroProps;)V

    .line 67
    return-object v0
.end method
