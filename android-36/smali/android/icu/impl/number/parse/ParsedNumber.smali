.class public Landroid/icu/impl/number/parse/ParsedNumber;
.super Ljava/lang/Object;
.source "ParsedNumber.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/icu/impl/number/parse/ParsedNumber;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_FAIL:I = 0x100

.field public static final blacklist FLAG_HAS_DECIMAL_SEPARATOR:I = 0x20

.field public static final blacklist FLAG_HAS_EXPONENT:I = 0x8

.field public static final blacklist FLAG_INFINITY:I = 0x80

.field public static final blacklist FLAG_NAN:I = 0x40

.field public static final blacklist FLAG_NEGATIVE:I = 0x1

.field public static final blacklist FLAG_PERCENT:I = 0x2

.field public static final blacklist FLAG_PERMILLE:I = 0x4


# instance fields
.field public blacklist charEnd:I

.field public blacklist currencyCode:Ljava/lang/String;

.field public blacklist flags:I

.field public blacklist prefix:Ljava/lang/String;

.field public blacklist quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

.field public blacklist suffix:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    nop

    .line 63
    new-instance v0, Landroid/icu/impl/number/parse/ParsedNumber$1;

    invoke-direct {v0}, Landroid/icu/impl/number/parse/ParsedNumber$1;-><init>()V

    sput-object v0, Landroid/icu/impl/number/parse/ParsedNumber;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/icu/impl/number/parse/ParsedNumber;->clear()V

    .line 72
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 3

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 79
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    .line 80
    iput v1, p0, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 81
    iput-object v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public blacklist copyFrom(Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 3
    .param p1, "other"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 87
    iget-object v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_e

    .line 88
    :cond_6
    iget-object v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->createCopy()Landroid/icu/impl/number/DecimalQuantity;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    :goto_e
    iput-object v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 89
    iget v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    iput v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    .line 90
    iget v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    iput v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 91
    iget-object v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->prefix:Ljava/lang/String;

    .line 92
    iget-object v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->suffix:Ljava/lang/String;

    .line 93
    iget-object v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public blacklist getNumber()Ljava/lang/Number;
    .registers 2

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/parse/ParsedNumber;->getNumber(I)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getNumber(I)Ljava/lang/Number;
    .registers 8
    .param p1, "parseFlags"    # I

    .line 141
    iget v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit8 v0, v0, 0x40

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 142
    .local v0, "sawNaN":Z
    :goto_b
    iget v3, p0, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    .line 143
    .local v3, "sawInfinity":Z
    :goto_14
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_1a

    move v4, v1

    goto :goto_1b

    :cond_1a
    move v4, v2

    .line 144
    .local v4, "forceBigDecimal":Z
    :goto_1b
    and-int/lit8 v5, p1, 0x10

    if-eqz v5, :cond_21

    move v5, v1

    goto :goto_22

    :cond_21
    move v5, v2

    .line 147
    .local v5, "integerOnly":Z
    :goto_22
    if-eqz v0, :cond_2b

    .line 148
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 150
    :cond_2b
    if-eqz v3, :cond_40

    .line 151
    iget v2, p0, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_39

    .line 152
    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 154
    :cond_39
    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 157
    :cond_40
    nop

    .line 158
    iget-object v1, p0, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->isZeroish()Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_5a

    if-nez v5, :cond_5a

    .line 159
    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    return-object v1

    .line 162
    :cond_5a
    iget-object v1, p0, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->fitsInLong()Z

    move-result v1

    if-eqz v1, :cond_6f

    if-nez v4, :cond_6f

    .line 163
    iget-object v1, p0, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v1, v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toLong(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 165
    :cond_6f
    iget-object v1, p0, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method blacklist isBetterThan(Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 3
    .param p1, "other"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 171
    sget-object v0, Landroid/icu/impl/number/parse/ParsedNumber;->COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist postProcess()V
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    .line 119
    iget-object v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->negate()V

    .line 121
    :cond_f
    return-void
.end method

.method public blacklist seenNumber()Z
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v0, :cond_13

    iget v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_13

    iget v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public blacklist setCharsConsumed(Landroid/icu/impl/StringSegment;)V
    .registers 3
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;

    .line 113
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    .line 114
    return-void
.end method

.method public blacklist success()Z
    .registers 2

    .line 128
    iget v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->charEnd:I

    if-lez v0, :cond_c

    iget v0, p0, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
