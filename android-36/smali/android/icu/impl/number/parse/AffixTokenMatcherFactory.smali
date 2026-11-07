.class public Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;
.super Ljava/lang/Object;
.source "AffixTokenMatcherFactory.java"


# instance fields
.field public blacklist currency:Landroid/icu/util/Currency;

.field public blacklist ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

.field public blacklist locale:Landroid/icu/util/ULocale;

.field public blacklist parseFlags:I

.field public blacklist symbols:Landroid/icu/text/DecimalFormatSymbols;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist currency()Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;
    .registers 4

    .line 40
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->currency:Landroid/icu/util/Currency;

    iget-object v1, p0, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    iget v2, p0, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->parseFlags:I

    invoke-static {v0, v1, v2}, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->getInstance(Landroid/icu/util/Currency;Landroid/icu/text/DecimalFormatSymbols;I)Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;

    move-result-object v0

    return-object v0
.end method

.method public blacklist ignorables()Landroid/icu/impl/number/parse/IgnorablesMatcher;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->ignorables:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    return-object v0
.end method

.method public blacklist minusSign()Landroid/icu/impl/number/parse/MinusSignMatcher;
    .registers 3

    .line 24
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/impl/number/parse/MinusSignMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/MinusSignMatcher;

    move-result-object v0

    return-object v0
.end method

.method public blacklist percent()Landroid/icu/impl/number/parse/PercentMatcher;
    .registers 2

    .line 32
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-static {v0}, Landroid/icu/impl/number/parse/PercentMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/parse/PercentMatcher;

    move-result-object v0

    return-object v0
.end method

.method public blacklist permille()Landroid/icu/impl/number/parse/PermilleMatcher;
    .registers 2

    .line 36
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    invoke-static {v0}, Landroid/icu/impl/number/parse/PermilleMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/parse/PermilleMatcher;

    move-result-object v0

    return-object v0
.end method

.method public blacklist plusSign()Landroid/icu/impl/number/parse/PlusSignMatcher;
    .registers 3

    .line 28
    iget-object v0, p0, Landroid/icu/impl/number/parse/AffixTokenMatcherFactory;->symbols:Landroid/icu/text/DecimalFormatSymbols;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/impl/number/parse/PlusSignMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/PlusSignMatcher;

    move-result-object v0

    return-object v0
.end method
