.class public Landroid/icu/impl/number/parse/NanMatcher;
.super Landroid/icu/impl/number/parse/SymbolMatcher;
.source "NanMatcher.java"


# static fields
.field private static final blacklist DEFAULT:Landroid/icu/impl/number/parse/NanMatcher;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Landroid/icu/impl/number/parse/NanMatcher;

    const-string v1, "NaN"

    invoke-direct {v0, v1}, Landroid/icu/impl/number/parse/NanMatcher;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/impl/number/parse/NanMatcher;->DEFAULT:Landroid/icu/impl/number/parse/NanMatcher;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "symbolString"    # Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/number/parse/SymbolMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V

    .line 30
    return-void
.end method

.method public static blacklist getInstance(Landroid/icu/text/DecimalFormatSymbols;I)Landroid/icu/impl/number/parse/NanMatcher;
    .registers 4
    .param p0, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p1, "parseFlags"    # I

    .line 20
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getNaN()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "symbolString":Ljava/lang/String;
    sget-object v1, Landroid/icu/impl/number/parse/NanMatcher;->DEFAULT:Landroid/icu/impl/number/parse/NanMatcher;

    iget-object v1, v1, Landroid/icu/impl/number/parse/NanMatcher;->string:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 22
    sget-object v1, Landroid/icu/impl/number/parse/NanMatcher;->DEFAULT:Landroid/icu/impl/number/parse/NanMatcher;

    return-object v1

    .line 24
    :cond_11
    new-instance v1, Landroid/icu/impl/number/parse/NanMatcher;

    invoke-direct {v1, v0}, Landroid/icu/impl/number/parse/NanMatcher;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected blacklist accept(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 4
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 39
    iget v0, p2, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p2, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 40
    invoke-virtual {p2, p1}, Landroid/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Landroid/icu/impl/StringSegment;)V

    .line 41
    return-void
.end method

.method protected blacklist isDisabled(Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 3
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 34
    invoke-virtual {p1}, Landroid/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 45
    const-string v0, "<NanMatcher>"

    return-object v0
.end method
