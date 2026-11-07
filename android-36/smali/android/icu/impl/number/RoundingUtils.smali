.class public Landroid/icu/impl/number/RoundingUtils;
.super Ljava/lang/Object;
.source "RoundingUtils.java"


# static fields
.field public static final blacklist DEFAULT_MATH_CONTEXT_34_DIGITS:Ljava/math/MathContext;

.field public static final blacklist DEFAULT_MATH_CONTEXT_UNLIMITED:Ljava/math/MathContext;

.field public static final blacklist DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

.field private static final blacklist MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

.field private static final blacklist MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

.field public static final blacklist MAX_INT_FRAC_SIG:I = 0x3e7

.field public static final blacklist SECTION_LOWER:I = 0x1

.field public static final blacklist SECTION_MIDPOINT:I = 0x2

.field public static final blacklist SECTION_UPPER:I = 0x3


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 26
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    sput-object v0, Landroid/icu/impl/number/RoundingUtils;->DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 145
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/math/MathContext;

    sput-object v0, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    .line 148
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/math/MathContext;

    sput-object v0, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    .line 151
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    sget-object v1, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    array-length v1, v1

    if-ge v0, v1, :cond_38

    .line 152
    sget-object v1, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    new-instance v2, Ljava/math/MathContext;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    aput-object v2, v1, v0

    .line 153
    sget-object v1, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    new-instance v2, Ljava/math/MathContext;

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljava/math/MathContext;-><init>(I)V

    aput-object v2, v1, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 158
    .end local v0    # "i":I
    :cond_38
    sget-object v0, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    sget-object v1, Landroid/icu/impl/number/RoundingUtils;->DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 159
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sput-object v0, Landroid/icu/impl/number/RoundingUtils;->DEFAULT_MATH_CONTEXT_UNLIMITED:Ljava/math/MathContext;

    .line 162
    sget-object v0, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    sget-object v1, Landroid/icu/impl/number/RoundingUtils;->DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 163
    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sput-object v0, Landroid/icu/impl/number/RoundingUtils;->DEFAULT_MATH_CONTEXT_34_DIGITS:Ljava/math/MathContext;

    .line 162
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getMathContextOr34Digits(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;
    .registers 5
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 195
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    .line 196
    .local v0, "mathContext":Ljava/math/MathContext;
    if-nez v0, :cond_16

    .line 197
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v1

    .line 198
    .local v1, "roundingMode":Ljava/math/RoundingMode;
    if-nez v1, :cond_e

    .line 199
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 200
    :cond_e
    sget-object v2, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_34_DIGITS:[Ljava/math/MathContext;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget-object v0, v2, v3

    .line 202
    .end local v1    # "roundingMode":Ljava/math/RoundingMode;
    :cond_16
    return-object v0
.end method

.method public static blacklist getMathContextOrUnlimited(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;
    .registers 5
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 175
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMathContext()Ljava/math/MathContext;

    move-result-object v0

    .line 176
    .local v0, "mathContext":Ljava/math/MathContext;
    if-nez v0, :cond_16

    .line 177
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v1

    .line 178
    .local v1, "roundingMode":Ljava/math/RoundingMode;
    if-nez v1, :cond_e

    .line 179
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 180
    :cond_e
    sget-object v2, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v3

    aget-object v0, v2, v3

    .line 182
    .end local v1    # "roundingMode":Ljava/math/RoundingMode;
    :cond_16
    return-object v0
.end method

.method public static blacklist getPluralSafe(Landroid/icu/number/Precision;Landroid/icu/text/PluralRules;Landroid/icu/impl/number/DecimalQuantity;)Landroid/icu/impl/StandardPlural;
    .registers 5
    .param p0, "rounder"    # Landroid/icu/number/Precision;
    .param p1, "rules"    # Landroid/icu/text/PluralRules;
    .param p2, "dq"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 233
    if-nez p0, :cond_7

    .line 234
    invoke-interface {p2, p1}, Landroid/icu/impl/number/DecimalQuantity;->getStandardPlural(Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;

    move-result-object v0

    return-object v0

    .line 237
    :cond_7
    invoke-interface {p2}, Landroid/icu/impl/number/DecimalQuantity;->createCopy()Landroid/icu/impl/number/DecimalQuantity;

    move-result-object v0

    .line 238
    .local v0, "copy":Landroid/icu/impl/number/DecimalQuantity;
    invoke-virtual {p0, v0}, Landroid/icu/number/Precision;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 239
    invoke-interface {v0, p1}, Landroid/icu/impl/number/DecimalQuantity;->getStandardPlural(Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist getRoundingDirection(ZZIILjava/lang/Object;)Z
    .registers 8
    .param p0, "isEven"    # Z
    .param p1, "isNegative"    # Z
    .param p2, "section"    # I
    .param p3, "roundingMode"    # I
    .param p4, "reference"    # Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_3e

    goto :goto_21

    .line 105
    :pswitch_6
    packed-switch p2, :pswitch_data_50

    goto :goto_21

    .line 111
    :pswitch_a
    return v0

    .line 107
    :pswitch_b
    return p0

    .line 109
    :pswitch_c
    return v1

    .line 94
    :pswitch_d
    packed-switch p2, :pswitch_data_5a

    .line 102
    goto :goto_21

    .line 100
    :pswitch_11
    return v0

    .line 96
    :pswitch_12
    return v1

    .line 98
    :pswitch_13
    return v1

    .line 83
    :pswitch_14
    packed-switch p2, :pswitch_data_64

    .line 91
    goto :goto_21

    .line 89
    :pswitch_18
    return v0

    .line 85
    :pswitch_19
    return v0

    .line 87
    :pswitch_1a
    return v1

    .line 80
    :pswitch_1b
    xor-int/lit8 v0, p1, 0x1

    return v0

    .line 76
    :pswitch_1e
    return p1

    .line 72
    :pswitch_1f
    return v1

    .line 68
    :pswitch_20
    return v0

    .line 117
    :goto_21
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rounding is required on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1b
        :pswitch_14
        :pswitch_d
        :pswitch_6
    .end packed-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch
.end method

.method public static blacklist mathContextUnlimited(Ljava/math/RoundingMode;)Ljava/math/MathContext;
    .registers 3
    .param p0, "roundingMode"    # Ljava/math/RoundingMode;

    .line 214
    sget-object v0, Landroid/icu/impl/number/RoundingUtils;->MATH_CONTEXT_BY_ROUNDING_MODE_UNLIMITED:[Ljava/math/MathContext;

    invoke-virtual {p0}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static blacklist roundsAtMidpoint(I)Z
    .registers 2
    .param p0, "roundingMode"    # I

    .line 132
    packed-switch p0, :pswitch_data_8

    .line 140
    const/4 v0, 0x1

    return v0

    .line 137
    :pswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist scaleFromProperties(Landroid/icu/impl/number/DecimalFormatProperties;)Landroid/icu/number/Scale;
    .registers 3
    .param p0, "properties"    # Landroid/icu/impl/number/DecimalFormatProperties;

    .line 218
    invoke-static {p0}, Landroid/icu/impl/number/RoundingUtils;->getMathContextOr34Digits(Landroid/icu/impl/number/DecimalFormatProperties;)Ljava/math/MathContext;

    move-result-object v0

    .line 219
    .local v0, "mc":Ljava/math/MathContext;
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMagnitudeMultiplier()I

    move-result v1

    if-eqz v1, :cond_17

    .line 220
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMagnitudeMultiplier()I

    move-result v1

    invoke-static {v1}, Landroid/icu/number/Scale;->powerOfTen(I)Landroid/icu/number/Scale;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/number/Scale;->withMathContext(Ljava/math/MathContext;)Landroid/icu/number/Scale;

    move-result-object v1

    return-object v1

    .line 221
    :cond_17
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 222
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalFormatProperties;->getMultiplier()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/number/Scale;->byBigDecimal(Ljava/math/BigDecimal;)Landroid/icu/number/Scale;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/number/Scale;->withMathContext(Ljava/math/MathContext;)Landroid/icu/number/Scale;

    move-result-object v1

    return-object v1

    .line 224
    :cond_2a
    const/4 v1, 0x0

    return-object v1
.end method
