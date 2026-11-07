.class public Landroid/icu/impl/units/ComplexUnitsConverter;
.super Ljava/lang/Object;
.source "ComplexUnitsConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field public static final blacklist EPSILON:Ljava/math/BigDecimal;

.field public static final blacklist EPSILON_MULTIPLIER:Ljava/math/BigDecimal;


# instance fields
.field private blacklist inputUnit_:Landroid/icu/impl/units/MeasureUnitImpl;

.field public blacklist unitsConverters_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/impl/units/UnitsConverter;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist units_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 27
    nop

    .line 28
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/units/ComplexUnitsConverter;->EPSILON:Ljava/math/BigDecimal;

    .line 29
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Landroid/icu/impl/units/ComplexUnitsConverter;->EPSILON:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/units/ComplexUnitsConverter;->EPSILON_MULTIPLIER:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/ConversionRates;)V
    .registers 8
    .param p1, "targetUnit"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p2, "conversionRates"    # Landroid/icu/impl/units/ConversionRates;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/icu/impl/units/MeasureUnitImpl;->extractIndividualUnitsWithIndices()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    .line 54
    nop

    .line 57
    iget-object v0, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object v0, v0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;

    iput-object v0, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->inputUnit_:Landroid/icu/impl/units/MeasureUnitImpl;

    .line 58
    new-instance v0, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;

    invoke-direct {v0, p2}, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;-><init>(Landroid/icu/impl/units/ConversionRates;)V

    .line 60
    .local v0, "comparator":Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;
    iget-object v1, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    .line 61
    .local v2, "unitWithIndex":Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;
    iget-object v3, v2, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;

    iget-object v4, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->inputUnit_:Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {v0, v3, v4}, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplComparator;->compare(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;)I

    move-result v3

    if-lez v3, :cond_3c

    .line 62
    iget-object v3, v2, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;

    iput-object v3, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->inputUnit_:Landroid/icu/impl/units/MeasureUnitImpl;

    .line 64
    .end local v2    # "unitWithIndex":Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;
    :cond_3c
    goto :goto_22

    .line 66
    :cond_3d
    invoke-direct {p0, p2}, Landroid/icu/impl/units/ComplexUnitsConverter;->init(Landroid/icu/impl/units/ConversionRates;)V

    .line 67
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/ConversionRates;)V
    .registers 5
    .param p1, "inputUnit"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p2, "outputUnits"    # Landroid/icu/impl/units/MeasureUnitImpl;
    .param p3, "conversionRates"    # Landroid/icu/impl/units/ConversionRates;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->inputUnit_:Landroid/icu/impl/units/MeasureUnitImpl;

    .line 100
    invoke-virtual {p2}, Landroid/icu/impl/units/MeasureUnitImpl;->extractIndividualUnitsWithIndices()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    .line 101
    nop

    .line 103
    invoke-direct {p0, p3}, Landroid/icu/impl/units/ComplexUnitsConverter;->init(Landroid/icu/impl/units/ConversionRates;)V

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "inputUnitIdentifier"    # Ljava/lang/String;
    .param p2, "outputUnitsIdentifier"    # Ljava/lang/String;

    .line 79
    nop

    .line 80
    invoke-static {p1}, Landroid/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v0

    .line 81
    invoke-static {p2}, Landroid/icu/impl/units/MeasureUnitImpl;->forIdentifier(Ljava/lang/String;)Landroid/icu/impl/units/MeasureUnitImpl;

    move-result-object v1

    new-instance v2, Landroid/icu/impl/units/ConversionRates;

    invoke-direct {v2}, Landroid/icu/impl/units/ConversionRates;-><init>()V

    .line 79
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/impl/units/ComplexUnitsConverter;-><init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/ConversionRates;)V

    .line 84
    return-void
.end method

.method private blacklist applyRounder(Ljava/util/List;Ljava/math/BigDecimal;Landroid/icu/number/Precision;)Ljava/math/BigDecimal;
    .registers 12
    .param p2, "quantity"    # Ljava/math/BigDecimal;
    .param p3, "rounder"    # Landroid/icu/number/Precision;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;",
            "Ljava/math/BigDecimal;",
            "Landroid/icu/number/Precision;",
            ")",
            "Ljava/math/BigDecimal;"
        }
    .end annotation

    .line 246
    .local p1, "intValues":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    if-nez p3, :cond_3

    .line 247
    return-object p2

    .line 250
    :cond_3
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/math/BigDecimal;)V

    .line 251
    .local v0, "quantityBCD":Landroid/icu/impl/number/DecimalQuantity;
    invoke-virtual {p3, v0}, Landroid/icu/number/Precision;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 252
    invoke-interface {v0}, Landroid/icu/impl/number/DecimalQuantity;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object p2

    .line 254
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    .line 256
    return-object p2

    .line 260
    :cond_16
    iget-object v1, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 261
    .local v1, "lastIndex":I
    iget-object v2, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/units/UnitsConverter;

    invoke-virtual {v2, p2}, Landroid/icu/impl/units/UnitsConverter;->convertInverse(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Landroid/icu/impl/units/ComplexUnitsConverter;->EPSILON_MULTIPLIER:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    sget-object v3, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 262
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 263
    .local v2, "carry":Ljava/math/BigDecimal;
    sget-object v3, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v3}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-gtz v3, :cond_40

    .line 264
    return-object p2

    .line 266
    :cond_40
    iget-object v3, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/units/UnitsConverter;

    invoke-virtual {v3, v2}, Landroid/icu/impl/units/UnitsConverter;->convert(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p2

    .line 267
    add-int/lit8 v3, v1, -0x1

    add-int/lit8 v5, v1, -0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 270
    add-int/lit8 v3, v1, -0x1

    .local v3, "j":I
    :goto_67
    if-lez v3, :cond_cd

    .line 271
    iget-object v5, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/units/UnitsConverter;

    .line 272
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/icu/impl/units/UnitsConverter;->convertInverse(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v6, Landroid/icu/impl/units/ComplexUnitsConverter;->EPSILON_MULTIPLIER:Ljava/math/BigDecimal;

    .line 273
    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 274
    invoke-virtual {v5, v4, v6}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v2

    .line 275
    sget-object v5, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v2, v5}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v5

    if-gtz v5, :cond_98

    .line 276
    goto :goto_cd

    .line 278
    :cond_98
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/math/BigInteger;

    iget-object v6, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/units/UnitsConverter;

    invoke-virtual {v6, v2}, Landroid/icu/impl/units/UnitsConverter;->convert(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 279
    add-int/lit8 v5, v3, -0x1

    add-int/lit8 v6, v3, -0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 270
    add-int/lit8 v3, v3, -0x1

    goto :goto_67

    .line 282
    .end local v3    # "j":I
    :cond_cd
    :goto_cd
    return-object p2
.end method

.method private blacklist init(Landroid/icu/impl/units/ConversionRates;)V
    .registers 8
    .param p1, "conversionRates"    # Landroid/icu/impl/units/ConversionRates;

    .line 112
    iget-object v0, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    new-instance v1, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;

    invoke-direct {v1, p1}, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndexComparator;-><init>(Landroid/icu/impl/units/ConversionRates;)V

    .line 113
    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_1c
    if-ge v0, v1, :cond_5a

    .line 131
    if-nez v0, :cond_37

    .line 132
    iget-object v2, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    new-instance v3, Landroid/icu/impl/units/UnitsConverter;

    iget-object v4, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->inputUnit_:Landroid/icu/impl/units/MeasureUnitImpl;

    iget-object v5, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object v5, v5, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v3, v4, v5, p1}, Landroid/icu/impl/units/UnitsConverter;-><init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/ConversionRates;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 134
    :cond_37
    iget-object v2, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    new-instance v3, Landroid/icu/impl/units/UnitsConverter;

    iget-object v4, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    add-int/lit8 v5, v0, -0x1

    .line 135
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object v4, v4, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;

    iget-object v5, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object v5, v5, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-direct {v3, v4, v5, p1}, Landroid/icu/impl/units/UnitsConverter;-><init>(Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/MeasureUnitImpl;Landroid/icu/impl/units/ConversionRates;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :goto_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 138
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_5a
    return-void
.end method


# virtual methods
.method public blacklist convert(Ljava/math/BigDecimal;Landroid/icu/number/Precision;)Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;
    .registers 12
    .param p1, "quantity"    # Ljava/math/BigDecimal;
    .param p2, "rounder"    # Landroid/icu/number/Precision;

    .line 177
    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 178
    .local v0, "sign":Ljava/math/BigInteger;
    sget-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p1, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    const/4 v2, 0x1

    if-gez v1, :cond_1b

    iget-object v1, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1b

    .line 179
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p1

    .line 180
    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    .line 189
    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .local v1, "intValues":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_2e
    if-ge v2, v3, :cond_70

    .line 191
    iget-object v4, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/units/UnitsConverter;

    invoke-virtual {v4, p1}, Landroid/icu/impl/units/UnitsConverter;->convert(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 193
    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_6d

    .line 200
    sget-object v4, Landroid/icu/impl/units/ComplexUnitsConverter;->EPSILON_MULTIPLIER:Ljava/math/BigDecimal;

    invoke-virtual {p1, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    .line 201
    .local v4, "flooredQuantity":Ljava/math/BigInteger;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 206
    .local v5, "remainder":Ljava/math/BigDecimal;
    sget-object v6, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v5, v6}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_6c

    .line 207
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_6d

    .line 209
    :cond_6c
    move-object p1, v5

    .line 190
    .end local v4    # "flooredQuantity":Ljava/math/BigInteger;
    .end local v5    # "remainder":Ljava/math/BigDecimal;
    :cond_6d
    :goto_6d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 214
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_70
    invoke-direct {p0, v1, p1, p2}, Landroid/icu/impl/units/ComplexUnitsConverter;->applyRounder(Ljava/util/List;Ljava/math/BigDecimal;Landroid/icu/number/Precision;)Ljava/math/BigDecimal;

    move-result-object p1

    .line 217
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    .local v2, "measures":Ljava/util/List;, "Ljava/util/List<Landroid/icu/util/Measure;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_80
    iget-object v4, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8f

    .line 219
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    .line 223
    .end local v3    # "i":I
    :cond_8f
    const/4 v3, -0x1

    .line 224
    .local v3, "indexOfQuantity":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v5, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "n":I
    :goto_97
    if-ge v4, v5, :cond_f7

    .line 225
    add-int/lit8 v6, v5, -0x1

    if-ge v4, v6, :cond_c8

    .line 226
    new-instance v6, Landroid/icu/util/Measure;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/math/BigInteger;

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object v8, v8, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {v8}, Landroid/icu/impl/units/MeasureUnitImpl;->build()Landroid/icu/util/MeasureUnit;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 227
    .local v6, "measure":Landroid/icu/util/Measure;
    iget-object v7, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget v7, v7, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->index:I

    invoke-interface {v2, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v6    # "measure":Landroid/icu/util/Measure;
    goto :goto_f4

    .line 229
    :cond_c8
    iget-object v6, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget v3, v6, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->index:I

    .line 230
    new-instance v6, Landroid/icu/util/Measure;

    .line 231
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    .line 232
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;

    iget-object v8, v8, Landroid/icu/impl/units/MeasureUnitImpl$MeasureUnitImplWithIndex;->unitImpl:Landroid/icu/impl/units/MeasureUnitImpl;

    invoke-virtual {v8}, Landroid/icu/impl/units/MeasureUnitImpl;->build()Landroid/icu/util/MeasureUnit;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 233
    .restart local v6    # "measure":Landroid/icu/util/Measure;
    invoke-interface {v2, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v6    # "measure":Landroid/icu/util/Measure;
    :goto_f4
    add-int/lit8 v4, v4, 0x1

    goto :goto_97

    .line 237
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_f7
    new-instance v4, Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;

    invoke-direct {v4, v3, v2}, Landroid/icu/impl/units/ComplexUnitsConverter$ComplexConverterResult;-><init>(ILjava/util/List;)V

    return-object v4
.end method

.method public blacklist greaterThanOrEqual(Ljava/math/BigDecimal;Ljava/math/BigDecimal;)Z
    .registers 6
    .param p1, "quantity"    # Ljava/math/BigDecimal;
    .param p2, "limit"    # Ljava/math/BigDecimal;

    .line 149
    nop

    .line 152
    iget-object v0, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/units/UnitsConverter;

    invoke-virtual {v0, p1}, Landroid/icu/impl/units/UnitsConverter;->convert(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v2, Landroid/icu/impl/units/ComplexUnitsConverter;->EPSILON_MULTIPLIER:Ljava/math/BigDecimal;

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ComplexUnitsConverter [unitsConverters_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->unitsConverters_:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", units_="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/units/ComplexUnitsConverter;->units_:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
