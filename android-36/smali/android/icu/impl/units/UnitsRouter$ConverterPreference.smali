.class public Landroid/icu/impl/units/UnitsRouter$ConverterPreference;
.super Ljava/lang/Object;
.source "UnitsRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/UnitsRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConverterPreference"
.end annotation


# instance fields
.field final blacklist converter:Landroid/icu/impl/units/ComplexUnitsConverter;

.field final blacklist limit:Ljava/math/BigDecimal;

.field final blacklist precision:Ljava/lang/String;

.field final blacklist targetUnit:Landroid/icu/impl/units/MeasureUnitImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Ljava/lang/String;Landroid/icu/impl/units/ConversionRates;)V
    .registers 13
    .param p1, "source"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p2, "targetUnit"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p3, "precision"    # Ljava/lang/String;
    .param p4, "conversionRates"    # Landroid/icu/impl/units/ConversionRates;

    .line 170
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    .end local p1    # "source":Landroid/icu/impl/units/MeasureUnitImpl;
    .end local p2    # "targetUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    .end local p3    # "precision":Ljava/lang/String;
    .end local p4    # "conversionRates":Landroid/icu/impl/units/ConversionRates;
    .local v3, "source":Landroid/icu/impl/units/MeasureUnitImpl;
    .local v4, "targetUnit":Landroid/icu/impl/units/MeasureUnitImpl;
    .local v6, "precision":Ljava/lang/String;
    .local v7, "conversionRates":Landroid/icu/impl/units/ConversionRates;
    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;-><init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Ljava/math/BigDecimal;Ljava/lang/String;Landroid/icu/impl/units/ConversionRates;)V

    .line 172
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Ljava/math/BigDecimal;Ljava/lang/String;Landroid/icu/impl/units/ConversionRates;)V
    .registers 7
    .param p1, "source"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p2, "targetUnit"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p3, "limit"    # Ljava/math/BigDecimal;
    .param p4, "precision"    # Ljava/lang/String;
    .param p5, "conversionRates"    # Landroid/icu/impl/units/ConversionRates;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Landroid/icu/impl/units/ComplexUnitsConverter;

    invoke-direct {v0, p1, p2, p5}, Landroid/icu/impl/units/ComplexUnitsConverter;-><init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/ConversionRates;)V

    iput-object v0, p0, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;->converter:Landroid/icu/impl/units/ComplexUnitsConverter;

    .line 177
    iput-object p3, p0, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;->limit:Ljava/math/BigDecimal;

    .line 178
    iput-object p4, p0, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;->precision:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Landroid/icu/impl/units/UnitsRouter$ConverterPreference;->targetUnit:Landroid/icu/impl/units/MeasureUnitImpl;

    .line 181
    return-void
.end method
