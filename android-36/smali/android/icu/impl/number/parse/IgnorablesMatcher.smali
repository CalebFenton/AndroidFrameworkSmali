.class public Landroid/icu/impl/number/parse/IgnorablesMatcher;
.super Landroid/icu/impl/number/parse/SymbolMatcher;
.source "IgnorablesMatcher.java"

# interfaces
.implements Landroid/icu/impl/number/parse/NumberParseMatcher$Flexible;


# static fields
.field private static final blacklist DEFAULT:Landroid/icu/impl/number/parse/IgnorablesMatcher;

.field private static final blacklist JAVA_COMPATIBILITY:Landroid/icu/impl/number/parse/IgnorablesMatcher;

.field private static final blacklist STRICT:Landroid/icu/impl/number/parse/IgnorablesMatcher;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 17
    new-instance v0, Landroid/icu/impl/number/parse/IgnorablesMatcher;

    sget-object v1, Landroid/icu/impl/StaticUnicodeSets$Key;->DEFAULT_IGNORABLES:Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 18
    invoke-static {v1}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/number/parse/IgnorablesMatcher;-><init>(Landroid/icu/text/UnicodeSet;)V

    sput-object v0, Landroid/icu/impl/number/parse/IgnorablesMatcher;->DEFAULT:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    .line 20
    new-instance v0, Landroid/icu/impl/number/parse/IgnorablesMatcher;

    sget-object v1, Landroid/icu/impl/StaticUnicodeSets$Key;->STRICT_IGNORABLES:Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 21
    invoke-static {v1}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/number/parse/IgnorablesMatcher;-><init>(Landroid/icu/text/UnicodeSet;)V

    sput-object v0, Landroid/icu/impl/number/parse/IgnorablesMatcher;->STRICT:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    .line 23
    new-instance v0, Landroid/icu/impl/number/parse/IgnorablesMatcher;

    sget-object v1, Landroid/icu/impl/StaticUnicodeSets$Key;->EMPTY:Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 24
    invoke-static {v1}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/number/parse/IgnorablesMatcher;-><init>(Landroid/icu/text/UnicodeSet;)V

    sput-object v0, Landroid/icu/impl/number/parse/IgnorablesMatcher;->JAVA_COMPATIBILITY:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    .line 23
    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "ignorables"    # Landroid/icu/text/UnicodeSet;

    .line 37
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Landroid/icu/impl/number/parse/SymbolMatcher;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V

    .line 38
    return-void
.end method

.method public static blacklist getInstance(I)Landroid/icu/impl/number/parse/IgnorablesMatcher;
    .registers 2
    .param p0, "parseFlags"    # I

    .line 27
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_8

    .line 28
    sget-object v0, Landroid/icu/impl/number/parse/IgnorablesMatcher;->JAVA_COMPATIBILITY:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    return-object v0

    .line 29
    :cond_8
    const v0, 0x8000

    and-int/2addr v0, p0

    if-eqz v0, :cond_11

    .line 30
    sget-object v0, Landroid/icu/impl/number/parse/IgnorablesMatcher;->STRICT:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    return-object v0

    .line 32
    :cond_11
    sget-object v0, Landroid/icu/impl/number/parse/IgnorablesMatcher;->DEFAULT:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    return-object v0
.end method


# virtual methods
.method protected blacklist accept(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 3
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 48
    return-void
.end method

.method protected blacklist isDisabled(Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 3
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 52
    const-string v0, "<IgnorablesMatcher>"

    return-object v0
.end method
