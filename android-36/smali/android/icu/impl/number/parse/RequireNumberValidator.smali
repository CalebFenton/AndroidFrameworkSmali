.class public Landroid/icu/impl/number/parse/RequireNumberValidator;
.super Landroid/icu/impl/number/parse/ValidationMatcher;
.source "RequireNumberValidator.java"


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

    .line 16
    invoke-virtual {p1}, Landroid/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v0

    if-nez v0, :cond_c

    .line 17
    iget v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 19
    :cond_c
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 23
    const-string v0, "<RequireNumber>"

    return-object v0
.end method
