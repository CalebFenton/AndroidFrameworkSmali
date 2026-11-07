.class public Landroid/icu/impl/TrieIterator;
.super Ljava/lang/Object;
.source "TrieIterator.java"

# interfaces
.implements Landroid/icu/util/RangeValueIterator;


# static fields
.field private static final blacklist BMP_INDEX_LENGTH_:I = 0x800

.field private static final blacklist DATA_BLOCK_LENGTH_:I = 0x20

.field private static final blacklist LEAD_SURROGATE_MIN_VALUE_:I = 0xd800

.field private static final blacklist TRAIL_SURROGATE_COUNT_:I = 0x400

.field private static final blacklist TRAIL_SURROGATE_INDEX_BLOCK_LENGTH_:I = 0x20

.field private static final blacklist TRAIL_SURROGATE_MIN_VALUE_:I = 0xdc00


# instance fields
.field private blacklist m_currentCodepoint_:I

.field private blacklist m_initialValue_:I

.field private blacklist m_nextBlockIndex_:I

.field private blacklist m_nextBlock_:I

.field private blacklist m_nextCodepoint_:I

.field private blacklist m_nextIndex_:I

.field private blacklist m_nextTrailIndexOffset_:I

.field private blacklist m_nextValue_:I

.field private blacklist m_trie_:Landroid/icu/impl/Trie;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/impl/Trie;)V
    .registers 4
    .param p1, "trie"    # Landroid/icu/impl/Trie;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-eqz p1, :cond_17

    .line 106
    iput-object p1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    .line 108
    iget-object v0, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    invoke-virtual {v0}, Landroid/icu/impl/Trie;->getInitialValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/TrieIterator;->extract(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    .line 109
    invoke-virtual {p0}, Landroid/icu/impl/TrieIterator;->reset()V

    .line 110
    return-void

    .line 103
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument trie cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final blacklist calculateNextBMPElement(Landroid/icu/util/RangeValueIterator$Element;)Z
    .registers 7
    .param p1, "element"    # Landroid/icu/util/RangeValueIterator$Element;

    .line 204
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 205
    .local v0, "currentValue":I
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    .line 206
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    .line 207
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 208
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 209
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 211
    return v2

    .line 215
    :cond_1f
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const/high16 v3, 0x10000

    const/4 v4, 0x0

    if-ge v1, v3, :cond_55

    .line 219
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const v3, 0xd800

    if-ne v1, v3, :cond_32

    .line 222
    const/16 v1, 0x800

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    goto :goto_45

    .line 224
    :cond_32
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const v3, 0xdc00

    if-ne v1, v3, :cond_40

    .line 226
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    shr-int/lit8 v1, v1, 0x5

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    goto :goto_45

    .line 228
    :cond_40
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    .line 231
    :goto_45
    iput v4, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 232
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlock(I)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 233
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v3, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 235
    return v2

    .line 238
    :cond_55
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    .line 239
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 240
    return v4
.end method

.method private final blacklist calculateNextSupplementaryElement(Landroid/icu/util/RangeValueIterator$Element;)V
    .registers 10
    .param p1, "element"    # Landroid/icu/util/RangeValueIterator$Element;

    .line 262
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 263
    .local v0, "currentValue":I
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    .line 264
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 266
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-static {v1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    const v2, 0xdc00

    if-eq v1, v2, :cond_4f

    .line 270
    invoke-direct {p0}, Landroid/icu/impl/TrieIterator;->checkNullNextTrailIndex()Z

    move-result v1

    if-nez v1, :cond_31

    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 271
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 273
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    .line 274
    return-void

    .line 277
    :cond_31
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    .line 278
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    .line 279
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkTrailBlock(I)Z

    move-result v1

    if-nez v1, :cond_4f

    .line 280
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 282
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    .line 283
    return-void

    .line 286
    :cond_4f
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-static {v1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    .line 288
    .local v1, "nextLead":I
    :goto_55
    if-ge v1, v2, :cond_eb

    .line 290
    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v3, v3, Landroid/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v4, v1, 0x5

    aget-char v3, v3, v4

    shl-int/lit8 v3, v3, 0x2

    .line 293
    .local v3, "leadBlock":I
    iget-object v4, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v4, v4, Landroid/icu/impl/Trie;->m_dataOffset_:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_8a

    .line 295
    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    if-eq v0, v4, :cond_80

    .line 296
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 297
    iput v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    .line 298
    iput v5, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 299
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v2, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 301
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    .line 302
    return-void

    .line 305
    :cond_80
    add-int/lit8 v1, v1, 0x20

    .line 311
    int-to-char v4, v1

    invoke-static {v4, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    iput v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    .line 312
    goto :goto_55

    .line 314
    :cond_8a
    iget-object v4, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v4, v4, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-eqz v4, :cond_e3

    .line 319
    iget-object v4, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v4, v4, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    iget-object v6, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    and-int/lit8 v7, v1, 0x1f

    add-int/2addr v7, v3

    .line 320
    invoke-virtual {v6, v7}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v6

    .line 319
    invoke-interface {v4, v6}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v4

    iput v4, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    .line 322
    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    if-gtz v4, :cond_ca

    .line 324
    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    if-eq v0, v4, :cond_c3

    .line 325
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 326
    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v2, v2, Landroid/icu/impl/Trie;->m_dataOffset_:I

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    .line 327
    iput v5, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 328
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v2, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 330
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    .line 331
    return-void

    .line 333
    :cond_c3
    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit16 v4, v4, 0x400

    iput v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_de

    .line 335
    :cond_ca
    iput v5, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    .line 336
    invoke-direct {p0, v0}, Landroid/icu/impl/TrieIterator;->checkTrailBlock(I)Z

    move-result v4

    if-nez v4, :cond_de

    .line 337
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    iget v4, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-direct {p0, p1, v2, v4, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 339
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    .line 340
    return-void

    .line 343
    :cond_de
    :goto_de
    nop

    .end local v3    # "leadBlock":I
    add-int/lit8 v1, v1, 0x1

    .line 344
    goto/16 :goto_55

    .line 315
    .restart local v3    # "leadBlock":I
    :cond_e3
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v4, "The field DataManipulate in this Trie is null"

    invoke-direct {v2, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 347
    .end local v3    # "leadBlock":I
    :cond_eb
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    const/high16 v3, 0x110000

    invoke-direct {p0, p1, v2, v3, v0}, Landroid/icu/impl/TrieIterator;->setResult(Landroid/icu/util/RangeValueIterator$Element;III)V

    .line 349
    return-void
.end method

.method private final blacklist checkBlock(I)Z
    .registers 7
    .param p1, "currentValue"    # I

    .line 391
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    .line 392
    .local v0, "currentBlock":I
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v1, v1, Landroid/icu/impl/Trie;->m_index_:[C

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    aget-char v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    .line 394
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    const/16 v2, 0x20

    if-ne v1, v0, :cond_21

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_21

    .line 398
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_42

    .line 400
    :cond_21
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v3, v3, Landroid/icu/impl/Trie;->m_dataOffset_:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3b

    .line 402
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    if-eq p1, v1, :cond_35

    .line 403
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 404
    iput v4, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 405
    return v4

    .line 407
    :cond_35
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_42

    .line 410
    :cond_3b
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->checkBlockDetail(I)Z

    move-result v1

    if-nez v1, :cond_42

    .line 411
    return v4

    .line 414
    :cond_42
    :goto_42
    const/4 v1, 0x1

    return v1
.end method

.method private final blacklist checkBlockDetail(I)Z
    .registers 6
    .param p1, "currentValue"    # I

    .line 365
    nop

    :goto_1
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2a

    .line 366
    iget-object v0, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iget v3, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/TrieIterator;->extract(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 368
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    if-eq v0, p1, :cond_1f

    .line 369
    const/4 v0, 0x0

    return v0

    .line 371
    :cond_1f
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 372
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    goto :goto_1

    .line 374
    :cond_2a
    return v2
.end method

.method private final blacklist checkNullNextTrailIndex()Z
    .registers 6

    .line 456
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    if-gtz v0, :cond_46

    .line 457
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    add-int/lit16 v0, v0, 0x3ff

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    .line 458
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    .line 459
    .local v0, "nextLead":I
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v1, v1, Landroid/icu/impl/Trie;->m_index_:[C

    shr-int/lit8 v2, v0, 0x5

    aget-char v1, v1, v2

    shl-int/lit8 v1, v1, 0x2

    .line 462
    .local v1, "leadBlock":I
    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v2, v2, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    if-eqz v2, :cond_3e

    .line 466
    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v2, v2, Landroid/icu/impl/Trie;->m_dataManipulate_:Landroid/icu/impl/Trie$DataManipulate;

    iget-object v3, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    and-int/lit8 v4, v0, 0x1f

    add-int/2addr v4, v1

    .line 467
    invoke-virtual {v3, v4}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v3

    .line 466
    invoke-interface {v2, v3}, Landroid/icu/impl/Trie$DataManipulate;->getFoldingOffset(I)I

    move-result v2

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    .line 469
    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    .line 470
    const/16 v2, 0x20

    iput v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 471
    return v3

    .line 463
    :cond_3e
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "The field DataManipulate in this Trie is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 473
    .end local v0    # "nextLead":I
    .end local v1    # "leadBlock":I
    :cond_46
    const/4 v0, 0x0

    return v0
.end method

.method private final blacklist checkTrailBlock(I)Z
    .registers 5
    .param p1, "currentValue"    # I

    .line 431
    nop

    :goto_1
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1d

    .line 434
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 436
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->checkBlock(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 437
    return v0

    .line 439
    :cond_12
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    .line 440
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    goto :goto_1

    .line 442
    :cond_1d
    return v2
.end method

.method private final blacklist setResult(Landroid/icu/util/RangeValueIterator$Element;III)V
    .registers 5
    .param p1, "element"    # Landroid/icu/util/RangeValueIterator$Element;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "value"    # I

    .line 186
    iput p2, p1, Landroid/icu/util/RangeValueIterator$Element;->start:I

    .line 187
    iput p3, p1, Landroid/icu/util/RangeValueIterator$Element;->limit:I

    .line 188
    iput p4, p1, Landroid/icu/util/RangeValueIterator$Element;->value:I

    .line 189
    return-void
.end method


# virtual methods
.method protected blacklist extract(I)I
    .registers 2
    .param p1, "value"    # I

    .line 171
    return p1
.end method

.method public final whitelist test-api next(Landroid/icu/util/RangeValueIterator$Element;)Z
    .registers 5
    .param p1, "element"    # Landroid/icu/util/RangeValueIterator$Element;

    .line 127
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const v1, 0x10ffff

    if-le v0, v1, :cond_9

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_9
    iget v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    const/high16 v1, 0x10000

    const/4 v2, 0x1

    if-ge v0, v1, :cond_17

    .line 131
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->calculateNextBMPElement(Landroid/icu/util/RangeValueIterator$Element;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 132
    return v2

    .line 134
    :cond_17
    invoke-direct {p0, p1}, Landroid/icu/impl/TrieIterator;->calculateNextSupplementaryElement(Landroid/icu/util/RangeValueIterator$Element;)V

    .line 135
    return v2
.end method

.method public final whitelist test-api reset()V
    .registers 4

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_currentCodepoint_:I

    .line 145
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextCodepoint_:I

    .line 146
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextIndex_:I

    .line 147
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget-object v1, v1, Landroid/icu/impl/Trie;->m_index_:[C

    aget-char v1, v1, v0

    shl-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    .line 148
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    iget-object v2, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v2, v2, Landroid/icu/impl/Trie;->m_dataOffset_:I

    if-ne v1, v2, :cond_1e

    .line 149
    iget v1, p0, Landroid/icu/impl/TrieIterator;->m_initialValue_:I

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    goto :goto_2c

    .line 152
    :cond_1e
    iget-object v1, p0, Landroid/icu/impl/TrieIterator;->m_trie_:Landroid/icu/impl/Trie;

    iget v2, p0, Landroid/icu/impl/TrieIterator;->m_nextBlock_:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/Trie;->getValue(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/icu/impl/TrieIterator;->extract(I)I

    move-result v1

    iput v1, p0, Landroid/icu/impl/TrieIterator;->m_nextValue_:I

    .line 154
    :goto_2c
    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextBlockIndex_:I

    .line 155
    const/16 v0, 0x20

    iput v0, p0, Landroid/icu/impl/TrieIterator;->m_nextTrailIndexOffset_:I

    .line 156
    return-void
.end method
