.class public Landroid/icu/impl/number/CustomSymbolCurrency;
.super Landroid/icu/util/Currency;
.source "CustomSymbolCurrency.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x22a8e0aa9d9a4e46L


# instance fields
.field private blacklist symbol1:Ljava/lang/String;

.field private blacklist symbol2:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "isoCode"    # Ljava/lang/String;
    .param p2, "currency1Sym"    # Ljava/lang/String;
    .param p3, "currency2Sym"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Landroid/icu/util/Currency;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static blacklist resolve(Landroid/icu/util/Currency;Landroid/icu/util/ULocale;Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/util/Currency;
    .registers 8
    .param p0, "currency"    # Landroid/icu/util/Currency;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 21
    if-nez p0, :cond_6

    .line 22
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object p0

    .line 24
    :cond_6
    if-nez p0, :cond_f

    .line 25
    const-string v0, "XXX"

    invoke-static {v0}, Landroid/icu/util/Currency;->getInstance(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object v0

    return-object v0

    .line 27
    :cond_f
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getCurrency()Landroid/icu/util/Currency;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 28
    return-object p0

    .line 30
    :cond_1a
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "currency1Sym":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getInternationalCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "currency2Sym":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "currency1":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "currency2":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    goto :goto_3e

    .line 37
    :cond_3d
    return-object p0

    .line 35
    :cond_3e
    :goto_3e
    new-instance v4, Landroid/icu/impl/number/CustomSymbolCurrency;

    invoke-direct {v4, v3, v0, v1}, Landroid/icu/impl/number/CustomSymbolCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 74
    invoke-super {p0, p1}, Landroid/icu/util/Currency;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/number/CustomSymbolCurrency;

    iget-object v0, v0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/number/CustomSymbolCurrency;

    iget-object v0, v0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 74
    :goto_23
    return v0
.end method

.method public whitelist test-api getCurrencyCode()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;
    .registers 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "nameStyle"    # I
    .param p3, "pluralCount"    # Ljava/lang/String;
    .param p4, "isChoiceFormat"    # [Z

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;
    .registers 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "nameStyle"    # I
    .param p3, "isChoiceFormat"    # [Z

    .line 48
    if-nez p2, :cond_a

    .line 49
    if-eqz p3, :cond_7

    .line 50
    const/4 v0, 0x0

    aput-boolean v0, p3, v0

    .line 52
    :cond_7
    iget-object v0, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    return-object v0

    .line 54
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;I[Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 69
    invoke-super {p0}, Landroid/icu/util/Currency;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/impl/number/CustomSymbolCurrency;->symbol2:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
