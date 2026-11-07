.class public abstract Landroid/icu/number/FractionPrecision;
.super Landroid/icu/number/Precision;
.source "FractionPrecision.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/icu/number/Precision;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist test-api withMaxDigits(I)Landroid/icu/number/Precision;
    .registers 4
    .param p1, "maxSignificantDigits"    # I

    .line 104
    const/4 v0, 0x1

    if-lt p1, v0, :cond_e

    const/16 v1, 0x3e7

    if-gt p1, v1, :cond_e

    .line 105
    sget-object v1, Landroid/icu/number/NumberFormatter$RoundingPriority;->STRICT:Landroid/icu/number/NumberFormatter$RoundingPriority;

    invoke-static {p0, v0, p1, v1, v0}, Landroid/icu/number/FractionPrecision;->constructFractionSignificant(Landroid/icu/number/FractionPrecision;IILandroid/icu/number/NumberFormatter$RoundingPriority;Z)Landroid/icu/number/Precision;

    move-result-object v0

    return-object v0

    .line 108
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api withMinDigits(I)Landroid/icu/number/Precision;
    .registers 4
    .param p1, "minSignificantDigits"    # I

    .line 72
    const/4 v0, 0x1

    if-lt p1, v0, :cond_e

    const/16 v1, 0x3e7

    if-gt p1, v1, :cond_e

    .line 73
    sget-object v1, Landroid/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

    invoke-static {p0, v0, p1, v1, v0}, Landroid/icu/number/FractionPrecision;->constructFractionSignificant(Landroid/icu/number/FractionPrecision;IILandroid/icu/number/NumberFormatter$RoundingPriority;Z)Landroid/icu/number/Precision;

    move-result-object v0

    return-object v0

    .line 76
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api withSignificantDigits(IILandroid/icu/number/NumberFormatter$RoundingPriority;)Landroid/icu/number/Precision;
    .registers 6
    .param p1, "minSignificantDigits"    # I
    .param p2, "maxSignificantDigits"    # I
    .param p3, "priority"    # Landroid/icu/number/NumberFormatter$RoundingPriority;

    .line 38
    const/4 v0, 0x1

    if-lt p2, v0, :cond_f

    if-lt p2, p1, :cond_f

    const/16 v0, 0x3e7

    if-gt p2, v0, :cond_f

    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/icu/number/FractionPrecision;->constructFractionSignificant(Landroid/icu/number/FractionPrecision;IILandroid/icu/number/NumberFormatter$RoundingPriority;Z)Landroid/icu/number/Precision;

    move-result-object v0

    return-object v0

    .line 44
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
