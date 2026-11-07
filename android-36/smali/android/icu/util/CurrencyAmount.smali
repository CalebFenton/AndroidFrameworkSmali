.class public Landroid/icu/util/CurrencyAmount;
.super Landroid/icu/util/Measure;
.source "CurrencyAmount.java"


# direct methods
.method public constructor whitelist test-api <init>(DLandroid/icu/util/Currency;)V
    .registers 5
    .param p1, "number"    # D
    .param p3, "currency"    # Landroid/icu/util/Currency;

    .line 42
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 43
    return-void
.end method

.method public constructor whitelist test-api <init>(DLjava/util/Currency;)V
    .registers 5
    .param p1, "number"    # D
    .param p3, "currency"    # Ljava/util/Currency;

    .line 60
    invoke-static {p3}, Landroid/icu/util/Currency;->fromJavaCurrency(Ljava/util/Currency;)Landroid/icu/util/Currency;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/util/CurrencyAmount;-><init>(DLandroid/icu/util/Currency;)V

    .line 61
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V
    .registers 3
    .param p1, "number"    # Ljava/lang/Number;
    .param p2, "currency"    # Landroid/icu/util/Currency;

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    .line 34
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Number;Ljava/util/Currency;)V
    .registers 4
    .param p1, "number"    # Ljava/lang/Number;
    .param p2, "currency"    # Ljava/util/Currency;

    .line 51
    invoke-static {p2}, Landroid/icu/util/Currency;->fromJavaCurrency(Ljava/util/Currency;)Landroid/icu/util/Currency;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    .line 52
    return-void
.end method


# virtual methods
.method public whitelist test-api getCurrency()Landroid/icu/util/Currency;
    .registers 2

    .line 68
    invoke-virtual {p0}, Landroid/icu/util/CurrencyAmount;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Currency;

    return-object v0
.end method
