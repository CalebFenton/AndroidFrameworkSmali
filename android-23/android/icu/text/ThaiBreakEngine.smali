.class Landroid/icu/text/ThaiBreakEngine;
.super Landroid/icu/text/DictionaryBreakEngine;
.source "ThaiBreakEngine.java"


# static fields
.field private static final THAI_LOOKAHEAD:B = 0x3t

.field private static final THAI_MAIYAMOK:C = '\u0e46'

.field private static final THAI_MIN_WORD:B = 0x2t

.field private static final THAI_MIN_WORD_SPAN:B = 0x4t

.field private static final THAI_PAIYANNOI:C = '\u0e2f'

.field private static final THAI_PREFIX_COMBINE_THRESHOLD:B = 0x3t

.field private static final THAI_ROOT_COMBINE_THRESHOLD:B = 0x3t

.field private static fBeginWordSet:Landroid/icu/text/UnicodeSet;

.field private static fEndWordSet:Landroid/icu/text/UnicodeSet;

.field private static fMarkSet:Landroid/icu/text/UnicodeSet;

.field private static fSuffixSet:Landroid/icu/text/UnicodeSet;

.field private static fThaiWordSet:Landroid/icu/text/UnicodeSet;


# instance fields
.field private fDictionary:Landroid/icu/text/DictionaryMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0xe44

    #@2
    const/16 v3, 0xe40

    #@4
    .line 44
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@6
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@9
    sput-object v0, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    #@b
    .line 45
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@d
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@10
    sput-object v0, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@12
    .line 46
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@14
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@17
    sput-object v0, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    #@19
    .line 47
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@1b
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@1e
    sput-object v0, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    #@20
    .line 49
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    #@22
    const-string/jumbo v1, "[[:Thai:]&[:LineBreak=SA:]]"

    #@25
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    #@28
    .line 50
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    #@2a
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    #@2d
    .line 52
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@2f
    const-string/jumbo v1, "[[:Thai:]&[:LineBreak=SA:]&[:M:]]"

    #@32
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;

    #@35
    .line 53
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@37
    const/16 v1, 0x20

    #@39
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@3c
    .line 54
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@3e
    sget-object v1, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    #@40
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@43
    sput-object v0, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    #@45
    .line 55
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    #@47
    const/16 v1, 0xe31

    #@49
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    #@4c
    .line 56
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    #@4e
    invoke-virtual {v0, v3, v4}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    #@51
    .line 57
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    #@53
    const/16 v1, 0xe01

    #@55
    const/16 v2, 0xe2e

    #@57
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@5a
    .line 58
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    #@5c
    invoke-virtual {v0, v3, v4}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    #@5f
    .line 59
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    #@61
    const/16 v1, 0xe2f

    #@63
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@66
    .line 60
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    #@68
    const/16 v1, 0xe46

    #@6a
    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@6d
    .line 63
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@6f
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    #@72
    .line 64
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    #@74
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    #@77
    .line 65
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    #@79
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    #@7c
    .line 66
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    #@7e
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    #@81
    .line 69
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    #@83
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@86
    .line 70
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@88
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@8b
    .line 71
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    #@8d
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@90
    .line 72
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    #@92
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@95
    .line 73
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    #@97
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@9a
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    .line 77
    new-array v0, v4, [Ljava/lang/Integer;

    #@4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e
    move-result-object v1

    #@f
    aput-object v1, v0, v3

    #@11
    invoke-direct {p0, v0}, Landroid/icu/text/DictionaryBreakEngine;-><init>([Ljava/lang/Integer;)V

    #@14
    .line 78
    sget-object v0, Landroid/icu/text/ThaiBreakEngine;->fThaiWordSet:Landroid/icu/text/UnicodeSet;

    #@16
    invoke-virtual {p0, v0}, Landroid/icu/text/ThaiBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    #@19
    .line 80
    const-string/jumbo v0, "Thai"

    #@1c
    invoke-static {v0}, Landroid/icu/text/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@22
    .line 76
    return-void
.end method


# virtual methods
.method public divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 19
    .param p1, "fIter"    # Ljava/text/CharacterIterator;
    .param p2, "rangeStart"    # I
    .param p3, "rangeEnd"    # I
    .param p4, "foundBreaks"    # Landroid/icu/text/DictionaryBreakEngine$DequeI;

    #@0
    .prologue
    .line 104
    sub-int v17, p3, p2

    #@2
    const/16 v18, 0x4

    #@4
    move/from16 v0, v17

    #@6
    move/from16 v1, v18

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 105
    const/16 v17, 0x0

    #@c
    return v17

    #@d
    .line 107
    :cond_0
    const/4 v15, 0x0

    #@e
    .line 109
    .local v15, "wordsFound":I
    const/16 v17, 0x3

    #@10
    move/from16 v0, v17

    #@12
    new-array v14, v0, [Landroid/icu/text/DictionaryBreakEngine$PossibleWord;

    #@14
    .line 110
    .local v14, "words":[Landroid/icu/text/DictionaryBreakEngine$PossibleWord;
    const/4 v9, 0x0

    #@15
    .local v9, "i":I
    :goto_0
    const/16 v17, 0x3

    #@17
    move/from16 v0, v17

    #@19
    if-ge v9, v0, :cond_1

    #@1b
    .line 111
    new-instance v17, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;

    #@1d
    invoke-direct/range {v17 .. v17}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;-><init>()V

    #@20
    aput-object v17, v14, v9

    #@22
    .line 110
    add-int/lit8 v9, v9, 0x1

    #@24
    goto :goto_0

    #@25
    .line 115
    :cond_1
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@28
    .line 117
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@2b
    move-result v8

    #@2c
    .local v8, "current":I
    move/from16 v0, p3

    #@2e
    if-ge v8, v0, :cond_16

    #@30
    .line 118
    const/4 v13, 0x0

    #@31
    .line 121
    .local v13, "wordLength":I
    rem-int/lit8 v17, v15, 0x3

    #@33
    aget-object v17, v14, v17

    #@35
    move-object/from16 v0, p0

    #@37
    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@39
    move-object/from16 v18, v0

    #@3b
    move-object/from16 v0, v17

    #@3d
    move-object/from16 v1, p1

    #@3f
    move-object/from16 v2, v18

    #@41
    move/from16 v3, p3

    #@43
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    #@46
    move-result v5

    #@47
    .line 124
    .local v5, "candidates":I
    const/16 v17, 0x1

    #@49
    move/from16 v0, v17

    #@4b
    if-ne v5, v0, :cond_8

    #@4d
    .line 125
    rem-int/lit8 v17, v15, 0x3

    #@4f
    aget-object v17, v14, v17

    #@51
    move-object/from16 v0, v17

    #@53
    move-object/from16 v1, p1

    #@55
    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    #@58
    move-result v13

    #@59
    .line 126
    add-int/lit8 v15, v15, 0x1

    #@5b
    .line 170
    :cond_3
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@5e
    move-result v17

    #@5f
    move/from16 v0, v17

    #@61
    move/from16 v1, p3

    #@63
    if-ge v0, v1, :cond_7

    #@65
    const/16 v17, 0x3

    #@67
    move/from16 v0, v17

    #@69
    if-ge v13, v0, :cond_7

    #@6b
    .line 174
    rem-int/lit8 v17, v15, 0x3

    #@6d
    aget-object v17, v14, v17

    #@6f
    move-object/from16 v0, p0

    #@71
    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@73
    move-object/from16 v18, v0

    #@75
    move-object/from16 v0, v17

    #@77
    move-object/from16 v1, p1

    #@79
    move-object/from16 v2, v18

    #@7b
    move/from16 v3, p3

    #@7d
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    #@80
    move-result v17

    #@81
    if-gtz v17, :cond_f

    #@83
    .line 175
    if-eqz v13, :cond_4

    #@85
    .line 176
    rem-int/lit8 v17, v15, 0x3

    #@87
    aget-object v17, v14, v17

    #@89
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->longestPrefix()I

    #@8c
    move-result v17

    #@8d
    const/16 v18, 0x3

    #@8f
    move/from16 v0, v17

    #@91
    move/from16 v1, v18

    #@93
    if-ge v0, v1, :cond_f

    #@95
    .line 178
    :cond_4
    add-int v17, v8, v13

    #@97
    sub-int v11, p3, v17

    #@99
    .line 179
    .local v11, "remaining":I
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@9c
    move-result v10

    #@9d
    .line 180
    .local v10, "pc":I
    const/4 v6, 0x0

    #@9e
    .line 182
    .local v6, "chars":I
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@a1
    .line 183
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@a4
    move-result v12

    #@a5
    .line 184
    .local v12, "uc":I
    add-int/lit8 v6, v6, 0x1

    #@a7
    .line 185
    add-int/lit8 v11, v11, -0x1

    #@a9
    if-gtz v11, :cond_d

    #@ab
    .line 204
    :cond_5
    if-gtz v13, :cond_6

    #@ad
    .line 205
    add-int/lit8 v15, v15, 0x1

    #@af
    .line 209
    :cond_6
    add-int/2addr v13, v6

    #@b0
    .line 218
    .end local v6    # "chars":I
    .end local v10    # "pc":I
    .end local v11    # "remaining":I
    .end local v12    # "uc":I
    :cond_7
    :goto_4
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@b3
    move-result v7

    #@b4
    .local v7, "currPos":I
    move/from16 v0, p3

    #@b6
    if-ge v7, v0, :cond_10

    #@b8
    sget-object v17, Landroid/icu/text/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    #@ba
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@bd
    move-result v18

    #@be
    invoke-virtual/range {v17 .. v18}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@c1
    move-result v17

    #@c2
    if-eqz v17, :cond_10

    #@c4
    .line 219
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@c7
    .line 220
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@ca
    move-result v17

    #@cb
    sub-int v17, v17, v7

    #@cd
    add-int v13, v13, v17

    #@cf
    goto :goto_4

    #@d0
    .line 130
    .end local v7    # "currPos":I
    :cond_8
    const/16 v17, 0x1

    #@d2
    move/from16 v0, v17

    #@d4
    if-le v5, v0, :cond_3

    #@d6
    .line 132
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@d9
    move-result v17

    #@da
    move/from16 v0, v17

    #@dc
    move/from16 v1, p3

    #@de
    if-ge v0, v1, :cond_9

    #@e0
    .line 136
    :goto_5
    add-int/lit8 v17, v15, 0x1

    #@e2
    rem-int/lit8 v17, v17, 0x3

    #@e4
    aget-object v17, v14, v17

    #@e6
    move-object/from16 v0, p0

    #@e8
    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@ea
    move-object/from16 v18, v0

    #@ec
    move-object/from16 v0, v17

    #@ee
    move-object/from16 v1, p1

    #@f0
    move-object/from16 v2, v18

    #@f2
    move/from16 v3, p3

    #@f4
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    #@f7
    move-result v17

    #@f8
    if-lez v17, :cond_c

    #@fa
    .line 139
    rem-int/lit8 v17, v15, 0x3

    #@fc
    aget-object v17, v14, v17

    #@fe
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    #@101
    .line 140
    const/16 v16, 0x2

    #@103
    .line 144
    .local v16, "wordsMatched":I
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@106
    move-result v17

    #@107
    move/from16 v0, v17

    #@109
    move/from16 v1, p3

    #@10b
    if-lt v0, v1, :cond_b

    #@10d
    .line 161
    .end local v16    # "wordsMatched":I
    :cond_9
    :goto_6
    rem-int/lit8 v17, v15, 0x3

    #@10f
    aget-object v17, v14, v17

    #@111
    move-object/from16 v0, v17

    #@113
    move-object/from16 v1, p1

    #@115
    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    #@118
    move-result v13

    #@119
    .line 162
    add-int/lit8 v15, v15, 0x1

    #@11b
    goto/16 :goto_2

    #@11d
    .line 155
    .restart local v16    # "wordsMatched":I
    :cond_a
    add-int/lit8 v17, v15, 0x1

    #@11f
    rem-int/lit8 v17, v17, 0x3

    #@121
    aget-object v17, v14, v17

    #@123
    move-object/from16 v0, v17

    #@125
    move-object/from16 v1, p1

    #@127
    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    #@12a
    move-result v17

    #@12b
    if-eqz v17, :cond_c

    #@12d
    .line 151
    :cond_b
    add-int/lit8 v17, v15, 0x2

    #@12f
    rem-int/lit8 v17, v17, 0x3

    #@131
    aget-object v17, v14, v17

    #@133
    move-object/from16 v0, p0

    #@135
    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@137
    move-object/from16 v18, v0

    #@139
    move-object/from16 v0, v17

    #@13b
    move-object/from16 v1, p1

    #@13d
    move-object/from16 v2, v18

    #@13f
    move/from16 v3, p3

    #@141
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    #@144
    move-result v17

    #@145
    if-lez v17, :cond_a

    #@147
    .line 152
    rem-int/lit8 v17, v15, 0x3

    #@149
    aget-object v17, v14, v17

    #@14b
    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    #@14e
    goto :goto_6

    #@14f
    .line 158
    .end local v16    # "wordsMatched":I
    :cond_c
    rem-int/lit8 v17, v15, 0x3

    #@151
    aget-object v17, v14, v17

    #@153
    move-object/from16 v0, v17

    #@155
    move-object/from16 v1, p1

    #@157
    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    #@15a
    move-result v17

    #@15b
    if-eqz v17, :cond_9

    #@15d
    goto :goto_5

    #@15e
    .line 188
    .restart local v6    # "chars":I
    .restart local v10    # "pc":I
    .restart local v11    # "remaining":I
    .restart local v12    # "uc":I
    :cond_d
    sget-object v17, Landroid/icu/text/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    #@160
    move-object/from16 v0, v17

    #@162
    invoke-virtual {v0, v10}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@165
    move-result v17

    #@166
    if-eqz v17, :cond_e

    #@168
    sget-object v17, Landroid/icu/text/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    #@16a
    move-object/from16 v0, v17

    #@16c
    invoke-virtual {v0, v12}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@16f
    move-result v17

    #@170
    if-eqz v17, :cond_e

    #@172
    .line 194
    add-int/lit8 v17, v15, 0x1

    #@174
    rem-int/lit8 v17, v17, 0x3

    #@176
    aget-object v17, v14, v17

    #@178
    move-object/from16 v0, p0

    #@17a
    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@17c
    move-object/from16 v18, v0

    #@17e
    move-object/from16 v0, v17

    #@180
    move-object/from16 v1, p1

    #@182
    move-object/from16 v2, v18

    #@184
    move/from16 v3, p3

    #@186
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    #@189
    move-result v4

    #@18a
    .line 195
    .local v4, "candidate":I
    add-int v17, v8, v13

    #@18c
    add-int v17, v17, v6

    #@18e
    move-object/from16 v0, p1

    #@190
    move/from16 v1, v17

    #@192
    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@195
    .line 196
    if-gtz v4, :cond_5

    #@197
    .line 200
    .end local v4    # "candidate":I
    :cond_e
    move v10, v12

    #@198
    goto/16 :goto_3

    #@19a
    .line 212
    .end local v6    # "chars":I
    .end local v10    # "pc":I
    .end local v11    # "remaining":I
    .end local v12    # "uc":I
    :cond_f
    add-int v17, v8, v13

    #@19c
    move-object/from16 v0, p1

    #@19e
    move/from16 v1, v17

    #@1a0
    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@1a3
    goto/16 :goto_4

    #@1a5
    .line 227
    .restart local v7    # "currPos":I
    :cond_10
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@1a8
    move-result v17

    #@1a9
    move/from16 v0, v17

    #@1ab
    move/from16 v1, p3

    #@1ad
    if-ge v0, v1, :cond_12

    #@1af
    if-lez v13, :cond_12

    #@1b1
    .line 228
    rem-int/lit8 v17, v15, 0x3

    #@1b3
    aget-object v17, v14, v17

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    iget-object v0, v0, Landroid/icu/text/ThaiBreakEngine;->fDictionary:Landroid/icu/text/DictionaryMatcher;

    #@1b9
    move-object/from16 v18, v0

    #@1bb
    move-object/from16 v0, v17

    #@1bd
    move-object/from16 v1, p1

    #@1bf
    move-object/from16 v2, v18

    #@1c1
    move/from16 v3, p3

    #@1c3
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I

    #@1c6
    move-result v17

    #@1c7
    if-gtz v17, :cond_15

    #@1c9
    .line 229
    sget-object v17, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    #@1cb
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@1ce
    move-result v12

    #@1cf
    .restart local v12    # "uc":I
    move-object/from16 v0, v17

    #@1d1
    invoke-virtual {v0, v12}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@1d4
    move-result v17

    #@1d5
    .line 228
    if-eqz v17, :cond_15

    #@1d7
    .line 230
    const/16 v17, 0xe2f

    #@1d9
    move/from16 v0, v17

    #@1db
    if-ne v12, v0, :cond_11

    #@1dd
    .line 231
    sget-object v17, Landroid/icu/text/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    #@1df
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->previous()C

    #@1e2
    move-result v18

    #@1e3
    invoke-virtual/range {v17 .. v18}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@1e6
    move-result v17

    #@1e7
    if-nez v17, :cond_13

    #@1e9
    .line 233
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@1ec
    .line 234
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@1ef
    .line 235
    add-int/lit8 v13, v13, 0x1

    #@1f1
    .line 236
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->current()C

    #@1f4
    move-result v12

    #@1f5
    .line 242
    :cond_11
    :goto_7
    const/16 v17, 0xe46

    #@1f7
    move/from16 v0, v17

    #@1f9
    if-ne v12, v0, :cond_12

    #@1fb
    .line 243
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->previous()C

    #@1fe
    move-result v17

    #@1ff
    const/16 v18, 0xe46

    #@201
    move/from16 v0, v17

    #@203
    move/from16 v1, v18

    #@205
    if-eq v0, v1, :cond_14

    #@207
    .line 245
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@20a
    .line 246
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@20d
    .line 247
    add-int/lit8 v13, v13, 0x1

    #@20f
    .line 259
    .end local v12    # "uc":I
    :cond_12
    :goto_8
    if-lez v13, :cond_2

    #@211
    .line 260
    add-int v17, v8, v13

    #@213
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@216
    move-result-object v17

    #@217
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    #@21a
    move-result v17

    #@21b
    move-object/from16 v0, p4

    #@21d
    move/from16 v1, v17

    #@21f
    invoke-virtual {v0, v1}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->push(I)V

    #@222
    goto/16 :goto_1

    #@224
    .line 239
    .restart local v12    # "uc":I
    :cond_13
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@227
    goto :goto_7

    #@228
    .line 250
    :cond_14
    invoke-interface/range {p1 .. p1}, Ljava/text/CharacterIterator;->next()C

    #@22b
    goto :goto_8

    #@22c
    .line 254
    .end local v12    # "uc":I
    :cond_15
    add-int v17, v8, v13

    #@22e
    move-object/from16 v0, p1

    #@230
    move/from16 v1, v17

    #@232
    invoke-interface {v0, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@235
    goto :goto_8

    #@236
    .line 265
    .end local v5    # "candidates":I
    .end local v7    # "currPos":I
    .end local v13    # "wordLength":I
    :cond_16
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->peek()I

    #@239
    move-result v17

    #@23a
    move/from16 v0, v17

    #@23c
    move/from16 v1, p3

    #@23e
    if-lt v0, v1, :cond_17

    #@240
    .line 266
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/DictionaryBreakEngine$DequeI;->pop()I

    #@243
    .line 267
    add-int/lit8 v15, v15, -0x1

    #@245
    .line 270
    :cond_17
    return v15
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 86
    instance-of v0, p1, Landroid/icu/text/ThaiBreakEngine;

    #@2
    return v0
.end method

.method public handles(II)Z
    .locals 4
    .param p1, "c"    # I
    .param p2, "breakType"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 94
    if-eq p2, v1, :cond_0

    #@4
    const/4 v3, 0x2

    #@5
    if-ne p2, v3, :cond_2

    #@7
    .line 95
    :cond_0
    const/16 v3, 0x100a

    #@9
    invoke-static {p1, v3}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    #@c
    move-result v0

    #@d
    .line 96
    .local v0, "script":I
    const/16 v3, 0x26

    #@f
    if-ne v0, v3, :cond_1

    #@11
    :goto_0
    return v1

    #@12
    :cond_1
    move v1, v2

    #@13
    goto :goto_0

    #@14
    .line 98
    .end local v0    # "script":I
    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/icu/text/ThaiBreakEngine;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    #@7
    move-result v0

    #@8
    return v0
.end method
