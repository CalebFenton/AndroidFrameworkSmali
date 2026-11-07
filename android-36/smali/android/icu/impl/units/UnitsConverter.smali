.class public Landroid/icu/impl/units/UnitsConverter;
.super Ljava/lang/Object;
.source "UnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/units/UnitsConverter$Convertibility;,
        Landroid/icu/impl/units/UnitsConverter$Factor;,
        Landroid/icu/impl/units/UnitsConverter$ConversionInfo;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist minMetersPerSecForBeaufort:[Ljava/math/BigDecimal;


# instance fields
.field private blacklist conversionRate:Ljava/math/BigDecimal;

.field private blacklist offset:Ljava/math/BigDecimal;

.field private blacklist reciprocal:Z

.field private blacklist specialSource:Ljava/lang/String;

.field private blacklist specialTarget:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    nop

    .line 220
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/math/BigDecimal;

    .line 225
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 226
    const-wide v1, 0x3fd3333333333333L    # 0.3

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 227
    const-wide v1, 0x3ff999999999999aL    # 1.6

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 228
    const-wide v1, 0x400b333333333333L    # 3.4

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 229
    const-wide/high16 v1, 0x4016000000000000L    # 5.5

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 230
    const-wide/high16 v1, 0x4020000000000000L    # 8.0

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 231
    const-wide v1, 0x402599999999999aL    # 10.8

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 232
    const-wide v1, 0x402bcccccccccccdL    # 13.9

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 233
    const-wide v1, 0x4031333333333333L    # 17.2

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 234
    const-wide v1, 0x4034cccccccccccdL    # 20.8

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 235
    const-wide v1, 0x4038800000000000L    # 24.5

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 236
    const-wide v1, 0x403c800000000000L    # 28.5

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 237
    const-wide v1, 0x404059999999999aL    # 32.7

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 238
    const-wide v1, 0x4042733333333333L    # 36.9

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 239
    const-wide v1, 0x4044b33333333333L    # 41.4

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 240
    const-wide v1, 0x40470ccccccccccdL    # 46.1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 241
    const-wide v1, 0x40498ccccccccccdL    # 51.1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 242
    const-wide v1, 0x404be66666666666L    # 55.8

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 243
    const-wide v1, 0x404eb33333333333L    # 61.4

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/units/UnitsConverter;->minMetersPerSecForBeaufort:[Ljava/math/BigDecimal;

    .line 220
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/ConversionRates;)V
    .registers 10
    .param p1, "source"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p2, "target"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p3, "conversionRates"    # Landroid/icu/impl/units/ConversionRates;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {p1, p2, p3}, Landroid/icu/impl/units/UnitsConverter;->extractConvertibility(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/ConversionRates;)Landroid/icu/impl/units/UnitsConverter$Convertibility;

    move-result-object v5

    .line 61
    .local v5, "convertibility":Landroid/icu/impl/units/UnitsConverter$Convertibility;
    sget-object v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;->CONVERTIBLE:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    if-eq v5, v0, :cond_18

    sget-object v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;->RECIPROCAL:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    if-ne v5, v0, :cond_10

    goto :goto_18

    .line 62
    :cond_10
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v1, "input units must be convertible or reciprocal"

    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_18
    :goto_18
    invoke-virtual {p3, p1}, Landroid/icu/impl/units/ConversionRates;->getSpecialMappingName(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/UnitsConverter;->specialSource:Ljava/lang/String;

    .line 66
    invoke-virtual {p3, p2}, Landroid/icu/impl/units/ConversionRates;->getSpecialMappingName(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/UnitsConverter;->specialTarget:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Landroid/icu/impl/units/UnitsConverter;->specialSource:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_62

    iget-object v0, p0, Landroid/icu/impl/units/UnitsConverter;->specialTarget:Ljava/lang/String;

    if-nez v0, :cond_62

    .line 69
    invoke-virtual {p3, p1}, Landroid/icu/impl/units/ConversionRates;->getFactorToBase(Landroid/icu/impl/units/MeasureUnitImpl;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v3

    .line 70
    .local v3, "sourceToBase":Landroid/icu/impl/units/UnitsConverter$Factor;
    invoke-virtual {p3, p2}, Landroid/icu/impl/units/ConversionRates;->getFactorToBase(Landroid/icu/impl/units/MeasureUnitImpl;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v4

    .line 72
    .local v4, "targetToBase":Landroid/icu/impl/units/UnitsConverter$Factor;
    sget-object v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;->CONVERTIBLE:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    if-ne v5, v0, :cond_44

    .line 73
    invoke-virtual {v3, v4}, Landroid/icu/impl/units/UnitsConverter$Factor;->divide(Landroid/icu/impl/units/UnitsConverter$Factor;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    goto :goto_4f

    .line 75
    :cond_44
    nop

    .line 76
    invoke-virtual {v3, v4}, Landroid/icu/impl/units/UnitsConverter$Factor;->multiply(Landroid/icu/impl/units/UnitsConverter$Factor;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    .line 78
    :goto_4f
    sget-object v0, Landroid/icu/impl/units/UnitsConverter$Convertibility;->RECIPROCAL:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    if-ne v5, v0, :cond_54

    const/4 v1, 0x1

    :cond_54
    iput-boolean v1, p0, Landroid/icu/impl/units/UnitsConverter;->reciprocal:Z

    .line 81
    move-object v1, p1

    move-object v2, p2

    move-object v0, p3

    .end local p1    # "source":Landroid/icu/impl/units/MeasureUnitImpl;
    .end local p2    # "target":Landroid/icu/impl/units/MeasureUnitImpl;
    .end local p3    # "conversionRates":Landroid/icu/impl/units/ConversionRates;
    .local v0, "conversionRates":Landroid/icu/impl/units/ConversionRates;
    .local v1, "source":Landroid/icu/impl/units/MeasureUnitImpl;
    .local v2, "target":Landroid/icu/impl/units/MeasureUnitImpl;
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/units/ConversionRates;->getOffset(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/UnitsConverter$Factor;Landroid/icu/impl/units/UnitsConverter$Factor;Landroid/icu/impl/units/UnitsConverter$Convertibility;)Ljava/math/BigDecimal;

    move-result-object p1

    move-object p2, v1

    .end local v1    # "source":Landroid/icu/impl/units/MeasureUnitImpl;
    .local p2, "source":Landroid/icu/impl/units/MeasureUnitImpl;
    iput-object p1, p0, Landroid/icu/impl/units/UnitsConverter;->offset:Ljava/math/BigDecimal;

    .line 83
    nop

    .line 84
    .end local v3    # "sourceToBase":Landroid/icu/impl/units/UnitsConverter$Factor;
    .end local v4    # "targetToBase":Landroid/icu/impl/units/UnitsConverter$Factor;
    goto :goto_8d

    .line 68
    .end local v0    # "conversionRates":Landroid/icu/impl/units/ConversionRates;
    .end local v2    # "target":Landroid/icu/impl/units/MeasureUnitImpl;
    .restart local p1    # "source":Landroid/icu/impl/units/MeasureUnitImpl;
    .local p2, "target":Landroid/icu/impl/units/MeasureUnitImpl;
    .restart local p3    # "conversionRates":Landroid/icu/impl/units/ConversionRates;
    :cond_62
    move-object v2, p2

    move-object v0, p3

    move-object p2, p1

    .line 85
    .end local p1    # "source":Landroid/icu/impl/units/MeasureUnitImpl;
    .end local p3    # "conversionRates":Landroid/icu/impl/units/ConversionRates;
    .restart local v0    # "conversionRates":Landroid/icu/impl/units/ConversionRates;
    .restart local v2    # "target":Landroid/icu/impl/units/MeasureUnitImpl;
    .local p2, "source":Landroid/icu/impl/units/MeasureUnitImpl;
    iput-boolean v1, p0, Landroid/icu/impl/units/UnitsConverter;->reciprocal:Z

    .line 86
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object p1, p0, Landroid/icu/impl/units/UnitsConverter;->offset:Ljava/math/BigDecimal;

    .line 87
    iget-object p1, p0, Landroid/icu/impl/units/UnitsConverter;->specialSource:Ljava/lang/String;

    if-nez p1, :cond_7a

    .line 89
    invoke-virtual {v0, p2}, Landroid/icu/impl/units/ConversionRates;->getFactorToBase(Landroid/icu/impl/units/MeasureUnitImpl;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    goto :goto_8d

    .line 90
    :cond_7a
    iget-object p1, p0, Landroid/icu/impl/units/UnitsConverter;->specialTarget:Ljava/lang/String;

    if-nez p1, :cond_89

    .line 92
    invoke-virtual {v0, v2}, Landroid/icu/impl/units/ConversionRates;->getFactorToBase(Landroid/icu/impl/units/MeasureUnitImpl;)Landroid/icu/impl/units/UnitsConverter$Factor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/impl/units/UnitsConverter$Factor;->getConversionRate()Ljava/math/BigDecimal;

    move-result-object p1

    iput-object p1, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    goto :goto_8d

    .line 94
    :cond_89
    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    iput-object p1, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    .line 97
    :goto_8d
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "sourceIdentifier"    # Ljava/lang/String;
    .param p2, "targetIdentifier"    # Ljava/lang/String;

    .line 41
    nop

    .line 42
    invoke-static {p1}, Landroid/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    .line 43
    invoke-static {p2}, Landroid/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v1

    new-instance v2, Landroid/icu/impl/units/ConversionRates;

    invoke-direct {v2}, Landroid/icu/impl/units/ConversionRates;-><init>()V

    .line 41
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/impl/units/UnitsConverter;-><init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/ConversionRates;)V

    .line 46
    return-void
.end method

.method private static blacklist areDimensionsZeroes(Ljava/util/HashMap;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 132
    .local p0, "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 133
    .local v1, "value":Ljava/lang/Integer;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    return v2

    .line 134
    .end local v1    # "value":Ljava/lang/Integer;
    :cond_20
    goto :goto_8

    .line 136
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist baseToScale(Ljava/math/BigDecimal;[Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 7
    .param p1, "baseValue"    # Ljava/math/BigDecimal;
    .param p2, "minBaseForScaleValues"    # [Ljava/math/BigDecimal;

    .line 265
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 266
    .local v0, "scaleIndex":I
    if-gez v0, :cond_d

    .line 268
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    .line 270
    :cond_d
    array-length v1, p2

    add-int/lit8 v1, v1, -0x2

    .line 271
    .local v1, "scaleMax":I
    if-le v0, v1, :cond_13

    .line 272
    move v0, v1

    .line 274
    :cond_13
    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist extractConvertibility(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/ConversionRates;)Landroid/icu/impl/units/UnitsConverter$Convertibility;
    .registers 7
    .param p0, "source"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p1, "target"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p2, "conversionRates"    # Landroid/icu/impl/units/ConversionRates;

    .line 100
    invoke-virtual {p2, p0}, Landroid/icu/impl/units/ConversionRates;->extractBaseUnits(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;

    move-result-object v0

    .line 101
    .local v0, "sourceSingleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    invoke-virtual {p2, p1}, Landroid/icu/impl/units/ConversionRates;->extractBaseUnits(Landroid/icu/impl/units/MeasureUnitImpl;)Ljava/util/ArrayList;

    move-result-object v1

    .line 103
    .local v1, "targetSingleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v2, "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/icu/impl/units/UnitsConverter;->insertInMap(Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    .line 106
    const/4 v3, -0x1

    invoke-static {v2, v1, v3}, Landroid/icu/impl/units/UnitsConverter;->insertInMap(Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    .line 108
    invoke-static {v2}, Landroid/icu/impl/units/UnitsConverter;->areDimensionsZeroes(Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_1e

    sget-object v3, Landroid/icu/impl/units/UnitsConverter$Convertibility;->CONVERTIBLE:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    return-object v3

    .line 110
    :cond_1e
    const/4 v3, 0x2

    invoke-static {v2, v1, v3}, Landroid/icu/impl/units/UnitsConverter;->insertInMap(Ljava/util/HashMap;Ljava/util/ArrayList;I)V

    .line 111
    invoke-static {v2}, Landroid/icu/impl/units/UnitsConverter;->areDimensionsZeroes(Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_2b

    sget-object v3, Landroid/icu/impl/units/UnitsConverter$Convertibility;->RECIPROCAL:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    return-object v3

    .line 113
    :cond_2b
    sget-object v3, Landroid/icu/impl/units/UnitsConverter$Convertibility;->UNCONVERTIBLE:Landroid/icu/impl/units/UnitsConverter$Convertibility;

    return-object v3
.end method

.method private static blacklist insertInMap(Ljava/util/HashMap;Ljava/util/ArrayList;I)V
    .registers 8
    .param p2, "multiplier"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/icu/impl/units/SingleUnitImpl;",
            ">;I)V"
        }
    .end annotation

    .line 121
    .local p0, "dimensionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "singleUnits":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/icu/impl/units/SingleUnitImpl;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/units/SingleUnitImpl;

    .line 122
    .local v1, "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    invoke-virtual {v1}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 123
    invoke-virtual {v1}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v4

    mul-int/2addr v4, p2

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    .line 125
    :cond_3a
    invoke-virtual {v1}, Landroid/icu/impl/units/SingleUnitImpl;->getSimpleUnitID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/icu/impl/units/SingleUnitImpl;->getDimensionality()I

    move-result v3

    mul-int/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v1    # "singleUnit":Landroid/icu/impl/units/SingleUnitImpl;
    :goto_4a
    goto :goto_4

    .line 128
    :cond_4b
    return-void
.end method

.method private blacklist scaleToBase(Ljava/math/BigDecimal;[Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 9
    .param p1, "scaleValue"    # Ljava/math/BigDecimal;
    .param p2, "minBaseForScaleValues"    # [Ljava/math/BigDecimal;

    .line 252
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    .line 253
    .local v0, "pointFive":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 254
    .local v1, "scaleAdjust":Ljava/math/BigDecimal;
    array-length v2, p2

    add-int/lit8 v2, v2, -0x2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->min(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 255
    .local v2, "scaleAdjustCapped":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v3

    .line 257
    .local v3, "scaleIndex":I
    aget-object v4, p2, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, p2, v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public blacklist convert(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 6
    .param p1, "inputValue"    # Ljava/math/BigDecimal;

    .line 141
    move-object v0, p1

    .line 142
    .local v0, "result":Ljava/math/BigDecimal;
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->specialSource:Ljava/lang/String;

    if-nez v1, :cond_2f

    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->specialTarget:Ljava/lang/String;

    if-eqz v1, :cond_a

    goto :goto_2f

    .line 166
    :cond_a
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/units/UnitsConverter;->offset:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 167
    iget-boolean v1, p0, Landroid/icu/impl/units/UnitsConverter;->reciprocal:Z

    if-eqz v1, :cond_2e

    .line 169
    nop

    .line 170
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_26

    .line 172
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v1

    .line 174
    :cond_26
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 176
    :cond_2e
    return-object v0

    .line 143
    :cond_2f
    :goto_2f
    move-object v1, p1

    .line 145
    .local v1, "base":Ljava/math/BigDecimal;
    iget-object v2, p0, Landroid/icu/impl/units/UnitsConverter;->specialSource:Ljava/lang/String;

    const-string v3, "beaufort"

    if-eqz v2, :cond_47

    .line 148
    iget-object v2, p0, Landroid/icu/impl/units/UnitsConverter;->specialSource:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 149
    sget-object v2, Landroid/icu/impl/units/UnitsConverter;->minMetersPerSecForBeaufort:[Ljava/math/BigDecimal;

    invoke-direct {p0, p1, v2}, Landroid/icu/impl/units/UnitsConverter;->scaleToBase(Ljava/math/BigDecimal;[Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_46

    :cond_45
    move-object v2, p1

    .end local v1    # "base":Ljava/math/BigDecimal;
    .local v2, "base":Ljava/math/BigDecimal;
    :goto_46
    goto :goto_4d

    .line 152
    .end local v2    # "base":Ljava/math/BigDecimal;
    .restart local v1    # "base":Ljava/math/BigDecimal;
    :cond_47
    iget-object v2, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 155
    .end local v1    # "base":Ljava/math/BigDecimal;
    .restart local v2    # "base":Ljava/math/BigDecimal;
    :goto_4d
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->specialTarget:Ljava/lang/String;

    if-eqz v1, :cond_62

    .line 158
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->specialTarget:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 159
    sget-object v1, Landroid/icu/impl/units/UnitsConverter;->minMetersPerSecForBeaufort:[Ljava/math/BigDecimal;

    invoke-direct {p0, v2, v1}, Landroid/icu/impl/units/UnitsConverter;->baseToScale(Ljava/math/BigDecimal;[Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_61

    :cond_60
    move-object v1, v2

    .end local v0    # "result":Ljava/math/BigDecimal;
    .local v1, "result":Ljava/math/BigDecimal;
    :goto_61
    goto :goto_6a

    .line 162
    .end local v1    # "result":Ljava/math/BigDecimal;
    .restart local v0    # "result":Ljava/math/BigDecimal;
    :cond_62
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v2, v1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 164
    .end local v0    # "result":Ljava/math/BigDecimal;
    .restart local v1    # "result":Ljava/math/BigDecimal;
    :goto_6a
    return-object v1
.end method

.method public blacklist convertInverse(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 6
    .param p1, "inputValue"    # Ljava/math/BigDecimal;

    .line 181
    move-object v0, p1

    .line 182
    .local v0, "result":Ljava/math/BigDecimal;
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->specialSource:Ljava/lang/String;

    if-nez v1, :cond_31

    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->specialTarget:Ljava/lang/String;

    if-eqz v1, :cond_a

    goto :goto_31

    .line 206
    :cond_a
    iget-boolean v1, p0, Landroid/icu/impl/units/UnitsConverter;->reciprocal:Z

    if-eqz v1, :cond_22

    .line 208
    nop

    .line 209
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-nez v1, :cond_1a

    .line 211
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    return-object v1

    .line 213
    :cond_1a
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v0, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 215
    :cond_22
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->offset:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 216
    return-object v0

    .line 183
    :cond_31
    :goto_31
    move-object v1, p1

    .line 185
    .local v1, "base":Ljava/math/BigDecimal;
    iget-object v2, p0, Landroid/icu/impl/units/UnitsConverter;->specialTarget:Ljava/lang/String;

    const-string v3, "beaufort"

    if-eqz v2, :cond_49

    .line 188
    iget-object v2, p0, Landroid/icu/impl/units/UnitsConverter;->specialTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 189
    sget-object v2, Landroid/icu/impl/units/UnitsConverter;->minMetersPerSecForBeaufort:[Ljava/math/BigDecimal;

    invoke-direct {p0, p1, v2}, Landroid/icu/impl/units/UnitsConverter;->scaleToBase(Ljava/math/BigDecimal;[Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_48

    :cond_47
    move-object v2, p1

    .end local v1    # "base":Ljava/math/BigDecimal;
    .local v2, "base":Ljava/math/BigDecimal;
    :goto_48
    goto :goto_4f

    .line 192
    .end local v2    # "base":Ljava/math/BigDecimal;
    .restart local v1    # "base":Ljava/math/BigDecimal;
    :cond_49
    iget-object v2, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    invoke-virtual {p1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 195
    .end local v1    # "base":Ljava/math/BigDecimal;
    .restart local v2    # "base":Ljava/math/BigDecimal;
    :goto_4f
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->specialSource:Ljava/lang/String;

    if-eqz v1, :cond_64

    .line 198
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->specialSource:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 199
    sget-object v1, Landroid/icu/impl/units/UnitsConverter;->minMetersPerSecForBeaufort:[Ljava/math/BigDecimal;

    invoke-direct {p0, v2, v1}, Landroid/icu/impl/units/UnitsConverter;->baseToScale(Ljava/math/BigDecimal;[Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_63

    :cond_62
    move-object v1, v2

    .end local v0    # "result":Ljava/math/BigDecimal;
    .local v1, "result":Ljava/math/BigDecimal;
    :goto_63
    goto :goto_6c

    .line 202
    .end local v1    # "result":Ljava/math/BigDecimal;
    .restart local v0    # "result":Ljava/math/BigDecimal;
    :cond_64
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v2, v1, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 204
    .end local v0    # "result":Ljava/math/BigDecimal;
    .restart local v1    # "result":Ljava/math/BigDecimal;
    :goto_6c
    return-object v1
.end method

.method public blacklist getConversionInfo()Landroid/icu/impl/units/UnitsConverter$ConversionInfo;
    .registers 3

    .line 287
    new-instance v0, Landroid/icu/impl/units/UnitsConverter$ConversionInfo;

    invoke-direct {v0}, Landroid/icu/impl/units/UnitsConverter$ConversionInfo;-><init>()V

    .line 288
    .local v0, "result":Landroid/icu/impl/units/UnitsConverter$ConversionInfo;
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$ConversionInfo;->conversionRate:Ljava/math/BigDecimal;

    .line 289
    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->offset:Ljava/math/BigDecimal;

    iput-object v1, v0, Landroid/icu/impl/units/UnitsConverter$ConversionInfo;->offset:Ljava/math/BigDecimal;

    .line 290
    iget-boolean v1, p0, Landroid/icu/impl/units/UnitsConverter;->reciprocal:Z

    iput-boolean v1, v0, Landroid/icu/impl/units/UnitsConverter$ConversionInfo;->reciprocal:Z

    .line 292
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnitsConverter [conversionRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->conversionRate:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/units/UnitsConverter;->offset:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
