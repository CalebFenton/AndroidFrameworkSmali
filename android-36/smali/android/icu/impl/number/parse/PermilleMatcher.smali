.class public Landroid/icu/impl/number/parse/PermilleMatcher;
.super Landroid/icu/impl/number/parse/SymbolMatcher;
.source "PermilleMatcher.java"


# static fields
.field private static final blacklist DEFAULT:Landroid/icu/impl/number/parse/PermilleMatcher;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/icu/impl/number/parse/PermilleMatcher;

    invoke-direct {v0}, Landroid/icu/impl/number/parse/PermilleMatcher;-><init>()V

    sput-object v0, Landroid/icu/impl/number/parse/PermilleMatcher;->DEFAULT:Landroid/icu/impl/number/parse/PermilleMatcher;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 33
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->PERMILLE_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-direct {p0, v0}, Landroid/icu/impl/number/parse/SymbolMatcher;-><init>(Landroid/icu/impl/StaticUnicodeSets$Key;)V

    .line 34
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "symbolString"    # Ljava/lang/String;

    .line 29
    sget-object v0, Landroid/icu/impl/number/parse/PermilleMatcher;->DEFAULT:Landroid/icu/impl/number/parse/PermilleMatcher;

    iget-object v0, v0, Landroid/icu/impl/number/parse/PermilleMatcher;->uniSet:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/number/parse/SymbolMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V

    .line 30
    return-void
.end method

.method public static blacklist getInstance(Landroid/icu/text/DecimalFormatSymbols;)Landroid/icu/impl/number/parse/PermilleMatcher;
    .registers 3
    .param p0, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 20
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPerMillString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "symbolString":Ljava/lang/String;
    sget-object v1, Landroid/icu/impl/number/parse/PermilleMatcher;->DEFAULT:Landroid/icu/impl/number/parse/PermilleMatcher;

    iget-object v1, v1, Landroid/icu/impl/number/parse/PermilleMatcher;->uniSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 22
    sget-object v1, Landroid/icu/impl/number/parse/PermilleMatcher;->DEFAULT:Landroid/icu/impl/number/parse/PermilleMatcher;

    return-object v1

    .line 24
    :cond_11
    new-instance v1, Landroid/icu/impl/number/parse/PermilleMatcher;

    invoke-direct {v1, v0}, Landroid/icu/impl/number/parse/PermilleMatcher;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method protected blacklist accept(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 4
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 43
    iget v0, p2, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    .line 44
    invoke-virtual {p2, p1}, Landroid/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Landroid/icu/impl/StringSegment;)V

    .line 45
    return-void
.end method

.method protected blacklist isDisabled(Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 3
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 38
    iget v0, p1, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 49
    const-string v0, "<PermilleMatcher>"

    return-object v0
.end method
