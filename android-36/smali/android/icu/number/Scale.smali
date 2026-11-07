.class public Landroid/icu/number/Scale;
.super Ljava/lang/Object;
.source "Scale.java"


# static fields
.field private static final blacklist BIG_DECIMAL_100:Ljava/math/BigDecimal;

.field private static final blacklist BIG_DECIMAL_1000:Ljava/math/BigDecimal;

.field private static final blacklist DEFAULT:Landroid/icu/number/Scale;

.field private static final blacklist HUNDRED:Landroid/icu/number/Scale;

.field private static final blacklist THOUSAND:Landroid/icu/number/Scale;


# instance fields
.field final blacklist arbitrary:Ljava/math/BigDecimal;

.field final blacklist magnitude:I

.field final blacklist mc:Ljava/math/MathContext;

.field final blacklist reciprocal:Ljava/math/BigDecimal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 23
    new-instance v0, Landroid/icu/number/Scale;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    sput-object v0, Landroid/icu/number/Scale;->DEFAULT:Landroid/icu/number/Scale;

    .line 24
    new-instance v0, Landroid/icu/number/Scale;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    sput-object v0, Landroid/icu/number/Scale;->HUNDRED:Landroid/icu/number/Scale;

    .line 25
    new-instance v0, Landroid/icu/number/Scale;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    sput-object v0, Landroid/icu/number/Scale;->THOUSAND:Landroid/icu/number/Scale;

    .line 27
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Landroid/icu/number/Scale;->BIG_DECIMAL_100:Ljava/math/BigDecimal;

    .line 28
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Landroid/icu/number/Scale;->BIG_DECIMAL_1000:Ljava/math/BigDecimal;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/math/BigDecimal;)V
    .registers 4
    .param p1, "magnitude"    # I
    .param p2, "arbitrary"    # Ljava/math/BigDecimal;

    .line 36
    sget-object v0, Landroid/icu/impl/number/RoundingUtils;->DEFAULT_MATH_CONTEXT_34_DIGITS:Ljava/math/MathContext;

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/number/Scale;-><init>(ILjava/math/BigDecimal;Ljava/math/MathContext;)V

    .line 37
    return-void
.end method

.method private constructor blacklist <init>(ILjava/math/BigDecimal;Ljava/math/MathContext;)V
    .registers 6
    .param p1, "magnitude"    # I
    .param p2, "arbitrary"    # Ljava/math/BigDecimal;
    .param p3, "mc"    # Ljava/math/MathContext;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p2, :cond_2e

    .line 44
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p2, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_10

    .line 45
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_14

    .line 46
    :cond_10
    invoke-virtual {p2}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    :goto_14
    move-object p2, v0

    .line 47
    invoke-virtual {p2}, Ljava/math/BigDecimal;->precision()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    invoke-virtual {p2}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 49
    invoke-virtual {p2}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    sub-int/2addr p1, v0

    .line 50
    const/4 p2, 0x0

    .line 54
    :cond_2e
    iput p1, p0, Landroid/icu/number/Scale;->magnitude:I

    .line 55
    iput-object p2, p0, Landroid/icu/number/Scale;->arbitrary:Ljava/math/BigDecimal;

    .line 56
    iput-object p3, p0, Landroid/icu/number/Scale;->mc:Ljava/math/MathContext;

    .line 59
    if-eqz p2, :cond_47

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v0, p2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-eqz v0, :cond_47

    .line 60
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v0, p2, p3}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/number/Scale;->reciprocal:Ljava/math/BigDecimal;

    goto :goto_4a

    .line 62
    :cond_47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/number/Scale;->reciprocal:Ljava/math/BigDecimal;

    .line 64
    :goto_4a
    return-void
.end method

.method public static whitelist test-api byBigDecimal(Ljava/math/BigDecimal;)Landroid/icu/number/Scale;
    .registers 3
    .param p0, "multiplicand"    # Ljava/math/BigDecimal;

    .line 107
    sget-object v0, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_b

    .line 108
    sget-object v0, Landroid/icu/number/Scale;->DEFAULT:Landroid/icu/number/Scale;

    return-object v0

    .line 109
    :cond_b
    sget-object v0, Landroid/icu/number/Scale;->BIG_DECIMAL_100:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_16

    .line 110
    sget-object v0, Landroid/icu/number/Scale;->HUNDRED:Landroid/icu/number/Scale;

    return-object v0

    .line 111
    :cond_16
    sget-object v0, Landroid/icu/number/Scale;->BIG_DECIMAL_1000:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-nez v0, :cond_21

    .line 112
    sget-object v0, Landroid/icu/number/Scale;->THOUSAND:Landroid/icu/number/Scale;

    return-object v0

    .line 114
    :cond_21
    new-instance v0, Landroid/icu/number/Scale;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    return-object v0
.end method

.method public static whitelist test-api byDouble(D)Landroid/icu/number/Scale;
    .registers 5
    .param p0, "multiplicand"    # D

    .line 127
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_9

    .line 128
    sget-object v0, Landroid/icu/number/Scale;->DEFAULT:Landroid/icu/number/Scale;

    return-object v0

    .line 129
    :cond_9
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_12

    .line 130
    sget-object v0, Landroid/icu/number/Scale;->HUNDRED:Landroid/icu/number/Scale;

    return-object v0

    .line 131
    :cond_12
    const-wide v0, 0x408f400000000000L    # 1000.0

    cmpl-double v0, p0, v0

    if-nez v0, :cond_1e

    .line 132
    sget-object v0, Landroid/icu/number/Scale;->THOUSAND:Landroid/icu/number/Scale;

    return-object v0

    .line 134
    :cond_1e
    new-instance v0, Landroid/icu/number/Scale;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    return-object v0
.end method

.method public static whitelist test-api byDoubleAndPowerOfTen(DI)Landroid/icu/number/Scale;
    .registers 5
    .param p0, "multiplicand"    # D
    .param p2, "power"    # I

    .line 145
    new-instance v0, Landroid/icu/number/Scale;

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Landroid/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    return-object v0
.end method

.method public static whitelist test-api none()Landroid/icu/number/Scale;
    .registers 1

    .line 73
    sget-object v0, Landroid/icu/number/Scale;->DEFAULT:Landroid/icu/number/Scale;

    return-object v0
.end method

.method public static whitelist test-api powerOfTen(I)Landroid/icu/number/Scale;
    .registers 3
    .param p0, "power"    # I

    .line 87
    if-nez p0, :cond_5

    .line 88
    sget-object v0, Landroid/icu/number/Scale;->DEFAULT:Landroid/icu/number/Scale;

    return-object v0

    .line 89
    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 90
    sget-object v0, Landroid/icu/number/Scale;->HUNDRED:Landroid/icu/number/Scale;

    return-object v0

    .line 91
    :cond_b
    const/4 v0, 0x3

    if-ne p0, v0, :cond_11

    .line 92
    sget-object v0, Landroid/icu/number/Scale;->THOUSAND:Landroid/icu/number/Scale;

    return-object v0

    .line 94
    :cond_11
    new-instance v0, Landroid/icu/number/Scale;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/icu/number/Scale;-><init>(ILjava/math/BigDecimal;)V

    return-object v0
.end method


# virtual methods
.method public blacklist applyReciprocalTo(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 4
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    iget v0, p0, Landroid/icu/number/Scale;->magnitude:I

    neg-int v0, v0

    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 187
    iget-object v0, p0, Landroid/icu/number/Scale;->reciprocal:Ljava/math/BigDecimal;

    if-eqz v0, :cond_1f

    .line 188
    iget-object v0, p0, Landroid/icu/number/Scale;->reciprocal:Ljava/math/BigDecimal;

    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->multiplyBy(Ljava/math/BigDecimal;)V

    .line 189
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v0

    iget-object v1, p0, Landroid/icu/number/Scale;->mc:Ljava/math/MathContext;

    invoke-virtual {v1}, Ljava/math/MathContext;->getPrecision()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/number/Scale;->mc:Ljava/math/MathContext;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/number/DecimalQuantity;->roundToMagnitude(ILjava/math/MathContext;)V

    .line 191
    :cond_1f
    return-void
.end method

.method public blacklist applyTo(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 3
    .param p1, "quantity"    # Landroid/icu/impl/number/DecimalQuantity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    iget v0, p0, Landroid/icu/number/Scale;->magnitude:I

    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 175
    iget-object v0, p0, Landroid/icu/number/Scale;->arbitrary:Ljava/math/BigDecimal;

    if-eqz v0, :cond_e

    .line 176
    iget-object v0, p0, Landroid/icu/number/Scale;->arbitrary:Ljava/math/BigDecimal;

    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->multiplyBy(Ljava/math/BigDecimal;)V

    .line 178
    :cond_e
    return-void
.end method

.method blacklist isValid()Z
    .registers 2

    .line 152
    iget v0, p0, Landroid/icu/number/Scale;->magnitude:I

    if-nez v0, :cond_b

    iget-object v0, p0, Landroid/icu/number/Scale;->arbitrary:Ljava/math/BigDecimal;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public blacklist withMathContext(Ljava/math/MathContext;)Landroid/icu/number/Scale;
    .registers 5
    .param p1, "mc"    # Ljava/math/MathContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/icu/number/Scale;->mc:Ljava/math/MathContext;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 163
    return-object p0

    .line 165
    :cond_9
    new-instance v0, Landroid/icu/number/Scale;

    iget v1, p0, Landroid/icu/number/Scale;->magnitude:I

    iget-object v2, p0, Landroid/icu/number/Scale;->arbitrary:Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2, p1}, Landroid/icu/number/Scale;-><init>(ILjava/math/BigDecimal;Ljava/math/MathContext;)V

    return-object v0
.end method
