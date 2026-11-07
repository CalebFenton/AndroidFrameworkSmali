.class public abstract Landroid/icu/number/CurrencyPrecision;
.super Landroid/icu/number/Precision;
.source "CurrencyPrecision.java"


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroid/icu/number/Precision;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist test-api withCurrency(Landroid/icu/util/Currency;)Landroid/icu/number/Precision;
    .registers 4
    .param p1, "currency"    # Landroid/icu/util/Currency;

    .line 41
    if-eqz p1, :cond_b

    .line 42
    invoke-static {p0, p1}, Landroid/icu/number/CurrencyPrecision;->constructFromCurrency(Landroid/icu/number/CurrencyPrecision;Landroid/icu/util/Currency;)Landroid/icu/number/Precision;

    move-result-object v0

    .line 43
    .local v0, "retval":Landroid/icu/number/Precision;
    iget-object v1, p0, Landroid/icu/number/CurrencyPrecision;->trailingZeroDisplay:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    iput-object v1, v0, Landroid/icu/number/Precision;->trailingZeroDisplay:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    .line 44
    return-object v0

    .line 46
    .end local v0    # "retval":Landroid/icu/number/Precision;
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Currency must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
