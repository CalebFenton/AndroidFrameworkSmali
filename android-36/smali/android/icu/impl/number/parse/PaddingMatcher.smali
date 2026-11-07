.class public Landroid/icu/impl/number/parse/PaddingMatcher;
.super Landroid/icu/impl/number/parse/SymbolMatcher;
.source "PaddingMatcher.java"

# interfaces
.implements Landroid/icu/impl/number/parse/NumberParseMatcher$Flexible;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "symbolString"    # Ljava/lang/String;

    .line 21
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/number/parse/SymbolMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V

    .line 22
    return-void
.end method

.method public static blacklist getInstance(Ljava/lang/String;)Landroid/icu/impl/number/parse/PaddingMatcher;
    .registers 2
    .param p0, "padString"    # Ljava/lang/String;

    .line 17
    new-instance v0, Landroid/icu/impl/number/parse/PaddingMatcher;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/parse/PaddingMatcher;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist accept(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 3
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 32
    return-void
.end method

.method protected blacklist isDisabled(Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 3
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 36
    const-string v0, "<PaddingMatcher>"

    return-object v0
.end method
