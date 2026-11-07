.class public Landroid/icu/impl/breakiter/CjkBreakEngine;
.super Landroid/icu/impl/breakiter/DictionaryBreakEngine;
.source "CjkBreakEngine.java"


# static fields
.field private static final blacklist kMaxKatakanaGroupLength:I = 0x14

.field private static final blacklist kMaxKatakanaLength:I = 0x8

.field private static final blacklist kint32max:I = 0x7fffffff

.field private static final blacklist maxSnlp:I = 0xff


# instance fields
.field private blacklist fClosePunctuationSet:Landroid/icu/text/UnicodeSet;

.field private blacklist fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

.field private blacklist fDigitOrOpenPunctuationOrAlphabetSet:Landroid/icu/text/UnicodeSet;

.field private blacklist fHangulWordSet:Landroid/icu/text/UnicodeSet;

.field private blacklist fMlBreakEngine:Landroid/icu/impl/breakiter/MlBreakEngine;

.field private blacklist fSkipSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist isCj:Z


# direct methods
.method public constructor blacklist <init>(Z)V
    .registers 6
    .param p1, "korean"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->isCj:Z

    .line 43
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[\\uac00-\\ud7a3]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    .line 44
    iget-object v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 46
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:Nd:][:Pi:][:Ps:][:Alphabetic:]]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fDigitOrOpenPunctuationOrAlphabetSet:Landroid/icu/text/UnicodeSet;

    .line 47
    iget-object v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fDigitOrOpenPunctuationOrAlphabetSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 49
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:Pc:][:Pd:][:Pe:][:Pf:][:Po:]]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fClosePunctuationSet:Landroid/icu/text/UnicodeSet;

    .line 50
    iget-object v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fClosePunctuationSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fSkipSet:Ljava/util/HashSet;

    .line 53
    const-string v0, "Hira"

    invoke-static {v0}, Landroid/icu/impl/breakiter/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Landroid/icu/impl/breakiter/DictionaryMatcher;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    .line 54
    if-eqz p1, :cond_4a

    .line 55
    iget-object v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Landroid/icu/impl/breakiter/CjkBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    goto :goto_75

    .line 57
    :cond_4a
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->isCj:Z

    .line 58
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:Han:][:Hiragana:][:Katakana:]\\u30fc\\uff70\\uff9e\\uff9f]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "cjSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {p0, v0}, Landroid/icu/impl/breakiter/CjkBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    .line 60
    nop

    .line 61
    const-string v1, "android.icu.impl.breakiter.useMLPhraseBreaking"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 62
    new-instance v1, Landroid/icu/impl/breakiter/MlBreakEngine;

    iget-object v2, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fDigitOrOpenPunctuationOrAlphabetSet:Landroid/icu/text/UnicodeSet;

    iget-object v3, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fClosePunctuationSet:Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, v2, v3}, Landroid/icu/impl/breakiter/MlBreakEngine;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    iput-object v1, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fMlBreakEngine:Landroid/icu/impl/breakiter/MlBreakEngine;

    goto :goto_75

    .line 65
    :cond_72
    invoke-direct {p0}, Landroid/icu/impl/breakiter/CjkBreakEngine;->initializeJapanesePhraseParamater()V

    .line 68
    .end local v0    # "cjSet":Landroid/icu/text/UnicodeSet;
    :goto_75
    return-void
.end method

.method private static blacklist getKatakanaCost(I)I
    .registers 3
    .param p0, "wordlength"    # I

    .line 113
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    .line 114
    .local v0, "katakanaCost":[I
    const/16 v1, 0x8

    if-le p0, v1, :cond_e

    const/16 v1, 0x2000

    goto :goto_10

    :cond_e
    aget v1, v0, p0

    :goto_10
    return v1

    nop

    :array_12
    .array-data 4
        0x2000
        0x3d8
        0x198
        0xf0
        0xcc
        0xfc
        0x12c
        0x174
        0x1e0
    .end array-data
.end method

.method private blacklist getPatternFromText(Ljava/text/CharacterIterator;Ljava/lang/StringBuffer;II)Ljava/lang/String;
    .registers 7
    .param p1, "text"    # Ljava/text/CharacterIterator;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "start"    # I
    .param p4, "length"    # I

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 340
    if-lez p4, :cond_1d

    .line 341
    invoke-interface {p1, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 342
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_11
    if-ge v0, p4, :cond_1d

    .line 344
    invoke-interface {p1}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 347
    .end local v0    # "i":I
    :cond_1d
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist initializeJapanesePhraseParamater()V
    .registers 1

    .line 71
    invoke-direct {p0}, Landroid/icu/impl/breakiter/CjkBreakEngine;->loadJapaneseExtensions()V

    .line 72
    invoke-direct {p0}, Landroid/icu/impl/breakiter/CjkBreakEngine;->loadHiragana()V

    .line 73
    return-void
.end method

.method private static blacklist isKatakana(I)Z
    .registers 2
    .param p0, "value"    # I

    .line 118
    const/16 v0, 0x30a1

    if-lt p0, v0, :cond_c

    const/16 v0, 0x30fe

    if-gt p0, v0, :cond_c

    const/16 v0, 0x30fb

    if-ne p0, v0, :cond_16

    :cond_c
    const v0, 0xff66

    if-lt p0, v0, :cond_18

    const v0, 0xff9f

    if-gt p0, v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method private blacklist loadHiragana()V
    .registers 5

    .line 86
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[:Hiragana:]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "hiraganaWordSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 88
    new-instance v1, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 89
    .local v1, "iterator":Landroid/icu/text/UnicodeSetIterator;
    :goto_f
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 90
    iget-object v2, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fSkipSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSetIterator;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 92
    :cond_1f
    return-void
.end method

.method private blacklist loadJapaneseExtensions()V
    .registers 7

    .line 76
    const-string v0, "android/icu/impl/data/icudata/brkitr"

    const-string v1, "ja"

    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 77
    .local v0, "rb":Landroid/icu/util/UResourceBundle;
    const-string v1, "extensions"

    .line 78
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "extensions"

    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 79
    .local v2, "bundle":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v3

    .line 80
    .local v3, "iterator":Landroid/icu/util/UResourceBundleIterator;
    :goto_14
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 81
    iget-object v4, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fSkipSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/icu/util/UResourceBundleIterator;->nextString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 83
    :cond_24
    return-void
.end method


# virtual methods
.method public blacklist divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;Z)I
    .registers 36
    .param p1, "inText"    # Ljava/text/CharacterIterator;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "foundBreaks"    # Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;
    .param p5, "isPhraseBreaking"    # Z

    .line 125
    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v1, 0x0

    if-lt v3, v4, :cond_a

    .line 126
    return v1

    .line 129
    :cond_a
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 131
    sub-int v9, v4, v3

    .line 132
    .local v9, "inputLength":I
    add-int/lit8 v2, v9, 0x1

    new-array v2, v2, [I

    .line 133
    .local v2, "charPositions":[I
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v10, v5

    .line 134
    .local v10, "s":Ljava/lang/StringBuffer;
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 135
    :goto_1e
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v5

    if-ge v5, v4, :cond_2f

    .line 136
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    move-result v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 137
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    goto :goto_1e

    .line 139
    :cond_2f
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, "prenormstr":Ljava/lang/String;
    sget-object v5, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    invoke-static {v11, v5}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Landroid/icu/text/Normalizer$QuickCheckResult;

    move-result-object v5

    sget-object v6, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    const/4 v7, 0x1

    if-eq v5, v6, :cond_49

    sget-object v5, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    .line 141
    invoke-static {v11, v5, v1}, Landroid/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z

    move-result v5

    if-eqz v5, :cond_47

    goto :goto_49

    :cond_47
    move v5, v1

    goto :goto_4a

    :cond_49
    :goto_49
    move v5, v7

    :goto_4a
    move v12, v5

    .line 143
    .local v12, "isNormalized":Z
    const/4 v5, 0x0

    .line 144
    .local v5, "numCodePts":I
    if-eqz v12, :cond_6d

    .line 145
    new-instance v6, Ljava/text/StringCharacterIterator;

    invoke-direct {v6, v11}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 146
    .local v6, "text":Ljava/text/CharacterIterator;
    const/4 v8, 0x0

    .line 147
    .local v8, "index":I
    aput v1, v2, v1

    .line 148
    :goto_56
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v8, v13, :cond_6a

    .line 149
    invoke-virtual {v11, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v13

    .line 150
    .local v13, "codepoint":I
    invoke-static {v13}, Ljava/lang/Character;->charCount(I)I

    move-result v14

    add-int/2addr v8, v14

    .line 151
    add-int/lit8 v5, v5, 0x1

    .line 152
    aput v8, v2, v5

    .line 153
    .end local v13    # "codepoint":I
    goto :goto_56

    .line 154
    .end local v8    # "index":I
    :cond_6a
    move-object v14, v6

    move v6, v5

    goto :goto_9d

    .line 155
    .end local v6    # "text":Ljava/text/CharacterIterator;
    :cond_6d
    sget-object v6, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    invoke-static {v11, v6}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Ljava/lang/String;

    move-result-object v6

    .line 156
    .local v6, "normStr":Ljava/lang/String;
    new-instance v8, Ljava/text/StringCharacterIterator;

    invoke-direct {v8, v6}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 157
    .local v8, "text":Ljava/text/CharacterIterator;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v7

    new-array v2, v13, [I

    .line 158
    new-instance v13, Landroid/icu/text/Normalizer;

    sget-object v14, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    invoke-direct {v13, v11, v14, v1}, Landroid/icu/text/Normalizer;-><init>(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)V

    .line 159
    .local v13, "normalizer":Landroid/icu/text/Normalizer;
    const/4 v14, 0x0

    .line 160
    .local v14, "index":I
    aput v1, v2, v1

    .line 161
    :goto_89
    invoke-virtual {v13}, Landroid/icu/text/Normalizer;->endIndex()I

    move-result v15

    if-ge v14, v15, :cond_9b

    .line 162
    invoke-virtual {v13}, Landroid/icu/text/Normalizer;->next()I

    .line 163
    add-int/lit8 v5, v5, 0x1

    .line 164
    invoke-virtual {v13}, Landroid/icu/text/Normalizer;->getIndex()I

    move-result v14

    .line 165
    aput v14, v2, v5

    goto :goto_89

    .line 161
    :cond_9b
    move-object v14, v8

    move v6, v5

    .line 169
    .end local v5    # "numCodePts":I
    .end local v8    # "text":Ljava/text/CharacterIterator;
    .end local v13    # "normalizer":Landroid/icu/text/Normalizer;
    .local v6, "numCodePts":I
    .local v14, "text":Ljava/text/CharacterIterator;
    :goto_9d
    nop

    .line 170
    const-string v5, "android.icu.impl.breakiter.useMLPhraseBreaking"

    const-string v8, "false"

    invoke-static {v5, v8}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 172
    if-eqz p5, :cond_c0

    iget-boolean v5, v0, Landroid/icu/impl/breakiter/CjkBreakEngine;->isCj:Z

    if-eqz v5, :cond_c0

    .line 173
    iget-object v1, v0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fMlBreakEngine:Landroid/icu/impl/breakiter/MlBreakEngine;

    move-object/from16 v8, p4

    move-object v7, v2

    move-object v5, v14

    move-object/from16 v2, p1

    .end local v2    # "charPositions":[I
    .end local v14    # "text":Ljava/text/CharacterIterator;
    .local v5, "text":Ljava/text/CharacterIterator;
    .local v7, "charPositions":[I
    invoke-virtual/range {v1 .. v8}, Landroid/icu/impl/breakiter/MlBreakEngine;->divideUpRange(Ljava/text/CharacterIterator;IILjava/text/CharacterIterator;I[ILandroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;)I

    move-result v1

    move-object v5, v7

    .end local v7    # "charPositions":[I
    .local v5, "charPositions":[I
    .restart local v14    # "text":Ljava/text/CharacterIterator;
    return v1

    .line 172
    .end local v5    # "charPositions":[I
    .restart local v2    # "charPositions":[I
    :cond_c0
    move-object v5, v2

    move-object/from16 v2, p1

    .end local v2    # "charPositions":[I
    .restart local v5    # "charPositions":[I
    goto :goto_c7

    .line 169
    .end local v5    # "charPositions":[I
    .restart local v2    # "charPositions":[I
    :cond_c4
    move-object v5, v2

    move-object/from16 v2, p1

    .line 180
    .end local v2    # "charPositions":[I
    .restart local v5    # "charPositions":[I
    :goto_c7
    add-int/lit8 v8, v6, 0x1

    new-array v8, v8, [I

    .line 181
    .local v8, "bestSnlp":[I
    aput v1, v8, v1

    .line 182
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_ce
    const v15, 0x7fffffff

    if-gt v13, v6, :cond_d8

    .line 183
    aput v15, v8, v13

    .line 182
    add-int/lit8 v13, v13, 0x1

    goto :goto_ce

    .line 186
    .end local v13    # "i":I
    :cond_d8
    add-int/lit8 v13, v6, 0x1

    new-array v13, v13, [I

    .line 187
    .local v13, "prev":[I
    const/16 v16, 0x0

    move/from16 v20, v1

    move/from16 v1, v16

    .local v1, "i":I
    :goto_e2
    if-gt v1, v6, :cond_eb

    .line 188
    const/16 v16, -0x1

    aput v16, v13, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_e2

    .line 191
    .end local v1    # "i":I
    :cond_eb
    const/16 v1, 0x14

    .line 192
    .local v1, "maxWordSize":I
    new-array v7, v6, [I

    .line 193
    .local v7, "values":[I
    new-array v15, v6, [I

    .line 199
    .local v15, "lengths":[I
    move/from16 v22, v1

    .end local v1    # "maxWordSize":I
    .local v22, "maxWordSize":I
    const/4 v1, 0x0

    .line 200
    .local v1, "ix":I
    invoke-interface {v14, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 201
    const/16 v17, 0x0

    .line 202
    .local v17, "is_prev_katakana":Z
    const/16 v18, 0x0

    move/from16 v23, v17

    move/from16 v17, v1

    move/from16 v1, v18

    .local v1, "i":I
    .local v17, "ix":I
    .local v23, "is_prev_katakana":Z
    :goto_101
    if-ge v1, v6, :cond_1fb

    .line 203
    move/from16 v24, v1

    .end local v1    # "i":I
    .local v24, "i":I
    invoke-interface {v14}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    .line 204
    .end local v17    # "ix":I
    .local v1, "ix":I
    move-object/from16 v25, v5

    .end local v5    # "charPositions":[I
    .local v25, "charPositions":[I
    aget v5, v8, v24

    move-object/from16 v19, v7

    const v7, 0x7fffffff

    .end local v7    # "values":[I
    .local v19, "values":[I
    if-ne v5, v7, :cond_11c

    .line 205
    move/from16 v29, v6

    move-object/from16 v27, v13

    move-object/from16 v16, v15

    goto/16 :goto_1e4

    .line 208
    :cond_11c
    add-int/lit8 v5, v24, 0x14

    if-ge v5, v6, :cond_123

    const/16 v5, 0x14

    goto :goto_125

    :cond_123
    sub-int v5, v6, v24

    .line 209
    .local v5, "maxSearchLength":I
    :goto_125
    move/from16 v17, v5

    const/4 v7, 0x1

    .end local v5    # "maxSearchLength":I
    .local v17, "maxSearchLength":I
    new-array v5, v7, [I

    .line 210
    .local v5, "count_":[I
    move-object v7, v13

    .end local v13    # "prev":[I
    .local v7, "prev":[I
    iget-object v13, v0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    move/from16 v18, v17

    move-object/from16 v16, v15

    move/from16 v15, v17

    move-object/from16 v17, v5

    const v5, 0x7fffffff

    .end local v5    # "count_":[I
    .local v15, "maxSearchLength":I
    .local v16, "lengths":[I
    .local v17, "count_":[I
    invoke-virtual/range {v13 .. v19}, Landroid/icu/impl/breakiter/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II[I)I

    .line 211
    aget v13, v17, v20

    .line 218
    .local v13, "count":I
    invoke-interface {v14, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 219
    if-eqz v13, :cond_14a

    aget v5, v16, v20

    move-object/from16 v27, v7

    const/4 v7, 0x1

    .end local v7    # "prev":[I
    .local v27, "prev":[I
    if-eq v5, v7, :cond_16b

    goto :goto_14c

    .end local v27    # "prev":[I
    .restart local v7    # "prev":[I
    :cond_14a
    move-object/from16 v27, v7

    .end local v7    # "prev":[I
    .restart local v27    # "prev":[I
    :goto_14c
    invoke-static {v14}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v5

    const v7, 0x7fffffff

    if-eq v5, v7, :cond_16b

    iget-object v5, v0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    invoke-static {v14}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_16b

    .line 220
    const/16 v5, 0xff

    aput v5, v19, v13

    .line 221
    const/16 v21, 0x1

    aput v21, v16, v13

    .line 222
    add-int/lit8 v13, v13, 0x1

    .line 225
    :cond_16b
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_16c
    if-ge v5, v13, :cond_18d

    .line 226
    aget v7, v8, v24

    aget v28, v19, v5

    add-int v7, v7, v28

    .line 227
    .local v7, "newSnlp":I
    aget v28, v16, v5

    add-int v28, v28, v24

    move/from16 v29, v5

    .end local v5    # "j":I
    .local v29, "j":I
    aget v5, v8, v28

    if-ge v7, v5, :cond_18a

    .line 228
    aget v5, v16, v29

    add-int v5, v5, v24

    aput v7, v8, v5

    .line 229
    aget v5, v16, v29

    add-int v5, v5, v24

    aput v24, v27, v5

    .line 225
    .end local v7    # "newSnlp":I
    :cond_18a
    add-int/lit8 v5, v29, 0x1

    .end local v29    # "j":I
    .restart local v5    # "j":I
    goto :goto_16c

    :cond_18d
    move/from16 v29, v5

    .line 238
    .end local v5    # "j":I
    invoke-static {v14}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v5

    invoke-static {v5}, Landroid/icu/impl/breakiter/CjkBreakEngine;->isKatakana(I)Z

    move-result v5

    .line 239
    .local v5, "is_katakana":Z
    if-nez v23, :cond_1dc

    if-eqz v5, :cond_1dc

    .line 240
    add-int/lit8 v7, v24, 0x1

    .line 241
    .local v7, "j":I
    invoke-static {v14}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 242
    :goto_1a0
    if-ge v7, v6, :cond_1c0

    move/from16 v28, v5

    .end local v5    # "is_katakana":Z
    .local v28, "is_katakana":Z
    sub-int v5, v7, v24

    move/from16 v29, v6

    const/16 v6, 0x14

    .end local v6    # "numCodePts":I
    .local v29, "numCodePts":I
    if-ge v5, v6, :cond_1c4

    invoke-static {v14}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v5

    invoke-static {v5}, Landroid/icu/impl/breakiter/CjkBreakEngine;->isKatakana(I)Z

    move-result v5

    if-eqz v5, :cond_1c4

    .line 243
    invoke-static {v14}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 244
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v28

    move/from16 v6, v29

    goto :goto_1a0

    .line 242
    .end local v28    # "is_katakana":Z
    .end local v29    # "numCodePts":I
    .restart local v5    # "is_katakana":Z
    .restart local v6    # "numCodePts":I
    :cond_1c0
    move/from16 v28, v5

    move/from16 v29, v6

    .line 247
    .end local v5    # "is_katakana":Z
    .end local v6    # "numCodePts":I
    .restart local v28    # "is_katakana":Z
    .restart local v29    # "numCodePts":I
    :cond_1c4
    sub-int v5, v7, v24

    const/16 v6, 0x14

    if-ge v5, v6, :cond_1e0

    .line 248
    aget v5, v8, v24

    sub-int v6, v7, v24

    invoke-static {v6}, Landroid/icu/impl/breakiter/CjkBreakEngine;->getKatakanaCost(I)I

    move-result v6

    add-int/2addr v5, v6

    .line 249
    .local v5, "newSnlp":I
    aget v6, v8, v7

    if-ge v5, v6, :cond_1e0

    .line 250
    aput v5, v8, v7

    .line 251
    aput v24, v27, v7

    goto :goto_1e0

    .line 239
    .end local v7    # "j":I
    .end local v28    # "is_katakana":Z
    .end local v29    # "numCodePts":I
    .local v5, "is_katakana":Z
    .restart local v6    # "numCodePts":I
    :cond_1dc
    move/from16 v28, v5

    move/from16 v29, v6

    .line 255
    .end local v5    # "is_katakana":Z
    .end local v6    # "numCodePts":I
    .restart local v28    # "is_katakana":Z
    .restart local v29    # "numCodePts":I
    :cond_1e0
    :goto_1e0
    move/from16 v5, v28

    move/from16 v23, v5

    .line 202
    .end local v13    # "count":I
    .end local v15    # "maxSearchLength":I
    .end local v17    # "count_":[I
    .end local v28    # "is_katakana":Z
    :goto_1e4
    add-int/lit8 v5, v24, 0x1

    .end local v24    # "i":I
    .local v5, "i":I
    invoke-interface {v14, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    invoke-static {v14}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    move/from16 v17, v1

    move v1, v5

    move-object/from16 v15, v16

    move-object/from16 v7, v19

    move-object/from16 v5, v25

    move-object/from16 v13, v27

    move/from16 v6, v29

    goto/16 :goto_101

    .end local v16    # "lengths":[I
    .end local v19    # "values":[I
    .end local v25    # "charPositions":[I
    .end local v27    # "prev":[I
    .end local v29    # "numCodePts":I
    .local v1, "i":I
    .local v5, "charPositions":[I
    .restart local v6    # "numCodePts":I
    .local v7, "values":[I
    .local v13, "prev":[I
    .local v15, "lengths":[I
    .local v17, "ix":I
    :cond_1fb
    move/from16 v24, v1

    move-object/from16 v25, v5

    move/from16 v29, v6

    move-object/from16 v19, v7

    move-object/from16 v27, v13

    move-object/from16 v16, v15

    .line 258
    .end local v1    # "i":I
    .end local v5    # "charPositions":[I
    .end local v6    # "numCodePts":I
    .end local v7    # "values":[I
    .end local v13    # "prev":[I
    .end local v15    # "lengths":[I
    .restart local v16    # "lengths":[I
    .restart local v19    # "values":[I
    .restart local v25    # "charPositions":[I
    .restart local v27    # "prev":[I
    .restart local v29    # "numCodePts":I
    add-int/lit8 v6, v29, 0x1

    new-array v1, v6, [I

    .line 259
    .local v1, "t_boundary":[I
    const/4 v5, 0x0

    .line 260
    .local v5, "numBreaks":I
    aget v6, v8, v29

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_21d

    .line 261
    aput v29, v1, v5

    .line 262
    const/16 v21, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v24, v1

    goto/16 :goto_294

    .line 263
    :cond_21d
    const/16 v21, 0x1

    if-eqz p5, :cond_278

    .line 264
    aput v29, v1, v5

    .line 265
    add-int/lit8 v5, v5, 0x1

    .line 266
    move/from16 v6, v29

    .line 267
    .local v6, "prevIdx":I
    const/4 v7, 0x0

    .local v7, "codeUnitIdx":I
    const/4 v13, 0x0

    .local v13, "prevCodeUnitIdx":I
    const/4 v15, 0x0

    .line 268
    .local v15, "length":I
    aget v21, v27, v29

    move-object/from16 v24, v1

    move/from16 v1, v21

    .local v1, "i":I
    .local v24, "t_boundary":[I
    :goto_230
    if-lez v1, :cond_273

    .line 269
    move/from16 v21, v5

    move/from16 v5, v20

    .end local v5    # "numBreaks":I
    .local v21, "numBreaks":I
    invoke-virtual {v11, v5, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v7

    .line 270
    invoke-virtual {v11, v5, v6}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v13

    .line 271
    sub-int v15, v13, v7

    .line 272
    move v6, v1

    .line 273
    invoke-direct {v0, v14, v10, v7, v15}, Landroid/icu/impl/breakiter/CjkBreakEngine;->getPatternFromText(Ljava/text/CharacterIterator;Ljava/lang/StringBuffer;II)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "pattern":Ljava/lang/String;
    invoke-interface {v14, v7}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 277
    move/from16 v26, v1

    .end local v1    # "i":I
    .local v26, "i":I
    iget-object v1, v0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fSkipSet:Ljava/util/HashSet;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26c

    .line 278
    invoke-static {v14}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/breakiter/CjkBreakEngine;->isKatakana(I)Z

    move-result v1

    if-eqz v1, :cond_266

    invoke-static {v14}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/breakiter/CjkBreakEngine;->isKatakana(I)Z

    move-result v1

    if-nez v1, :cond_26c

    .line 279
    :cond_266
    aput v26, v24, v21

    .line 280
    add-int/lit8 v1, v21, 0x1

    move v5, v1

    .end local v21    # "numBreaks":I
    .local v1, "numBreaks":I
    goto :goto_26e

    .line 268
    .end local v1    # "numBreaks":I
    .end local v5    # "pattern":Ljava/lang/String;
    .restart local v21    # "numBreaks":I
    :cond_26c
    move/from16 v5, v21

    .end local v21    # "numBreaks":I
    .local v5, "numBreaks":I
    :goto_26e
    aget v1, v27, v26

    const/16 v20, 0x0

    .end local v26    # "i":I
    .local v1, "i":I
    goto :goto_230

    :cond_273
    move/from16 v26, v1

    move/from16 v21, v5

    .line 283
    .end local v1    # "i":I
    .end local v5    # "numBreaks":I
    .end local v6    # "prevIdx":I
    .end local v7    # "codeUnitIdx":I
    .end local v13    # "prevCodeUnitIdx":I
    .end local v15    # "length":I
    .restart local v21    # "numBreaks":I
    goto :goto_294

    .line 284
    .end local v21    # "numBreaks":I
    .end local v24    # "t_boundary":[I
    .local v1, "t_boundary":[I
    .restart local v5    # "numBreaks":I
    :cond_278
    move-object/from16 v24, v1

    .end local v1    # "t_boundary":[I
    .restart local v24    # "t_boundary":[I
    move/from16 v1, v29

    .local v1, "i":I
    :goto_27c
    if-lez v1, :cond_285

    .line 285
    aput v1, v24, v5

    .line 286
    add-int/lit8 v5, v5, 0x1

    .line 284
    aget v1, v27, v1

    goto :goto_27c

    .line 288
    .end local v1    # "i":I
    :cond_285
    add-int/lit8 v1, v5, -0x1

    aget v1, v24, v1

    aget v1, v27, v1

    if-nez v1, :cond_290

    move/from16 v7, v21

    goto :goto_291

    :cond_290
    const/4 v7, 0x0

    :goto_291
    invoke-static {v7}, Landroid/icu/impl/Assert;->assrt(Z)V

    .line 291
    :goto_294
    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->size()I

    move-result v1

    if-eqz v1, :cond_2a0

    invoke-virtual/range {p4 .. p4}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->peek()I

    move-result v1

    if-ge v1, v3, :cond_2a7

    .line 292
    :cond_2a0
    add-int/lit8 v1, v5, 0x1

    const/16 v20, 0x0

    .end local v5    # "numBreaks":I
    .local v1, "numBreaks":I
    aput v20, v24, v5

    move v5, v1

    .line 295
    .end local v1    # "numBreaks":I
    .restart local v5    # "numBreaks":I
    :cond_2a7
    const/4 v1, 0x0

    .line 296
    .local v1, "correctedNumBreaks":I
    const/4 v6, -0x1

    .line 297
    .local v6, "previous":I
    add-int/lit8 v7, v5, -0x1

    .local v7, "i":I
    :goto_2ab
    if-ltz v7, :cond_2ed

    .line 298
    aget v13, v24, v7

    aget v13, v25, v13

    add-int/2addr v13, v3

    .line 302
    .local v13, "pos":I
    invoke-interface {v2, v13}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 303
    if-le v13, v6, :cond_2e3

    .line 304
    if-ne v13, v3, :cond_2d4

    if-eqz p5, :cond_2cf

    if-lez v13, :cond_2cf

    iget-object v15, v0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fClosePunctuationSet:Landroid/icu/text/UnicodeSet;

    .line 306
    move/from16 v20, v1

    .end local v1    # "correctedNumBreaks":I
    .local v20, "correctedNumBreaks":I
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2cc

    goto :goto_2d6

    :cond_2cc
    move-object/from16 v15, p4

    goto :goto_2e7

    .line 304
    .end local v20    # "correctedNumBreaks":I
    .restart local v1    # "correctedNumBreaks":I
    :cond_2cf
    move/from16 v20, v1

    .end local v1    # "correctedNumBreaks":I
    .restart local v20    # "correctedNumBreaks":I
    move-object/from16 v15, p4

    goto :goto_2e7

    .end local v20    # "correctedNumBreaks":I
    .restart local v1    # "correctedNumBreaks":I
    :cond_2d4
    move/from16 v20, v1

    .line 307
    .end local v1    # "correctedNumBreaks":I
    .restart local v20    # "correctedNumBreaks":I
    :goto_2d6
    aget v1, v24, v7

    aget v1, v25, v1

    add-int/2addr v1, v3

    move-object/from16 v15, p4

    invoke-virtual {v15, v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    .line 308
    add-int/lit8 v1, v20, 0x1

    .end local v20    # "correctedNumBreaks":I
    .restart local v1    # "correctedNumBreaks":I
    goto :goto_2e9

    .line 303
    :cond_2e3
    move-object/from16 v15, p4

    move/from16 v20, v1

    .line 311
    .end local v1    # "correctedNumBreaks":I
    .restart local v20    # "correctedNumBreaks":I
    :goto_2e7
    move/from16 v1, v20

    .end local v20    # "correctedNumBreaks":I
    .restart local v1    # "correctedNumBreaks":I
    :goto_2e9
    move v6, v13

    .line 297
    .end local v13    # "pos":I
    add-int/lit8 v7, v7, -0x1

    goto :goto_2ab

    :cond_2ed
    move-object/from16 v15, p4

    move/from16 v20, v1

    .line 314
    .end local v1    # "correctedNumBreaks":I
    .end local v7    # "i":I
    .restart local v20    # "correctedNumBreaks":I
    invoke-virtual {v15}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_323

    invoke-virtual {v15}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->peek()I

    move-result v1

    if-ne v1, v4, :cond_323

    .line 320
    if-eqz p5, :cond_31d

    .line 321
    invoke-interface {v2, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 322
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v1

    .line 323
    .local v1, "current":I
    const v7, 0x7fffffff

    if-eq v1, v7, :cond_31a

    iget-object v7, v0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fDigitOrOpenPunctuationOrAlphabetSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v7, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v7

    if-nez v7, :cond_31a

    .line 324
    invoke-virtual {v15}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->pop()I

    .line 325
    add-int/lit8 v7, v20, -0x1

    move v1, v7

    .end local v20    # "correctedNumBreaks":I
    .local v7, "correctedNumBreaks":I
    goto :goto_31c

    .line 327
    .end local v1    # "current":I
    .end local v7    # "correctedNumBreaks":I
    .restart local v20    # "correctedNumBreaks":I
    :cond_31a
    move/from16 v1, v20

    .end local v20    # "correctedNumBreaks":I
    .local v1, "correctedNumBreaks":I
    :goto_31c
    goto :goto_325

    .line 328
    .end local v1    # "correctedNumBreaks":I
    .restart local v20    # "correctedNumBreaks":I
    :cond_31d
    invoke-virtual {v15}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->pop()I

    .line 329
    add-int/lit8 v1, v20, -0x1

    .end local v20    # "correctedNumBreaks":I
    .restart local v1    # "correctedNumBreaks":I
    goto :goto_325

    .line 332
    .end local v1    # "correctedNumBreaks":I
    .restart local v20    # "correctedNumBreaks":I
    :cond_323
    move/from16 v1, v20

    .end local v20    # "correctedNumBreaks":I
    .restart local v1    # "correctedNumBreaks":I
    :goto_325
    invoke-virtual {v15}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_332

    .line 333
    invoke-virtual {v15}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->peek()I

    move-result v7

    invoke-interface {v2, v7}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 334
    :cond_332
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 96
    instance-of v0, p1, Landroid/icu/impl/breakiter/CjkBreakEngine;

    if-eqz v0, :cond_10

    .line 97
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/breakiter/CjkBreakEngine;

    .line 98
    .local v0, "other":Landroid/icu/impl/breakiter/CjkBreakEngine;
    iget-object v1, p0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    iget-object v2, v0, Landroid/icu/impl/breakiter/CjkBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 100
    .end local v0    # "other":Landroid/icu/impl/breakiter/CjkBreakEngine;
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
