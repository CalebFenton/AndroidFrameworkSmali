.class public Landroid/icu/impl/TrieIterator;
.super Ljava/lang/Object;
.source "TrieIterator.java"

# interfaces
.implements Landroid/icu/util/RangeValueIterator;


# static fields
.field private static final BMP_INDEX_LENGTH_:I = 0x800

.field private static final DATA_BLOCK_LENGTH_:I = 0x20

.field private static final LEAD_SURROGATE_MIN_VALUE_:I = 0xd800

.field private static final TRAIL_SURROGATE_COUNT_:I = 0x400

.field private static final TRAIL_SURROGATE_INDEX_BLOCK_LENGTH_:I = 0x20

.field private static final TRAIL_SURROGATE_MIN_VALUE_:I = 0xdc00


# instance fields
.field private m_currentCodepoint_:I

.field private m_initialValue_:I

.field private m_nextBlockIndex_:I

.field private m_nextBlock_:I

.field private m_nextCodepoint_:I

.field private m_nextIndex_:I

.field private m_nextTrailIndexOffset_:I

.field private m_nextValue_:I

.field private m_trie_:Landroid/icu/impl/Trie;


# direct methods
.method public constructor <init>(Landroid/icu/impl/Trie;)V
    .locals 2
    .param p1, "trie"    # Landroid/icu/impl/Trie;

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 96
    if-nez p1, :cond_0

    #@5
    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    .line 98
    const-string/jumbo v1, "Argument trie cannot be null"

    #@a
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 100
    :cond_0
    iput-object p1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@10
    .line 102
    iget-object v0, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@12
    invoke-virtual {v0}, Landroid/icu/impl/Trie;->getInitialValue()I

    #@15
    move-result v0

    #@16
    invoke-virtual {p0, v0}, Landroid/icu/impl/TrieIterator;->extract(I)I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    #@1c
    .line 103
    invoke-virtual {p0}, Landroid/icu/impl/TrieIterator;->reset()V

    #@1f
    .line 94
    return-void
.end method

.method private final calculateNextBMPElement(Landroid/icu/util/RangeValueIterator$Element;)Z
    .locals 5
    .param p1, "element"    # Landroid/icu/util/RangeValueIterator$Element;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 196
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    #@4
    .line 197
    .local v0, "currentValue":I
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@6
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@8
    .line 198
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@e
    .line 199
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@14
    .line 200
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_0

    #@1a
    .line 201
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@1c
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@1e
    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    #@21
    .line 203
    return v4

    #@22
    .line 207
    :cond_0
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@24
    const/high16 v2, 0x10000

    #@26
    if-ge v1, v2, :cond_3

    #@28
    .line 211
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@2a
    const v2, 0xd800

    #@2d
    if-ne v1, v2, :cond_1

    #@2f
    .line 214
    const/16 v1, 0x800

    #@31
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@33
    .line 223
    :goto_0
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@35
    .line 224
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlock(I)Z

    #@38
    move-result v1

    #@39
    if-nez v1, :cond_0

    #@3b
    .line 225
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@3d
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@3f
    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    #@42
    .line 227
    return v4

    #@43
    .line 216
    :cond_1
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@45
    const v2, 0xdc00

    #@48
    if-ne v1, v2, :cond_2

    #@4a
    .line 218
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@4c
    shr-int/lit8 v1, v1, 0x5

    #@4e
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@50
    goto :goto_0

    #@51
    .line 220
    :cond_2
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@53
    add-int/lit8 v1, v1, 0x1

    #@55
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@57
    goto :goto_0

    #@58
    .line 230
    :cond_3
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@5a
    add-int/lit8 v1, v1, -0x1

    #@5c
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@5e
    .line 231
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@60
    add-int/lit8 v1, v1, -0x1

    #@62
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@64
    .line 232
    return v3
.end method

.method private final calculateNextSupplementaryElement(Landroid/icu/util/RangeValueIterator$Element;)V
    .locals 8
    .param p1, "element"    # Landroid/icu/util/RangeValueIterator$Element;

    #@0
    .prologue
    const v7, 0xdc00

    #@3
    const/4 v6, 0x0

    #@4
    .line 254
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    #@6
    .line 255
    .local v0, "currentValue":I
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@8
    add-int/lit8 v3, v3, 0x1

    #@a
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@c
    .line 256
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@e
    add-int/lit8 v3, v3, 0x1

    #@10
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@12
    .line 258
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@14
    invoke-static {v3}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    #@17
    move-result v3

    #@18
    if-eq v3, v7, :cond_2

    #@1a
    .line 262
    invoke-direct {p0}, Landroid/icu/impl/TrieIterator;->checkNullNextTrailIndex()Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_0

    #@20
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    .line 269
    :cond_0
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@28
    add-int/lit8 v3, v3, 0x1

    #@2a
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@2c
    .line 270
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    #@2e
    add-int/lit8 v3, v3, 0x1

    #@30
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    #@32
    .line 271
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkTrailBlock(I)Z

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_2

    #@38
    .line 272
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@3a
    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@3c
    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    #@3f
    .line 274
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@41
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@43
    .line 275
    return-void

    #@44
    .line 263
    :cond_1
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@46
    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@48
    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    #@4b
    .line 265
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@4d
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@4f
    .line 266
    return-void

    #@50
    .line 278
    :cond_2
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@52
    invoke-static {v3}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@55
    move-result v2

    #@56
    .line 280
    .local v2, "nextLead":I
    :goto_0
    if-ge v2, v7, :cond_9

    #@58
    .line 283
    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@5a
    iget-object v3, v3, Landroid/icu/impl/Trie;->m_index_:[C

    #@5c
    shr-int/lit8 v4, v2, 0x5

    #@5e
    aget-char v3, v3, v4

    #@60
    shl-int/lit8 v1, v3, 0x2

    #@62
    .line 285
    .local v1, "leadBlock":I
    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@64
    iget v3, v3, Landroid/icu/impl/Trie;->m_dataOffset_:I

    #@66
    if-ne v1, v3, :cond_4

    #@68
    .line 287
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    #@6a
    if-eq v0, v3, :cond_3

    #@6c
    .line 288
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    #@6e
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    #@70
    .line 289
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    #@72
    .line 290
    iput v6, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@74
    .line 291
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@76
    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@78
    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    #@7b
    .line 293
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@7d
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@7f
    .line 294
    return-void

    #@80
    .line 297
    :cond_3
    add-int/lit8 v2, v2, 0x20

    #@82
    .line 304
    int-to-char v3, v2

    #@83
    .line 303
    invoke-static {v3, v7}, Landroid/icu/impl/UCharacterProperty;->getRawSupplementary(CC)I

    #@86
    move-result v3

    #@87
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@89
    goto :goto_0

    #@8a
    .line 308
    :cond_4
    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@8c
    iget-object v3, v3, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@8e
    if-nez v3, :cond_5

    #@90
    .line 309
    new-instance v3, Ljava/lang/NullPointerException;

    #@92
    .line 310
    const-string/jumbo v4, "The field DataManipulate in this Trie is null"

    #@95
    .line 309
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@98
    throw v3

    #@99
    .line 313
    :cond_5
    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@9b
    iget-object v3, v3, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@9d
    .line 314
    iget-object v4, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@9f
    .line 315
    and-int/lit8 v5, v2, 0x1f

    #@a1
    .line 314
    add-int/2addr v5, v1

    #@a2
    invoke-virtual {v4, v5}, Landroid/icu/impl/Trie;->getValue(I)I

    #@a5
    move-result v4

    #@a6
    .line 313
    invoke-interface {v3, v4}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    #@a9
    move-result v3

    #@aa
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@ac
    .line 316
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@ae
    if-gtz v3, :cond_8

    #@b0
    .line 318
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    #@b2
    if-eq v0, v3, :cond_6

    #@b4
    .line 319
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    #@b6
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    #@b8
    .line 320
    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@ba
    iget v3, v3, Landroid/icu/impl/Trie;->m_dataOffset_:I

    #@bc
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    #@be
    .line 321
    iput v6, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@c0
    .line 322
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@c2
    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@c4
    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    #@c7
    .line 324
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@c9
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@cb
    .line 325
    return-void

    #@cc
    .line 327
    :cond_6
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@ce
    add-int/lit16 v3, v3, 0x400

    #@d0
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@d2
    .line 337
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@d4
    goto :goto_0

    #@d5
    .line 329
    :cond_8
    iput v6, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    #@d7
    .line 330
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkTrailBlock(I)Z

    #@da
    move-result v3

    #@db
    if-nez v3, :cond_7

    #@dd
    .line 331
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@df
    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@e1
    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    #@e4
    .line 333
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@e6
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@e8
    .line 334
    return-void

    #@e9
    .line 341
    .end local v1    # "leadBlock":I
    :cond_9
    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@eb
    const/high16 v4, 0x110000

    #@ed
    invoke-direct {p0, p1, v3, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    #@f0
    .line 252
    return-void
.end method

.method private final checkBlock(I)Z
    .locals 4
    .param p1, "currentValue"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 385
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    #@3
    .line 386
    .local v0, "currentBlock":I
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@5
    iget-object v1, v1, Landroid/icu/impl/Trie;->m_index_:[C

    #@7
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@9
    aget-char v1, v1, v2

    #@b
    shl-int/lit8 v1, v1, 0x2

    #@d
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    #@f
    .line 388
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    #@11
    if-ne v1, v0, :cond_1

    #@13
    .line 389
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@15
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@17
    sub-int/2addr v1, v2

    #@18
    const/16 v2, 0x20

    #@1a
    if-lt v1, v2, :cond_1

    #@1c
    .line 392
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@1e
    add-int/lit8 v1, v1, 0x20

    #@20
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@22
    .line 408
    :cond_0
    :goto_0
    const/4 v1, 0x1

    #@23
    return v1

    #@24
    .line 394
    :cond_1
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    #@26
    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@28
    iget v2, v2, Landroid/icu/impl/Trie;->m_dataOffset_:I

    #@2a
    if-ne v1, v2, :cond_3

    #@2c
    .line 396
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    #@2e
    if-eq p1, v1, :cond_2

    #@30
    .line 397
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    #@32
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    #@34
    .line 398
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@36
    .line 399
    return v3

    #@37
    .line 401
    :cond_2
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@39
    add-int/lit8 v1, v1, 0x20

    #@3b
    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@3d
    goto :goto_0

    #@3e
    .line 404
    :cond_3
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    #@41
    move-result v1

    #@42
    if-nez v1, :cond_0

    #@44
    .line 405
    return v3
.end method

.method private final checkBlockDetail(I)Z
    .locals 3
    .param p1, "currentValue"    # I

    #@0
    .prologue
    .line 359
    :goto_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@2
    const/16 v1, 0x20

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 360
    iget-object v0, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@8
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    #@a
    .line 361
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@c
    .line 360
    add-int/2addr v1, v2

    #@d
    invoke-virtual {v0, v1}, Landroid/icu/impl/Trie;->getValue(I)I

    #@10
    move-result v0

    #@11
    invoke-virtual {p0, v0}, Landroid/icu/impl/TrieIterator;->extract(I)I

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    #@17
    .line 362
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    #@19
    if-eq v0, p1, :cond_0

    #@1b
    .line 363
    const/4 v0, 0x0

    #@1c
    return v0

    #@1d
    .line 365
    :cond_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@1f
    add-int/lit8 v0, v0, 0x1

    #@21
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@23
    .line 366
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@29
    goto :goto_0

    #@2a
    .line 368
    :cond_1
    const/4 v0, 0x1

    #@2b
    return v0
.end method

.method private final checkNullNextTrailIndex()Z
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 450
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@3
    if-gtz v2, :cond_1

    #@5
    .line 451
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@7
    add-int/lit16 v2, v2, 0x3ff

    #@9
    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@b
    .line 452
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@d
    invoke-static {v2}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    #@10
    move-result v1

    #@11
    .line 454
    .local v1, "nextLead":I
    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@13
    iget-object v2, v2, Landroid/icu/impl/Trie;->m_index_:[C

    #@15
    shr-int/lit8 v3, v1, 0x5

    #@17
    aget-char v2, v2, v3

    #@19
    shl-int/lit8 v0, v2, 0x2

    #@1b
    .line 456
    .local v0, "leadBlock":I
    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@1d
    iget-object v2, v2, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@1f
    if-nez v2, :cond_0

    #@21
    .line 457
    new-instance v2, Ljava/lang/NullPointerException;

    #@23
    .line 458
    const-string/jumbo v3, "The field DataManipulate in this Trie is null"

    #@26
    .line 457
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 460
    :cond_0
    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@2c
    iget-object v2, v2, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    #@2e
    .line 461
    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@30
    .line 462
    and-int/lit8 v4, v1, 0x1f

    #@32
    .line 461
    add-int/2addr v4, v0

    #@33
    invoke-virtual {v3, v4}, Landroid/icu/impl/Trie;->getValue(I)I

    #@36
    move-result v3

    #@37
    .line 460
    invoke-interface {v2, v3}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    #@3a
    move-result v2

    #@3b
    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@3d
    .line 463
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@3f
    add-int/lit8 v2, v2, -0x1

    #@41
    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@43
    .line 464
    const/16 v2, 0x20

    #@45
    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@47
    .line 465
    const/4 v2, 0x1

    #@48
    return v2

    #@49
    .line 467
    .end local v0    # "leadBlock":I
    .end local v1    # "nextLead":I
    :cond_1
    return v3
.end method

.method private final checkTrailBlock(I)Z
    .locals 3
    .param p1, "currentValue"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 425
    :goto_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    #@3
    const/16 v1, 0x20

    #@5
    if-ge v0, v1, :cond_1

    #@7
    .line 428
    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@9
    .line 430
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->checkBlock(I)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 431
    return v2

    #@10
    .line 433
    :cond_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    #@12
    add-int/lit8 v0, v0, 0x1

    #@14
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    #@16
    .line 434
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@18
    add-int/lit8 v0, v0, 0x1

    #@1a
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@1c
    goto :goto_0

    #@1d
    .line 436
    :cond_1
    const/4 v0, 0x1

    #@1e
    return v0
.end method

.method private final setResult(Landroid/icu/util/RangeValueIterator$Element;III)V
    .locals 0
    .param p1, "element"    # Landroid/icu/util/RangeValueIterator$Element;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "value"    # I

    #@0
    .prologue
    .line 178
    iput p2, p1, Landroid/icu/util/RangeValueIterator$Element;->start:I

    #@2
    .line 179
    iput p3, p1, Landroid/icu/util/RangeValueIterator$Element;->limit:I

    #@4
    .line 180
    iput p4, p1, Landroid/icu/util/RangeValueIterator$Element;->value:I

    #@6
    .line 176
    return-void
.end method


# virtual methods
.method protected extract(I)I
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 163
    return p1
.end method

.method public final next(Landroid/icu/util/RangeValueIterator$Element;)Z
    .locals 3
    .param p1, "element"    # Landroid/icu/util/RangeValueIterator$Element;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 120
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@3
    const v1, 0x10ffff

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 121
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 123
    :cond_0
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@c
    const/high16 v1, 0x10000

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 124
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->calculateNextBMPElement(Landroid/icu/util/RangeValueIterator$Element;)Z

    #@13
    move-result v0

    #@14
    .line 123
    if-eqz v0, :cond_1

    #@16
    .line 125
    return v2

    #@17
    .line 127
    :cond_1
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->calculateNextSupplementaryElement(Landroid/icu/util/RangeValueIterator$Element;)V

    #@1a
    .line 128
    return v2
.end method

.method public final reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 136
    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    #@3
    .line 137
    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    #@5
    .line 138
    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    #@7
    .line 139
    iget-object v0, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@9
    iget-object v0, v0, Landroid/icu/impl/Trie;->m_index_:[C

    #@b
    aget-char v0, v0, v2

    #@d
    shl-int/lit8 v0, v0, 0x2

    #@f
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    #@11
    .line 140
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    #@13
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@15
    iget v1, v1, Landroid/icu/impl/Trie;->m_dataOffset_:I

    #@17
    if-ne v0, v1, :cond_0

    #@19
    .line 141
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    #@1b
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    #@1d
    .line 146
    :goto_0
    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    #@1f
    .line 147
    const/16 v0, 0x20

    #@21
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    #@23
    .line 134
    return-void

    #@24
    .line 144
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    #@26
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    #@28
    invoke-virtual {v0, v1}, Landroid/icu/impl/Trie;->getValue(I)I

    #@2b
    move-result v0

    #@2c
    invoke-virtual {p0, v0}, Landroid/icu/impl/TrieIterator;->extract(I)I

    #@2f
    move-result v0

    #@30
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    #@32
    goto :goto_0
.end method
