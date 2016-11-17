.class public Landroid/widget/AlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "AlphabetIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "sortedColumnIndex"    # I
    .param p3, "alphabet"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    #@3
    .line 83
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    #@5
    .line 84
    iput p2, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    #@7
    .line 85
    iput-object p3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    #@9
    .line 86
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v1

    #@d
    iput v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    #@f
    .line 87
    iget v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    #@11
    new-array v1, v1, [Ljava/lang/String;

    #@13
    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    #@15
    .line 88
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    #@18
    if-ge v0, v1, :cond_0

    #@1a
    .line 89
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    #@1c
    iget-object v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    #@1e
    invoke-interface {v2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@21
    move-result v2

    #@22
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    aput-object v2, v1, v0

    #@28
    .line 88
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 91
    :cond_0
    new-instance v1, Landroid/util/SparseIntArray;

    #@2d
    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    #@2f
    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    #@32
    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    #@34
    .line 92
    if-eqz p1, :cond_1

    #@36
    .line 93
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@39
    .line 96
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    #@3c
    move-result-object v1

    #@3d
    iput-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    #@3f
    .line 97
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    #@41
    const/4 v2, 0x0

    #@42
    invoke-virtual {v1, v2}, Ljava/text/Collator;->setStrength(I)V

    #@45
    .line 82
    return-void
.end method


# virtual methods
.method protected compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "word"    # Ljava/lang/String;
    .param p2, "letter"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 129
    const-string/jumbo v0, " "

    #@a
    .line 134
    .local v0, "firstLetter":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    #@c
    invoke-virtual {v1, v0, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 131
    .end local v0    # "firstLetter":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    #@12
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .restart local v0    # "firstLetter":Ljava/lang/String;
    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 17
    .param p1, "sectionIndex"    # I

    #@0
    .prologue
    .line 147
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    #@4
    .line 148
    .local v1, "alphaMap":Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    #@6
    iget-object v4, v0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    #@8
    .line 150
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_0

    #@a
    move-object/from16 v0, p0

    #@c
    iget-object v15, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    #@e
    if-nez v15, :cond_1

    #@10
    .line 151
    :cond_0
    const/4 v15, 0x0

    #@11
    return v15

    #@12
    .line 155
    :cond_1
    if-gtz p1, :cond_2

    #@14
    .line 156
    const/4 v15, 0x0

    #@15
    return v15

    #@16
    .line 158
    :cond_2
    move-object/from16 v0, p0

    #@18
    iget v15, v0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    #@1a
    move/from16 v0, p1

    #@1c
    if-lt v0, v15, :cond_3

    #@1e
    .line 159
    move-object/from16 v0, p0

    #@20
    iget v15, v0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    #@22
    add-int/lit8 p1, v15, -0x1

    #@24
    .line 162
    :cond_3
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    #@27
    move-result v12

    #@28
    .line 164
    .local v12, "savedCursorPos":I
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    #@2b
    move-result v2

    #@2c
    .line 165
    .local v2, "count":I
    const/4 v13, 0x0

    #@2d
    .line 166
    .local v13, "start":I
    move v6, v2

    #@2e
    .line 169
    .local v6, "end":I
    move-object/from16 v0, p0

    #@30
    iget-object v15, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    #@32
    move/from16 v0, p1

    #@34
    invoke-interface {v15, v0}, Ljava/lang/CharSequence;->charAt(I)C

    #@37
    move-result v8

    #@38
    .line 170
    .local v8, "letter":C
    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@3b
    move-result-object v14

    #@3c
    .line 171
    .local v14, "targetLetter":Ljava/lang/String;
    move v7, v8

    #@3d
    .line 173
    .local v7, "key":I
    const/high16 v15, -0x80000000

    #@3f
    invoke-virtual {v1, v7, v15}, Landroid/util/SparseIntArray;->get(II)I

    #@42
    move-result v9

    #@43
    .local v9, "pos":I
    const/high16 v15, -0x80000000

    #@45
    if-eq v15, v9, :cond_4

    #@47
    .line 177
    if-gez v9, :cond_7

    #@49
    .line 178
    neg-int v9, v9

    #@4a
    .line 179
    move v6, v9

    #@4b
    .line 187
    :cond_4
    if-lez p1, :cond_5

    #@4d
    .line 189
    move-object/from16 v0, p0

    #@4f
    iget-object v15, v0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    #@51
    add-int/lit8 v16, p1, -0x1

    #@53
    invoke-interface/range {v15 .. v16}, Ljava/lang/CharSequence;->charAt(I)C

    #@56
    move-result v10

    #@57
    .line 190
    .local v10, "prevLetter":I
    const/high16 v15, -0x80000000

    #@59
    invoke-virtual {v1, v10, v15}, Landroid/util/SparseIntArray;->get(II)I

    #@5c
    move-result v11

    #@5d
    .line 191
    .local v11, "prevLetterPos":I
    const/high16 v15, -0x80000000

    #@5f
    if-eq v11, v15, :cond_5

    #@61
    .line 192
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    #@64
    move-result v13

    #@65
    .line 198
    .end local v10    # "prevLetter":I
    .end local v11    # "prevLetterPos":I
    :cond_5
    add-int v15, v6, v13

    #@67
    div-int/lit8 v9, v15, 0x2

    #@69
    .line 200
    :goto_0
    if-ge v9, v6, :cond_6

    #@6b
    .line 202
    invoke-interface {v4, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@6e
    .line 203
    move-object/from16 v0, p0

    #@70
    iget v15, v0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    #@72
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@75
    move-result-object v3

    #@76
    .line 204
    .local v3, "curName":Ljava/lang/String;
    if-nez v3, :cond_9

    #@78
    .line 205
    if-nez v9, :cond_8

    #@7a
    .line 246
    .end local v3    # "curName":Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-virtual {v1, v7, v9}, Landroid/util/SparseIntArray;->put(II)V

    #@7d
    .line 247
    invoke-interface {v4, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@80
    .line 248
    return v9

    #@81
    .line 182
    :cond_7
    return v9

    #@82
    .line 208
    .restart local v3    # "curName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v9, v9, -0x1

    #@84
    .line 209
    goto :goto_0

    #@85
    .line 212
    :cond_9
    move-object/from16 v0, p0

    #@87
    invoke-virtual {v0, v3, v14}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@8a
    move-result v5

    #@8b
    .line 213
    .local v5, "diff":I
    if-eqz v5, :cond_c

    #@8d
    .line 225
    if-gez v5, :cond_a

    #@8f
    .line 226
    add-int/lit8 v13, v9, 0x1

    #@91
    .line 227
    if-lt v13, v2, :cond_b

    #@93
    .line 228
    move v9, v2

    #@94
    .line 229
    goto :goto_1

    #@95
    .line 232
    :cond_a
    move v6, v9

    #@96
    .line 244
    :cond_b
    :goto_2
    add-int v15, v13, v6

    #@98
    div-int/lit8 v9, v15, 0x2

    #@9a
    goto :goto_0

    #@9b
    .line 236
    :cond_c
    if-eq v13, v9, :cond_6

    #@9d
    .line 241
    move v6, v9

    #@9e
    goto :goto_2
.end method

.method public getSectionForPosition(I)I
    .locals 8
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 256
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    #@3
    invoke-interface {v5}, Landroid/database/Cursor;->getPosition()I

    #@6
    move-result v3

    #@7
    .line 257
    .local v3, "savedCursorPos":I
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    #@9
    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@c
    .line 258
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    #@e
    iget v6, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    #@10
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    .line 259
    .local v0, "curName":Ljava/lang/String;
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    #@16
    invoke-interface {v5, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    #@19
    .line 262
    const/4 v1, 0x0

    #@1a
    .local v1, "i":I
    :goto_0
    iget v5, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    #@1c
    if-ge v1, v5, :cond_1

    #@1e
    .line 263
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    #@20
    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@23
    move-result v2

    #@24
    .line 264
    .local v2, "letter":C
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    .line 265
    .local v4, "targetLetter":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_0

    #@2e
    .line 266
    return v1

    #@2f
    .line 262
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@31
    goto :goto_0

    #@32
    .line 269
    .end local v2    # "letter":C
    .end local v4    # "targetLetter":Ljava/lang/String;
    :cond_1
    return v7
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public onChanged()V
    .locals 1

    #@0
    .prologue
    .line 277
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    #@3
    .line 278
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@8
    .line 276
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    #@0
    .prologue
    .line 286
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    #@3
    .line 287
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    #@5
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@8
    .line 285
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 114
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    #@6
    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    #@9
    .line 116
    :cond_0
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    #@b
    .line 117
    if-eqz p1, :cond_1

    #@d
    .line 118
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    #@f
    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    #@12
    .line 120
    :cond_1
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    #@14
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    #@17
    .line 112
    return-void
.end method
