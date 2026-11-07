.class public Landroid/icu/impl/breakiter/LaoBreakEngine;
.super Landroid/icu/impl/breakiter/DictionaryBreakEngine;
.source "LaoBreakEngine.java"


# static fields
.field private static final blacklist LAO_LOOKAHEAD:B = 0x3t

.field private static final blacklist LAO_MIN_WORD:B = 0x2t

.field private static final blacklist LAO_PREFIX_COMBINE_THRESHOLD:B = 0x3t

.field private static final blacklist LAO_ROOT_COMBINE_THRESHOLD:B = 0x3t


# instance fields
.field private blacklist fBeginWordSet:Landroid/icu/text/UnicodeSet;

.field private blacklist fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

.field private blacklist fEndWordSet:Landroid/icu/text/UnicodeSet;

.field private blacklist fMarkSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor blacklist <init>()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine;-><init>()V

    .line 43
    new-instance v0, Landroid/icu/text/UnicodeSet;

    const-string v1, "[[:Laoo:]&[:LineBreak=SA:]]"

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "laoWordSet":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSet;

    const-string v2, "[[:Laoo:]&[:LineBreak=SA:]&[:M:]]"

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    .line 45
    iget-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    .line 46
    new-instance v1, Landroid/icu/text/UnicodeSet;

    const/4 v2, 0x6

    new-array v2, v2, [I

    fill-array-data v2, :array_68

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    iput-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    .line 51
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 53
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, v0}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    iput-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    .line 54
    iget-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    const/16 v2, 0xec0

    const/16 v3, 0xec4

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/UnicodeSet;->remove(II)Landroid/icu/text/UnicodeSet;

    .line 57
    iget-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 58
    iget-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 59
    iget-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 62
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 63
    iget-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 64
    iget-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 65
    iget-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    .line 67
    invoke-virtual {p0, v0}, Landroid/icu/impl/breakiter/LaoBreakEngine;->setCharacters(Landroid/icu/text/UnicodeSet;)V

    .line 69
    const-string v1, "Laoo"

    invoke-static {v1}, Landroid/icu/impl/breakiter/DictionaryData;->loadDictionaryFor(Ljava/lang/String;)Landroid/icu/impl/breakiter/DictionaryMatcher;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    .line 70
    return-void

    nop

    :array_68
    .array-data 4
        0xe81
        0xeae
        0xec0
        0xec4
        0xedc
        0xedd
    .end array-data
.end method


# virtual methods
.method public blacklist divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;Z)I
    .registers 22
    .param p1, "fIter"    # Ljava/text/CharacterIterator;
    .param p2, "rangeStart"    # I
    .param p3, "rangeEnd"    # I
    .param p4, "foundBreaks"    # Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;
    .param p5, "isPhraseBreaking"    # Z

    .line 95
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sub-int v3, v2, p2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_d

    .line 96
    const/4 v3, 0x0

    return v3

    .line 98
    :cond_d
    const/4 v3, 0x0

    .line 101
    .local v3, "wordsFound":I
    const/4 v4, 0x3

    new-array v5, v4, [Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;

    .line 102
    .local v5, "words":[Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_12
    if-ge v6, v4, :cond_1e

    .line 103
    new-instance v7, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;

    invoke-direct {v7}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;-><init>()V

    aput-object v7, v5, v6

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 107
    .end local v6    # "i":I
    :cond_1e
    invoke-interface/range {p1 .. p2}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 108
    :goto_21
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v6

    move v7, v6

    .local v7, "current":I
    if-ge v6, v2, :cond_12e

    .line 109
    const/4 v6, 0x0

    .line 112
    .local v6, "wordLength":I
    rem-int/lit8 v8, v3, 0x3

    aget-object v8, v5, v8

    iget-object v9, v0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    invoke-virtual {v8, v1, v9, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I

    move-result v8

    .line 115
    .local v8, "candidates":I
    const/4 v9, 0x1

    if-ne v8, v9, :cond_41

    .line 116
    rem-int/lit8 v10, v3, 0x3

    aget-object v10, v5, v10

    invoke-virtual {v10, v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v6

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_9c

    .line 121
    :cond_41
    if-le v8, v9, :cond_9c

    .line 122
    const/4 v10, 0x0

    .line 124
    .local v10, "foundBest":Z
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v11

    if-ge v11, v2, :cond_92

    .line 126
    :cond_4a
    add-int/lit8 v11, v3, 0x1

    rem-int/2addr v11, v4

    aget-object v11, v5, v11

    iget-object v12, v0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    invoke-virtual {v11, v1, v12, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I

    move-result v11

    if-lez v11, :cond_86

    .line 128
    rem-int/lit8 v11, v3, 0x3

    aget-object v11, v5, v11

    invoke-virtual {v11}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    .line 131
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v11

    if-lt v11, v2, :cond_65

    .line 132
    goto :goto_92

    .line 138
    :cond_65
    add-int/lit8 v11, v3, 0x2

    rem-int/2addr v11, v4

    aget-object v11, v5, v11

    iget-object v12, v0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    invoke-virtual {v11, v1, v12, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I

    move-result v11

    if-lez v11, :cond_7b

    .line 139
    rem-int/lit8 v11, v3, 0x3

    aget-object v11, v5, v11

    invoke-virtual {v11}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->markCurrent()V

    .line 140
    const/4 v10, 0x1

    .line 141
    goto :goto_86

    .line 143
    :cond_7b
    add-int/lit8 v11, v3, 0x1

    rem-int/2addr v11, v4

    aget-object v11, v5, v11

    invoke-virtual {v11, v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v11

    if-nez v11, :cond_65

    .line 145
    :cond_86
    :goto_86
    rem-int/lit8 v11, v3, 0x3

    aget-object v11, v5, v11

    invoke-virtual {v11, v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->backUp(Ljava/text/CharacterIterator;)Z

    move-result v11

    if-eqz v11, :cond_92

    if-eqz v10, :cond_4a

    .line 147
    :cond_92
    :goto_92
    rem-int/lit8 v11, v3, 0x3

    aget-object v11, v5, v11

    invoke-virtual {v11, v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->acceptMarked(Ljava/text/CharacterIterator;)I

    move-result v6

    .line 148
    add-int/lit8 v3, v3, 0x1

    .line 156
    .end local v10    # "foundBest":Z
    :cond_9c
    :goto_9c
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v10

    if-ge v10, v2, :cond_103

    if-ge v6, v4, :cond_103

    .line 160
    rem-int/lit8 v10, v3, 0x3

    aget-object v10, v5, v10

    iget-object v11, v0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    invoke-virtual {v10, v1, v11, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I

    move-result v10

    if-gtz v10, :cond_fe

    if-eqz v6, :cond_bc

    rem-int/lit8 v10, v3, 0x3

    aget-object v10, v5, v10

    .line 162
    invoke-virtual {v10}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->longestPrefix()I

    move-result v10

    if-ge v10, v4, :cond_fe

    .line 164
    :cond_bc
    add-int v10, v7, v6

    sub-int v10, v2, v10

    .line 165
    .local v10, "remaining":I
    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    move-result v11

    .line 166
    .local v11, "pc":I
    const/4 v12, 0x0

    .line 168
    .local v12, "chars":I
    :goto_c5
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    .line 169
    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    move-result v13

    .line 170
    .local v13, "uc":I
    add-int/2addr v12, v9

    .line 171
    add-int/lit8 v10, v10, -0x1

    if-gtz v10, :cond_d2

    .line 172
    goto :goto_f6

    .line 174
    :cond_d2
    iget-object v14, v0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fEndWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v14, v11}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v14

    if-eqz v14, :cond_fc

    iget-object v14, v0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fBeginWordSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v14, v13}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v14

    if-eqz v14, :cond_fc

    .line 176
    add-int/lit8 v14, v3, 0x1

    rem-int/2addr v14, v4

    aget-object v14, v5, v14

    iget-object v15, v0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fDictionary:Landroid/icu/impl/breakiter/DictionaryMatcher;

    invoke-virtual {v14, v1, v15, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I

    move-result v14

    .line 177
    .local v14, "candidate":I
    add-int v15, v7, v6

    add-int/2addr v15, v12

    invoke-interface {v1, v15}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 178
    if-lez v14, :cond_fc

    .line 179
    nop

    .line 186
    .end local v14    # "candidate":I
    :goto_f6
    if-gtz v6, :cond_fa

    .line 187
    add-int/lit8 v3, v3, 0x1

    .line 191
    :cond_fa
    add-int/2addr v6, v12

    .line 192
    .end local v10    # "remaining":I
    .end local v11    # "pc":I
    .end local v12    # "chars":I
    goto :goto_103

    .line 182
    .restart local v10    # "remaining":I
    .restart local v11    # "pc":I
    .restart local v12    # "chars":I
    :cond_fc
    move v11, v13

    goto :goto_c5

    .line 194
    .end local v10    # "remaining":I
    .end local v11    # "pc":I
    .end local v12    # "chars":I
    .end local v13    # "uc":I
    :cond_fe
    add-int v9, v7, v6

    invoke-interface {v1, v9}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 200
    :cond_103
    :goto_103
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v9

    move v10, v9

    .local v10, "currPos":I
    if-ge v9, v2, :cond_120

    iget-object v9, v0, Landroid/icu/impl/breakiter/LaoBreakEngine;->fMarkSet:Landroid/icu/text/UnicodeSet;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->current()C

    move-result v11

    invoke-virtual {v9, v11}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v9

    if-eqz v9, :cond_120

    .line 201
    invoke-interface {v1}, Ljava/text/CharacterIterator;->next()C

    .line 202
    invoke-interface {v1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v9

    sub-int/2addr v9, v10

    add-int/2addr v6, v9

    goto :goto_103

    .line 212
    :cond_120
    if-lez v6, :cond_12a

    .line 213
    add-int v9, v7, v6

    move-object/from16 v11, p4

    invoke-virtual {v11, v9}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    goto :goto_12c

    .line 212
    :cond_12a
    move-object/from16 v11, p4

    .line 215
    .end local v8    # "candidates":I
    .end local v10    # "currPos":I
    :goto_12c
    goto/16 :goto_21

    .line 218
    .end local v6    # "wordLength":I
    :cond_12e
    move-object/from16 v11, p4

    invoke-virtual {v11}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->peek()I

    move-result v4

    if-lt v4, v2, :cond_13b

    .line 219
    invoke-virtual {v11}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->pop()I

    .line 220
    add-int/lit8 v3, v3, -0x1

    .line 223
    :cond_13b
    return v3
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 76
    instance-of v0, p1, Landroid/icu/impl/breakiter/LaoBreakEngine;

    return v0
.end method

.method public blacklist handles(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 86
    const/16 v0, 0x100a

    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    .line 87
    .local v0, "script":I
    const/16 v1, 0x18

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

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
