.class public Landroid/icu/impl/number/parse/RequireCurrencyValidator;
.super Landroid/icu/impl/number/parse/ValidationMatcher;
.source "RequireCurrencyValidator.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Landroid/icu/impl/number/parse/ValidationMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 3
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 15
    iget-object v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 16
    iget v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 18
    :cond_a
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 22
    const-string v0, "<RequireCurrency>"

    return-object v0
.end method
