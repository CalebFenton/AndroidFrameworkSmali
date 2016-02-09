.class Landroid/icu/text/CjkBreakEngine;
.super Landroid/icu/text/DictionaryBreakEngine;
.source "CjkBreakEngine.java"


# static fields
.field private static final fHanWordSet:Landroid/icu/text/UnicodeSet;

.field private static final fHangulWordSet:Landroid/icu/text/UnicodeSet;

.field private static final fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

.field private static final fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

.field private static final kMaxKatakanaGroupLength:I = 0x14

.field private static final kMaxKatakanaLength:I = 0x8

.field private static final kint32max:I = 0x7fffffff

.field private static final maxSnlp:I = 0xff


# instance fields
.field private fDictionary:Landroid/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 19
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@5
    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    #@7
    .line 20
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@9
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@c
    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    #@e
    .line 21
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@10
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@13
    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    #@15
    .line 22
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@17
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@1a
    sput-object v0, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    #@1c
    .line 24
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    #@1e
    const-string/jumbo v1, "[\\uac00-\\ud7a3]"

    #@21
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    #@24
    .line 25
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    #@26
    const-string/jumbo v1, "[:Han:]"

    #@29
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    #@2c
    .line 26
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    #@2e
    const-string/jumbo v1, "[[:Katakana:]\\uff9e\\uff9f]"

    #@31
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    #@34
    .line 27
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    #@36
    const-string/jumbo v1, "[:Hiragana:]"

    #@39
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    #@3c
    .line 30
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    #@3e
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@41
    .line 31
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    #@43
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@46
    .line 32
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    #@48
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@4b
    .line 33
    sget-object v0, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    #@4d
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@50
    .line 18
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "korean"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 39
    new-array v1, v2, [Ljava/lang/Integer;

    #@3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v2

    #@7
    const/4 v3, 0x0

    #@8
    aput-object v2, v1, v3

    #@a
    invoke-direct {p0, v1}, Landroid/icu/text/DictionaryBreakEngine;-><init>([Ljava/lang/Integer;)V

    #@d
    .line 36
    const/4 v1, 0x0

    #@e
    iput-object v1, p0, Landroid/icu/text/CjkBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@10
    .line 40
    const-string/jumbo v1, "Hira"

    #@13
    invoke-static {v1}, Landroid/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;

    #@16
    move-result-object v1

    #@17
    iput-object v1, p0, Landroid/icu/text/CjkBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@19
    .line 41
    if-eqz p1, :cond_0

    #@1b
    .line 42
    sget-object v1, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    #@1d
    invoke-virtual {p0, v1}, Landroid/icu/text/CjkBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    #@20
    .line 38
    :goto_0
    return-void

    #@21
    .line 44
    :cond_0
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@23
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@26
    .line 45
    .local v0, "cjSet":Landroid/icu/text/UnicodeSet;
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@28
    .end local v0    # "cjSet":Landroid/icu/text/UnicodeSet;
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@2b
    .line 46
    .restart local v0    # "cjSet":Landroid/icu/text/UnicodeSet;
    sget-object v1, Landroid/icu/text/CjkBreakEngine;->fHanWordSet:Landroid/icu/text/UnicodeSet;

    #@2d
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@30
    .line 47
    sget-object v1, Landroid/icu/text/CjkBreakEngine;->fKatakanaWordSet:Landroid/icu/text/UnicodeSet;

    #@32
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@35
    .line 48
    sget-object v1, Landroid/icu/text/CjkBreakEngine;->fHiraganaWordSet:Landroid/icu/text/UnicodeSet;

    #@37
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@3a
    .line 49
    const v1, 0xff70

    #@3d
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@40
    .line 50
    const/16 v1, 0x30fc

    #@42
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@45
    .line 51
    invoke-virtual {p0, v0}, Landroid/icu/text/CjkBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    #@48
    goto :goto_0
.end method

.method private static getKatakanaCost(I)I
    .locals 2
    .param p0, "wordlength"    # I

    #@0
    .prologue
    .line 72
    const/16 v1, 0x9

    #@2
    new-array v0, v1, [I

    #@4
    .local v0, "katakanaCost":[I
    fill-array-data v0, :array_0

    #@7
    .line 73
    const/16 v1, 0x8

    #@9
    if-le p0, v1, :cond_0

    #@b
    const/16 v1, 0x2000

    #@d
    :goto_0
    return v1

    #@e
    :cond_0
    aget v1, v0, p0

    #@10
    goto :goto_0

    #@11
    .line 72
    nop

    #@12
    :array_0
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

.method private static isKatakana(I)Z
    .locals 3
    .param p0, "value"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 77
    const/16 v2, 0x30a1

    #@4
    if-lt p0, v2, :cond_1

    #@6
    const/16 v2, 0x30fe

    #@8
    if-gt p0, v2, :cond_1

    #@a
    const/16 v2, 0x30fb

    #@c
    if-eq p0, v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 78
    :cond_1
    const v2, 0xff66

    #@12
    if-lt p0, v2, :cond_2

    #@14
    const v2, 0xff9f

    #@17
    if-le p0, v2, :cond_0

    #@19
    :cond_2
    move v0, v1

    #@1a
    goto :goto_0
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 33
    .param p1, "inText"    # Ljava/text/CharacterIterator;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "foundBreaks"    # Landroid/icu/text/DictionaryBreakEngine$DequeI;

    #@0
    .prologue
    .line 83
    move/from16 v0, p2

    #@2
    move/from16 v1, p3

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 84
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 87
    :cond_0
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@b
    .line 89
    sub-int v16, p3, p2

    #@d
    .line 90
    .local v16, "inputLength":I
    add-int/lit8 v2, v16, 0x1

    #@f
    new-array v10, v2, [I

    #@11
    .line 91
    .local v10, "charPositions":[I
    new-instance v31, Ljava/lang/StringBuffer;

    #@13
    const-string/jumbo v2, ""

    #@16
    move-object/from16 v0, v31

    #@18
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@1b
    .line 92
    .local v31, "s":Ljava/lang/StringBuffer;
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@1e
    .line 93
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@21
    move-result v2

    #@22
    move/from16 v0, p3

    #@24
    if-ge v2, v0, :cond_1

    #@26
    .line 94
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@29
    move-result v2

    #@2a
    move-object/from16 v0, v31

    #@2c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@2f
    .line 95
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@32
    goto :goto_0

    #@33
    .line 97
    :cond_1
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@36
    move-result-object v29

    #@37
    .line 98
    .local v29, "prenormstr":Ljava/lang/String;
    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    #@39
    move-object/from16 v0, v29

    #@3b
    invoke-static {v0, v2}, Landroid/icu/text/Normalizer;->quickCheck(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Landroid/icu/text/Normalizer$QuickCheckResult;

    #@3e
    move-result-object v2

    #@3f
    sget-object v7, Landroid/icu/text/Normalizer;->YES:Landroid/icu/text/Normalizer$QuickCheckResult;

    #@41
    if-eq v2, v7, :cond_2

    #@43
    .line 99
    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    #@45
    const/4 v7, 0x0

    #@46
    move-object/from16 v0, v29

    #@48
    invoke-static {v0, v2, v7}, Landroid/icu/text/Normalizer;->isNormalized(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)Z

    #@4b
    move-result v17

    #@4c
    .line 101
    :goto_1
    const/16 v27, 0x0

    #@4e
    .line 102
    .local v27, "numChars":I
    if-eqz v17, :cond_3

    #@50
    .line 103
    new-instance v3, Ljava/text/StringCharacterIterator;

    #@52
    move-object/from16 v0, v29

    #@54
    invoke-direct {v3, v0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    #@57
    .line 104
    .local v3, "text":Ljava/text/CharacterIterator;
    const/4 v15, 0x0

    #@58
    .line 105
    .local v15, "index":I
    const/4 v2, 0x0

    #@59
    const/4 v7, 0x0

    #@5a
    aput v2, v10, v7

    #@5c
    .line 106
    :goto_2
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    #@5f
    move-result v2

    #@60
    if-ge v15, v2, :cond_4

    #@62
    .line 107
    move-object/from16 v0, v29

    #@64
    invoke-virtual {v0, v15}, Ljava/lang/String;->codePointAt(I)I

    #@67
    move-result v11

    #@68
    .line 108
    .local v11, "codepoint":I
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    #@6b
    move-result v2

    #@6c
    add-int/2addr v15, v2

    #@6d
    .line 109
    add-int/lit8 v27, v27, 0x1

    #@6f
    .line 110
    aput v15, v10, v27

    #@71
    goto :goto_2

    #@72
    .line 98
    .end local v3    # "text":Ljava/text/CharacterIterator;
    .end local v11    # "codepoint":I
    .end local v15    # "index":I
    .end local v27    # "numChars":I
    :cond_2
    const/16 v17, 0x1

    #@74
    .local v17, "isNormalized":Z
    goto :goto_1

    #@75
    .line 113
    .end local v17    # "isNormalized":Z
    .restart local v27    # "numChars":I
    :cond_3
    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    #@77
    move-object/from16 v0, v29

    #@79
    invoke-static {v0, v2}, Landroid/icu/text/Normalizer;->normalize(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;)Ljava/lang/String;

    #@7c
    move-result-object v23

    #@7d
    .line 114
    .local v23, "normStr":Ljava/lang/String;
    new-instance v3, Ljava/text/StringCharacterIterator;

    #@7f
    move-object/from16 v0, v23

    #@81
    invoke-direct {v3, v0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    #@84
    .line 115
    .restart local v3    # "text":Ljava/text/CharacterIterator;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    #@87
    move-result v2

    #@88
    add-int/lit8 v2, v2, 0x1

    #@8a
    new-array v10, v2, [I

    #@8c
    .line 116
    new-instance v24, Landroid/icu/text/Normalizer;

    #@8e
    sget-object v2, Landroid/icu/text/Normalizer;->NFKC:Landroid/icu/text/Normalizer$Mode;

    #@90
    const/4 v7, 0x0

    #@91
    move-object/from16 v0, v24

    #@93
    move-object/from16 v1, v29

    #@95
    invoke-direct {v0, v1, v2, v7}, Landroid/icu/text/Normalizer;-><init>(Ljava/lang/String;Landroid/icu/text/Normalizer$Mode;I)V

    #@98
    .line 117
    .local v24, "normalizer":Landroid/icu/text/Normalizer;
    const/4 v15, 0x0

    #@99
    .line 118
    .restart local v15    # "index":I
    const/4 v2, 0x0

    #@9a
    const/4 v7, 0x0

    #@9b
    aput v2, v10, v7

    #@9d
    .line 119
    :goto_3
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/Normalizer;->endIndex()I

    #@a0
    move-result v2

    #@a1
    if-ge v15, v2, :cond_4

    #@a3
    .line 120
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/Normalizer;->next()I

    #@a6
    .line 121
    add-int/lit8 v27, v27, 0x1

    #@a8
    .line 122
    invoke-virtual/range {v24 .. v24}, Landroid/icu/text/Normalizer;->getIndex()I

    #@ab
    move-result v15

    #@ac
    .line 123
    aput v15, v10, v27

    #@ae
    goto :goto_3

    #@af
    .line 129
    .end local v23    # "normStr":Ljava/lang/String;
    .end local v24    # "normalizer":Landroid/icu/text/Normalizer;
    :cond_4
    add-int/lit8 v2, v27, 0x1

    #@b1
    new-array v9, v2, [I

    #@b3
    .line 130
    .local v9, "bestSnlp":[I
    const/4 v2, 0x0

    #@b4
    const/4 v7, 0x0

    #@b5
    aput v2, v9, v7

    #@b7
    .line 131
    const/4 v14, 0x1

    #@b8
    .local v14, "i":I
    :goto_4
    move/from16 v0, v27

    #@ba
    if-gt v14, v0, :cond_5

    #@bc
    .line 132
    const v2, 0x7fffffff

    #@bf
    aput v2, v9, v14

    #@c1
    .line 131
    add-int/lit8 v14, v14, 0x1

    #@c3
    goto :goto_4

    #@c4
    .line 135
    :cond_5
    add-int/lit8 v2, v27, 0x1

    #@c6
    new-array v0, v2, [I

    #@c8
    move-object/from16 v30, v0

    #@ca
    .line 136
    .local v30, "prev":[I
    const/4 v14, 0x0

    #@cb
    :goto_5
    move/from16 v0, v27

    #@cd
    if-gt v14, v0, :cond_6

    #@cf
    .line 137
    const/4 v2, -0x1

    #@d0
    aput v2, v30, v14

    #@d2
    .line 136
    add-int/lit8 v14, v14, 0x1

    #@d4
    goto :goto_5

    #@d5
    .line 140
    :cond_6
    const/16 v21, 0x14

    #@d7
    .line 141
    .local v21, "maxWordSize":I
    move/from16 v0, v27

    #@d9
    new-array v8, v0, [I

    #@db
    .line 142
    .local v8, "values":[I
    move/from16 v0, v27

    #@dd
    new-array v5, v0, [I

    #@df
    .line 144
    .local v5, "lengths":[I
    const/16 v19, 0x0

    #@e1
    .line 145
    .local v19, "is_prev_katakana":Z
    const/4 v14, 0x0

    #@e2
    .end local v19    # "is_prev_katakana":Z
    :goto_6
    move/from16 v0, v27

    #@e4
    if-ge v14, v0, :cond_10

    #@e6
    .line 146
    invoke-interface {v3, v14}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@e9
    .line 147
    aget v2, v9, v14

    #@eb
    const v7, 0x7fffffff

    #@ee
    if-ne v2, v7, :cond_7

    #@f0
    .line 145
    :goto_7
    add-int/lit8 v14, v14, 0x1

    #@f2
    goto :goto_6

    #@f3
    .line 151
    :cond_7
    add-int/lit8 v2, v14, 0x14

    #@f5
    move/from16 v0, v27

    #@f7
    if-ge v2, v0, :cond_b

    #@f9
    const/16 v4, 0x14

    #@fb
    .line 152
    .local v4, "maxSearchLength":I
    :goto_8
    const/4 v2, 0x1

    #@fc
    new-array v6, v2, [I

    #@fe
    .line 153
    .local v6, "count_":[I
    move-object/from16 v0, p0

    #@100
    iget-object v2, v0, Landroid/icu/text/CjkBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@102
    move v7, v4

    #@103
    invoke-virtual/range {v2 .. v8}, Landroid/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II[I)I

    #@106
    .line 154
    const/4 v2, 0x0

    #@107
    aget v13, v6, v2

    #@109
    .line 161
    .local v13, "count":I
    if-eqz v13, :cond_8

    #@10b
    const/4 v2, 0x0

    #@10c
    aget v2, v5, v2

    #@10e
    const/4 v7, 0x1

    #@10f
    if-eq v2, v7, :cond_9

    #@111
    :cond_8
    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@114
    move-result v2

    #@115
    const v7, 0x7fffffff

    #@118
    if-eq v2, v7, :cond_9

    #@11a
    sget-object v2, Landroid/icu/text/CjkBreakEngine;->fHangulWordSet:Landroid/icu/text/UnicodeSet;

    #@11c
    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@11f
    move-result v7

    #@120
    invoke-virtual {v2, v7}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@123
    move-result v2

    #@124
    if-eqz v2, :cond_c

    #@126
    .line 167
    :cond_9
    :goto_9
    const/16 v20, 0x0

    #@128
    .local v20, "j":I
    :goto_a
    move/from16 v0, v20

    #@12a
    if-ge v0, v13, :cond_d

    #@12c
    .line 168
    aget v2, v9, v14

    #@12e
    aget v7, v8, v20

    #@130
    add-int v22, v2, v7

    #@132
    .line 169
    .local v22, "newSnlp":I
    aget v2, v5, v20

    #@134
    add-int/2addr v2, v14

    #@135
    aget v2, v9, v2

    #@137
    move/from16 v0, v22

    #@139
    if-ge v0, v2, :cond_a

    #@13b
    .line 170
    aget v2, v5, v20

    #@13d
    add-int/2addr v2, v14

    #@13e
    aput v22, v9, v2

    #@140
    .line 171
    aget v2, v5, v20

    #@142
    add-int/2addr v2, v14

    #@143
    aput v14, v30, v2

    #@145
    .line 167
    :cond_a
    add-int/lit8 v20, v20, 0x1

    #@147
    goto :goto_a

    #@148
    .line 151
    .end local v4    # "maxSearchLength":I
    .end local v6    # "count_":[I
    .end local v13    # "count":I
    .end local v20    # "j":I
    .end local v22    # "newSnlp":I
    :cond_b
    sub-int v4, v27, v14

    #@14a
    .restart local v4    # "maxSearchLength":I
    goto :goto_8

    #@14b
    .line 162
    .restart local v6    # "count_":[I
    .restart local v13    # "count":I
    :cond_c
    const/16 v2, 0xff

    #@14d
    aput v2, v8, v13

    #@14f
    .line 163
    const/4 v2, 0x1

    #@150
    aput v2, v5, v13

    #@152
    .line 164
    add-int/lit8 v13, v13, 0x1

    #@154
    goto :goto_9

    #@155
    .line 180
    .restart local v20    # "j":I
    :cond_d
    invoke-interface {v3, v14}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@158
    .line 181
    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@15b
    move-result v2

    #@15c
    invoke-static {v2}, Landroid/icu/text/CjkBreakEngine;->isKatakana(I)Z

    #@15f
    move-result v18

    #@160
    .line 182
    .local v18, "is_katakana":Z
    if-nez v19, :cond_f

    #@162
    if-eqz v18, :cond_f

    #@164
    .line 183
    add-int/lit8 v20, v14, 0x1

    #@166
    .line 184
    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    #@169
    .line 185
    :goto_b
    move/from16 v0, v20

    #@16b
    move/from16 v1, v27

    #@16d
    if-ge v0, v1, :cond_e

    #@16f
    sub-int v2, v20, v14

    #@171
    const/16 v7, 0x14

    #@173
    if-ge v2, v7, :cond_e

    #@175
    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@178
    move-result v2

    #@179
    invoke-static {v2}, Landroid/icu/text/CjkBreakEngine;->isKatakana(I)Z

    #@17c
    move-result v2

    #@17d
    if-eqz v2, :cond_e

    #@17f
    .line 186
    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    #@182
    .line 187
    add-int/lit8 v20, v20, 0x1

    #@184
    goto :goto_b

    #@185
    .line 190
    :cond_e
    sub-int v2, v20, v14

    #@187
    const/16 v7, 0x14

    #@189
    if-ge v2, v7, :cond_f

    #@18b
    .line 191
    aget v2, v9, v14

    #@18d
    sub-int v7, v20, v14

    #@18f
    invoke-static {v7}, Landroid/icu/text/CjkBreakEngine;->getKatakanaCost(I)I

    #@192
    move-result v7

    #@193
    add-int v22, v2, v7

    #@195
    .line 192
    .restart local v22    # "newSnlp":I
    aget v2, v9, v20

    #@197
    move/from16 v0, v22

    #@199
    if-ge v0, v2, :cond_f

    #@19b
    .line 193
    aput v22, v9, v20

    #@19d
    .line 194
    aput v14, v30, v20

    #@19f
    .line 198
    .end local v22    # "newSnlp":I
    :cond_f
    move/from16 v19, v18

    #@1a1
    .local v19, "is_prev_katakana":Z
    goto/16 :goto_7

    #@1a3
    .line 201
    .end local v4    # "maxSearchLength":I
    .end local v6    # "count_":[I
    .end local v13    # "count":I
    .end local v18    # "is_katakana":Z
    .end local v19    # "is_prev_katakana":Z
    .end local v20    # "j":I
    :cond_10
    add-int/lit8 v2, v27, 0x1

    #@1a5
    new-array v0, v2, [I

    #@1a7
    move-object/from16 v32, v0

    #@1a9
    .line 202
    .local v32, "t_boundary":[I
    const/16 v25, 0x0

    #@1ab
    .line 203
    .local v25, "numBreaks":I
    aget v2, v9, v27

    #@1ad
    const v7, 0x7fffffff

    #@1b0
    if-ne v2, v7, :cond_15

    #@1b2
    .line 204
    aput v27, v32, v25

    #@1b4
    .line 205
    const/16 v25, 0x1

    #@1b6
    .line 214
    :goto_c
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->size()I

    #@1b9
    move-result v2

    #@1ba
    if-eqz v2, :cond_11

    #@1bc
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    #@1bf
    move-result v2

    #@1c0
    move/from16 v0, p2

    #@1c2
    if-ge v2, v0, :cond_12

    #@1c4
    .line 215
    :cond_11
    add-int/lit8 v26, v25, 0x1

    #@1c6
    .end local v25    # "numBreaks":I
    .local v26, "numBreaks":I
    const/4 v2, 0x0

    #@1c7
    aput v2, v32, v25

    #@1c9
    move/from16 v25, v26

    #@1cb
    .line 218
    .end local v26    # "numBreaks":I
    .restart local v25    # "numBreaks":I
    :cond_12
    const/4 v12, 0x0

    #@1cc
    .line 219
    .local v12, "correctedNumBreaks":I
    add-int/lit8 v14, v25, -0x1

    #@1ce
    :goto_d
    if-ltz v14, :cond_19

    #@1d0
    .line 220
    aget v2, v32, v14

    #@1d2
    aget v2, v10, v2

    #@1d4
    add-int v28, v2, p2

    #@1d6
    .line 221
    .local v28, "pos":I
    move-object/from16 v0, p4

    #@1d8
    move/from16 v1, v28

    #@1da
    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->contains(I)Z

    #@1dd
    move-result v2

    #@1de
    if-nez v2, :cond_13

    #@1e0
    move/from16 v0, v28

    #@1e2
    move/from16 v1, p2

    #@1e4
    if-ne v0, v1, :cond_18

    #@1e6
    :cond_13
    const/4 v2, 0x1

    #@1e7
    :goto_e
    if-nez v2, :cond_14

    #@1e9
    .line 222
    aget v2, v32, v14

    #@1eb
    aget v2, v10, v2

    #@1ed
    add-int v2, v2, p2

    #@1ef
    move-object/from16 v0, p4

    #@1f1
    invoke-virtual {v0, v2}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    #@1f4
    .line 223
    add-int/lit8 v12, v12, 0x1

    #@1f6
    .line 219
    :cond_14
    add-int/lit8 v14, v14, -0x1

    #@1f8
    goto :goto_d

    #@1f9
    .line 207
    .end local v12    # "correctedNumBreaks":I
    .end local v28    # "pos":I
    :cond_15
    move/from16 v14, v27

    #@1fb
    :goto_f
    if-lez v14, :cond_16

    #@1fd
    .line 208
    aput v14, v32, v25

    #@1ff
    .line 209
    add-int/lit8 v25, v25, 0x1

    #@201
    .line 207
    aget v14, v30, v14

    #@203
    goto :goto_f

    #@204
    .line 211
    :cond_16
    add-int/lit8 v2, v25, -0x1

    #@206
    aget v2, v32, v2

    #@208
    aget v2, v30, v2

    #@20a
    if-nez v2, :cond_17

    #@20c
    const/4 v2, 0x1

    #@20d
    :goto_10
    invoke-static {v2}, Landroid/icu/impl/Assert;->assrt(Z)V

    #@210
    goto :goto_c

    #@211
    :cond_17
    const/4 v2, 0x0

    #@212
    goto :goto_10

    #@213
    .line 221
    .restart local v12    # "correctedNumBreaks":I
    .restart local v28    # "pos":I
    :cond_18
    const/4 v2, 0x0

    #@214
    goto :goto_e

    #@215
    .line 227
    .end local v28    # "pos":I
    :cond_19
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    #@218
    move-result v2

    #@219
    if-nez v2, :cond_1a

    #@21b
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    #@21e
    move-result v2

    #@21f
    move/from16 v0, p3

    #@221
    if-ne v2, v0, :cond_1a

    #@223
    .line 228
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    #@226
    .line 229
    add-int/lit8 v12, v12, -0x1

    #@228
    .line 231
    :cond_1a
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->isEmpty()Z

    #@22b
    move-result v2

    #@22c
    if-nez v2, :cond_1b

    #@22e
    .line 232
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    #@231
    move-result v2

    #@232
    move-object/from16 v0, p1

    #@234
    invoke-interface {v0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@237
    .line 233
    :cond_1b
    return v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 56
    instance-of v1, p1, Landroid/icu/text/CjkBreakEngine;

    #@2
    if-eqz v1, :cond_0

    #@4
    move-object v0, p1

    #@5
    .line 57
    check-cast v0, Landroid/icu/text/CjkBreakEngine;

    #@7
    .line 58
    .local v0, "other":Landroid/icu/text/CjkBreakEngine;
    iget-object v1, p0, Landroid/icu/text/CjkBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    #@9
    iget-object v2, v0, Landroid/icu/text/CjkBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    #@b
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    return v1

    #@10
    .line 60
    .end local v0    # "other":Landroid/icu/text/CjkBreakEngine;
    :cond_0
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/icu/text/CjkBreakEngine;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method
