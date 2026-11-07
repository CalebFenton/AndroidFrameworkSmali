.class public Landroid/icu/impl/number/parse/PlusSignMatcher;
.super Landroid/icu/impl/number/parse/SymbolMatcher;
.source "PlusSignMatcher.java"


# static fields
.field private static final blacklist DEFAULT:Landroid/icu/impl/number/parse/PlusSignMatcher;

.field private static final blacklist DEFAULT_ALLOW_TRAILING:Landroid/icu/impl/number/parse/PlusSignMatcher;


# instance fields
.field private final blacklist allowTrailing:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Landroid/icu/impl/number/parse/PlusSignMatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/number/parse/PlusSignMatcher;-><init>(Z)V

    sput-object v0, Landroid/icu/impl/number/parse/PlusSignMatcher;->DEFAULT:Landroid/icu/impl/number/parse/PlusSignMatcher;

    .line 18
    new-instance v0, Landroid/icu/impl/number/parse/PlusSignMatcher;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/icu/impl/number/parse/PlusSignMatcher;-><init>(Z)V

    sput-object v0, Landroid/icu/impl/number/parse/PlusSignMatcher;->DEFAULT_ALLOW_TRAILING:Landroid/icu/impl/number/parse/PlusSignMatcher;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "symbolString"    # Ljava/lang/String;
    .param p2, "allowTrailing"    # Z

    .line 32
    sget-object v0, Landroid/icu/impl/number/parse/PlusSignMatcher;->DEFAULT:Landroid/icu/impl/number/parse/PlusSignMatcher;

    iget-object v0, v0, Landroid/icu/impl/number/parse/PlusSignMatcher;->uniSet:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/number/parse/SymbolMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V

    .line 33
    iput-boolean p2, p0, Landroid/icu/impl/number/parse/PlusSignMatcher;->allowTrailing:Z

    .line 34
    return-void
.end method

.method private constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "allowTrailing"    # Z

    .line 37
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->PLUS_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-direct {p0, v0}, Landroid/icu/impl/number/parse/SymbolMatcher;-><init>(Landroid/icu/impl/StaticUnicodeSets$Key;)V

    .line 38
    iput-boolean p1, p0, Landroid/icu/impl/number/parse/PlusSignMatcher;->allowTrailing:Z

    .line 39
    return-void
.end method

.method public static blacklist getInstance(Landroid/icu/text/DecimalFormatSymbols;Z)Landroid/icu/impl/number/parse/PlusSignMatcher;
    .registers 4
    .param p0, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p1, "allowTrailing"    # Z

    .line 21
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "symbolString":Ljava/lang/String;
    sget-object v1, Landroid/icu/impl/number/parse/PlusSignMatcher;->DEFAULT:Landroid/icu/impl/number/parse/PlusSignMatcher;

    iget-object v1, v1, Landroid/icu/impl/number/parse/PlusSignMatcher;->uniSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 23
    if-eqz p1, :cond_13

    sget-object v1, Landroid/icu/impl/number/parse/PlusSignMatcher;->DEFAULT_ALLOW_TRAILING:Landroid/icu/impl/number/parse/PlusSignMatcher;

    goto :goto_15

    :cond_13
    sget-object v1, Landroid/icu/impl/number/parse/PlusSignMatcher;->DEFAULT:Landroid/icu/impl/number/parse/PlusSignMatcher;

    :goto_15
    return-object v1

    .line 25
    :cond_16
    new-instance v1, Landroid/icu/impl/number/parse/PlusSignMatcher;

    invoke-direct {v1, v0, p1}, Landroid/icu/impl/number/parse/PlusSignMatcher;-><init>(Ljava/lang/String;Z)V

    return-object v1
.end method


# virtual methods
.method protected blacklist accept(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 3
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 48
    invoke-virtual {p2, p1}, Landroid/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Landroid/icu/impl/StringSegment;)V

    .line 49
    return-void
.end method

.method protected blacklist isDisabled(Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 3
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 43
    iget-boolean v0, p0, Landroid/icu/impl/number/parse/PlusSignMatcher;->allowTrailing:Z

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 53
    const-string v0, "<PlusSignMatcher>"

    return-object v0
.end method
