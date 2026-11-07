.class public abstract Landroid/icu/impl/number/parse/SymbolMatcher;
.super Ljava/lang/Object;
.source "SymbolMatcher.java"

# interfaces
.implements Landroid/icu/impl/number/parse/NumberParseMatcher;


# instance fields
.field protected final blacklist string:Ljava/lang/String;

.field protected final blacklist uniSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method protected constructor blacklist <init>(Landroid/icu/impl/StaticUnicodeSets$Key;)V
    .registers 3
    .param p1, "key"    # Landroid/icu/impl/StaticUnicodeSets$Key;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->uniSet:Landroid/icu/text/UnicodeSet;

    .line 31
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "symbolString"    # Ljava/lang/String;
    .param p2, "symbolUniSet"    # Landroid/icu/text/UnicodeSet;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->uniSet:Landroid/icu/text/UnicodeSet;

    .line 26
    return-void
.end method


# virtual methods
.method protected abstract blacklist accept(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)V
.end method

.method public blacklist getSet()Landroid/icu/text/UnicodeSet;
    .registers 2

    .line 34
    iget-object v0, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->uniSet:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method protected abstract blacklist isDisabled(Landroid/icu/impl/number/parse/ParsedNumber;)Z
.end method

.method public blacklist match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 6
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 40
    invoke-virtual {p0, p2}, Landroid/icu/impl/number/parse/SymbolMatcher;->isDisabled(Landroid/icu/impl/number/parse/ParsedNumber;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 41
    return v1

    .line 45
    :cond_8
    const/4 v0, 0x0

    .line 46
    .local v0, "overlap":I
    iget-object v2, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 47
    iget-object v2, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v0

    .line 48
    iget-object v2, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v0, v2, :cond_2c

    .line 49
    iget-object v2, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/number/parse/SymbolMatcher;->accept(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)V

    .line 51
    return v1

    .line 55
    :cond_2c
    iget-object v2, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->uniSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->startsWith(Landroid/icu/text/UnicodeSet;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 56
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->adjustOffsetByCodePoint()V

    .line 57
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/number/parse/SymbolMatcher;->accept(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)V

    .line 58
    return v1

    .line 61
    :cond_3b
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v2

    if-ne v0, v2, :cond_42

    const/4 v1, 0x1

    :cond_42
    return v1
.end method

.method public blacklist postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 2
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 72
    return-void
.end method

.method public blacklist smokeTest(Landroid/icu/impl/StringSegment;)Z
    .registers 3
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;

    .line 66
    iget-object v0, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->uniSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->startsWith(Landroid/icu/text/UnicodeSet;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/icu/impl/number/parse/SymbolMatcher;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method
