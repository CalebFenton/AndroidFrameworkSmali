.class public Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;
.super Ljava/lang/Object;
.source "ConversionRates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/units/ConversionRates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversionRateInfo"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private final blacklist conversionRate:Ljava/lang/String;

.field private final blacklist offset:Ljava/math/BigDecimal;

.field private final blacklist simpleUnit:Ljava/lang/String;

.field private final blacklist specialMappingName:Ljava/lang/String;

.field private final blacklist systems:Ljava/lang/String;

.field private final blacklist target:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 223
    const-class v0, Landroid/icu/impl/units/ConversionRates;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "simpleUnit"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .param p3, "conversionRate"    # Ljava/lang/String;
    .param p4, "offset"    # Ljava/lang/String;
    .param p5, "special"    # Ljava/lang/String;
    .param p6, "systems"    # Ljava/lang/String;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->simpleUnit:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->target:Ljava/lang/String;

    .line 236
    iput-object p3, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->conversionRate:Ljava/lang/String;

    .line 237
    invoke-static {p4}, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->forNumberWithDivision(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->offset:Ljava/math/BigDecimal;

    .line 238
    iput-object p5, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->specialMappingName:Ljava/lang/String;

    .line 239
    iput-object p6, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->systems:Ljava/lang/String;

    .line 240
    return-void
.end method

.method private static blacklist forNumberWithDivision(Ljava/lang/String;)Ljava/math/BigDecimal;
    .registers 5
    .param p0, "numberWithDivision"    # Ljava/lang/String;

    .line 243
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "numbers":[Ljava/lang/String;
    nop

    .line 246
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_14

    .line 247
    new-instance v1, Ljava/math/BigDecimal;

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 250
    :cond_14
    new-instance v1, Ljava/math/BigDecimal;

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/math/BigDecimal;

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist getConversionRate()Ljava/lang/String;
    .registers 3

    .line 274
    iget-object v0, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->conversionRate:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 277
    iget-object v0, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->conversionRate:Ljava/lang/String;

    return-object v0

    .line 275
    :cond_7
    new-instance v0, Landroid/icu/impl/IllegalIcuArgumentException;

    const-string v1, "trying to use a null conversion rate (for special?)"

    invoke-direct {v0, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getOffset()Ljava/math/BigDecimal;
    .registers 2

    .line 267
    iget-object v0, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->offset:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public blacklist getSpecialMappingName()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->specialMappingName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSystems()Ljava/lang/String;
    .registers 2

    .line 291
    iget-object v0, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->systems:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTarget()Ljava/lang/String;
    .registers 2

    .line 260
    iget-object v0, p0, Landroid/icu/impl/units/ConversionRates$ConversionRateInfo;->target:Ljava/lang/String;

    return-object v0
.end method
