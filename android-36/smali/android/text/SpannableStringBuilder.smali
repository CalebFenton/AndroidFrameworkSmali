.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final greylist-max-o END_MASK:I = 0xf

.field private static final greylist-max-o MARK:I = 0x1

.field private static final greylist-max-o NO_FILTERS:[Landroid/text/InputFilter;

.field private static final greylist-max-o PARAGRAPH:I = 0x3

.field private static final greylist-max-o POINT:I = 0x2

.field private static final greylist-max-o SPAN_ADDED:I = 0x800

.field private static final greylist-max-o SPAN_END_AT_END:I = 0x8000

.field private static final greylist-max-o SPAN_END_AT_START:I = 0x4000

.field private static final greylist-max-o SPAN_START_AT_END:I = 0x2000

.field private static final greylist-max-o SPAN_START_AT_START:I = 0x1000

.field private static final greylist-max-o SPAN_START_END_MASK:I = 0xf000

.field private static final greylist-max-o START_MASK:I = 0xf0

.field private static final greylist-max-o START_SHIFT:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SpannableStringBuilder"

.field private static final greylist-max-o sCachedIntBuffer:[[I


# instance fields
.field private greylist-max-o mFilters:[Landroid/text/InputFilter;

.field private greylist mGapLength:I

.field private greylist mGapStart:I

.field private greylist-max-o mIndexOfSpan:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLowWaterMark:I

.field private greylist mSpanCount:I

.field private greylist mSpanEnds:[I

.field private greylist mSpanFlags:[I

.field private greylist-max-o mSpanInsertCount:I

.field private greylist-max-o mSpanMax:[I

.field private greylist-max-o mSpanOrder:[I

.field private greylist mSpanStarts:[I

.field private greylist mSpans:[Ljava/lang/Object;

.field private greylist mText:[C

.field private greylist-max-o mTextWatcherDepth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1775
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/text/InputFilter;

    sput-object v1, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 1778
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x6

    aput v2, v1, v0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 46
    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 54
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 55
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;II)V
    .registers 17
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 61
    move v7, p2

    move/from16 v8, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1780
    sget-object v1, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 62
    sub-int v9, v8, v7

    .line 64
    .local v9, "srclen":I
    if-ltz v9, :cond_96

    .line 66
    invoke-static {v9}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    iput-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 67
    iput v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 68
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v1, v1

    sub-int/2addr v1, v9

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 70
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    const/4 v2, 0x0

    invoke-static {p1, p2, v8, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 72
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 73
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 74
    sget-object v1, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 75
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 76
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 77
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 78
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 79
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    iput-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 81
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_95

    .line 82
    move-object v10, p1

    check-cast v10, Landroid/text/Spanned;

    .line 83
    .local v10, "sp":Landroid/text/Spanned;
    const-class v1, Ljava/lang/Object;

    invoke-interface {v10, p2, v8, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    .line 85
    .local v11, "spans":[Ljava/lang/Object;
    const/4 v1, 0x0

    move v12, v1

    .local v12, "i":I
    :goto_51
    array-length v1, v11

    if-ge v12, v1, :cond_92

    .line 86
    aget-object v1, v11, v12

    instance-of v1, v1, Landroid/text/NoCopySpan;

    if-eqz v1, :cond_5b

    .line 87
    goto :goto_8f

    .line 90
    :cond_5b
    aget-object v1, v11, v12

    invoke-interface {v10, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, v7

    .line 91
    .local v1, "st":I
    aget-object v2, v11, v12

    invoke-interface {v10, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, v7

    .line 92
    .local v2, "en":I
    aget-object v3, v11, v12

    invoke-interface {v10, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 94
    .local v5, "fl":I
    if-gez v1, :cond_72

    .line 95
    const/4 v1, 0x0

    .line 96
    :cond_72
    sub-int v3, v8, v7

    if-le v1, v3, :cond_7a

    .line 97
    sub-int v1, v8, v7

    move v3, v1

    goto :goto_7b

    .line 96
    :cond_7a
    move v3, v1

    .line 99
    .end local v1    # "st":I
    .local v3, "st":I
    :goto_7b
    if-gez v2, :cond_7e

    .line 100
    const/4 v2, 0x0

    .line 101
    :cond_7e
    sub-int v1, v8, v7

    if-le v2, v1, :cond_86

    .line 102
    sub-int v2, v8, v7

    move v4, v2

    goto :goto_87

    .line 101
    :cond_86
    move v4, v2

    .line 104
    .end local v2    # "en":I
    .local v4, "en":I
    :goto_87
    aget-object v2, v11, v12

    const/4 v6, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 85
    .end local v3    # "st":I
    .end local v4    # "en":I
    .end local v5    # "fl":I
    :goto_8f
    add-int/lit8 v12, v12, 0x1

    goto :goto_51

    .line 106
    .end local v12    # "i":I
    :cond_92
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 108
    .end local v10    # "sp":Landroid/text/Spanned;
    .end local v11    # "spans":[Ljava/lang/Object;
    :cond_95
    return-void

    .line 64
    :cond_96
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private greylist-max-o calcMax(I)I
    .registers 4
    .param p1, "i"    # I

    .line 1707
    const/4 v0, 0x0

    .line 1708
    .local v0, "max":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_d

    .line 1710
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v0

    .line 1712
    :cond_d
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p1, v1, :cond_29

    .line 1713
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1714
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_29

    .line 1715
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1718
    :cond_29
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aput v0, v1, p1

    .line 1719
    return v0
.end method

.method private greylist-max-o change(IILjava/lang/CharSequence;II)V
    .registers 28
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "cs"    # Ljava/lang/CharSequence;
    .param p4, "csStart"    # I
    .param p5, "csEnd"    # I

    .line 329
    move-object/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    sub-int v12, v8, v7

    .line 330
    .local v12, "replacedLength":I
    sub-int v13, v11, v10

    .line 331
    .local v13, "replacementLength":I
    sub-int v14, v13, v12

    .line 333
    .local v14, "nbNewChars":I
    const/4 v1, 0x0

    .line 334
    .local v1, "changed":Z
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v15, 0x1

    sub-int/2addr v2, v15

    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "changed":Z
    .local v16, "changed":Z
    .local v17, "i":I
    :goto_1b
    if-ltz v17, :cond_b8

    .line 335
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, v17

    .line 336
    .local v1, "spanStart":I
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_28

    .line 337
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    .line 339
    :cond_28
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, v17

    .line 340
    .local v2, "spanEnd":I
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_33

    .line 341
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 343
    :cond_33
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v3, v17

    const/16 v4, 0x33

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_93

    .line 344
    move v3, v1

    .line 345
    .local v3, "ost":I
    move v4, v2

    .line 346
    .local v4, "oen":I
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 348
    .local v5, "clen":I
    const/16 v6, 0xa

    if-le v1, v7, :cond_5b

    if-gt v1, v8, :cond_5b

    .line 349
    move/from16 v1, p2

    :goto_4a
    if-ge v1, v5, :cond_5b

    .line 350
    if-le v1, v8, :cond_57

    add-int/lit8 v15, v1, -0x1

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v15

    if-ne v15, v6, :cond_57

    .line 351
    goto :goto_5b

    .line 349
    :cond_57
    add-int/lit8 v1, v1, 0x1

    const/4 v15, 0x1

    goto :goto_4a

    .line 354
    :cond_5b
    :goto_5b
    if-le v2, v7, :cond_71

    if-gt v2, v8, :cond_71

    .line 355
    move/from16 v2, p2

    :goto_61
    if-ge v2, v5, :cond_71

    .line 356
    if-le v2, v8, :cond_6e

    add-int/lit8 v15, v2, -0x1

    invoke-virtual {v0, v15}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v15

    if-ne v15, v6, :cond_6e

    .line 357
    goto :goto_71

    .line 355
    :cond_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 360
    :cond_71
    :goto_71
    if-ne v1, v3, :cond_75

    if-eq v2, v4, :cond_93

    .line 361
    :cond_75
    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v6, v17

    iget-object v15, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v15, v15, v17

    move/from16 v19, v4

    move v4, v2

    move-object v2, v6

    .end local v2    # "spanEnd":I
    .local v4, "spanEnd":I
    .local v19, "oen":I
    const/4 v6, 0x1

    move/from16 v20, v3

    move v3, v1

    .end local v1    # "spanStart":I
    .local v3, "spanStart":I
    .local v20, "ost":I
    const/4 v1, 0x0

    move/from16 v21, v15

    move v15, v5

    move/from16 v5, v21

    .end local v5    # "clen":I
    .local v15, "clen":I
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 363
    const/4 v1, 0x1

    move/from16 v16, v1

    move v1, v3

    move v2, v4

    .line 367
    .end local v3    # "spanStart":I
    .end local v4    # "spanEnd":I
    .end local v15    # "clen":I
    .end local v19    # "oen":I
    .end local v20    # "ost":I
    .restart local v1    # "spanStart":I
    .restart local v2    # "spanEnd":I
    :cond_93
    const/4 v3, 0x0

    .line 368
    .local v3, "flags":I
    if-ne v1, v7, :cond_99

    or-int/lit16 v3, v3, 0x1000

    goto :goto_9f

    .line 369
    :cond_99
    add-int v4, v8, v14

    if-ne v1, v4, :cond_9f

    or-int/lit16 v3, v3, 0x2000

    .line 370
    :cond_9f
    :goto_9f
    if-ne v2, v7, :cond_a4

    or-int/lit16 v3, v3, 0x4000

    goto :goto_ac

    .line 371
    :cond_a4
    add-int v4, v8, v14

    if-ne v2, v4, :cond_ac

    const v4, 0x8000

    or-int/2addr v3, v4

    .line 372
    :cond_ac
    :goto_ac
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v5, v4, v17

    or-int/2addr v5, v3

    aput v5, v4, v17

    .line 334
    .end local v1    # "spanStart":I
    .end local v2    # "spanEnd":I
    .end local v3    # "flags":I
    add-int/lit8 v17, v17, -0x1

    const/4 v15, 0x1

    goto/16 :goto_1b

    .line 374
    .end local v17    # "i":I
    :cond_b8
    if-eqz v16, :cond_bd

    .line 375
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 378
    :cond_bd
    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    .line 380
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v14, v1, :cond_ce

    .line 381
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v1, v1

    add-int/2addr v1, v14

    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 384
    :cond_ce
    const/4 v1, 0x0

    if-nez v13, :cond_d3

    const/4 v6, 0x1

    goto :goto_d4

    :cond_d3
    move v6, v1

    .line 387
    .local v6, "textIsRemoved":Z
    :goto_d4
    if-lez v12, :cond_e5

    .line 388
    :goto_d6
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lez v2, :cond_e5

    .line 389
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v2

    invoke-direct {v0, v7, v8, v6, v2}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v2

    if-eqz v2, :cond_e5

    goto :goto_d6

    .line 395
    :cond_e5
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v2, v14

    iput v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 396
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v14

    iput v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 398
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_fe

    .line 399
    new-instance v2, Ljava/lang/Exception;

    const-string v4, "mGapLength < 1"

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 401
    :cond_fe
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {v9, v10, v11, v2, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 403
    if-lez v12, :cond_159

    .line 405
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v4

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v4

    if-ne v2, v4, :cond_111

    move v5, v3

    goto :goto_112

    :cond_111
    move v5, v1

    .line 407
    .local v5, "atEnd":Z
    :goto_112
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_114
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v15, v1, :cond_151

    .line 408
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v15

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v4, v1, 0x4

    .line 409
    .local v4, "startFlag":I
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v15

    move v3, v7

    move-object v7, v1

    move v1, v2

    move v2, v3

    move v3, v14

    .end local v14    # "nbNewChars":I
    .local v3, "nbNewChars":I
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v1

    move v14, v4

    .end local v4    # "startFlag":I
    .local v14, "startFlag":I
    aput v1, v7, v15

    .line 412
    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v15

    and-int/lit8 v4, v1, 0xf

    .line 413
    .local v4, "endFlag":I
    iget-object v7, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v1, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, v15

    move/from16 v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    move-result v1

    move/from16 v17, v3

    move/from16 v18, v6

    .end local v3    # "nbNewChars":I
    .end local v6    # "textIsRemoved":Z
    .local v17, "nbNewChars":I
    .local v18, "textIsRemoved":Z
    aput v1, v7, v15

    .line 407
    .end local v4    # "endFlag":I
    .end local v14    # "startFlag":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v7, p1

    move/from16 v14, v17

    goto :goto_114

    .end local v17    # "nbNewChars":I
    .end local v18    # "textIsRemoved":Z
    .restart local v6    # "textIsRemoved":Z
    .local v14, "nbNewChars":I
    :cond_151
    move/from16 v18, v6

    move/from16 v17, v14

    .line 417
    .end local v6    # "textIsRemoved":Z
    .end local v14    # "nbNewChars":I
    .end local v15    # "i":I
    .restart local v17    # "nbNewChars":I
    .restart local v18    # "textIsRemoved":Z
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    goto :goto_15d

    .line 403
    .end local v5    # "atEnd":Z
    .end local v17    # "nbNewChars":I
    .end local v18    # "textIsRemoved":Z
    .restart local v6    # "textIsRemoved":Z
    .restart local v14    # "nbNewChars":I
    :cond_159
    move/from16 v18, v6

    move/from16 v17, v14

    .line 420
    .end local v6    # "textIsRemoved":Z
    .end local v14    # "nbNewChars":I
    .restart local v17    # "nbNewChars":I
    .restart local v18    # "textIsRemoved":Z
    :goto_15d
    instance-of v1, v9, Landroid/text/Spanned;

    if-eqz v1, :cond_1ae

    .line 421
    move-object v7, v9

    check-cast v7, Landroid/text/Spanned;

    .line 422
    .local v7, "sp":Landroid/text/Spanned;
    const-class v1, Ljava/lang/Object;

    invoke-interface {v7, v10, v11, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    .line 424
    .local v14, "spans":[Ljava/lang/Object;
    const/4 v1, 0x0

    move v15, v1

    .restart local v15    # "i":I
    :goto_16c
    array-length v1, v14

    if-ge v15, v1, :cond_1ab

    .line 425
    aget-object v1, v14, v15

    invoke-interface {v7, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 426
    .local v1, "st":I
    aget-object v2, v14, v15

    invoke-interface {v7, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 428
    .local v2, "en":I
    if-ge v1, v10, :cond_17f

    move/from16 v1, p4

    :cond_17f
    move/from16 v19, v1

    .line 429
    .end local v1    # "st":I
    .local v19, "st":I
    if-le v2, v11, :cond_185

    move/from16 v2, p5

    :cond_185
    move/from16 v20, v2

    .line 432
    .end local v2    # "en":I
    .local v20, "en":I
    aget-object v1, v14, v15

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_1a6

    .line 433
    sub-int v1, v19, v10

    add-int v3, v1, p1

    .line 434
    .local v3, "copySpanStart":I
    sub-int v1, v20, v10

    add-int v4, v1, p1

    .line 435
    .local v4, "copySpanEnd":I
    aget-object v1, v14, v15

    invoke-interface {v7, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    or-int/lit16 v5, v1, 0x800

    .line 437
    .local v5, "copySpanFlags":I
    aget-object v2, v14, v15

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 424
    .end local v3    # "copySpanStart":I
    .end local v4    # "copySpanEnd":I
    .end local v5    # "copySpanFlags":I
    .end local v19    # "st":I
    .end local v20    # "en":I
    :cond_1a6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_16c

    .line 441
    .end local v15    # "i":I
    :cond_1ab
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 443
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v14    # "spans":[Ljava/lang/Object;
    :cond_1ae
    return-void
.end method

.method private greylist-max-o checkRange(Ljava/lang/String;II)V
    .registers 8
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1318
    const-string v0, " "

    if-lt p3, p2, :cond_5f

    .line 1323
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 1325
    .local v1, "len":I
    if-gt p2, v1, :cond_36

    if-gt p3, v1, :cond_36

    .line 1330
    if-ltz p2, :cond_11

    if-ltz p3, :cond_11

    .line 1334
    return-void

    .line 1331
    :cond_11
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1332
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " starts before 0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1326
    :cond_36
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1327
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ends beyond length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1319
    .end local v1    # "len":I
    :cond_5f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1320
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has end before start"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o checkSortBuffer([II)[I
    .registers 3
    .param p0, "buffer"    # [I
    .param p1, "size"    # I

    .line 1057
    if-eqz p0, :cond_7

    array-length v0, p0

    if-le p1, v0, :cond_6

    goto :goto_7

    .line 1060
    :cond_6
    return-object p0

    .line 1058
    :cond_7
    :goto_7
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method private final greylist-max-o compareSpans(II[I[I)I
    .registers 9
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "priority"    # [I
    .param p4, "insertionOrder"    # [I

    .line 1148
    aget v0, p3, p1

    .line 1149
    .local v0, "priority1":I
    aget v1, p3, p2

    .line 1150
    .local v1, "priority2":I
    if-ne v0, v1, :cond_f

    .line 1151
    aget v2, p4, p1

    aget v3, p4, p2

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2

    .line 1155
    :cond_f
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method

.method private greylist-max-o countSpans(IILjava/lang/Class;I)I
    .registers 9
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    .line 893
    const/4 v0, 0x0

    .line 894
    .local v0, "count":I
    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_1a

    .line 896
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v1

    .line 897
    .local v1, "left":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v2, v2, v1

    .line 898
    .local v2, "spanMax":I
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_14

    .line 899
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 901
    :cond_14
    if-lt v2, p1, :cond_1a

    .line 902
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v0

    .line 905
    .end local v1    # "left":I
    .end local v2    # "spanMax":I
    :cond_1a
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v1, :cond_5d

    .line 906
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p4

    .line 907
    .local v1, "spanStart":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v2, :cond_29

    .line 908
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v2

    .line 910
    :cond_29
    if-gt v1, p2, :cond_5d

    .line 911
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p4

    .line 912
    .local v2, "spanEnd":I
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_36

    .line 913
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 915
    :cond_36
    if-lt v2, p1, :cond_50

    if-eq v1, v2, :cond_40

    if-eq p1, p2, :cond_40

    if-eq v1, p2, :cond_50

    if-eq v2, p1, :cond_50

    :cond_40
    const-class v3, Ljava/lang/Object;

    if-eq v3, p3, :cond_4e

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    .line 918
    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 919
    :cond_4e
    add-int/lit8 v0, v0, 0x1

    .line 921
    :cond_50
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5d

    .line 922
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v3

    invoke-direct {p0, p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v3

    add-int/2addr v0, v3

    .line 926
    .end local v1    # "spanStart":I
    .end local v2    # "spanEnd":I
    :cond_5d
    return v0
.end method

.method private greylist-max-o getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I
    .registers 24
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p4, "i"    # I
    .param p6, "priority"    # [I
    .param p7, "insertionOrder"    # [I
    .param p8, "count"    # I
    .param p9, "sort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;I[TT;[I[IIZ)I"
        }
    .end annotation

    .line 948
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "ret":[Ljava/lang/Object;, "[TT;"
    move/from16 v10, p4

    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_36

    .line 950
    invoke-static {v10}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v4

    .line 951
    .local v4, "left":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v0, v0, v4

    .line 952
    .local v0, "spanMax":I
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v1, :cond_17

    .line 953
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    move v11, v0

    goto :goto_18

    .line 952
    :cond_17
    move v11, v0

    .line 955
    .end local v0    # "spanMax":I
    .local v11, "spanMax":I
    :goto_18
    if-lt v11, p1, :cond_2f

    .line 956
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result v8

    .end local p8    # "count":I
    .local v8, "count":I
    goto :goto_3e

    .line 955
    .end local v8    # "count":I
    .restart local p8    # "count":I
    :cond_2f
    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    goto :goto_3c

    .line 948
    .end local v4    # "left":I
    .end local v11    # "spanMax":I
    :cond_36
    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    .line 960
    :goto_3c
    move/from16 v8, p8

    .end local p8    # "count":I
    .restart local v8    # "count":I
    :goto_3e
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-lt v10, v4, :cond_43

    return v8

    .line 961
    :cond_43
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v10

    .line 962
    .local v4, "spanStart":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v6, :cond_50

    .line 963
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v6

    move v11, v4

    goto :goto_51

    .line 962
    :cond_50
    move v11, v4

    .line 965
    .end local v4    # "spanStart":I
    .local v11, "spanStart":I
    :goto_51
    if-gt v11, v2, :cond_c5

    .line 966
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v10

    .line 967
    .local v4, "spanEnd":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v4, v6, :cond_60

    .line 968
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v6

    move v12, v4

    goto :goto_61

    .line 967
    :cond_60
    move v12, v4

    .line 970
    .end local v4    # "spanEnd":I
    .local v12, "spanEnd":I
    :goto_61
    if-lt v12, p1, :cond_ae

    if-eq v11, v12, :cond_6b

    if-eq p1, v2, :cond_6b

    if-eq v11, v2, :cond_ae

    if-eq v12, p1, :cond_ae

    :cond_6b
    const-class v4, Ljava/lang/Object;

    if-eq v4, v3, :cond_79

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v10

    .line 973
    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 974
    :cond_79
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v10

    const/high16 v6, 0xff0000

    and-int/2addr v4, v6

    .line 975
    .local v4, "spanPriority":I
    move v7, v8

    .line 976
    .local v7, "target":I
    if-eqz p9, :cond_8c

    .line 977
    aput v4, p6, v7

    .line 978
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v6, v6, v10

    aput v6, p7, v7

    goto :goto_a6

    .line 979
    :cond_8c
    if-eqz v4, :cond_a6

    .line 981
    const/4 v9, 0x0

    .line 982
    .local v9, "j":I
    :goto_8f
    if-ge v9, v8, :cond_9e

    .line 983
    aget-object v13, v5, v9

    invoke-virtual {p0, v13}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    and-int/2addr v13, v6

    .line 984
    .local v13, "p":I
    if-le v4, v13, :cond_9b

    goto :goto_9e

    .line 982
    .end local v13    # "p":I
    :cond_9b
    add-int/lit8 v9, v9, 0x1

    goto :goto_8f

    .line 986
    :cond_9e
    :goto_9e
    add-int/lit8 v6, v9, 0x1

    sub-int v13, v8, v9

    invoke-static {v5, v9, v5, v6, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 987
    move v7, v9

    .line 989
    .end local v9    # "j":I
    :cond_a6
    :goto_a6
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v6, v6, v10

    aput-object v6, v5, v7

    .line 990
    add-int/lit8 v8, v8, 0x1

    .line 992
    .end local v4    # "spanPriority":I
    .end local v7    # "target":I
    :cond_ae
    array-length v4, v5

    if-ge v8, v4, :cond_c5

    and-int/lit8 v4, v10, 0x1

    if-eqz v4, :cond_c5

    .line 993
    invoke-static {v10}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v4

    move-object v0, p0

    move v1, p1

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    move-result v8

    .line 997
    .end local v12    # "spanEnd":I
    :cond_c5
    return v8
.end method

.method private static greylist-max-o hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .registers 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .line 588
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_20

    .line 589
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    .line 590
    .local v0, "spanned":Landroid/text/Spanned;
    const-class v1, Ljava/lang/Object;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 591
    .local v1, "spans":[Ljava/lang/Object;
    array-length v2, v1

    .line 592
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_20

    .line 593
    aget-object v4, v1, v3

    .line 594
    .local v4, "span":Ljava/lang/Object;
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 595
    .local v5, "flags":I
    const/16 v6, 0x21

    if-eq v5, v6, :cond_1d

    const/4 v6, 0x1

    return v6

    .line 592
    .end local v4    # "span":Ljava/lang/Object;
    .end local v5    # "flags":I
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 598
    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v1    # "spans":[Ljava/lang/Object;
    .end local v2    # "length":I
    .end local v3    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o invalidateIndex(I)V
    .registers 3
    .param p1, "i"    # I

    .line 1772
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 1773
    return-void
.end method

.method private greylist-max-o isInvalidParagraph(II)Z
    .registers 5
    .param p1, "index"    # I
    .param p2, "flag"    # I

    .line 784
    const/4 v0, 0x3

    if-ne p2, v0, :cond_17

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eq p1, v0, :cond_17

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method private static greylist-max-o leftChild(I)I
    .registers 3
    .param p0, "i"    # I

    .line 1691
    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method private greylist-max-o moveGapTo(I)V
    .registers 10
    .param p1, "where"    # I

    .line 170
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v0, :cond_5

    .line 171
    return-void

    .line 173
    :cond_5
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 175
    .local v0, "atEnd":Z
    :goto_e
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v1, :cond_23

    .line 176
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    .line 177
    .local v1, "overlap":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-static {v2, p1, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    .end local v1    # "overlap":I
    goto :goto_34

    .line 179
    :cond_23
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v1, p1, v1

    .line 180
    .restart local v1    # "overlap":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v1

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    .end local v1    # "overlap":I
    :goto_34
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v1, :cond_97

    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v2, :cond_90

    .line 186
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v1

    .line 187
    .local v2, "start":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v1

    .line 189
    .local v3, "end":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_4c

    .line 190
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 191
    :cond_4c
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-le v2, p1, :cond_54

    .line 192
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v6

    goto :goto_67

    .line 193
    :cond_54
    if-ne v2, p1, :cond_67

    .line 194
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v1

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    .line 196
    .local v6, "flag":I
    if-eq v6, v5, :cond_64

    if-eqz v0, :cond_67

    if-ne v6, v4, :cond_67

    .line 197
    :cond_64
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, v7

    .line 200
    .end local v6    # "flag":I
    :cond_67
    :goto_67
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v6, :cond_6e

    .line 201
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v6

    .line 202
    :cond_6e
    if-le v3, p1, :cond_74

    .line 203
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    goto :goto_85

    .line 204
    :cond_74
    if-ne v3, p1, :cond_85

    .line 205
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v1

    and-int/lit8 v6, v6, 0xf

    .line 207
    .restart local v6    # "flag":I
    if-eq v6, v5, :cond_82

    if-eqz v0, :cond_85

    if-ne v6, v4, :cond_85

    .line 208
    :cond_82
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    .line 211
    .end local v6    # "flag":I
    :cond_85
    :goto_85
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v2, v4, v1

    .line 212
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v3, v4, v1

    .line 185
    .end local v2    # "start":I
    .end local v3    # "end":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 214
    .end local v1    # "i":I
    :cond_90
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 217
    :cond_97
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    .line 218
    return-void
.end method

.method private greylist-max-o nextSpanTransitionRec(IILjava/lang/Class;I)I
    .registers 8
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    .line 1172
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_16

    .line 1174
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v0

    .line 1175
    .local v0, "left":I
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    if-le v1, p1, :cond_16

    .line 1176
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 1179
    .end local v0    # "left":I
    :cond_16
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge p4, v0, :cond_56

    .line 1180
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    .line 1181
    .local v0, "st":I
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v1, p4

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    .line 1182
    .local v1, "en":I
    if-le v0, p1, :cond_39

    if-ge v0, p2, :cond_39

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1183
    move p2, v0

    .line 1184
    :cond_39
    if-le v1, p1, :cond_48

    if-ge v1, p2, :cond_48

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, p4

    invoke-virtual {p3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1185
    move p2, v1

    .line 1186
    :cond_48
    if-ge v0, p2, :cond_56

    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_56

    .line 1187
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v2

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result p2

    .line 1191
    .end local v0    # "st":I
    .end local v1    # "en":I
    :cond_56
    return p2
.end method

.method private static greylist-max-o obtain(I)[I
    .registers 7
    .param p0, "elementCount"    # I

    .line 1007
    const/4 v0, 0x0

    .line 1008
    .local v0, "result":[I
    sget-object v1, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v1

    .line 1011
    const/4 v2, -0x1

    .line 1012
    .local v2, "candidateIndex":I
    :try_start_5
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_a
    const/4 v4, -0x1

    if-ltz v3, :cond_22

    .line 1013
    sget-object v5, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v5, v5, v3

    if-eqz v5, :cond_1f

    .line 1014
    sget-object v5, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v5, v5, v3

    array-length v5, v5

    if-lt v5, p0, :cond_1c

    .line 1015
    move v2, v3

    .line 1016
    goto :goto_22

    .line 1017
    :cond_1c
    if-ne v2, v4, :cond_1f

    .line 1018
    move v2, v3

    .line 1012
    :cond_1f
    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    .line 1023
    .end local v3    # "i":I
    :cond_22
    :goto_22
    if-eq v2, v4, :cond_2e

    .line 1024
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v2

    move-object v0, v3

    .line 1025
    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 1027
    .end local v2    # "candidateIndex":I
    :cond_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_34

    .line 1028
    invoke-static {v0, p0}, Landroid/text/SpannableStringBuilder;->checkSortBuffer([II)[I

    move-result-object v0

    .line 1029
    return-object v0

    .line 1027
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v2
.end method

.method private static greylist-max-o recycle([I)V
    .registers 5
    .param p0, "buffer"    # [I

    .line 1038
    sget-object v0, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    monitor-enter v0

    .line 1039
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_20

    .line 1040
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v2, v2, v1

    if-eqz v2, :cond_1b

    array-length v2, p0

    sget-object v3, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-le v2, v3, :cond_18

    goto :goto_1b

    .line 1039
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1041
    :cond_1b
    :goto_1b
    sget-object v2, Landroid/text/SpannableStringBuilder;->sCachedIntBuffer:[[I

    aput-object p0, v2, v1

    .line 1042
    nop

    .line 1045
    .end local v1    # "i":I
    :cond_20
    monitor-exit v0

    .line 1046
    return-void

    .line 1045
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private static greylist-max-o region(II)Ljava/lang/String;
    .registers 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 1314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o removeSpan(II)V
    .registers 10
    .param p1, "i"    # I
    .param p2, "flags"    # I

    .line 479
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 481
    .local v0, "object":Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, p1

    .line 482
    .local v1, "start":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, p1

    .line 484
    .local v2, "end":I
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v3, :cond_13

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v3

    .line 485
    :cond_13
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v3, :cond_1a

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v3

    .line 487
    :cond_1a
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    .line 488
    .local v3, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 490
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 492
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    invoke-static {v4, v5, v6, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 496
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 497
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    .line 500
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 502
    and-int/lit16 v4, p2, 0x200

    if-nez v4, :cond_66

    .line 503
    invoke-direct {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 505
    :cond_66
    return-void
.end method

.method private greylist-max-o removeSpansForChange(IIZI)Z
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textIsRemoved"    # Z
    .param p4, "i"    # I

    .line 303
    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    .line 305
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    aget v0, v0, p4

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    if-lt v0, p1, :cond_1a

    .line 306
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 307
    return v1

    .line 310
    :cond_1a
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v2, 0x0

    if-ge p4, v0, :cond_82

    .line 311
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v0, v0, p4

    const/16 v3, 0x21

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_67

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    if-lt v0, p1, :cond_67

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_67

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v0, p4

    if-lt v0, p1, :cond_67

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v0, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, v4

    if-ge v0, v3, :cond_67

    if-nez p3, :cond_5a

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    if-gt v0, p1, :cond_5a

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v0, v0, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge v0, v3, :cond_67

    .line 317
    :cond_5a
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, p4

    invoke-virtual {v0, v3}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-direct {p0, p4, v2}, Landroid/text/SpannableStringBuilder;->removeSpan(II)V

    .line 319
    return v1

    .line 321
    :cond_67
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, p4

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v0

    if-gt v0, p2, :cond_80

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_80

    .line 322
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    move-result v0

    if-eqz v0, :cond_80

    goto :goto_81

    :cond_80
    move v1, v2

    .line 321
    :goto_81
    return v1

    .line 324
    :cond_82
    return v2
.end method

.method private greylist-max-o resizeFor(I)V
    .registers 10
    .param p1, "size"    # I

    .line 143
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    .line 144
    .local v0, "oldLength":I
    add-int/lit8 v1, p1, 0x1

    if-gt v1, v0, :cond_8

    .line 145
    return-void

    .line 148
    :cond_8
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    .line 149
    .local v1, "newText":[C
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    array-length v2, v1

    .line 151
    .local v2, "newLength":I
    sub-int v3, v2, v0

    .line 152
    .local v3, "delta":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    sub-int v4, v0, v4

    .line 153
    .local v4, "after":I
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v6, v0, v4

    sub-int v7, v2, v4

    invoke-static {v5, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    iput-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    .line 156
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    .line 157
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_41

    .line 158
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    :cond_41
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz v5, :cond_72

    .line 161
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_46
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v5, v6, :cond_6b

    .line 162
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v6, v5

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_59

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v7, v6, v5

    add-int/2addr v7, v3

    aput v7, v6, v5

    .line 163
    :cond_59
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v6, v5

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v7, :cond_68

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v7, v6, v5

    add-int/2addr v7, v3

    aput v7, v6, v5

    .line 161
    :cond_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 165
    .end local v5    # "i":I
    :cond_6b
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 167
    :cond_72
    return-void
.end method

.method private greylist-max-o resolveGap(I)I
    .registers 3
    .param p1, "i"    # I

    .line 811
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le p1, v0, :cond_9

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v0, p1, v0

    goto :goto_a

    :cond_9
    move v0, p1

    :goto_a
    return v0
.end method

.method private greylist-max-o restoreInvariants()V
    .registers 11

    .line 1724
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_5

    return-void

    .line 1729
    :cond_5
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_6
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_83

    .line 1730
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_80

    .line 1731
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1732
    .local v1, "span":Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    .line 1733
    .local v2, "start":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    .line 1734
    .local v3, "end":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v0

    .line 1735
    .local v4, "flags":I
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aget v5, v5, v0

    .line 1736
    .local v5, "insertionOrder":I
    move v6, v0

    .line 1738
    .local v6, "j":I
    :cond_2b
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v9, v6, -0x1

    aget-object v8, v8, v9

    aput-object v8, v7, v6

    .line 1739
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1740
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1741
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1742
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    add-int/lit8 v9, v6, -0x1

    aget v8, v8, v9

    aput v8, v7, v6

    .line 1743
    add-int/lit8 v6, v6, -0x1

    .line 1744
    if-lez v6, :cond_69

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v8, v6, -0x1

    aget v7, v7, v8

    if-lt v2, v7, :cond_2b

    .line 1745
    :cond_69
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aput-object v1, v7, v6

    .line 1746
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v2, v7, v6

    .line 1747
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v3, v7, v6

    .line 1748
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v4, v7, v6

    .line 1749
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    aput v5, v7, v6

    .line 1750
    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 1729
    .end local v1    # "span":Ljava/lang/Object;
    .end local v2    # "start":I
    .end local v3    # "end":I
    .end local v4    # "flags":I
    .end local v5    # "insertionOrder":I
    .end local v6    # "j":I
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1755
    .end local v0    # "i":I
    :cond_83
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    .line 1758
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_95

    .line 1759
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    .line 1761
    :cond_95
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .restart local v0    # "i":I
    :goto_97
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_bf

    .line 1762
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1763
    .local v1, "existing":Ljava/lang/Integer;
    if-eqz v1, :cond_af

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_bc

    .line 1764
    :cond_af
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1761
    .end local v1    # "existing":Ljava/lang/Integer;
    :cond_bc
    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    .line 1767
    .end local v0    # "i":I
    :cond_bf
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    .line 1768
    return-void
.end method

.method private static greylist-max-o rightChild(I)I
    .registers 3
    .param p0, "i"    # I

    .line 1695
    add-int/lit8 v0, p0, 0x1

    not-int v1, p0

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method private greylist-max-o sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .registers 5
    .param p1, "watchers"    # [Landroid/text/TextWatcher;

    .line 1275
    array-length v0, p1

    .line 1277
    .local v0, "n":I
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_12

    .line 1279
    aget-object v2, p1, v1

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 1278
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1281
    .end local v1    # "i":I
    :cond_12
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1282
    return-void
.end method

.method private greylist-max-o sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .registers 8
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 1255
    array-length v0, p1

    .line 1257
    .local v0, "n":I
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1258
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_12

    .line 1259
    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 1258
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1261
    .end local v1    # "i":I
    :cond_12
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1262
    return-void
.end method

.method private greylist-max-o sendSpanAdded(Ljava/lang/Object;II)V
    .registers 8
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1285
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1286
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 1288
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_14

    .line 1289
    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1288
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1291
    .end local v2    # "i":I
    :cond_14
    return-void
.end method

.method private greylist-max-o sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 16
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "oldStart"    # I
    .param p3, "oldEnd"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .line 1305
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1306
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    .line 1305
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1307
    .local v0, "spanWatchers":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 1308
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_2a

    .line 1309
    aget-object v3, v0, v2

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .end local p1    # "what":Ljava/lang/Object;
    .end local p2    # "oldStart":I
    .end local p3    # "oldEnd":I
    .end local p4    # "start":I
    .end local p5    # "end":I
    .local v5, "what":Ljava/lang/Object;
    .local v6, "oldStart":I
    .local v7, "oldEnd":I
    .local v8, "start":I
    .local v9, "end":I
    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 1308
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1311
    .end local v2    # "i":I
    .end local v5    # "what":Ljava/lang/Object;
    .end local v6    # "oldStart":I
    .end local v7    # "oldEnd":I
    .end local v8    # "start":I
    .end local v9    # "end":I
    .restart local p1    # "what":Ljava/lang/Object;
    .restart local p2    # "oldStart":I
    .restart local p3    # "oldEnd":I
    .restart local p4    # "start":I
    .restart local p5    # "end":I
    :cond_2a
    return-void
.end method

.method private greylist-max-o sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 8
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1294
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 1295
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 1297
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_14

    .line 1298
    aget-object v3, v0, v2

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 1297
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1300
    .end local v2    # "i":I
    :cond_14
    return-void
.end method

.method private greylist-max-o sendTextChanged([Landroid/text/TextWatcher;III)V
    .registers 8
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .line 1265
    array-length v0, p1

    .line 1267
    .local v0, "n":I
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1268
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_12

    .line 1269
    aget-object v2, p1, v1

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 1268
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1271
    .end local v1    # "i":I
    :cond_12
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    .line 1272
    return-void
.end method

.method private greylist sendToSpanWatchers(III)V
    .registers 16
    .param p1, "replaceStart"    # I
    .param p2, "replaceEnd"    # I
    .param p3, "nbNewChars"    # I

    .line 603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_84

    .line 604
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v0

    .line 607
    .local v1, "spanFlags":I
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_10

    move-object v4, p0

    goto/16 :goto_80

    .line 608
    :cond_10
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    .line 609
    .local v2, "spanStart":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    .line 610
    .local v3, "spanEnd":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_1f

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    :cond_1f
    move v8, v2

    .line 611
    .end local v2    # "spanStart":I
    .local v8, "spanStart":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v2, :cond_27

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v2

    :cond_27
    move v9, v3

    .line 613
    .end local v3    # "spanEnd":I
    .local v9, "spanEnd":I
    add-int v2, p2, p3

    .line 614
    .local v2, "newReplaceEnd":I
    const/4 v3, 0x0

    .line 616
    .local v3, "spanChanged":Z
    move v4, v8

    .line 617
    .local v4, "previousSpanStart":I
    if-le v8, v2, :cond_34

    .line 618
    if-eqz p3, :cond_49

    .line 619
    sub-int/2addr v4, p3

    .line 620
    const/4 v3, 0x1

    move v6, v4

    goto :goto_4a

    .line 622
    :cond_34
    if-lt v8, p1, :cond_49

    .line 624
    if-ne v8, p1, :cond_3e

    and-int/lit16 v5, v1, 0x1000

    const/16 v6, 0x1000

    if-eq v5, v6, :cond_49

    :cond_3e
    if-ne v8, v2, :cond_46

    and-int/lit16 v5, v1, 0x2000

    const/16 v6, 0x2000

    if-eq v5, v6, :cond_49

    .line 631
    :cond_46
    const/4 v3, 0x1

    move v6, v4

    goto :goto_4a

    .line 635
    :cond_49
    move v6, v4

    .end local v4    # "previousSpanStart":I
    .local v6, "previousSpanStart":I
    :goto_4a
    move v4, v9

    .line 636
    .local v4, "previousSpanEnd":I
    if-le v9, v2, :cond_53

    .line 637
    if-eqz p3, :cond_69

    .line 638
    sub-int/2addr v4, p3

    .line 639
    const/4 v3, 0x1

    move v7, v4

    goto :goto_6a

    .line 641
    :cond_53
    if-lt v9, p1, :cond_69

    .line 643
    if-ne v9, p1, :cond_5d

    and-int/lit16 v5, v1, 0x4000

    const/16 v7, 0x4000

    if-eq v5, v7, :cond_69

    :cond_5d
    if-ne v9, v2, :cond_66

    const v5, 0x8000

    and-int v7, v1, v5

    if-eq v7, v5, :cond_69

    .line 648
    :cond_66
    const/4 v3, 0x1

    move v7, v4

    goto :goto_6a

    .line 652
    :cond_69
    move v7, v4

    .end local v4    # "previousSpanEnd":I
    .local v7, "previousSpanEnd":I
    :goto_6a
    if-eqz v3, :cond_75

    .line 653
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v5, v4, v0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    goto :goto_76

    .line 652
    :cond_75
    move-object v4, p0

    .line 655
    :goto_76
    iget-object v5, v4, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v10, v5, v0

    const v11, -0xf001

    and-int/2addr v10, v11

    aput v10, v5, v0

    .line 603
    .end local v1    # "spanFlags":I
    .end local v2    # "newReplaceEnd":I
    .end local v3    # "spanChanged":Z
    .end local v6    # "previousSpanStart":I
    .end local v7    # "previousSpanEnd":I
    .end local v8    # "spanStart":I
    .end local v9    # "spanEnd":I
    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_84
    move-object v4, p0

    .line 659
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_86
    iget v1, v4, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v1, :cond_ba

    .line 660
    iget-object v1, v4, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v1, v1, v0

    .line 661
    .restart local v1    # "spanFlags":I
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b7

    .line 662
    iget-object v2, v4, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v2, v0

    and-int/lit16 v3, v3, -0x801

    aput v3, v2, v0

    .line 663
    iget-object v2, v4, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    .line 664
    .local v2, "spanStart":I
    iget-object v3, v4, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    .line 665
    .local v3, "spanEnd":I
    iget v5, v4, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v5, :cond_a9

    iget v5, v4, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v5

    .line 666
    :cond_a9
    iget v5, v4, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v5, :cond_b0

    iget v5, v4, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v5

    .line 667
    :cond_b0
    iget-object v5, v4, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v5, v5, v0

    invoke-direct {p0, v5, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 659
    .end local v1    # "spanFlags":I
    .end local v2    # "spanStart":I
    .end local v3    # "spanEnd":I
    :cond_b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    .line 670
    .end local v0    # "i":I
    :cond_ba
    return-void
.end method

.method private greylist-max-o setSpan(ZLjava/lang/Object;IIIZ)V
    .registers 21
    .param p1, "send"    # Z
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "flags"    # I
    .param p6, "enforceParagraph"    # Z

    .line 686
    move-object/from16 v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    const-string/jumbo v0, "setSpan"

    invoke-direct {p0, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 688
    and-int/lit16 v0, v6, 0xf0

    shr-int/lit8 v7, v0, 0x4

    .line 689
    .local v7, "flagsStart":I
    invoke-direct {p0, v4, v7}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v0

    const-string v2, ")"

    const-string v3, " follows "

    if-eqz v0, :cond_4a

    .line 690
    if-nez p6, :cond_1f

    .line 692
    return-void

    .line 694
    :cond_1f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v8, v4, -0x1

    .line 695
    invoke-virtual {p0, v8}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_4a
    and-int/lit8 v8, v6, 0xf

    .line 699
    .local v8, "flagsEnd":I
    invoke-direct {p0, v5, v8}, Landroid/text/SpannableStringBuilder;->isInvalidParagraph(II)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 700
    if-nez p6, :cond_55

    .line 702
    return-void

    .line 704
    :cond_55
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v9, v5, -0x1

    .line 705
    invoke-virtual {p0, v9}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_80
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne v7, v0, :cond_92

    if-ne v8, v2, :cond_92

    if-ne v4, v5, :cond_92

    .line 710
    if-eqz p1, :cond_91

    .line 711
    const-string v0, "SpannableStringBuilder"

    const-string v2, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_91
    return-void

    .line 719
    :cond_92
    move/from16 v3, p3

    .line 720
    .local v3, "nstart":I
    move/from16 v9, p4

    .line 722
    .local v9, "nend":I
    iget v10, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/4 v11, 0x3

    if-le v4, v10, :cond_a0

    .line 723
    iget v10, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v10

    move v10, v4

    .end local p3    # "start":I
    .local v4, "start":I
    goto :goto_b4

    .line 724
    .end local v4    # "start":I
    .restart local p3    # "start":I
    :cond_a0
    iget v10, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v4, v10, :cond_b3

    .line 725
    if-eq v7, v0, :cond_ae

    if-ne v7, v11, :cond_b3

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    if-ne v4, v10, :cond_b3

    .line 726
    :cond_ae
    iget v10, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v10

    move v10, v4

    .end local p3    # "start":I
    .restart local v4    # "start":I
    goto :goto_b4

    .line 729
    .end local v4    # "start":I
    .restart local p3    # "start":I
    :cond_b3
    move v10, v4

    .end local p3    # "start":I
    .local v10, "start":I
    :goto_b4
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v4, :cond_bd

    .line 730
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    move v11, v4

    .end local p4    # "end":I
    .local v4, "end":I
    goto :goto_d1

    .line 731
    .end local v4    # "end":I
    .restart local p4    # "end":I
    :cond_bd
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v5, v4, :cond_d0

    .line 732
    if-eq v8, v0, :cond_cb

    if-ne v8, v11, :cond_d0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ne v5, v4, :cond_d0

    .line 733
    :cond_cb
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    move v11, v4

    .end local p4    # "end":I
    .restart local v4    # "end":I
    goto :goto_d1

    .line 736
    .end local v4    # "end":I
    .restart local p4    # "end":I
    :cond_d0
    move v11, v5

    .end local p4    # "end":I
    .local v11, "end":I
    :goto_d1
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v4, :cond_121

    .line 737
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v4, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Ljava/lang/Integer;

    .line 738
    .local v12, "index":Ljava/lang/Integer;
    if-eqz v12, :cond_11d

    .line 739
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 740
    .local v13, "i":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v0, v0, v13

    .line 741
    .local v0, "ostart":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v2, v2, v13

    .line 743
    .local v2, "oend":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v0, v4, :cond_f3

    .line 744
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v4

    .line 745
    :cond_f3
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_fa

    .line 746
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 748
    :cond_fa
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v10, v4, v13

    .line 749
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v11, v4, v13

    .line 750
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput v6, v4, v13

    .line 752
    if-eqz p1, :cond_116

    .line 753
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 754
    move v4, v3

    move v5, v9

    move v3, v2

    move v2, v0

    move-object v0, p0

    .end local v0    # "ostart":I
    .end local v9    # "nend":I
    .local v2, "ostart":I
    .local v3, "oend":I
    .local v4, "nstart":I
    .local v5, "nend":I
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    move v0, v3

    move-object v3, v1

    .end local v3    # "oend":I
    .local v0, "oend":I
    goto :goto_11c

    .line 752
    .end local v4    # "nstart":I
    .end local v5    # "nend":I
    .local v0, "ostart":I
    .local v2, "oend":I
    .local v3, "nstart":I
    .restart local v9    # "nend":I
    :cond_116
    move v4, v2

    move v2, v0

    move v0, v4

    move v4, v3

    move v5, v9

    move-object v3, v1

    .line 757
    .end local v3    # "nstart":I
    .end local v9    # "nend":I
    .local v0, "oend":I
    .local v2, "ostart":I
    .restart local v4    # "nstart":I
    .restart local v5    # "nend":I
    :goto_11c
    return-void

    .line 738
    .end local v0    # "oend":I
    .end local v2    # "ostart":I
    .end local v4    # "nstart":I
    .end local v5    # "nend":I
    .end local v13    # "i":I
    .restart local v3    # "nstart":I
    .restart local v9    # "nend":I
    :cond_11d
    move v4, v3

    move v5, v9

    move-object v3, v1

    .end local v3    # "nstart":I
    .end local v9    # "nend":I
    .restart local v4    # "nstart":I
    .restart local v5    # "nend":I
    goto :goto_124

    .line 736
    .end local v4    # "nstart":I
    .end local v5    # "nend":I
    .end local v12    # "index":Ljava/lang/Integer;
    .restart local v3    # "nstart":I
    .restart local v9    # "nend":I
    :cond_121
    move v4, v3

    move v5, v9

    move-object v3, v1

    .line 761
    .end local v3    # "nstart":I
    .end local v9    # "nend":I
    .restart local v4    # "nstart":I
    .restart local v5    # "nend":I
    :goto_124
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v12, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v9, v12, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    .line 762
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget v12, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v9, v12, v10}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v9

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    .line 763
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v12, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v9, v12, v11}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v9

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    .line 764
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    iget v12, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v9, v12, v6}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v9

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    .line 765
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    iget v12, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget v13, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    invoke-static {v9, v12, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v9

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    .line 766
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-direct {p0, v9}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    .line 767
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v9, v2

    iput v9, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 768
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    add-int/2addr v9, v2

    iput v9, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 772
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v9

    mul-int/2addr v9, v0

    add-int/2addr v9, v2

    .line 773
    .local v9, "sizeOfMax":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    array-length v0, v0

    if-ge v0, v9, :cond_176

    .line 774
    new-array v0, v9, [I

    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    .line 777
    :cond_176
    if-eqz p1, :cond_17e

    .line 778
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 779
    invoke-direct {p0, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 781
    :cond_17e
    return-void
.end method

.method private final greylist-max-o siftDown(I[Ljava/lang/Object;I[I[I)V
    .registers 11
    .param p1, "index"    # I
    .param p3, "size"    # I
    .param p4, "priority"    # [I
    .param p5, "insertionOrder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I[TT;I[I[I)V"
        }
    .end annotation

    .line 1110
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 1111
    .local v0, "left":I
    :goto_4
    if-ge v0, p3, :cond_39

    .line 1112
    add-int/lit8 v1, p3, -0x1

    if-ge v0, v1, :cond_14

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v0, v1, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v1

    if-gez v1, :cond_14

    .line 1113
    add-int/lit8 v0, v0, 0x1

    .line 1115
    :cond_14
    invoke-direct {p0, p1, v0, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    move-result v1

    if-ltz v1, :cond_1b

    .line 1116
    goto :goto_39

    .line 1119
    :cond_1b
    aget-object v1, p2, p1

    .line 1120
    .local v1, "tmpSpan":Ljava/lang/Object;, "TT;"
    aget-object v2, p2, v0

    aput-object v2, p2, p1

    .line 1121
    aput-object v1, p2, v0

    .line 1123
    aget v2, p4, p1

    .line 1124
    .local v2, "tmpPriority":I
    aget v3, p4, v0

    aput v3, p4, p1

    .line 1125
    aput v2, p4, v0

    .line 1127
    aget v3, p5, p1

    .line 1128
    .local v3, "tmpOrder":I
    aget v4, p5, v0

    aput v4, p5, p1

    .line 1129
    aput v3, p5, v0

    .line 1131
    move p1, v0

    .line 1132
    mul-int/lit8 v4, p1, 0x2

    add-int/lit8 v0, v4, 0x1

    .line 1133
    .end local v1    # "tmpSpan":Ljava/lang/Object;, "TT;"
    .end local v2    # "tmpPriority":I
    .end local v3    # "tmpOrder":I
    goto :goto_4

    .line 1134
    :cond_39
    :goto_39
    return-void
.end method

.method private final greylist-max-o sort([Ljava/lang/Object;[I[I)V
    .registers 14
    .param p2, "priority"    # [I
    .param p3, "insertionOrder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I[I)V"
        }
    .end annotation

    .line 1076
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v3, p1

    .line 1077
    .local v3, "size":I
    div-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_12

    .line 1078
    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    .end local p2    # "priority":[I
    .end local p3    # "insertionOrder":[I
    .local v2, "array":[Ljava/lang/Object;, "[TT;"
    .local v4, "priority":[I
    .local v5, "insertionOrder":[I
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    .line 1077
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .end local v2    # "array":[Ljava/lang/Object;, "[TT;"
    .end local v4    # "priority":[I
    .end local v5    # "insertionOrder":[I
    .restart local p1    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local p2    # "priority":[I
    .restart local p3    # "insertionOrder":[I
    :cond_12
    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    .line 1081
    .end local v1    # "i":I
    .end local p1    # "array":[Ljava/lang/Object;, "[TT;"
    .end local p2    # "priority":[I
    .end local p3    # "insertionOrder":[I
    .restart local v2    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local v4    # "priority":[I
    .restart local v5    # "insertionOrder":[I
    add-int/lit8 p1, v3, -0x1

    move v7, p1

    .local v7, "i":I
    :goto_18
    if-lez v7, :cond_40

    .line 1082
    const/4 p1, 0x0

    aget-object p2, v2, p1

    .line 1083
    .local p2, "tmpSpan":Ljava/lang/Object;, "TT;"
    aget-object p3, v2, v7

    aput-object p3, v2, p1

    .line 1084
    aput-object p2, v2, v7

    .line 1086
    aget p3, v4, p1

    .line 1087
    .local p3, "tmpPriority":I
    aget v0, v4, v7

    aput v0, v4, p1

    .line 1088
    aput p3, v4, v7

    .line 1090
    aget v0, v5, p1

    .line 1091
    .local v0, "tmpOrder":I
    aget v1, v5, v7

    aput v1, v5, p1

    .line 1092
    aput v0, v5, v7

    .line 1094
    move-object v9, v5

    .end local v5    # "insertionOrder":[I
    .local v9, "insertionOrder":[I
    const/4 v5, 0x0

    move-object v6, v2

    move-object v8, v4

    move-object v4, p0

    .end local v2    # "array":[Ljava/lang/Object;, "[TT;"
    .end local v4    # "priority":[I
    .local v6, "array":[Ljava/lang/Object;, "[TT;"
    .local v8, "priority":[I
    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    .line 1081
    move-object v4, v8

    move-object v5, v9

    .end local v0    # "tmpOrder":I
    .end local v6    # "array":[Ljava/lang/Object;, "[TT;"
    .end local v8    # "priority":[I
    .end local v9    # "insertionOrder":[I
    .end local p2    # "tmpSpan":Ljava/lang/Object;, "TT;"
    .end local p3    # "tmpPriority":I
    .restart local v2    # "array":[Ljava/lang/Object;, "[TT;"
    .restart local v4    # "priority":[I
    .restart local v5    # "insertionOrder":[I
    add-int/lit8 v7, v7, -0x1

    goto :goto_18

    .line 1096
    .end local v7    # "i":I
    :cond_40
    return-void
.end method

.method private greylist-max-o treeRoot()I
    .registers 2

    .line 1686
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private greylist-max-o updatedIntervalBound(IIIIZZ)I
    .registers 9
    .param p1, "offset"    # I
    .param p2, "start"    # I
    .param p3, "nbNewChars"    # I
    .param p4, "flag"    # I
    .param p5, "atEnd"    # Z
    .param p6, "textIsRemoved"    # Z

    .line 447
    if-lt p1, p2, :cond_2d

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2d

    .line 448
    const/4 v0, 0x2

    if-ne p4, v0, :cond_16

    .line 453
    if-nez p6, :cond_10

    if-le p1, p2, :cond_2d

    .line 454
    :cond_10
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    .line 457
    :cond_16
    const/4 v0, 0x3

    if-ne p4, v0, :cond_21

    .line 458
    if-eqz p5, :cond_2d

    .line 459
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v0, v1

    return v0

    .line 465
    :cond_21
    if-nez p6, :cond_2c

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v0, p3

    if-ge p1, v0, :cond_29

    goto :goto_2c

    .line 469
    :cond_29
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    return v0

    .line 466
    :cond_2c
    :goto_2c
    return p2

    .line 474
    :cond_2d
    return p1
.end method

.method public static whitelist valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 2
    .param p0, "source"    # Ljava/lang/CharSequence;

    .line 111
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_8

    .line 112
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    return-object v0

    .line 114
    :cond_8
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist append(C)Landroid/text/Editable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist append(C)Landroid/text/SpannableStringBuilder;
    .registers 3
    .param p1, "text"    # C

    .line 298
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 271
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 272
    .local v1, "length":I
    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v2, v1

    move-object v0, p0

    move-object v3, p1

    .end local p1    # "text":Ljava/lang/CharSequence;
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 292
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 293
    .local v1, "length":I
    move v2, v1

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .local v3, "text":Ljava/lang/CharSequence;
    .local v4, "start":I
    .local v5, "end":I
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .line 284
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 285
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 286
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 287
    return-object p0
.end method

.method public bridge synthetic whitelist test-api append(C)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api charAt(I)C
    .registers 6
    .param p1, "where"    # I

    .line 122
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 123
    .local v0, "len":I
    const-string v1, "charAt: "

    if-ltz p1, :cond_3c

    .line 125
    if-ge p1, v0, :cond_1b

    .line 129
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_16

    .line 130
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    return v1

    .line 132
    :cond_16
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    return v1

    .line 126
    :cond_1b
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " >= length "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_3c
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " < 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist clear()V
    .registers 7

    .line 242
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-string v3, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 243
    iput v1, v0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 244
    return-void
.end method

.method public whitelist clearSpans()V
    .registers 7

    .line 248
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_2d

    .line 249
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 250
    .local v1, "what":Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v2, v0

    .line 251
    .local v2, "ostart":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v3, v0

    .line 253
    .local v3, "oend":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_19

    .line 254
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    .line 255
    :cond_19
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_20

    .line 256
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    .line 258
    :cond_20
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    .line 259
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    .line 261
    invoke-direct {p0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 248
    .end local v1    # "what":Ljava/lang/Object;
    .end local v2    # "ostart":I
    .end local v3    # "oend":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 263
    .end local v0    # "i":I
    :cond_2d
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_36

    .line 264
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 266
    :cond_36
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    .line 267
    return-void
.end method

.method public bridge synthetic whitelist delete(II)Landroid/text/Editable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist delete(II)Landroid/text/SpannableStringBuilder;
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 232
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    .end local p1    # "start":I
    .end local p2    # "end":I
    .local v1, "start":I
    .local v2, "end":I
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 234
    .local p1, "ret":Landroid/text/SpannableStringBuilder;
    iget p2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    if-le p2, v3, :cond_1c

    .line 235
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-direct {p0, p2}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    .line 237
    :cond_1c
    return-object p1
.end method

.method public greylist-max-o drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .registers 23
    .param p1, "c"    # Landroid/graphics/BaseCanvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    .line 1423
    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v8, p3

    const-string v1, "drawText"

    invoke-direct {v0, v1, v3, v8}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1425
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v8, v1, :cond_1f

    .line 1426
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v4, v8, v3

    move-object/from16 v1, p1

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_52

    .line 1427
    :cond_1f
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v3, v1, :cond_37

    .line 1428
    iget-object v10, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v11, v3, v1

    sub-int v12, v8, v3

    move-object/from16 v9, p1

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_52

    .line 1430
    :cond_37
    sub-int v1, v8, v3

    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v10

    .line 1432
    .local v10, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v8, v10, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1433
    const/4 v11, 0x0

    sub-int v12, v8, v3

    move-object/from16 v9, p1

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    invoke-virtual/range {v9 .. v15}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 1434
    invoke-static {v10}, Landroid/text/TextUtils;->recycle([C)V

    .line 1436
    .end local v10    # "buf":[C
    :goto_52
    return-void
.end method

.method public greylist-max-o drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .registers 33
    .param p1, "c"    # Landroid/graphics/BaseCanvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "p"    # Landroid/graphics/Paint;

    .line 1446
    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v11, p3

    move/from16 v12, p5

    const-string v1, "drawTextRun"

    invoke-direct {v0, v1, v3, v11}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1448
    sub-int v18, v12, p4

    .line 1449
    .local v18, "contextLen":I
    sub-int v16, v11, v3

    .line 1450
    .local v16, "len":I
    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt v12, v1, :cond_2b

    .line 1451
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v1, p1

    move/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v4, v16

    move/from16 v6, v18

    .end local v16    # "len":I
    .end local v18    # "contextLen":I
    .local v4, "len":I
    .local v6, "contextLen":I
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .end local v4    # "len":I
    .end local v6    # "contextLen":I
    .restart local v16    # "len":I
    .restart local v18    # "contextLen":I
    goto :goto_65

    .line 1452
    :cond_2b
    move/from16 v5, p4

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt v5, v1, :cond_49

    .line 1453
    iget-object v14, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v15, p2, v1

    iget v1, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v17, v5, v1

    move-object/from16 v13, p1

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    move-object/from16 v22, p9

    invoke-virtual/range {v13 .. v22}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_65

    .line 1456
    :cond_49
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v14

    .line 1457
    .local v14, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {v0, v5, v12, v14, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1458
    sub-int v15, p2, v5

    const/16 v17, 0x0

    move-object/from16 v13, p1

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    move-object/from16 v22, p9

    invoke-virtual/range {v13 .. v22}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1459
    invoke-static {v14}, Landroid/text/TextUtils;->recycle([C)V

    .line 1461
    .end local v14    # "buf":[C
    :goto_65
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 1613
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_86

    .line 1614
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 1615
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 1617
    .local v0, "other":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 1618
    .local v2, "otherSpans":[Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1619
    .local v3, "thisSpans":[Ljava/lang/Object;
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    array-length v5, v2

    if-ne v4, v5, :cond_86

    .line 1620
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v4, v5, :cond_84

    .line 1621
    aget-object v5, v3, v4

    .line 1622
    .local v5, "thisSpan":Ljava/lang/Object;
    aget-object v6, v2, v4

    .line 1623
    .local v6, "otherSpan":Ljava/lang/Object;
    if-ne v5, p0, :cond_5b

    .line 1624
    if-ne v0, v6, :cond_5a

    .line 1625
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_5a

    .line 1626
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_5a

    .line 1627
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, v8, :cond_80

    .line 1628
    :cond_5a
    return v1

    .line 1630
    :cond_5b
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 1631
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_83

    .line 1632
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_83

    .line 1633
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, v8, :cond_80

    goto :goto_83

    .line 1620
    .end local v5    # "thisSpan":Ljava/lang/Object;
    .end local v6    # "otherSpan":Ljava/lang/Object;
    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 1634
    .restart local v5    # "thisSpan":Ljava/lang/Object;
    .restart local v6    # "otherSpan":Ljava/lang/Object;
    :cond_83
    :goto_83
    return v1

    .line 1637
    .end local v4    # "i":I
    .end local v5    # "thisSpan":Ljava/lang/Object;
    .end local v6    # "otherSpan":Ljava/lang/Object;
    :cond_84
    const/4 v1, 0x1

    return v1

    .line 1640
    .end local v0    # "other":Landroid/text/Spanned;
    .end local v2    # "otherSpans":[Ljava/lang/Object;
    .end local v3    # "thisSpans":[Ljava/lang/Object;
    :cond_86
    return v1
.end method

.method public whitelist getChars(II[CI)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .line 1207
    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1209
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_11

    .line 1210
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    .line 1211
    :cond_11
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_20

    .line 1212
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    .line 1214
    :cond_20
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1215
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1219
    :goto_3a
    return-void
.end method

.method public whitelist getFilters()[Landroid/text/InputFilter;
    .registers 2

    .line 1607
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .registers 5
    .param p1, "what"    # Ljava/lang/Object;

    .line 829
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 830
    :cond_6
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 831
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_11

    goto :goto_1d

    :cond_11
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    :goto_1d
    return v1
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .registers 5
    .param p1, "what"    # Ljava/lang/Object;

    .line 839
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 840
    :cond_6
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 841
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_11

    goto :goto_19

    :cond_11
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    :goto_19
    return v1
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .registers 5
    .param p1, "what"    # Ljava/lang/Object;

    .line 819
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 820
    :cond_6
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 821
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_11

    goto :goto_1d

    :cond_11
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v1, v1, v2

    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    move-result v1

    :goto_1d
    return v1
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 851
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-r getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;
    .registers 16
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p4, "sortByInsertionOrder"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;Z)[TT;"
        }
    .end annotation

    .line 871
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p3, :cond_9

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 872
    :cond_9
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v1, :cond_12

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 873
    :cond_12
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v1

    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    move-result v10

    .line 874
    .local v10, "count":I
    if-nez v10, :cond_21

    .line 875
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 879
    :cond_21
    invoke-static {p3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/Object;

    .line 880
    .local v5, "ret":[Ljava/lang/Object;, "[TT;"
    if-eqz p4, :cond_2f

    invoke-static {v10}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v1

    goto :goto_31

    :cond_2f
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    :goto_31
    move-object v6, v1

    .line 881
    .local v6, "prioSortBuffer":[I
    if-eqz p4, :cond_39

    invoke-static {v10}, Landroid/text/SpannableStringBuilder;->obtain(I)[I

    move-result-object v1

    goto :goto_3b

    :cond_39
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    :goto_3b
    move-object v7, v1

    .line 882
    .local v7, "orderSortBuffer":[I
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v4

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    .line 884
    if-eqz p4, :cond_54

    .line 885
    invoke-direct {p0, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->sort([Ljava/lang/Object;[I[I)V

    .line 886
    invoke-static {v6}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    .line 887
    invoke-static {v7}, Landroid/text/SpannableStringBuilder;->recycle([I)V

    .line 889
    :cond_54
    return-object v5
.end method

.method public greylist-max-o getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .registers 19
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "isRtl"    # Z
    .param p6, "advances"    # [F
    .param p7, "advancesPos"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    .line 1520
    move v0, p4

    sub-int v6, v0, p3

    .line 1521
    .local v6, "contextLen":I
    sub-int v4, p2, p1

    .line 1523
    .local v4, "len":I
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v1, :cond_19

    .line 1524
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move v3, p1

    move v5, p3

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v1, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    .local v2, "ret":F
    goto :goto_4d

    .line 1526
    .end local v2    # "ret":F
    :cond_19
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_33

    .line 1527
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v3, p1, v1

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p3, v1

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v1, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    .restart local v2    # "ret":F
    goto :goto_4d

    .line 1530
    .end local v2    # "ret":F
    :cond_33
    invoke-static {v6}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    .line 1531
    .local v2, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p3, p4, v2, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1532
    sub-int v3, p1, p3

    const/4 v5, 0x0

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v1, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v3

    .line 1534
    .local v3, "ret":F
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    move v2, v3

    .line 1537
    .end local v3    # "ret":F
    .local v2, "ret":F
    :goto_4d
    return v2
.end method

.method public whitelist getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .registers 15
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "dir"    # I
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1568
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    move v4, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    .end local p1    # "contextStart":I
    .end local p2    # "contextEnd":I
    .end local p4    # "offset":I
    .end local p5    # "cursorOpt":I
    .end local p6    # "p":Landroid/graphics/Paint;
    .local v2, "contextStart":I
    .local v3, "contextEnd":I
    .local v5, "offset":I
    .local v6, "cursorOpt":I
    .local v7, "p":Landroid/graphics/Paint;
    invoke-virtual/range {v1 .. v7}, Landroid/text/SpannableStringBuilder;->getTextRunCursor(IIZIILandroid/graphics/Paint;)I

    move-result p1

    return p1
.end method

.method public blacklist getTextRunCursor(IIZIILandroid/graphics/Paint;)I
    .registers 14
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "isRtl"    # Z
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;

    .line 1578
    sub-int v3, p2, p1

    .line 1579
    .local v3, "contextLen":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_13

    .line 1580
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v0, p6

    .end local p1    # "contextStart":I
    .end local p3    # "isRtl":Z
    .end local p4    # "offset":I
    .end local p5    # "cursorOpt":I
    .end local p6    # "p":Landroid/graphics/Paint;
    .local v0, "p":Landroid/graphics/Paint;
    .local v2, "contextStart":I
    .local v4, "isRtl":Z
    .local v5, "offset":I
    .local v6, "cursorOpt":I
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p1

    move p3, v2

    .end local v2    # "contextStart":I
    .end local v5    # "offset":I
    .local p1, "ret":I
    .local p3, "contextStart":I
    .restart local p4    # "offset":I
    goto :goto_40

    .line 1582
    .end local v0    # "p":Landroid/graphics/Paint;
    .end local v4    # "isRtl":Z
    .end local v6    # "cursorOpt":I
    .local p1, "contextStart":I
    .local p3, "isRtl":Z
    .restart local p5    # "cursorOpt":I
    .restart local p6    # "p":Landroid/graphics/Paint;
    :cond_13
    move v4, p3

    move v6, p5

    move-object v0, p6

    move p3, p1

    .end local p1    # "contextStart":I
    .end local p5    # "cursorOpt":I
    .end local p6    # "p":Landroid/graphics/Paint;
    .restart local v0    # "p":Landroid/graphics/Paint;
    .restart local v4    # "isRtl":Z
    .restart local v6    # "cursorOpt":I
    .local p3, "contextStart":I
    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p3, p1, :cond_2d

    .line 1583
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p3, p1

    iget p1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p1

    iget p5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr p1, p5

    .local p1, "ret":I
    goto :goto_40

    .line 1586
    .end local p1    # "ret":I
    :cond_2d
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 1587
    .local v1, "buf":[C
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p2, v1, p1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1588
    const/4 v2, 0x0

    sub-int v5, p4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result p1

    add-int/2addr p1, p3

    .line 1590
    .restart local p1    # "ret":I
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 1593
    .end local v1    # "buf":[C
    :goto_40
    return p1
.end method

.method public whitelist getTextWatcherDepth()I
    .registers 2

    .line 1251
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    return v0
.end method

.method public greylist-max-o getTextWidths(II[FLandroid/graphics/Paint;)I
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    .line 1492
    const-string v0, "getTextWidths"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1496
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_12

    .line 1497
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-virtual {p4, v0, p1, v1, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v0

    .local v0, "ret":I
    goto :goto_36

    .line 1498
    .end local v0    # "ret":I
    :cond_12
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_22

    .line 1499
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v0

    .restart local v0    # "ret":I
    goto :goto_36

    .line 1501
    .end local v0    # "ret":I
    :cond_22
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1503
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1504
    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v1, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1505
    .local v1, "ret":I
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    move v0, v1

    .line 1508
    .end local v1    # "ret":I
    .local v0, "ret":I
    :goto_36
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1646
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1647
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/2addr v1, v2

    .line 1648
    .end local v0    # "hash":I
    .local v1, "hash":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v0, v2, :cond_39

    .line 1649
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 1650
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_20

    .line 1651
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 1653
    :cond_20
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1654
    .end local v1    # "hash":I
    .local v3, "hash":I
    mul-int/lit8 v1, v3, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    .line 1655
    .end local v3    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v1, v3, v4

    .line 1648
    .end local v2    # "span":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1657
    .end local v0    # "i":I
    :cond_39
    return v1
.end method

.method public bridge synthetic whitelist insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 9
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    .line 227
    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v2, p1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    .end local p1    # "where":I
    .end local p2    # "tb":Ljava/lang/CharSequence;
    .local v1, "where":I
    .local v3, "tb":Ljava/lang/CharSequence;
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 11
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 222
    move v2, p1

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "where":I
    .end local p2    # "tb":Ljava/lang/CharSequence;
    .end local p3    # "start":I
    .end local p4    # "end":I
    .local v1, "where":I
    .local v3, "tb":Ljava/lang/CharSequence;
    .local v4, "start":I
    .local v5, "end":I
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api length()I
    .registers 3

    .line 139
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public greylist-max-o measureText(IILandroid/graphics/Paint;)F
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    .line 1468
    const-string v0, "measureText"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 1472
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_12

    .line 1473
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-virtual {p3, v0, p1, v1}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    .local v0, "ret":F
    goto :goto_36

    .line 1474
    .end local v0    # "ret":F
    :cond_12
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_22

    .line 1475
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    .restart local v0    # "ret":F
    goto :goto_36

    .line 1477
    .end local v0    # "ret":F
    :cond_22
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1479
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1480
    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1481
    .local v1, "ret":F
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    move v0, v1

    .line 1484
    .end local v1    # "ret":F
    .local v0, "ret":F
    :goto_36
    return v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .registers 5
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .line 1164
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-nez v0, :cond_5

    return p2

    .line 1165
    :cond_5
    if-nez p3, :cond_9

    .line 1166
    const-class p3, Ljava/lang/Object;

    .line 1168
    :cond_9
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public whitelist removeSpan(Ljava/lang/Object;)V
    .registers 3
    .param p1, "what"    # Ljava/lang/Object;

    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;I)V

    .line 792
    return-void
.end method

.method public greylist-max-o removeSpan(Ljava/lang/Object;I)V
    .registers 5
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .line 800
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_5

    return-void

    .line 801
    :cond_5
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 802
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_16

    .line 803
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1, p2}, Landroid/text/SpannableStringBuilder;->removeSpan(II)V

    .line 805
    :cond_16
    return-void
.end method

.method public bridge synthetic whitelist replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 38
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    .line 509
    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "tb":Ljava/lang/CharSequence;
    .local v1, "start":I
    .local v2, "end":I
    .local v3, "tb":Ljava/lang/CharSequence;
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public whitelist replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .registers 29
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    .line 515
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string/jumbo v3, "replace"

    invoke-direct {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    .line 517
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v7, v3

    .line 518
    .local v7, "filtercount":I
    const/4 v3, 0x0

    move/from16 v4, p4

    move/from16 v5, p5

    move v8, v3

    move-object/from16 v3, p3

    .end local p3    # "tb":Ljava/lang/CharSequence;
    .end local p4    # "tbstart":I
    .end local p5    # "tbend":I
    .local v3, "tb":Ljava/lang/CharSequence;
    .local v4, "tbstart":I
    .local v5, "tbend":I
    .local v8, "i":I
    :goto_17
    if-ge v8, v7, :cond_4d

    .line 519
    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v6, v6, v8

    move/from16 v22, v4

    move-object v4, v0

    move-object v0, v6

    move v6, v2

    move/from16 v2, v22

    move/from16 v22, v5

    move v5, v1

    move-object v1, v3

    move/from16 v3, v22

    .end local v4    # "tbstart":I
    .end local v5    # "tbend":I
    .local v1, "tb":Ljava/lang/CharSequence;
    .local v2, "tbstart":I
    .local v3, "tbend":I
    invoke-interface/range {v0 .. v6}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 521
    move/from16 v22, v5

    move-object v5, v1

    move/from16 v1, v22

    .end local v1    # "tb":Ljava/lang/CharSequence;
    .local v0, "repl":Ljava/lang/CharSequence;
    .local v5, "tb":Ljava/lang/CharSequence;
    if-eqz v0, :cond_41

    .line 522
    move-object v5, v0

    .line 523
    const/4 v2, 0x0

    .line 524
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object/from16 v22, v5

    move v5, v3

    move-object/from16 v3, v22

    goto :goto_46

    .line 521
    :cond_41
    move-object/from16 v22, v5

    move v5, v3

    move-object/from16 v3, v22

    .line 518
    .end local v0    # "repl":Ljava/lang/CharSequence;
    .local v3, "tb":Ljava/lang/CharSequence;
    .local v5, "tbend":I
    :goto_46
    add-int/lit8 v8, v8, 0x1

    move-object v0, v4

    move v4, v2

    move/from16 v2, p2

    goto :goto_17

    .end local v2    # "tbstart":I
    .restart local v4    # "tbstart":I
    :cond_4d
    move v2, v5

    move-object v5, v3

    move v3, v2

    move v2, v4

    move-object v4, v0

    .line 528
    .end local v4    # "tbstart":I
    .end local v8    # "i":I
    .restart local v2    # "tbstart":I
    .local v3, "tbend":I
    .local v5, "tb":Ljava/lang/CharSequence;
    sub-int v8, p2, v1

    .line 529
    .local v8, "origLen":I
    sub-int v9, v3, v2

    .line 531
    .local v9, "newLen":I
    if-nez v8, :cond_61

    if-nez v9, :cond_61

    invoke-static {v5, v2}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-nez v0, :cond_61

    .line 534
    return-object v4

    .line 537
    :cond_61
    add-int v0, v1, v8

    const-class v6, Landroid/text/TextWatcher;

    invoke-virtual {v4, v1, v0, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Landroid/text/TextWatcher;

    .line 538
    .local v10, "textWatchers":[Landroid/text/TextWatcher;
    invoke-direct {v4, v10, v1, v8, v9}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    .line 543
    if-eqz v8, :cond_75

    if-eqz v9, :cond_75

    const/4 v0, 0x1

    goto :goto_76

    :cond_75
    const/4 v0, 0x0

    :goto_76
    move v11, v0

    .line 544
    .local v11, "adjustSelection":Z
    const/4 v0, 0x0

    .line 545
    .local v0, "selectionStart":I
    const/4 v6, 0x0

    .line 546
    .local v6, "selectionEnd":I
    if-eqz v11, :cond_86

    .line 547
    invoke-static {v4}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    .line 548
    invoke-static {v4}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v6

    move v12, v6

    move v6, v0

    goto :goto_88

    .line 546
    :cond_86
    move v12, v6

    move v6, v0

    .line 551
    .end local v0    # "selectionStart":I
    .local v6, "selectionStart":I
    .local v12, "selectionEnd":I
    :goto_88
    move-object v0, v5

    move v5, v3

    move-object v3, v0

    move-object v0, v4

    move v4, v2

    move/from16 v2, p2

    .end local v2    # "tbstart":I
    .local v3, "tb":Ljava/lang/CharSequence;
    .restart local v4    # "tbstart":I
    .local v5, "tbend":I
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    .line 553
    move v13, v1

    move v14, v2

    move-object/from16 v17, v3

    move/from16 v16, v4

    move v15, v5

    .end local v3    # "tb":Ljava/lang/CharSequence;
    .end local v4    # "tbstart":I
    .end local v5    # "tbend":I
    .local v15, "tbend":I
    .local v16, "tbstart":I
    .local v17, "tb":Ljava/lang/CharSequence;
    if-eqz v11, :cond_fb

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "changed":Z
    if-le v6, v13, :cond_c6

    if-ge v6, v14, :cond_c6

    .line 556
    sub-int v1, v6, v13

    int-to-long v1, v1

    .line 557
    .local v1, "diff":J
    int-to-long v3, v9

    mul-long/2addr v3, v1

    move/from16 p3, v0

    move-wide/from16 p4, v1

    .end local v0    # "changed":Z
    .end local v1    # "diff":J
    .local p3, "changed":Z
    .local p4, "diff":J
    int-to-long v0, v8

    div-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v18

    .line 558
    .local v18, "offset":I
    add-int v3, v13, v18

    .line 560
    .end local v6    # "selectionStart":I
    .local v3, "selectionStart":I
    const/16 v19, 0x1

    .line 561
    .end local p3    # "changed":Z
    .local v19, "changed":Z
    sget-object v2, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v5, 0x22

    const/4 v6, 0x1

    const/4 v1, 0x0

    move v4, v3

    move-object/from16 v0, p0

    move-wide/from16 v20, p4

    .end local p4    # "diff":J
    .local v20, "diff":J
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    move/from16 v18, v3

    move/from16 v0, v19

    goto :goto_cc

    .line 555
    .end local v3    # "selectionStart":I
    .end local v18    # "offset":I
    .end local v19    # "changed":Z
    .end local v20    # "diff":J
    .restart local v0    # "changed":Z
    .restart local v6    # "selectionStart":I
    :cond_c6
    move/from16 p3, v0

    .line 564
    .end local v0    # "changed":Z
    .restart local p3    # "changed":Z
    move/from16 v0, p3

    move/from16 v18, v6

    .end local v6    # "selectionStart":I
    .end local p3    # "changed":Z
    .restart local v0    # "changed":Z
    .local v18, "selectionStart":I
    :goto_cc
    if-le v12, v13, :cond_f1

    if-ge v12, v14, :cond_f1

    .line 565
    sub-int v1, v12, v13

    int-to-long v1, v1

    .line 566
    .restart local v1    # "diff":J
    int-to-long v3, v9

    mul-long/2addr v3, v1

    int-to-long v5, v8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->toIntExact(J)I

    move-result v19

    .line 567
    .local v19, "offset":I
    add-int v3, v13, v19

    .line 569
    .end local v12    # "selectionEnd":I
    .local v3, "selectionEnd":I
    const/4 v12, 0x1

    .line 570
    .end local v0    # "changed":Z
    .local v12, "changed":Z
    move-wide v0, v1

    .end local v1    # "diff":J
    .local v0, "diff":J
    sget-object v2, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v5, 0x22

    const/4 v6, 0x1

    move-wide/from16 v20, v0

    .end local v0    # "diff":J
    .restart local v20    # "diff":J
    const/4 v1, 0x0

    move v4, v3

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    move-object v4, v0

    move v0, v12

    move v12, v3

    goto :goto_f3

    .line 564
    .end local v3    # "selectionEnd":I
    .end local v19    # "offset":I
    .end local v20    # "diff":J
    .local v0, "changed":Z
    .local v12, "selectionEnd":I
    :cond_f1
    move-object/from16 v4, p0

    .line 573
    :goto_f3
    if-eqz v0, :cond_f8

    .line 574
    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    .line 578
    .end local v0    # "changed":Z
    :cond_f8
    move/from16 v6, v18

    goto :goto_fd

    .line 553
    .end local v18    # "selectionStart":I
    .restart local v6    # "selectionStart":I
    :cond_fb
    move-object/from16 v4, p0

    .line 578
    :goto_fd
    invoke-direct {v4, v10, v13, v8, v9}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    .line 579
    invoke-direct {v4, v10}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    .line 582
    sub-int v0, v9, v8

    invoke-direct {v4, v13, v14, v0}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    .line 584
    return-object v4
.end method

.method public whitelist setFilters([Landroid/text/InputFilter;)V
    .registers 3
    .param p1, "filters"    # [Landroid/text/InputFilter;

    .line 1598
    if-eqz p1, :cond_5

    .line 1602
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    .line 1603
    return-void

    .line 1599
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist setSpan(Ljava/lang/Object;III)V
    .registers 12
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 678
    const/4 v1, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "what":Ljava/lang/Object;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .end local p4    # "flags":I
    .local v2, "what":Ljava/lang/Object;
    .local v3, "start":I
    .local v4, "end":I
    .local v5, "flags":I
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;IIIZ)V

    .line 679
    return-void
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1199
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public greylist substring(II)Ljava/lang/String;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1240
    sub-int v0, p2, p1

    new-array v0, v0, [C

    .line 1241
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1242
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1226
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 1227
    .local v0, "len":I
    new-array v1, v0, [C

    .line 1229
    .local v1, "buf":[C
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    .line 1230
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
