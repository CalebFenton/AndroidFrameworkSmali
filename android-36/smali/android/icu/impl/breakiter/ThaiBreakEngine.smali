.class public Landroid/icu/impl/breakiter/ThaiBreakEngine;
.super Landroid/icu/impl/breakiter/DictionaryBreakEngine;
.source "ThaiBreakEngine.java"


# static fields
.field private static final blacklist THAI_LOOKAHEAD:B = 0x3t

.field private static final blacklist THAI_MAIYAMOK:C = '\u0e46'

.field private static final blacklist THAI_MIN_WORD:B = 0x2t

.field private static final blacklist THAI_MIN_WORD_SPAN:B = 0x4t

.field private static final blacklist THAI_PAIYANNOI:C = '\u0e2f'

.field private static final blacklist THAI_PREFIX_COMBINE_THRESHOLD:B = 0x3t

.field private static final blacklist THAI_ROOT_COMBINE_THRESHOLD:B = 0x3t


# instance fields
.field private blacklist fBeginWordSet:Landroid/icu/text/UnicodeSet;

.field private blacklist fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

.field private blacklist fEndWordSet:Landroid/icu/text/UnicodeSet;

.field private blacklist fMarkSet:Landroid/icu/text/UnicodeSet;

.field private blacklist fSuffixSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor blacklist <init>()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine;-><init>()V

    .line 50
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:Thai:]&[:LineBreak=SA:]]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "thaiWordSet":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSet;

    const-string v2, "[[:Thai:]&[:LineBreak=SA:]&[:M:]]"

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    .line 52
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 53
    new-instance v1, Landroid/icu/text/UnicodeSet;

    const/16 v2, 0xe01

    const/16 v3, 0xe2e

    const/16 v4, 0xe40

    const/16 v5, 0xe44

    filled-new-array {v2, v3, v4, v5}, [I

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    iput-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    .line 55
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    .line 56
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    const/16 v2, 0xe2f

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 57
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    const/16 v2, 0xe46

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 59
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 61
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    iput-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    .line 62
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    const/16 v2, 0xe31

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->remove(I)Landroid/icu/text/UnicodeSet;

    .line 63
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1, v4, v5}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    .line 66
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 67
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 68
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 69
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 72
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 73
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 74
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 75
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 76
    iget-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 78
    invoke-virtual {p0, v0}, Landroid/icu/impl/breakiter/ThaiBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    .line 80
    const-string v1, "Thai"

    invoke-static {v1}, Landroid/icu/impl/breakiter/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Landroid/icu/impl/breakiter/DictionaryMatcher;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    .line 81
    return-void
.end method


# virtual methods
.method public blacklist divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;Z)I
    .registers 22
    .param p1, "fIter"    # Ljava/text/CharacterIterator;
    .param p2, "rangeStart"    # I
    .param p3, "rangeEnd"    # I
    .param p4, "foundBreaks"    # Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;
    .param p5, "isPhraseBreaking"    # Z

    .line 105
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sub-int v3, v2, p2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_d

    .line 106
    const/4 v3, 0x0

    return v3

    .line 108
    :cond_d
    const/4 v3, 0x0

    .line 110
    .local v3, "wordsFound":I
    const/4 v4, 0x3

    new-array v5, v4, [Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;

    .line 111
    .local v5, "words":[Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_12
    if-ge v6, v4, :cond_1e

    .line 112
    new-instance v7, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;

    invoke-direct {v7}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;-><init>()V

    aput-object v7, v5, v6

    .line 111
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 116
    .end local v6    # "i":I
    :cond_1e
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 118
    :goto_21
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v6

    move v7, v6

    .local v7, "current":I
    if-ge v6, v2, :cond_187

    .line 119
    const/4 v6, 0x0

    .line 122
    .local v6, "wordLength":I
    rem-int/lit8 v8, v3, 0x3

    aget-object v8, v5, v8

    iget-object v9, v0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    invoke-virtual {v8, v1, v9, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I

    move-result v8

    .line 125
    .local v8, "candidates":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_41

    .line 126
    rem-int/lit8 v10, v3, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v10, v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v6

    .line 127
    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    .line 131
    :cond_41
    if-le v8, v9, :cond_98

    .line 133
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v10

    if-ge v10, v2, :cond_8e

    .line 136
    :cond_49
    add-int/lit8 v10, v3, 0x1

    rem-int/2addr v10, v4

    aget-object v10, v5, v10

    iget-object v11, v0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    invoke-virtual {v10, v1, v11, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I

    move-result v10

    if-lez v10, :cond_84

    .line 138
    rem-int/lit8 v10, v3, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v10}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    .line 141
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v10

    if-lt v10, v2, :cond_64

    .line 142
    goto :goto_8e

    .line 148
    :cond_64
    add-int/lit8 v10, v3, 0x2

    rem-int/2addr v10, v4

    aget-object v10, v5, v10

    iget-object v11, v0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    invoke-virtual {v10, v1, v11, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I

    move-result v10

    if-lez v10, :cond_79

    .line 149
    rem-int/lit8 v10, v3, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v10}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    .line 150
    goto :goto_8e

    .line 152
    :cond_79
    add-int/lit8 v10, v3, 0x1

    rem-int/2addr v10, v4

    aget-object v10, v5, v10

    invoke-virtual {v10, v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v10

    if-nez v10, :cond_64

    .line 155
    :cond_84
    rem-int/lit8 v10, v3, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v10, v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v10

    if-nez v10, :cond_49

    .line 158
    :cond_8e
    :goto_8e
    rem-int/lit8 v10, v3, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v10, v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v6

    .line 159
    add-int/lit8 v3, v3, 0x1

    .line 167
    :cond_98
    :goto_98
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v10

    if-ge v10, v2, :cond_ff

    if-ge v6, v4, :cond_ff

    .line 171
    rem-int/lit8 v10, v3, 0x3

    aget-object v10, v5, v10

    iget-object v11, v0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    invoke-virtual {v10, v1, v11, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I

    move-result v10

    if-gtz v10, :cond_fa

    if-eqz v6, :cond_b8

    rem-int/lit8 v10, v3, 0x3

    aget-object v10, v5, v10

    .line 173
    invoke-virtual {v10}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->longestPrefix()I

    move-result v10

    if-ge v10, v4, :cond_fa

    .line 175
    :cond_b8
    add-int v10, v7, v6

    sub-int v10, v2, v10

    .line 176
    .local v10, "remaining":I
    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    move-result v11

    .line 177
    .local v11, "pc":I
    const/4 v12, 0x0

    .line 179
    .local v12, "chars":I
    :goto_c1
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    .line 180
    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    move-result v13

    .line 181
    .local v13, "uc":I
    add-int/2addr v12, v9

    .line 182
    add-int/lit8 v10, v10, -0x1

    if-gtz v10, :cond_ce

    .line 183
    goto :goto_f2

    .line 185
    :cond_ce
    iget-object v14, v0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v14, v11}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v14

    if-eqz v14, :cond_f8

    iget-object v14, v0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v14, v13}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v14

    if-eqz v14, :cond_f8

    .line 191
    add-int/lit8 v14, v3, 0x1

    rem-int/2addr v14, v4

    aget-object v14, v5, v14

    iget-object v15, v0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    invoke-virtual {v14, v1, v15, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I

    move-result v14

    .line 192
    .local v14, "candidate":I
    add-int v15, v7, v6

    add-int/2addr v15, v12

    invoke-interface {v1, v15}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 193
    if-lez v14, :cond_f8

    .line 194
    nop

    .line 201
    .end local v14    # "candidate":I
    :goto_f2
    if-gtz v6, :cond_f6

    .line 202
    add-int/lit8 v3, v3, 0x1

    .line 206
    :cond_f6
    add-int/2addr v6, v12

    .line 207
    .end local v10    # "remaining":I
    .end local v11    # "pc":I
    .end local v12    # "chars":I
    goto :goto_ff

    .line 197
    .restart local v10    # "remaining":I
    .restart local v11    # "pc":I
    .restart local v12    # "chars":I
    :cond_f8
    move v11, v13

    goto :goto_c1

    .line 209
    .end local v10    # "remaining":I
    .end local v11    # "pc":I
    .end local v12    # "chars":I
    .end local v13    # "uc":I
    :cond_fa
    add-int v9, v7, v6

    invoke-interface {v1, v9}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 215
    :cond_ff
    :goto_ff
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v9

    move v10, v9

    .local v10, "currPos":I
    if-ge v9, v2, :cond_11c

    iget-object v9, v0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    move-result v11

    invoke-virtual {v9, v11}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_11c

    .line 216
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    .line 217
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v9

    sub-int/2addr v9, v10

    add-int/2addr v6, v9

    goto :goto_ff

    .line 224
    :cond_11c
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v9

    if-ge v9, v2, :cond_179

    if-lez v6, :cond_179

    .line 225
    rem-int/lit8 v9, v3, 0x3

    aget-object v9, v5, v9

    iget-object v11, v0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    invoke-virtual {v9, v1, v11, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I

    move-result v9

    if-gtz v9, :cond_174

    iget-object v9, v0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    .line 226
    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    move-result v11

    move v12, v11

    .local v12, "uc":I
    invoke-virtual {v9, v11}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_174

    .line 227
    const/16 v9, 0xe2f

    if-ne v12, v9, :cond_15d

    .line 228
    iget-object v9, v0, Landroid/icu/impl/breakiter/ThaiBreakEngine;->fSuffixSet:Landroid/icu/text/UnicodeSet;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->previous()C

    move-result v11

    invoke-virtual {v9, v11}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v9

    if-nez v9, :cond_15a

    .line 230
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    .line 231
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    .line 232
    add-int/lit8 v6, v6, 0x1

    .line 233
    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    move-result v12

    goto :goto_15d

    .line 236
    :cond_15a
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    .line 239
    :cond_15d
    :goto_15d
    const/16 v9, 0xe46

    if-ne v12, v9, :cond_179

    .line 240
    invoke-interface {v1}, Ljava/text/CharacterIterator;->previous()C

    move-result v11

    if-eq v11, v9, :cond_170

    .line 242
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    .line 243
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    .line 244
    add-int/lit8 v6, v6, 0x1

    goto :goto_179

    .line 247
    :cond_170
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    goto :goto_179

    .line 251
    .end local v12    # "uc":I
    :cond_174
    add-int v9, v7, v6

    invoke-interface {v1, v9}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 256
    :cond_179
    :goto_179
    if-lez v6, :cond_183

    .line 257
    add-int v9, v7, v6

    move-object/from16 v11, p4

    invoke-virtual {v11, v9}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    goto :goto_185

    .line 256
    :cond_183
    move-object/from16 v11, p4

    .line 259
    .end local v8    # "candidates":I
    .end local v10    # "currPos":I
    :goto_185
    goto/16 :goto_21

    .line 262
    .end local v6    # "wordLength":I
    :cond_187
    move-object/from16 v11, p4

    invoke-virtual {v11}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->peek()I

    move-result v4

    if-lt v4, v2, :cond_194

    .line 263
    invoke-virtual {v11}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->pop()I

    .line 264
    add-int/lit8 v3, v3, -0x1

    .line 267
    :cond_194
    return v3
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 87
    instance-of v0, p1, Landroid/icu/impl/breakiter/ThaiBreakEngine;

    return v0
.end method

.method public blacklist handles(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 97
    const/16 v0, 0x100a

    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    .line 98
    .local v0, "script":I
    const/16 v1, 0x26

    if-ne v0, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
