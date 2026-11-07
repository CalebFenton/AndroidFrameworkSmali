.class public Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;
.super Ljava/lang/Object;
.source "CombinedCurrencyMatcher.java"

# interfaces
.implements Landroid/icu/impl/number/parse/NumberParseMatcher;


# instance fields
.field private final blacklist afterPrefixInsert:Ljava/lang/String;

.field private final blacklist beforeSuffixInsert:Ljava/lang/String;

.field private final blacklist currency1:Ljava/lang/String;

.field private final blacklist currency2:Ljava/lang/String;

.field private final blacklist isoCode:Ljava/lang/String;

.field private final blacklist localLongNames:[Ljava/lang/String;

.field private final blacklist longNameTrie:Landroid/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist symbolTrie:Landroid/icu/impl/TextTrieMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/TextTrieMap<",
            "Landroid/icu/util/Currency$CurrencyStringInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/icu/util/Currency;Landroid/icu/text/DecimalFormatSymbols;I)V
    .registers 10
    .param p1, "currency"    # Landroid/icu/util/Currency;
    .param p2, "dfs"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p3, "parseFlags"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getSubtype()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->isoCode:Ljava/lang/String;

    .line 51
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/icu/util/Currency;->getSymbol(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->currency1:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->currency2:Ljava/lang/String;

    .line 54
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/icu/text/DecimalFormatSymbols;->getPatternForCurrencySpacing(IZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->afterPrefixInsert:Ljava/lang/String;

    .line 56
    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/icu/text/DecimalFormatSymbols;->getPatternForCurrencySpacing(IZ)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->beforeSuffixInsert:Ljava/lang/String;

    .line 59
    and-int/lit16 v3, p3, 0x2000

    const/4 v4, 0x0

    if-nez v3, :cond_44

    .line 62
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/icu/util/Currency;->getParsingTrie(Landroid/icu/util/ULocale;I)Landroid/icu/impl/TextTrieMap;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->longNameTrie:Landroid/icu/impl/TextTrieMap;

    .line 63
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/icu/util/Currency;->getParsingTrie(Landroid/icu/util/ULocale;I)Landroid/icu/impl/TextTrieMap;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->symbolTrie:Landroid/icu/impl/TextTrieMap;

    .line 64
    iput-object v4, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->localLongNames:[Ljava/lang/String;

    goto :goto_6e

    .line 67
    :cond_44
    iput-object v4, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->longNameTrie:Landroid/icu/impl/TextTrieMap;

    .line 68
    iput-object v4, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->symbolTrie:Landroid/icu/impl/TextTrieMap;

    .line 69
    sget v1, Landroid/icu/impl/StandardPlural;->COUNT:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->localLongNames:[Ljava/lang/String;

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4f
    sget v2, Landroid/icu/impl/StandardPlural;->COUNT:I

    if-ge v1, v2, :cond_6e

    .line 71
    sget-object v2, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/StandardPlural;

    invoke-virtual {v2}, Landroid/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "pluralKeyword":Ljava/lang/String;
    iget-object v3, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->localLongNames:[Ljava/lang/String;

    .line 73
    invoke-virtual {p2}, Landroid/icu/text/DecimalFormatSymbols;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {p1, v5, v0, v2, v4}, Landroid/icu/util/Currency;->getName(Ljava/util/Locale;ILjava/lang/String;[Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 70
    .end local v2    # "pluralKeyword":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 91
    .end local v1    # "i":I
    :cond_6e
    :goto_6e
    return-void
.end method

.method public static blacklist getInstance(Landroid/icu/util/Currency;Landroid/icu/text/DecimalFormatSymbols;I)Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;
    .registers 4
    .param p0, "currency"    # Landroid/icu/util/Currency;
    .param p1, "dfs"    # Landroid/icu/text/DecimalFormatSymbols;
    .param p2, "parseFlags"    # I

    .line 46
    new-instance v0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;-><init>(Landroid/icu/util/Currency;Landroid/icu/text/DecimalFormatSymbols;I)V

    return-object v0
.end method

.method private blacklist matchCurrency(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 13
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 133
    const/4 v0, 0x0

    .line 136
    .local v0, "maybeMore":Z
    iget-object v1, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->currency1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 137
    iget-object v1, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->currency1:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/icu/impl/StringSegment;->getCaseSensitivePrefixLength(Ljava/lang/CharSequence;)I

    move-result v1

    .local v1, "overlap1":I
    goto :goto_11

    .line 139
    .end local v1    # "overlap1":I
    :cond_10
    const/4 v1, -0x1

    .line 141
    .restart local v1    # "overlap1":I
    :goto_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v4

    if-ne v1, v4, :cond_1c

    goto :goto_1e

    :cond_1c
    move v4, v3

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v4, v2

    .line 142
    .end local v0    # "maybeMore":Z
    .local v4, "maybeMore":Z
    :goto_1f
    iget-object v0, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->currency1:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_32

    .line 143
    iget-object v0, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->isoCode:Ljava/lang/String;

    iput-object v0, p2, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    .line 144
    invoke-virtual {p1, v1}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 145
    invoke-virtual {p2, p1}, Landroid/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Landroid/icu/impl/StringSegment;)V

    .line 146
    return v4

    .line 150
    :cond_32
    iget-object v0, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->currency2:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 153
    iget-object v0, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->currency2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v0

    .local v0, "overlap2":I
    goto :goto_42

    .line 155
    .end local v0    # "overlap2":I
    :cond_41
    const/4 v0, -0x1

    .line 157
    .restart local v0    # "overlap2":I
    :goto_42
    if-nez v4, :cond_4d

    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v5

    if-ne v0, v5, :cond_4b

    goto :goto_4d

    :cond_4b
    move v5, v3

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v5, v2

    .line 158
    .end local v4    # "maybeMore":Z
    .local v5, "maybeMore":Z
    :goto_4e
    iget-object v4, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->currency2:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_61

    .line 159
    iget-object v2, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->isoCode:Ljava/lang/String;

    iput-object v2, p2, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    .line 160
    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 161
    invoke-virtual {p2, p1}, Landroid/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Landroid/icu/impl/StringSegment;)V

    .line 162
    return v5

    .line 165
    :cond_61
    iget-object v4, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->longNameTrie:Landroid/icu/impl/TextTrieMap;

    if-eqz v4, :cond_a3

    .line 167
    new-instance v4, Landroid/icu/impl/TextTrieMap$Output;

    invoke-direct {v4}, Landroid/icu/impl/TextTrieMap$Output;-><init>()V

    .line 168
    .local v4, "trieOutput":Landroid/icu/impl/TextTrieMap$Output;
    iget-object v6, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->longNameTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v6, p1, v3, v4}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$Output;)Ljava/util/Iterator;

    move-result-object v6

    .line 169
    .local v6, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    if-nez v5, :cond_79

    iget-boolean v7, v4, Landroid/icu/impl/TextTrieMap$Output;->partialMatch:Z

    if-eqz v7, :cond_77

    goto :goto_79

    :cond_77
    move v7, v3

    goto :goto_7a

    :cond_79
    :goto_79
    move v7, v2

    .line 170
    .end local v5    # "maybeMore":Z
    .local v7, "maybeMore":Z
    :goto_7a
    if-nez v6, :cond_8b

    .line 171
    iget-object v5, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->symbolTrie:Landroid/icu/impl/TextTrieMap;

    invoke-virtual {v5, p1, v3, v4}, Landroid/icu/impl/TextTrieMap;->get(Ljava/lang/CharSequence;ILandroid/icu/impl/TextTrieMap$Output;)Ljava/util/Iterator;

    move-result-object v6

    .line 172
    if-nez v7, :cond_8a

    iget-boolean v5, v4, Landroid/icu/impl/TextTrieMap$Output;->partialMatch:Z

    if-eqz v5, :cond_89

    goto :goto_8a

    :cond_89
    move v2, v3

    :cond_8a
    :goto_8a
    move v7, v2

    .line 174
    :cond_8b
    if-eqz v6, :cond_a2

    .line 175
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Currency$CurrencyStringInfo;

    invoke-virtual {v2}, Landroid/icu/util/Currency$CurrencyStringInfo;->getISOCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    .line 176
    iget v2, v4, Landroid/icu/impl/TextTrieMap$Output;->matchLength:I

    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 177
    invoke-virtual {p2, p1}, Landroid/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Landroid/icu/impl/StringSegment;)V

    .line 178
    return v7

    .line 181
    .end local v4    # "trieOutput":Landroid/icu/impl/TextTrieMap$Output;
    .end local v6    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/util/Currency$CurrencyStringInfo;>;"
    :cond_a2
    goto :goto_e2

    .line 183
    .end local v7    # "maybeMore":Z
    .restart local v5    # "maybeMore":Z
    :cond_a3
    const/4 v4, 0x0

    .line 184
    .local v4, "longestFullMatch":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a5
    sget v7, Landroid/icu/impl/StandardPlural;->COUNT:I

    if-ge v6, v7, :cond_d4

    .line 185
    iget-object v7, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->localLongNames:[Ljava/lang/String;

    aget-object v7, v7, v6

    .line 186
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 187
    goto :goto_d1

    .line 189
    :cond_b4
    invoke-virtual {p1, v7}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v8

    .line 190
    .local v8, "overlap":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v8, v9, :cond_c8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v4, :cond_c8

    .line 191
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 193
    :cond_c8
    if-nez v5, :cond_cf

    if-lez v8, :cond_cd

    goto :goto_cf

    :cond_cd
    move v9, v3

    goto :goto_d0

    :cond_cf
    :goto_cf
    move v9, v2

    :goto_d0
    move v5, v9

    .line 184
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "overlap":I
    :goto_d1
    add-int/lit8 v6, v6, 0x1

    goto :goto_a5

    .line 195
    .end local v6    # "i":I
    :cond_d4
    if-lez v4, :cond_e1

    .line 196
    iget-object v2, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->isoCode:Ljava/lang/String;

    iput-object v2, p2, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    .line 197
    invoke-virtual {p1, v4}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 198
    invoke-virtual {p2, p1}, Landroid/icu/impl/number/parse/ParsedNumber;->setCharsConsumed(Landroid/icu/impl/StringSegment;)V

    .line 199
    return v5

    .line 195
    :cond_e1
    move v7, v5

    .line 204
    .end local v4    # "longestFullMatch":I
    .end local v5    # "maybeMore":Z
    .local v7, "maybeMore":Z
    :goto_e2
    return v7
.end method


# virtual methods
.method public blacklist match(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z
    .registers 9
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;
    .param p2, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 95
    iget-object v0, p2, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 96
    return v1

    .line 100
    :cond_6
    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->getOffset()I

    move-result v0

    .line 101
    .local v0, "initialOffset":I
    const/4 v2, 0x0

    .line 102
    .local v2, "maybeMore":Z
    invoke-virtual {p2}, Landroid/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->beforeSuffixInsert:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_38

    .line 103
    iget-object v3, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->beforeSuffixInsert:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v3

    .line 104
    .local v3, "overlap":I
    iget-object v5, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->beforeSuffixInsert:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_2b

    .line 105
    invoke-virtual {p1, v3}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 108
    :cond_2b
    if-nez v2, :cond_36

    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v5

    if-ne v3, v5, :cond_34

    goto :goto_36

    :cond_34
    move v5, v1

    goto :goto_37

    :cond_36
    :goto_36
    move v5, v4

    :goto_37
    move v2, v5

    .line 112
    .end local v3    # "overlap":I
    :cond_38
    if-nez v2, :cond_43

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->matchCurrency(Landroid/icu/impl/StringSegment;Landroid/icu/impl/number/parse/ParsedNumber;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_43

    :cond_41
    move v3, v1

    goto :goto_44

    :cond_43
    :goto_43
    move v3, v4

    .line 113
    .end local v2    # "maybeMore":Z
    .local v3, "maybeMore":Z
    :goto_44
    iget-object v2, p2, Landroid/icu/impl/number/parse/ParsedNumber;->currencyCode:Ljava/lang/String;

    if-nez v2, :cond_4c

    .line 114
    invoke-virtual {p1, v0}, Landroid/icu/impl/StringSegment;->setOffset(I)V

    .line 115
    return v3

    .line 119
    :cond_4c
    invoke-virtual {p2}, Landroid/icu/impl/number/parse/ParsedNumber;->seenNumber()Z

    move-result v2

    if-nez v2, :cond_75

    iget-object v2, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->afterPrefixInsert:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_75

    .line 120
    iget-object v2, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->afterPrefixInsert:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->getCommonPrefixLength(Ljava/lang/CharSequence;)I

    move-result v2

    .line 121
    .local v2, "overlap":I
    iget-object v5, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->afterPrefixInsert:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_6b

    .line 122
    invoke-virtual {p1, v2}, Landroid/icu/impl/StringSegment;->adjustOffset(I)V

    .line 125
    :cond_6b
    if-nez v3, :cond_73

    invoke-virtual {p1}, Landroid/icu/impl/StringSegment;->length()I

    move-result v5

    if-ne v2, v5, :cond_74

    :cond_73
    move v1, v4

    :cond_74
    move v3, v1

    .line 128
    .end local v2    # "overlap":I
    :cond_75
    return v3
.end method

.method public blacklist postProcess(Landroid/icu/impl/number/parse/ParsedNumber;)V
    .registers 2
    .param p1, "result"    # Landroid/icu/impl/number/parse/ParsedNumber;

    .line 217
    return-void
.end method

.method public blacklist smokeTest(Landroid/icu/impl/StringSegment;)Z
    .registers 3
    .param p1, "segment"    # Landroid/icu/impl/StringSegment;

    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<CombinedCurrencyMatcher "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/number/parse/CombinedCurrencyMatcher;->isoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
