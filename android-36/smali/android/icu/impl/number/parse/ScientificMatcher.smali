.class public Landroid/icu/impl/number/parse/ScientificMatcher;
.super Ljava/lang/Object;
.source "ScientificMatcher.java"

# interfaces
.implements Landroid/icu/impl/number/parse/NumberParseMatcher;


# instance fields
.field private final blacklist customMinusSign:Ljava/lang/String;

.field private final blacklist customPlusSign:Ljava/lang/String;

.field private final blacklist exponentMatcher:Landroid/icu/impl/number/parse/DecimalMatcher;

.field private final blacklist exponentSeparatorString:Ljava/lang/String;

.field private final blacklist ignorablesMatcher:Landroid/icu/impl/number/parse/IgnorablesMatcher;


# direct methods
.method private constructor blacklist <init>(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/Grouper;)V
    .registers 7
    .param p1, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p2, "grouper"    # Landroid/icu/impl/number/Grouper;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getExponentSeparator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->exponentSeparatorString:Ljava/lang/String;

    .line 33
    const/16 v0, 0x30

    invoke-static {p1, p2, v0}, Landroid/icu/impl/number/parse/DecimalMatcher;->getInstance(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/Grouper;I)Landroid/icu/impl/number/parse/DecimalMatcher;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->exponentMatcher:Landroid/icu/impl/number/parse/DecimalMatcher;

    .line 36
    const v0, 0x8000

    invoke-static {v0}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->getInstance(I)Landroid/icu/impl/number/parse/IgnorablesMatcher;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->ignorablesMatcher:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    .line 38
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "minusSign":Ljava/lang/String;
    invoke-static {}, Landroid/icu/impl/number/parse/ScientificMatcher;->minusSignSet()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    move-object v1, v2

    goto :goto_2c

    :cond_2b
    move-object v1, v0

    :goto_2c
    iput-object v1, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->customMinusSign:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "plusSign":Ljava/lang/String;
    invoke-static {}, Landroid/icu/impl/number/parse/ScientificMatcher;->plusSignSet()Landroid/icu/text/UnicodeSet;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move-object v2, v1

    :goto_3e
    iput-object v2, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->customPlusSign:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static blacklist getInstance(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/Grouper;)Landroid/icu/impl/number/parse/ScientificMatcher;
    .registers 3
    .param p0, "symbols"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p1, "grouper"    # Landroid/icu/impl/number/Grouper;

    .line 28
    new-instance v0, Landroid/icu/impl/number/parse/ScientificMatcher;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/number/parse/ScientificMatcher;-><init>(Landroid/icu/text/DecimalFormatSymbols;Landroid/icu/impl/number/Grouper;)V

    return-object v0
.end method

.method private static blacklist minusSignSet()Landroid/icu/text/UnicodeSet;
    .registers 1

    .line 45
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->MINUS_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist plusSignSet()Landroid/icu/text/UnicodeSet;
    .registers 1

    .line 49
    sget-object v0, Landroid/icu/impl/StaticUnicodeSets$Key;->PLUS_SIGN:Landroid/icu/impl/StaticUnicodeSets$Key;

    invoke-static {v0}, Landroid/icu/impl/StaticUnicodeSets;->get(Landroid/icu/impl/StaticUnicodeSets$Key;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 10
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 55
    invoke-virtual {p2}, Landroid/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 56
    return v1

    .line 60
    :cond_8
    iget v0, p2, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_f

    .line 61
    return v1

    .line 66
    :cond_f
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v0

    .line 67
    .local v0, "initialOffset":I
    iget-object v2, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->exponentSeparatorString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v2

    .line 68
    .local v2, "overlap":I
    iget-object v3, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->exponentSeparatorString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_dc

    .line 72
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-ne v3, v2, :cond_29

    .line 73
    return v4

    .line 75
    :cond_29
    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 79
    iget-object v3, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->ignorablesMatcher:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z

    .line 80
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-nez v3, :cond_3c

    .line 81
    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 82
    return v4

    .line 86
    :cond_3c
    const/4 v3, 0x1

    .line 87
    .local v3, "exponentSign":I
    invoke-static {}, Landroid/icu/impl/number/parse/ScientificMatcher;->minusSignSet()Landroid/icu/text/UnicodeSet;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/icu/impl/StringSegment;->startsWith(Landroid/icu/text/UnicodeSet;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 88
    const/4 v3, -0x1

    .line 89
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->adjustOffsetByCodePoint()V

    goto :goto_96

    .line 90
    :cond_4c
    invoke-static {}, Landroid/icu/impl/number/parse/ScientificMatcher;->plusSignSet()Landroid/icu/text/UnicodeSet;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/icu/impl/StringSegment;->startsWith(Landroid/icu/text/UnicodeSet;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 91
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->adjustOffsetByCodePoint()V

    goto :goto_96

    .line 92
    :cond_5a
    iget-object v6, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->customMinusSign:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/icu/impl/StringSegment;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_79

    .line 93
    iget-object v6, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->customMinusSign:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v2

    .line 94
    iget-object v6, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->customMinusSign:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v2, v6, :cond_74

    .line 96
    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 97
    return v4

    .line 99
    :cond_74
    const/4 v3, -0x1

    .line 100
    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    goto :goto_96

    .line 101
    :cond_79
    iget-object v6, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->customPlusSign:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/icu/impl/StringSegment;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 102
    iget-object v6, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->customPlusSign:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v2

    .line 103
    iget-object v6, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->customPlusSign:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v2, v6, :cond_93

    .line 105
    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 106
    return v4

    .line 108
    :cond_93
    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 112
    :cond_96
    :goto_96
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v6

    if-nez v6, :cond_a0

    .line 113
    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 114
    return v4

    .line 119
    :cond_a0
    iget-object v6, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->ignorablesMatcher:Landroid/icu/impl/number/parse/IgnorablesMatcher;

    invoke-virtual {v6, p1, v5}, Landroid/icu/impl/number/parse/IgnorablesMatcher;->match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z

    .line 120
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v6

    if-nez v6, :cond_af

    .line 121
    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 122
    return v4

    .line 126
    :cond_af
    iget-object v6, p2, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    if-nez v6, :cond_b4

    move v1, v4

    .line 127
    .local v1, "wasNull":Z
    :cond_b4
    if-eqz v1, :cond_bd

    .line 128
    new-instance v4, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v4}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>()V

    iput-object v4, p2, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 130
    :cond_bd
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v4

    .line 131
    .local v4, "digitsOffset":I
    iget-object v6, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->exponentMatcher:Landroid/icu/impl/number/parse/DecimalMatcher;

    invoke-virtual {v6, p1, p2, v3}, Landroid/icu/impl/number/parse/DecimalMatcher;->match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;I)Z

    move-result v6

    .line 132
    .local v6, "digitsReturnValue":Z
    if-eqz v1, :cond_cb

    .line 133
    iput-object v5, p2, Landroid/icu/impl/number/parse/ParsedNumber;->quantity:Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 136
    :cond_cb
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v5

    if-eq v5, v4, :cond_d8

    .line 138
    iget v5, p2, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p2, Landroid/icu/impl/number/parse/ParsedNumber;->flags:I

    goto :goto_db

    .line 141
    :cond_d8
    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 143
    :goto_db
    return v6

    .line 145
    .end local v1    # "wasNull":Z
    .end local v3    # "exponentSign":I
    .end local v4    # "digitsOffset":I
    .end local v6    # "digitsReturnValue":Z
    :cond_dc
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v3

    if-ne v2, v3, :cond_e3

    .line 147
    return v4

    .line 151
    :cond_e3
    return v1
.end method

.method public blacklist postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 2
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 162
    return-void
.end method

.method public blacklist smokeTest(Landroid/icu/impl/StringSegment;)Z
    .registers 3
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;

    .line 156
    iget-object v0, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->exponentSeparatorString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ScientificMatcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/number/parse/ScientificMatcher;->exponentSeparatorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
