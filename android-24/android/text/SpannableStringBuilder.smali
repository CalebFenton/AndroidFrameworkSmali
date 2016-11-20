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
.field private static final END_MASK:I = 0xf

.field private static final MARK:I = 0x1

.field private static final NO_FILTERS:[Landroid/text/InputFilter;

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final SPAN_ADDED:I = 0x800

.field private static final SPAN_END_AT_END:I = 0x8000

.field private static final SPAN_END_AT_START:I = 0x4000

.field private static final SPAN_START_AT_END:I = 0x2000

.field private static final SPAN_START_AT_START:I = 0x1000

.field private static final SPAN_START_END_MASK:I = 0xf000

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SpannableStringBuilder"


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mIndexOfSpan:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLowWaterMark:I

.field private mOrderSortBuffer:[I

.field private mPrioSortBuffer:[I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanInsertCount:I

.field private mSpanMax:[I

.field private mSpanOrder:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C

.field private mTextWatcherDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1704
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Landroid/text/InputFilter;

    #@3
    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    #@5
    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@6
    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 50
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    #@8
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1705
    sget-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    #@6
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    #@8
    .line 58
    sub-int v9, p3, p2

    #@a
    .line 60
    .local v9, "srclen":I
    if-gez v9, :cond_0

    #@c
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 62
    :cond_0
    invoke-static {v9}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    #@15
    move-result v0

    #@16
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@1c
    .line 63
    iput v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1e
    .line 64
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@20
    array-length v0, v0

    #@21
    sub-int/2addr v0, v9

    #@22
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@24
    .line 66
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@26
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@29
    .line 68
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@2b
    .line 69
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    #@2d
    .line 70
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@2f
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@31
    .line 71
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@33
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@35
    .line 72
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@37
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@39
    .line 73
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@3b
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@3d
    .line 74
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@3f
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@41
    .line 75
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@43
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    #@45
    .line 76
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@47
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mPrioSortBuffer:[I

    #@49
    .line 77
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@4b
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mOrderSortBuffer:[I

    #@4d
    .line 79
    instance-of v0, p1, Landroid/text/Spanned;

    #@4f
    if-eqz v0, :cond_7

    #@51
    move-object v7, p1

    #@52
    .line 80
    check-cast v7, Landroid/text/Spanned;

    #@54
    .line 81
    .local v7, "sp":Landroid/text/Spanned;
    const-class v0, Ljava/lang/Object;

    #@56
    invoke-interface {v7, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@59
    move-result-object v8

    #@5a
    .line 83
    .local v8, "spans":[Ljava/lang/Object;
    const/4 v6, 0x0

    #@5b
    .local v6, "i":I
    :goto_0
    array-length v0, v8

    #@5c
    if-ge v6, v0, :cond_6

    #@5e
    .line 84
    aget-object v0, v8, v6

    #@60
    instance-of v0, v0, Landroid/text/NoCopySpan;

    #@62
    if-eqz v0, :cond_1

    #@64
    .line 83
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@66
    goto :goto_0

    #@67
    .line 88
    :cond_1
    aget-object v0, v8, v6

    #@69
    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@6c
    move-result v0

    #@6d
    sub-int v3, v0, p2

    #@6f
    .line 89
    .local v3, "st":I
    aget-object v0, v8, v6

    #@71
    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@74
    move-result v0

    #@75
    sub-int v4, v0, p2

    #@77
    .line 90
    .local v4, "en":I
    aget-object v0, v8, v6

    #@79
    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@7c
    move-result v5

    #@7d
    .line 92
    .local v5, "fl":I
    if-gez v3, :cond_2

    #@7f
    .line 93
    const/4 v3, 0x0

    #@80
    .line 94
    :cond_2
    sub-int v0, p3, p2

    #@82
    if-le v3, v0, :cond_3

    #@84
    .line 95
    sub-int v3, p3, p2

    #@86
    .line 97
    :cond_3
    if-gez v4, :cond_4

    #@88
    .line 98
    const/4 v4, 0x0

    #@89
    .line 99
    :cond_4
    sub-int v0, p3, p2

    #@8b
    if-le v4, v0, :cond_5

    #@8d
    .line 100
    sub-int v4, p3, p2

    #@8f
    .line 102
    :cond_5
    aget-object v2, v8, v6

    #@91
    move-object v0, p0

    #@92
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    #@95
    goto :goto_1

    #@96
    .line 104
    .end local v3    # "st":I
    .end local v4    # "en":I
    .end local v5    # "fl":I
    :cond_6
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@99
    .line 57
    .end local v6    # "i":I
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v8    # "spans":[Ljava/lang/Object;
    :cond_7
    return-void
.end method

.method private calcMax(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 1636
    const/4 v0, 0x0

    #@1
    .line 1637
    .local v0, "max":I
    and-int/lit8 v1, p1, 0x1

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1639
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    #@8
    move-result v1

    #@9
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    #@c
    move-result v0

    #@d
    .line 1641
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@f
    if-ge p1, v1, :cond_1

    #@11
    .line 1642
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@13
    aget v1, v1, p1

    #@15
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@18
    move-result v0

    #@19
    .line 1643
    and-int/lit8 v1, p1, 0x1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1644
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    #@20
    move-result v1

    #@21
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    #@24
    move-result v1

    #@25
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v0

    #@29
    .line 1647
    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@2b
    aput v0, v1, p1

    #@2d
    .line 1648
    return v0
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .locals 41
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "cs"    # Ljava/lang/CharSequence;
    .param p4, "csStart"    # I
    .param p5, "csEnd"    # I

    #@0
    .prologue
    .line 327
    sub-int v36, p2, p1

    #@2
    .line 328
    .local v36, "replacedLength":I
    sub-int v37, p5, p4

    #@4
    .line 329
    .local v37, "replacementLength":I
    sub-int v12, v37, v36

    #@6
    .line 331
    .local v12, "nbNewChars":I
    const/16 v27, 0x0

    #@8
    .line 332
    .local v27, "changed":Z
    move-object/from16 v0, p0

    #@a
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@c
    add-int/lit8 v33, v4, -0x1

    #@e
    .local v33, "i":I
    :goto_0
    if-ltz v33, :cond_c

    #@10
    .line 333
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@14
    aget v7, v4, v33

    #@16
    .line 334
    .local v7, "spanStart":I
    move-object/from16 v0, p0

    #@18
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1a
    if-le v7, v4, :cond_0

    #@1c
    .line 335
    move-object/from16 v0, p0

    #@1e
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@20
    sub-int/2addr v7, v4

    #@21
    .line 337
    :cond_0
    move-object/from16 v0, p0

    #@23
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@25
    aget v8, v4, v33

    #@27
    .line 338
    .local v8, "spanEnd":I
    move-object/from16 v0, p0

    #@29
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@2b
    if-le v8, v4, :cond_1

    #@2d
    .line 339
    move-object/from16 v0, p0

    #@2f
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@31
    sub-int/2addr v8, v4

    #@32
    .line 341
    :cond_1
    move-object/from16 v0, p0

    #@34
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@36
    aget v4, v4, v33

    #@38
    and-int/lit8 v4, v4, 0x33

    #@3a
    const/16 v5, 0x33

    #@3c
    if-ne v4, v5, :cond_5

    #@3e
    .line 342
    move/from16 v35, v7

    #@40
    .line 343
    .local v35, "ost":I
    move/from16 v34, v8

    #@42
    .line 344
    .local v34, "oen":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@45
    move-result v28

    #@46
    .line 346
    .local v28, "clen":I
    move/from16 v0, p1

    #@48
    if-le v7, v0, :cond_2

    #@4a
    move/from16 v0, p2

    #@4c
    if-gt v7, v0, :cond_2

    #@4e
    .line 347
    move/from16 v7, p2

    #@50
    :goto_1
    move/from16 v0, v28

    #@52
    if-ge v7, v0, :cond_2

    #@54
    .line 348
    move/from16 v0, p2

    #@56
    if-le v7, v0, :cond_8

    #@58
    add-int/lit8 v4, v7, -0x1

    #@5a
    move-object/from16 v0, p0

    #@5c
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@5f
    move-result v4

    #@60
    const/16 v5, 0xa

    #@62
    if-ne v4, v5, :cond_8

    #@64
    .line 352
    :cond_2
    move/from16 v0, p1

    #@66
    if-le v8, v0, :cond_3

    #@68
    move/from16 v0, p2

    #@6a
    if-gt v8, v0, :cond_3

    #@6c
    .line 353
    move/from16 v8, p2

    #@6e
    :goto_2
    move/from16 v0, v28

    #@70
    if-ge v8, v0, :cond_3

    #@72
    .line 354
    move/from16 v0, p2

    #@74
    if-le v8, v0, :cond_9

    #@76
    add-int/lit8 v4, v8, -0x1

    #@78
    move-object/from16 v0, p0

    #@7a
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@7d
    move-result v4

    #@7e
    const/16 v5, 0xa

    #@80
    if-ne v4, v5, :cond_9

    #@82
    .line 358
    :cond_3
    move/from16 v0, v35

    #@84
    if-ne v7, v0, :cond_4

    #@86
    move/from16 v0, v34

    #@88
    if-eq v8, v0, :cond_5

    #@8a
    .line 359
    :cond_4
    move-object/from16 v0, p0

    #@8c
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@8e
    aget-object v6, v4, v33

    #@90
    move-object/from16 v0, p0

    #@92
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@94
    aget v9, v4, v33

    #@96
    const/4 v5, 0x0

    #@97
    move-object/from16 v4, p0

    #@99
    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    #@9c
    .line 360
    const/16 v27, 0x1

    #@9e
    .line 364
    .end local v28    # "clen":I
    .end local v34    # "oen":I
    .end local v35    # "ost":I
    :cond_5
    const/16 v30, 0x0

    #@a0
    .line 365
    .local v30, "flags":I
    move/from16 v0, p1

    #@a2
    if-ne v7, v0, :cond_a

    #@a4
    const/16 v30, 0x1000

    #@a6
    .line 367
    :cond_6
    :goto_3
    move/from16 v0, p1

    #@a8
    if-ne v8, v0, :cond_b

    #@aa
    move/from16 v0, v30

    #@ac
    or-int/lit16 v0, v0, 0x4000

    #@ae
    move/from16 v30, v0

    #@b0
    .line 369
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    #@b2
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@b4
    aget v5, v4, v33

    #@b6
    or-int v5, v5, v30

    #@b8
    aput v5, v4, v33

    #@ba
    .line 332
    add-int/lit8 v33, v33, -0x1

    #@bc
    goto/16 :goto_0

    #@be
    .line 347
    .end local v30    # "flags":I
    .restart local v28    # "clen":I
    .restart local v34    # "oen":I
    .restart local v35    # "ost":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    #@c0
    goto :goto_1

    #@c1
    .line 353
    :cond_9
    add-int/lit8 v8, v8, 0x1

    #@c3
    goto :goto_2

    #@c4
    .line 366
    .end local v28    # "clen":I
    .end local v34    # "oen":I
    .end local v35    # "ost":I
    .restart local v30    # "flags":I
    :cond_a
    add-int v4, p2, v12

    #@c6
    if-ne v7, v4, :cond_6

    #@c8
    const/16 v30, 0x2000

    #@ca
    goto :goto_3

    #@cb
    .line 368
    :cond_b
    add-int v4, p2, v12

    #@cd
    if-ne v8, v4, :cond_7

    #@cf
    const v4, 0x8000

    #@d2
    or-int v30, v30, v4

    #@d4
    goto :goto_4

    #@d5
    .line 371
    .end local v7    # "spanStart":I
    .end local v8    # "spanEnd":I
    .end local v30    # "flags":I
    :cond_c
    if-eqz v27, :cond_d

    #@d7
    .line 372
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@da
    .line 375
    :cond_d
    move-object/from16 v0, p0

    #@dc
    move/from16 v1, p2

    #@de
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    #@e1
    .line 377
    move-object/from16 v0, p0

    #@e3
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@e5
    if-lt v12, v4, :cond_e

    #@e7
    .line 378
    move-object/from16 v0, p0

    #@e9
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@eb
    array-length v4, v4

    #@ec
    add-int/2addr v4, v12

    #@ed
    move-object/from16 v0, p0

    #@ef
    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@f1
    sub-int/2addr v4, v5

    #@f2
    move-object/from16 v0, p0

    #@f4
    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    #@f7
    .line 381
    :cond_e
    if-nez v37, :cond_12

    #@f9
    const/4 v15, 0x1

    #@fa
    .line 384
    .local v15, "textIsRemoved":Z
    :goto_5
    if-lez v36, :cond_10

    #@fc
    .line 385
    :cond_f
    move-object/from16 v0, p0

    #@fe
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@100
    if-lez v4, :cond_10

    #@102
    .line 386
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@105
    move-result v4

    #@106
    move-object/from16 v0, p0

    #@108
    move/from16 v1, p1

    #@10a
    move/from16 v2, p2

    #@10c
    invoke-direct {v0, v1, v2, v15, v4}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    #@10f
    move-result v4

    #@110
    .line 385
    if-nez v4, :cond_f

    #@112
    .line 392
    :cond_10
    move-object/from16 v0, p0

    #@114
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@116
    add-int/2addr v4, v12

    #@117
    move-object/from16 v0, p0

    #@119
    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@11b
    .line 393
    move-object/from16 v0, p0

    #@11d
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@11f
    sub-int/2addr v4, v12

    #@120
    move-object/from16 v0, p0

    #@122
    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@124
    .line 395
    move-object/from16 v0, p0

    #@126
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@128
    const/4 v5, 0x1

    #@129
    if-ge v4, v5, :cond_11

    #@12b
    .line 396
    new-instance v4, Ljava/lang/Exception;

    #@12d
    const-string/jumbo v5, "mGapLength < 1"

    #@130
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@133
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    #@136
    .line 398
    :cond_11
    move-object/from16 v0, p0

    #@138
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@13a
    move-object/from16 v0, p3

    #@13c
    move/from16 v1, p4

    #@13e
    move/from16 v2, p5

    #@140
    move/from16 v3, p1

    #@142
    invoke-static {v0, v1, v2, v4, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@145
    .line 400
    if-lez v36, :cond_15

    #@147
    .line 402
    move-object/from16 v0, p0

    #@149
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@14b
    move-object/from16 v0, p0

    #@14d
    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@14f
    add-int/2addr v4, v5

    #@150
    move-object/from16 v0, p0

    #@152
    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@154
    array-length v5, v5

    #@155
    if-ne v4, v5, :cond_13

    #@157
    const/4 v14, 0x1

    #@158
    .line 404
    .local v14, "atEnd":Z
    :goto_6
    const/16 v33, 0x0

    #@15a
    :goto_7
    move-object/from16 v0, p0

    #@15c
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@15e
    move/from16 v0, v33

    #@160
    if-ge v0, v4, :cond_14

    #@162
    .line 405
    move-object/from16 v0, p0

    #@164
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@166
    aget v4, v4, v33

    #@168
    and-int/lit16 v4, v4, 0xf0

    #@16a
    shr-int/lit8 v13, v4, 0x4

    #@16c
    .line 406
    .local v13, "startFlag":I
    move-object/from16 v0, p0

    #@16e
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@170
    move-object/from16 v0, p0

    #@172
    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@174
    aget v10, v5, v33

    #@176
    move-object/from16 v9, p0

    #@178
    move/from16 v11, p1

    #@17a
    invoke-direct/range {v9 .. v15}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    #@17d
    move-result v5

    #@17e
    aput v5, v4, v33

    #@180
    .line 409
    move-object/from16 v0, p0

    #@182
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@184
    aget v4, v4, v33

    #@186
    and-int/lit8 v20, v4, 0xf

    #@188
    .line 410
    .local v20, "endFlag":I
    move-object/from16 v0, p0

    #@18a
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@18c
    move-object/from16 v0, p0

    #@18e
    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@190
    aget v17, v5, v33

    #@192
    move-object/from16 v16, p0

    #@194
    move/from16 v18, p1

    #@196
    move/from16 v19, v12

    #@198
    move/from16 v21, v14

    #@19a
    move/from16 v22, v15

    #@19c
    invoke-direct/range {v16 .. v22}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    #@19f
    move-result v5

    #@1a0
    aput v5, v4, v33

    #@1a2
    .line 404
    add-int/lit8 v33, v33, 0x1

    #@1a4
    goto :goto_7

    #@1a5
    .line 381
    .end local v13    # "startFlag":I
    .end local v14    # "atEnd":Z
    .end local v15    # "textIsRemoved":Z
    .end local v20    # "endFlag":I
    :cond_12
    const/4 v15, 0x0

    #@1a6
    .restart local v15    # "textIsRemoved":Z
    goto/16 :goto_5

    #@1a8
    .line 402
    :cond_13
    const/4 v14, 0x0

    #@1a9
    .restart local v14    # "atEnd":Z
    goto :goto_6

    #@1aa
    .line 414
    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@1ad
    .line 417
    .end local v14    # "atEnd":Z
    :cond_15
    move-object/from16 v0, p3

    #@1af
    instance-of v4, v0, Landroid/text/Spanned;

    #@1b1
    if-eqz v4, :cond_1b

    #@1b3
    move-object/from16 v38, p3

    #@1b5
    .line 418
    check-cast v38, Landroid/text/Spanned;

    #@1b7
    .line 419
    .local v38, "sp":Landroid/text/Spanned;
    const-class v4, Ljava/lang/Object;

    #@1b9
    move-object/from16 v0, v38

    #@1bb
    move/from16 v1, p4

    #@1bd
    move/from16 v2, p5

    #@1bf
    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1c2
    move-result-object v39

    #@1c3
    .line 421
    .local v39, "spans":[Ljava/lang/Object;
    const/16 v33, 0x0

    #@1c5
    :goto_8
    move-object/from16 v0, v39

    #@1c7
    array-length v4, v0

    #@1c8
    move/from16 v0, v33

    #@1ca
    if-ge v0, v4, :cond_1a

    #@1cc
    .line 422
    aget-object v4, v39, v33

    #@1ce
    move-object/from16 v0, v38

    #@1d0
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@1d3
    move-result v40

    #@1d4
    .line 423
    .local v40, "st":I
    aget-object v4, v39, v33

    #@1d6
    move-object/from16 v0, v38

    #@1d8
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@1db
    move-result v29

    #@1dc
    .line 425
    .local v29, "en":I
    move/from16 v0, v40

    #@1de
    move/from16 v1, p4

    #@1e0
    if-ge v0, v1, :cond_16

    #@1e2
    move/from16 v40, p4

    #@1e4
    .line 426
    :cond_16
    move/from16 v0, v29

    #@1e6
    move/from16 v1, p5

    #@1e8
    if-le v0, v1, :cond_17

    #@1ea
    move/from16 v29, p5

    #@1ec
    .line 429
    :cond_17
    aget-object v4, v39, v33

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@1f3
    move-result v4

    #@1f4
    if-gez v4, :cond_18

    #@1f6
    .line 430
    sub-int v4, v40, p4

    #@1f8
    add-int v24, v4, p1

    #@1fa
    .line 431
    .local v24, "copySpanStart":I
    sub-int v4, v29, p4

    #@1fc
    add-int v25, v4, p1

    #@1fe
    .line 432
    .local v25, "copySpanEnd":I
    aget-object v4, v39, v33

    #@200
    move-object/from16 v0, v38

    #@202
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@205
    move-result v4

    #@206
    or-int/lit16 v0, v4, 0x800

    #@208
    move/from16 v26, v0

    #@20a
    .line 434
    .local v26, "copySpanFlags":I
    move/from16 v0, v26

    #@20c
    and-int/lit16 v4, v0, 0xf0

    #@20e
    shr-int/lit8 v32, v4, 0x4

    #@210
    .line 435
    .local v32, "flagsStart":I
    and-int/lit8 v31, v26, 0xf

    #@212
    .line 437
    .local v31, "flagsEnd":I
    move-object/from16 v0, p0

    #@214
    move/from16 v1, v24

    #@216
    move/from16 v2, v32

    #@218
    invoke-direct {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->isInvalidParagraphStart(II)Z

    #@21b
    move-result v4

    #@21c
    if-nez v4, :cond_18

    #@21e
    .line 438
    move-object/from16 v0, p0

    #@220
    move/from16 v1, v25

    #@222
    move/from16 v2, v31

    #@224
    invoke-direct {v0, v1, v2}, Landroid/text/SpannableStringBuilder;->isInvalidParagraphEnd(II)Z

    #@227
    move-result v4

    #@228
    if-eqz v4, :cond_19

    #@22a
    .line 421
    .end local v24    # "copySpanStart":I
    .end local v25    # "copySpanEnd":I
    .end local v26    # "copySpanFlags":I
    .end local v31    # "flagsEnd":I
    .end local v32    # "flagsStart":I
    :cond_18
    :goto_9
    add-int/lit8 v33, v33, 0x1

    #@22c
    goto :goto_8

    #@22d
    .line 439
    .restart local v24    # "copySpanStart":I
    .restart local v25    # "copySpanEnd":I
    .restart local v26    # "copySpanFlags":I
    .restart local v31    # "flagsEnd":I
    .restart local v32    # "flagsStart":I
    :cond_19
    aget-object v23, v39, v33

    #@22f
    const/16 v22, 0x0

    #@231
    move-object/from16 v21, p0

    #@233
    invoke-direct/range {v21 .. v26}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    #@236
    goto :goto_9

    #@237
    .line 443
    .end local v24    # "copySpanStart":I
    .end local v25    # "copySpanEnd":I
    .end local v26    # "copySpanFlags":I
    .end local v29    # "en":I
    .end local v31    # "flagsEnd":I
    .end local v32    # "flagsStart":I
    .end local v40    # "st":I
    :cond_1a
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@23a
    .line 325
    .end local v38    # "sp":Landroid/text/Spanned;
    .end local v39    # "spans":[Ljava/lang/Object;
    :cond_1b
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1257
    if-ge p3, p2, :cond_0

    #@2
    .line 1258
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, " "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    .line 1259
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 1258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 1259
    const-string/jumbo v3, " has end before start"

    #@1f
    .line 1258
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 1262
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@2e
    move-result v0

    #@2f
    .line 1264
    .local v0, "len":I
    if-gt p2, v0, :cond_1

    #@31
    if-le p3, v0, :cond_2

    #@33
    .line 1265
    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@35
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, " "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    .line 1266
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 1265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 1266
    const-string/jumbo v3, " ends beyond length "

    #@50
    .line 1265
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v1

    #@60
    .line 1269
    :cond_2
    if-ltz p2, :cond_3

    #@62
    if-gez p3, :cond_4

    #@64
    .line 1270
    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@66
    new-instance v2, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    const-string/jumbo v3, " "

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    .line 1271
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    .line 1270
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    .line 1271
    const-string/jumbo v3, " starts before 0"

    #@81
    .line 1270
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v2

    #@89
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@8c
    throw v1

    #@8d
    .line 1256
    :cond_4
    return-void
.end method

.method private final checkSortBuffer([II)[I
    .locals 1
    .param p1, "buffer"    # [I
    .param p2, "size"    # I

    #@0
    .prologue
    .line 1003
    array-length v0, p1

    #@1
    if-le p2, v0, :cond_0

    #@3
    .line 1004
    invoke-static {p2}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    #@6
    move-result v0

    #@7
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 1006
    :cond_0
    return-object p1
.end method

.method private final compareSpans(II[I[I)I
    .locals 4
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "priority"    # [I
    .param p4, "insertionOrder"    # [I

    #@0
    .prologue
    .line 1088
    aget v0, p3, p1

    #@2
    .line 1089
    .local v0, "priority1":I
    aget v1, p3, p2

    #@4
    .line 1090
    .local v1, "priority2":I
    if-ne v0, v1, :cond_0

    #@6
    .line 1091
    aget v2, p4, p1

    #@8
    aget v3, p4, p2

    #@a
    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    #@d
    move-result v2

    #@e
    return v2

    #@f
    .line 1095
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    #@12
    move-result v2

    #@13
    return v2
.end method

.method private countSpans(IILjava/lang/Class;I)I
    .locals 6
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    #@0
    .prologue
    .line 887
    const/4 v0, 0x0

    #@1
    .line 888
    .local v0, "count":I
    and-int/lit8 v5, p4, 0x1

    #@3
    if-eqz v5, :cond_1

    #@5
    .line 890
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    #@8
    move-result v1

    #@9
    .line 891
    .local v1, "left":I
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@b
    aget v3, v5, v1

    #@d
    .line 892
    .local v3, "spanMax":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@f
    if-le v3, v5, :cond_0

    #@11
    .line 893
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@13
    sub-int/2addr v3, v5

    #@14
    .line 895
    :cond_0
    if-lt v3, p1, :cond_1

    #@16
    .line 896
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    #@19
    move-result v0

    #@1a
    .line 899
    .end local v1    # "left":I
    .end local v3    # "spanMax":I
    :cond_1
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@1c
    if-ge p4, v5, :cond_7

    #@1e
    .line 900
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@20
    aget v4, v5, p4

    #@22
    .line 901
    .local v4, "spanStart":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@24
    if-le v4, v5, :cond_2

    #@26
    .line 902
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@28
    sub-int/2addr v4, v5

    #@29
    .line 904
    :cond_2
    if-gt v4, p2, :cond_7

    #@2b
    .line 905
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@2d
    aget v2, v5, p4

    #@2f
    .line 906
    .local v2, "spanEnd":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@31
    if-le v2, v5, :cond_3

    #@33
    .line 907
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@35
    sub-int/2addr v2, v5

    #@36
    .line 909
    :cond_3
    if-lt v2, p1, :cond_6

    #@38
    .line 910
    if-eq v4, v2, :cond_4

    #@3a
    if-ne p1, p2, :cond_8

    #@3c
    .line 912
    :cond_4
    :goto_0
    const-class v5, Ljava/lang/Object;

    #@3e
    if-eq v5, p3, :cond_5

    #@40
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@42
    aget-object v5, v5, p4

    #@44
    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@47
    move-result v5

    #@48
    .line 909
    if-eqz v5, :cond_6

    #@4a
    .line 913
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@4c
    .line 915
    :cond_6
    and-int/lit8 v5, p4, 0x1

    #@4e
    if-eqz v5, :cond_7

    #@50
    .line 916
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    #@53
    move-result v5

    #@54
    invoke-direct {p0, p1, p2, p3, v5}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    #@57
    move-result v5

    #@58
    add-int/2addr v0, v5

    #@59
    .line 920
    .end local v2    # "spanEnd":I
    .end local v4    # "spanStart":I
    :cond_7
    return v0

    #@5a
    .line 911
    .restart local v2    # "spanEnd":I
    .restart local v4    # "spanStart":I
    :cond_8
    if-eq v4, p2, :cond_6

    #@5c
    if-eq v2, p1, :cond_6

    #@5e
    goto :goto_0
.end method

.method private getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I
    .locals 25
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
            "Ljava/lang/Class",
            "<TT;>;I[TT;[I[IIZ)I"
        }
    .end annotation

    #@0
    .prologue
    .line 942
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "ret":[Ljava/lang/Object;, "[TT;"
    and-int/lit8 v3, p4, 0x1

    #@2
    if-eqz v3, :cond_1

    #@4
    .line 944
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    #@7
    move-result v7

    #@8
    .line 945
    .local v7, "left":I
    move-object/from16 v0, p0

    #@a
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@c
    aget v21, v3, v7

    #@e
    .line 946
    .local v21, "spanMax":I
    move-object/from16 v0, p0

    #@10
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@12
    move/from16 v0, v21

    #@14
    if-le v0, v3, :cond_0

    #@16
    .line 947
    move-object/from16 v0, p0

    #@18
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1a
    sub-int v21, v21, v3

    #@1c
    .line 949
    :cond_0
    move/from16 v0, v21

    #@1e
    move/from16 v1, p1

    #@20
    if-lt v0, v1, :cond_1

    #@22
    move-object/from16 v3, p0

    #@24
    move/from16 v4, p1

    #@26
    move/from16 v5, p2

    #@28
    move-object/from16 v6, p3

    #@2a
    move-object/from16 v8, p5

    #@2c
    move-object/from16 v9, p6

    #@2e
    move-object/from16 v10, p7

    #@30
    move/from16 v11, p8

    #@32
    move/from16 v12, p9

    #@34
    .line 950
    invoke-direct/range {v3 .. v12}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    #@37
    move-result p8

    #@38
    .line 954
    .end local v7    # "left":I
    .end local v21    # "spanMax":I
    :cond_1
    move-object/from16 v0, p0

    #@3a
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@3c
    move/from16 v0, p4

    #@3e
    if-lt v0, v3, :cond_2

    #@40
    return p8

    #@41
    .line 955
    :cond_2
    move-object/from16 v0, p0

    #@43
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@45
    aget v23, v3, p4

    #@47
    .line 956
    .local v23, "spanStart":I
    move-object/from16 v0, p0

    #@49
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@4b
    move/from16 v0, v23

    #@4d
    if-le v0, v3, :cond_3

    #@4f
    .line 957
    move-object/from16 v0, p0

    #@51
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@53
    sub-int v23, v23, v3

    #@55
    .line 959
    :cond_3
    move/from16 v0, v23

    #@57
    move/from16 v1, p2

    #@59
    if-gt v0, v1, :cond_9

    #@5b
    .line 960
    move-object/from16 v0, p0

    #@5d
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@5f
    aget v20, v3, p4

    #@61
    .line 961
    .local v20, "spanEnd":I
    move-object/from16 v0, p0

    #@63
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@65
    move/from16 v0, v20

    #@67
    if-le v0, v3, :cond_4

    #@69
    .line 962
    move-object/from16 v0, p0

    #@6b
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@6d
    sub-int v20, v20, v3

    #@6f
    .line 964
    :cond_4
    move/from16 v0, v20

    #@71
    move/from16 v1, p1

    #@73
    if-lt v0, v1, :cond_8

    #@75
    .line 965
    move/from16 v0, v23

    #@77
    move/from16 v1, v20

    #@79
    if-eq v0, v1, :cond_5

    #@7b
    move/from16 v0, p1

    #@7d
    move/from16 v1, p2

    #@7f
    if-ne v0, v1, :cond_a

    #@81
    .line 967
    :cond_5
    :goto_0
    const-class v3, Ljava/lang/Object;

    #@83
    move-object/from16 v0, p3

    #@85
    if-eq v3, v0, :cond_6

    #@87
    move-object/from16 v0, p0

    #@89
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@8b
    aget-object v3, v3, p4

    #@8d
    move-object/from16 v0, p3

    #@8f
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@92
    move-result v3

    #@93
    .line 964
    if-eqz v3, :cond_8

    #@95
    .line 968
    :cond_6
    move-object/from16 v0, p0

    #@97
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@99
    aget v3, v3, p4

    #@9b
    const/high16 v4, 0xff0000

    #@9d
    and-int v22, v3, v4

    #@9f
    .line 969
    .local v22, "spanPriority":I
    move/from16 v24, p8

    #@a1
    .line 970
    .local v24, "target":I
    if-eqz p9, :cond_b

    #@a3
    .line 971
    aput v22, p6, v24

    #@a5
    .line 972
    move-object/from16 v0, p0

    #@a7
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    #@a9
    aget v3, v3, p4

    #@ab
    aput v3, p7, v24

    #@ad
    .line 983
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    #@af
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@b1
    aget-object v3, v3, p4

    #@b3
    aput-object v3, p5, v24

    #@b5
    .line 984
    add-int/lit8 p8, p8, 0x1

    #@b7
    .line 986
    .end local v22    # "spanPriority":I
    .end local v24    # "target":I
    :cond_8
    move-object/from16 v0, p5

    #@b9
    array-length v3, v0

    #@ba
    move/from16 v0, p8

    #@bc
    if-ge v0, v3, :cond_9

    #@be
    and-int/lit8 v3, p4, 0x1

    #@c0
    if-eqz v3, :cond_9

    #@c2
    .line 987
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    #@c5
    move-result v12

    #@c6
    move-object/from16 v8, p0

    #@c8
    move/from16 v9, p1

    #@ca
    move/from16 v10, p2

    #@cc
    move-object/from16 v11, p3

    #@ce
    move-object/from16 v13, p5

    #@d0
    move-object/from16 v14, p6

    #@d2
    move-object/from16 v15, p7

    #@d4
    move/from16 v16, p8

    #@d6
    move/from16 v17, p9

    #@d8
    invoke-direct/range {v8 .. v17}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    #@db
    move-result p8

    #@dc
    .line 991
    .end local v20    # "spanEnd":I
    :cond_9
    return p8

    #@dd
    .line 966
    .restart local v20    # "spanEnd":I
    :cond_a
    move/from16 v0, v23

    #@df
    move/from16 v1, p2

    #@e1
    if-eq v0, v1, :cond_8

    #@e3
    move/from16 v0, v20

    #@e5
    move/from16 v1, p1

    #@e7
    if-eq v0, v1, :cond_8

    #@e9
    goto :goto_0

    #@ea
    .line 973
    .restart local v22    # "spanPriority":I
    .restart local v24    # "target":I
    :cond_b
    if-eqz v22, :cond_7

    #@ec
    .line 975
    const/16 v18, 0x0

    #@ee
    .line 976
    .local v18, "j":I
    :goto_2
    move/from16 v0, v18

    #@f0
    move/from16 v1, p8

    #@f2
    if-ge v0, v1, :cond_c

    #@f4
    .line 977
    aget-object v3, p5, v18

    #@f6
    move-object/from16 v0, p0

    #@f8
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    #@fb
    move-result v3

    #@fc
    const/high16 v4, 0xff0000

    #@fe
    and-int v19, v3, v4

    #@100
    .line 978
    .local v19, "p":I
    move/from16 v0, v22

    #@102
    move/from16 v1, v19

    #@104
    if-le v0, v1, :cond_d

    #@106
    .line 980
    .end local v19    # "p":I
    :cond_c
    add-int/lit8 v3, v18, 0x1

    #@108
    sub-int v4, p8, v18

    #@10a
    move-object/from16 v0, p5

    #@10c
    move/from16 v1, v18

    #@10e
    move-object/from16 v2, p5

    #@110
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@113
    .line 981
    move/from16 v24, v18

    #@115
    goto :goto_1

    #@116
    .line 976
    .restart local v19    # "p":I
    :cond_d
    add-int/lit8 v18, v18, 0x1

    #@118
    goto :goto_2
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 588
    instance-of v6, p0, Landroid/text/Spanned;

    #@2
    if-eqz v6, :cond_1

    #@4
    move-object v4, p0

    #@5
    .line 589
    check-cast v4, Landroid/text/Spanned;

    #@7
    .line 590
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Ljava/lang/Object;

    #@9
    invoke-interface {v4, p1, p1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    .line 591
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    #@e
    .line 592
    .local v2, "length":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@11
    .line 593
    aget-object v3, v5, v1

    #@13
    .line 594
    .local v3, "span":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@16
    move-result v0

    #@17
    .line 595
    .local v0, "flags":I
    const/16 v6, 0x21

    #@19
    if-eq v0, v6, :cond_0

    #@1b
    const/4 v6, 0x1

    #@1c
    return v6

    #@1d
    .line 592
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 598
    .end local v0    # "flags":I
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "span":Ljava/lang/Object;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spans":[Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x0

    #@21
    return v6
.end method

.method private invalidateIndex(I)V
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 1701
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    #@2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    #@8
    .line 1700
    return-void
.end method

.method private final isInvalidParagraphEnd(II)Z
    .locals 3
    .param p1, "end"    # I
    .param p2, "flagsEnd"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 783
    const/4 v1, 0x3

    #@2
    if-ne p2, v1, :cond_0

    #@4
    .line 784
    if-eqz p1, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@9
    move-result v1

    #@a
    if-eq p1, v1, :cond_0

    #@c
    .line 785
    add-int/lit8 v1, p1, -0x1

    #@e
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 787
    .local v0, "c":C
    const/16 v1, 0xa

    #@14
    if-eq v0, v1, :cond_0

    #@16
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 790
    .end local v0    # "c":C
    :cond_0
    return v2
.end method

.method private final isInvalidParagraphStart(II)Z
    .locals 3
    .param p1, "start"    # I
    .param p2, "flagsStart"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 772
    const/4 v1, 0x3

    #@2
    if-ne p2, v1, :cond_0

    #@4
    .line 773
    if-eqz p1, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@9
    move-result v1

    #@a
    if-eq p1, v1, :cond_0

    #@c
    .line 774
    add-int/lit8 v1, p1, -0x1

    #@e
    invoke-virtual {p0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@11
    move-result v0

    #@12
    .line 776
    .local v0, "c":C
    const/16 v1, 0xa

    #@14
    if-eq v0, v1, :cond_0

    #@16
    const/4 v1, 0x1

    #@17
    return v1

    #@18
    .line 779
    .end local v0    # "c":C
    :cond_0
    return v2
.end method

.method private static leftChild(I)I
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1620
    add-int/lit8 v0, p0, 0x1

    #@2
    not-int v1, p0

    #@3
    and-int/2addr v0, v1

    #@4
    shr-int/lit8 v0, v0, 0x1

    #@6
    sub-int v0, p0, v0

    #@8
    return v0
.end method

.method private moveGapTo(I)V
    .locals 12
    .param p1, "where"    # I

    #@0
    .prologue
    const/4 v11, 0x3

    #@1
    const/4 v10, 0x2

    #@2
    .line 168
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@4
    if-ne p1, v6, :cond_0

    #@6
    .line 169
    return-void

    #@7
    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@a
    move-result v6

    #@b
    if-ne p1, v6, :cond_5

    #@d
    const/4 v0, 0x1

    #@e
    .line 173
    .local v0, "atEnd":Z
    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@10
    if-ge p1, v6, :cond_6

    #@12
    .line 174
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@14
    sub-int v4, v6, p1

    #@16
    .line 175
    .local v4, "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@18
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@1a
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1c
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1e
    add-int/2addr v8, v9

    #@1f
    sub-int/2addr v8, v4

    #@20
    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@23
    .line 182
    :goto_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@25
    if-eqz v6, :cond_c

    #@27
    .line 183
    const/4 v3, 0x0

    #@28
    .local v3, "i":I
    :goto_2
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@2a
    if-ge v3, v6, :cond_b

    #@2c
    .line 184
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@2e
    aget v5, v6, v3

    #@30
    .line 185
    .local v5, "start":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@32
    aget v1, v6, v3

    #@34
    .line 187
    .local v1, "end":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@36
    if-le v5, v6, :cond_1

    #@38
    .line 188
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@3a
    sub-int/2addr v5, v6

    #@3b
    .line 189
    :cond_1
    if-le v5, p1, :cond_7

    #@3d
    .line 190
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@3f
    add-int/2addr v5, v6

    #@40
    .line 198
    :cond_2
    :goto_3
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@42
    if-le v1, v6, :cond_3

    #@44
    .line 199
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@46
    sub-int/2addr v1, v6

    #@47
    .line 200
    :cond_3
    if-le v1, p1, :cond_9

    #@49
    .line 201
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@4b
    add-int/2addr v1, v6

    #@4c
    .line 209
    :cond_4
    :goto_4
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@4e
    aput v5, v6, v3

    #@50
    .line 210
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@52
    aput v1, v6, v3

    #@54
    .line 183
    add-int/lit8 v3, v3, 0x1

    #@56
    goto :goto_2

    #@57
    .line 171
    .end local v0    # "atEnd":Z
    .end local v1    # "end":I
    .end local v3    # "i":I
    .end local v4    # "overlap":I
    .end local v5    # "start":I
    :cond_5
    const/4 v0, 0x0

    #@58
    .restart local v0    # "atEnd":Z
    goto :goto_0

    #@59
    .line 177
    :cond_6
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@5b
    sub-int v4, p1, v6

    #@5d
    .line 178
    .restart local v4    # "overlap":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@5f
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@61
    add-int/2addr v7, p1

    #@62
    sub-int/2addr v7, v4

    #@63
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@65
    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@67
    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@6a
    goto :goto_1

    #@6b
    .line 191
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    .restart local v5    # "start":I
    :cond_7
    if-ne v5, p1, :cond_2

    #@6d
    .line 192
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@6f
    aget v6, v6, v3

    #@71
    and-int/lit16 v6, v6, 0xf0

    #@73
    shr-int/lit8 v2, v6, 0x4

    #@75
    .line 194
    .local v2, "flag":I
    if-eq v2, v10, :cond_8

    #@77
    if-eqz v0, :cond_2

    #@79
    if-ne v2, v11, :cond_2

    #@7b
    .line 195
    :cond_8
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@7d
    add-int/2addr v5, v6

    #@7e
    goto :goto_3

    #@7f
    .line 202
    .end local v2    # "flag":I
    :cond_9
    if-ne v1, p1, :cond_4

    #@81
    .line 203
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@83
    aget v6, v6, v3

    #@85
    and-int/lit8 v2, v6, 0xf

    #@87
    .line 205
    .restart local v2    # "flag":I
    if-eq v2, v10, :cond_a

    #@89
    if-eqz v0, :cond_4

    #@8b
    if-ne v2, v11, :cond_4

    #@8d
    .line 206
    :cond_a
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@8f
    add-int/2addr v1, v6

    #@90
    goto :goto_4

    #@91
    .line 212
    .end local v1    # "end":I
    .end local v2    # "flag":I
    .end local v5    # "start":I
    :cond_b
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@94
    move-result v6

    #@95
    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    #@98
    .line 215
    .end local v3    # "i":I
    :cond_c
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@9a
    .line 167
    return-void
.end method

.method private nextSpanTransitionRec(IILjava/lang/Class;I)I
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    #@0
    .prologue
    .line 1112
    and-int/lit8 v3, p4, 0x1

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 1114
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    #@7
    move-result v1

    #@8
    .line 1115
    .local v1, "left":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@a
    aget v3, v3, v1

    #@c
    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    #@f
    move-result v3

    #@10
    if-le v3, p1, :cond_0

    #@12
    .line 1116
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    #@15
    move-result p2

    #@16
    .line 1119
    .end local v1    # "left":I
    :cond_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@18
    if-ge p4, v3, :cond_3

    #@1a
    .line 1120
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@1c
    aget v3, v3, p4

    #@1e
    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    #@21
    move-result v2

    #@22
    .line 1121
    .local v2, "st":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@24
    aget v3, v3, p4

    #@26
    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    #@29
    move-result v0

    #@2a
    .line 1122
    .local v0, "en":I
    if-le v2, p1, :cond_1

    #@2c
    if-ge v2, p2, :cond_1

    #@2e
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@30
    aget-object v3, v3, p4

    #@32
    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_1

    #@38
    .line 1123
    move p2, v2

    #@39
    .line 1124
    :cond_1
    if-le v0, p1, :cond_2

    #@3b
    if-ge v0, p2, :cond_2

    #@3d
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@3f
    aget-object v3, v3, p4

    #@41
    invoke-virtual {p3, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@44
    move-result v3

    #@45
    if-eqz v3, :cond_2

    #@47
    .line 1125
    move p2, v0

    #@48
    .line 1126
    :cond_2
    if-ge v2, p2, :cond_3

    #@4a
    and-int/lit8 v3, p4, 0x1

    #@4c
    if-eqz v3, :cond_3

    #@4e
    .line 1127
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    #@51
    move-result v3

    #@52
    invoke-direct {p0, p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    #@55
    move-result p2

    #@56
    .line 1131
    .end local v0    # "en":I
    .end local v2    # "st":I
    :cond_3
    return p2
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    #@0
    .prologue
    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " ... "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    const-string/jumbo v1, ")"

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    return-object v0
.end method

.method private removeSpan(I)V
    .locals 7
    .param p1, "i"    # I

    #@0
    .prologue
    .line 481
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@2
    aget-object v2, v4, p1

    #@4
    .line 483
    .local v2, "object":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@6
    aget v3, v4, p1

    #@8
    .line 484
    .local v3, "start":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@a
    aget v1, v4, p1

    #@c
    .line 486
    .local v1, "end":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@e
    if-le v3, v4, :cond_0

    #@10
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@12
    sub-int/2addr v3, v4

    #@13
    .line 487
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@15
    if-le v1, v4, :cond_1

    #@17
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@19
    sub-int/2addr v1, v4

    #@1a
    .line 489
    :cond_1
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@1c
    add-int/lit8 v5, p1, 0x1

    #@1e
    sub-int v0, v4, v5

    #@20
    .line 490
    .local v0, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@22
    add-int/lit8 v5, p1, 0x1

    #@24
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@26
    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@29
    .line 491
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@2b
    add-int/lit8 v5, p1, 0x1

    #@2d
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@2f
    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@32
    .line 492
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@34
    add-int/lit8 v5, p1, 0x1

    #@36
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@38
    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@3b
    .line 493
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@3d
    add-int/lit8 v5, p1, 0x1

    #@3f
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@41
    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@44
    .line 494
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    #@46
    add-int/lit8 v5, p1, 0x1

    #@48
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    #@4a
    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@4d
    .line 496
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@4f
    add-int/lit8 v4, v4, -0x1

    #@51
    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@53
    .line 498
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    #@56
    .line 499
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@58
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@5a
    const/4 v6, 0x0

    #@5b
    aput-object v6, v4, v5

    #@5d
    .line 502
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@60
    .line 504
    invoke-direct {p0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    #@63
    .line 480
    return-void
.end method

.method private removeSpansForChange(IIZI)Z
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textIsRemoved"    # Z
    .param p4, "i"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 301
    and-int/lit8 v1, p4, 0x1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 303
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@8
    aget v1, v1, p4

    #@a
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    #@d
    move-result v1

    #@e
    if-lt v1, p1, :cond_0

    #@10
    .line 304
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    #@13
    move-result v1

    #@14
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    #@17
    move-result v1

    #@18
    .line 303
    if-eqz v1, :cond_0

    #@1a
    .line 305
    return v4

    #@1b
    .line 308
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@1d
    if-ge p4, v1, :cond_5

    #@1f
    .line 309
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@21
    aget v1, v1, p4

    #@23
    and-int/lit8 v1, v1, 0x21

    #@25
    .line 310
    const/16 v2, 0x21

    #@27
    .line 309
    if-ne v1, v2, :cond_3

    #@29
    .line 311
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@2b
    aget v1, v1, p4

    #@2d
    if-lt v1, p1, :cond_3

    #@2f
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@31
    aget v1, v1, p4

    #@33
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@35
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@37
    add-int/2addr v2, v3

    #@38
    if-ge v1, v2, :cond_3

    #@3a
    .line 312
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@3c
    aget v1, v1, p4

    #@3e
    if-lt v1, p1, :cond_3

    #@40
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@42
    aget v1, v1, p4

    #@44
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@46
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@48
    add-int/2addr v2, v3

    #@49
    if-ge v1, v2, :cond_3

    #@4b
    .line 314
    if-nez p3, :cond_1

    #@4d
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@4f
    aget v1, v1, p4

    #@51
    if-le v1, p1, :cond_2

    #@53
    .line 315
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@55
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@57
    aget-object v1, v1, p4

    #@59
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    .line 316
    invoke-direct {p0, p4}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    #@5f
    .line 317
    return v4

    #@60
    .line 314
    :cond_2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@62
    aget v1, v1, p4

    #@64
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@66
    if-lt v1, v2, :cond_1

    #@68
    .line 319
    :cond_3
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@6a
    aget v1, v1, p4

    #@6c
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    #@6f
    move-result v1

    #@70
    if-gt v1, p2, :cond_4

    #@72
    and-int/lit8 v1, p4, 0x1

    #@74
    if-eqz v1, :cond_4

    #@76
    .line 320
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    #@79
    move-result v0

    #@7a
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    #@7d
    move-result v0

    #@7e
    .line 319
    :cond_4
    return v0

    #@7f
    .line 322
    :cond_5
    return v0
.end method

.method private resizeFor(I)V
    .locals 9
    .param p1, "size"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 141
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@3
    array-length v5, v6

    #@4
    .line 142
    .local v5, "oldLength":I
    add-int/lit8 v6, p1, 0x1

    #@6
    if-gt v6, v5, :cond_0

    #@8
    .line 143
    return-void

    #@9
    .line 146
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    #@c
    move-result v6

    #@d
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    #@10
    move-result-object v4

    #@11
    .line 147
    .local v4, "newText":[C
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@13
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@15
    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@18
    .line 148
    array-length v3, v4

    #@19
    .line 149
    .local v3, "newLength":I
    sub-int v1, v3, v5

    #@1b
    .line 150
    .local v1, "delta":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1d
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1f
    add-int/2addr v6, v7

    #@20
    sub-int v0, v5, v6

    #@22
    .line 151
    .local v0, "after":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@24
    sub-int v7, v5, v0

    #@26
    sub-int v8, v3, v0

    #@28
    invoke-static {v6, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@2b
    .line 152
    iput-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@2d
    .line 154
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@2f
    add-int/2addr v6, v1

    #@30
    iput v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@32
    .line 155
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@34
    const/4 v7, 0x1

    #@35
    if-ge v6, v7, :cond_1

    #@37
    .line 156
    new-instance v6, Ljava/lang/Exception;

    #@39
    const-string/jumbo v7, "mGapLength < 1"

    #@3c
    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3f
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    #@42
    .line 158
    :cond_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@44
    if-eqz v6, :cond_5

    #@46
    .line 159
    const/4 v2, 0x0

    #@47
    .local v2, "i":I
    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@49
    if-ge v2, v6, :cond_4

    #@4b
    .line 160
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@4d
    aget v6, v6, v2

    #@4f
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@51
    if-le v6, v7, :cond_2

    #@53
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@55
    aget v7, v6, v2

    #@57
    add-int/2addr v7, v1

    #@58
    aput v7, v6, v2

    #@5a
    .line 161
    :cond_2
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@5c
    aget v6, v6, v2

    #@5e
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@60
    if-le v6, v7, :cond_3

    #@62
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@64
    aget v7, v6, v2

    #@66
    add-int/2addr v7, v1

    #@67
    aput v7, v6, v2

    #@69
    .line 159
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 163
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@6f
    move-result v6

    #@70
    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    #@73
    .line 140
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private resolveGap(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 808
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@2
    if-le p1, v0, :cond_0

    #@4
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@6
    sub-int/2addr p1, v0

    #@7
    .end local p1    # "i":I
    :cond_0
    return p1
.end method

.method private restoreInvariants()V
    .locals 11

    #@0
    .prologue
    .line 1653
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@2
    if-nez v8, :cond_0

    #@4
    return-void

    #@5
    .line 1658
    :cond_0
    const/4 v3, 0x1

    #@6
    .local v3, "i":I
    :goto_0
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@8
    if-ge v3, v8, :cond_4

    #@a
    .line 1659
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@c
    aget v8, v8, v3

    #@e
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@10
    add-int/lit8 v10, v3, -0x1

    #@12
    aget v9, v9, v10

    #@14
    if-ge v8, v9, :cond_3

    #@16
    .line 1660
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@18
    aget-object v6, v8, v3

    #@1a
    .line 1661
    .local v6, "span":Ljava/lang/Object;
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@1c
    aget v7, v8, v3

    #@1e
    .line 1662
    .local v7, "start":I
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@20
    aget v0, v8, v3

    #@22
    .line 1663
    .local v0, "end":I
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@24
    aget v2, v8, v3

    #@26
    .line 1664
    .local v2, "flags":I
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    #@28
    aget v4, v8, v3

    #@2a
    .line 1665
    .local v4, "insertionOrder":I
    move v5, v3

    #@2b
    .line 1667
    .local v5, "j":I
    :cond_1
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@2d
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@2f
    add-int/lit8 v10, v5, -0x1

    #@31
    aget-object v9, v9, v10

    #@33
    aput-object v9, v8, v5

    #@35
    .line 1668
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@37
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@39
    add-int/lit8 v10, v5, -0x1

    #@3b
    aget v9, v9, v10

    #@3d
    aput v9, v8, v5

    #@3f
    .line 1669
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@41
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@43
    add-int/lit8 v10, v5, -0x1

    #@45
    aget v9, v9, v10

    #@47
    aput v9, v8, v5

    #@49
    .line 1670
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@4b
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@4d
    add-int/lit8 v10, v5, -0x1

    #@4f
    aget v9, v9, v10

    #@51
    aput v9, v8, v5

    #@53
    .line 1671
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    #@55
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    #@57
    add-int/lit8 v10, v5, -0x1

    #@59
    aget v9, v9, v10

    #@5b
    aput v9, v8, v5

    #@5d
    .line 1672
    add-int/lit8 v5, v5, -0x1

    #@5f
    .line 1673
    if-lez v5, :cond_2

    #@61
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@63
    add-int/lit8 v9, v5, -0x1

    #@65
    aget v8, v8, v9

    #@67
    if-lt v7, v8, :cond_1

    #@69
    .line 1674
    :cond_2
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@6b
    aput-object v6, v8, v5

    #@6d
    .line 1675
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@6f
    aput v7, v8, v5

    #@71
    .line 1676
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@73
    aput v0, v8, v5

    #@75
    .line 1677
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@77
    aput v2, v8, v5

    #@79
    .line 1678
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    #@7b
    aput v4, v8, v5

    #@7d
    .line 1679
    invoke-direct {p0, v5}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    #@80
    .line 1658
    .end local v0    # "end":I
    .end local v2    # "flags":I
    .end local v4    # "insertionOrder":I
    .end local v5    # "j":I
    .end local v6    # "span":Ljava/lang/Object;
    .end local v7    # "start":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@82
    goto :goto_0

    #@83
    .line 1684
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@86
    move-result v8

    #@87
    invoke-direct {p0, v8}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    #@8a
    .line 1687
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@8c
    if-nez v8, :cond_5

    #@8e
    .line 1688
    new-instance v8, Ljava/util/IdentityHashMap;

    #@90
    invoke-direct {v8}, Ljava/util/IdentityHashMap;-><init>()V

    #@93
    iput-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@95
    .line 1690
    :cond_5
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    #@97
    :goto_1
    iget v8, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@99
    if-ge v3, v8, :cond_8

    #@9b
    .line 1691
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@9d
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@9f
    aget-object v9, v9, v3

    #@a1
    invoke-virtual {v8, v9}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a4
    move-result-object v1

    #@a5
    check-cast v1, Ljava/lang/Integer;

    #@a7
    .line 1692
    .local v1, "existing":Ljava/lang/Integer;
    if-eqz v1, :cond_6

    #@a9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@ac
    move-result v8

    #@ad
    if-eq v8, v3, :cond_7

    #@af
    .line 1693
    :cond_6
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@b1
    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@b3
    aget-object v9, v9, v3

    #@b5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b8
    move-result-object v10

    #@b9
    invoke-virtual {v8, v9, v10}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bc
    .line 1690
    :cond_7
    add-int/lit8 v3, v3, 0x1

    #@be
    goto :goto_1

    #@bf
    .line 1696
    .end local v1    # "existing":Ljava/lang/Integer;
    :cond_8
    const v8, 0x7fffffff

    #@c2
    iput v8, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    #@c4
    .line 1652
    return-void
.end method

.method private static rightChild(I)I
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1624
    add-int/lit8 v0, p0, 0x1

    #@2
    not-int v1, p0

    #@3
    and-int/2addr v0, v1

    #@4
    shr-int/lit8 v0, v0, 0x1

    #@6
    add-int/2addr v0, p0

    #@7
    return v0
.end method

.method private sendAfterTextChanged([Landroid/text/TextWatcher;)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;

    #@0
    .prologue
    .line 1214
    array-length v1, p1

    #@1
    .line 1216
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@7
    .line 1217
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 1218
    aget-object v2, p1, v0

    #@c
    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    #@f
    .line 1217
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1220
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@18
    .line 1213
    return-void
.end method

.method private sendBeforeTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    .line 1194
    array-length v1, p1

    #@1
    .line 1196
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@7
    .line 1197
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 1198
    aget-object v2, p1, v0

    #@c
    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    #@f
    .line 1197
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1200
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@18
    .line 1193
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1224
    const-class v3, Landroid/text/SpanWatcher;

    #@2
    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, [Landroid/text/SpanWatcher;

    #@8
    .line 1225
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    #@9
    .line 1227
    .local v1, "n":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 1228
    aget-object v3, v2, v0

    #@e
    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    #@11
    .line 1227
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1223
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "oldStart"    # I
    .param p3, "oldEnd"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    #@0
    .prologue
    .line 1244
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    .line 1245
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@b
    move-result v2

    #@c
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v1

    #@10
    const-class v2, Landroid/text/SpanWatcher;

    #@12
    .line 1244
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@15
    move-result-object v9

    #@16
    check-cast v9, [Landroid/text/SpanWatcher;

    #@18
    .line 1246
    .local v9, "spanWatchers":[Landroid/text/SpanWatcher;
    array-length v8, v9

    #@19
    .line 1247
    .local v8, "n":I
    const/4 v7, 0x0

    #@1a
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    #@1c
    .line 1248
    aget-object v0, v9, v7

    #@1e
    move-object v1, p0

    #@1f
    move-object v2, p1

    #@20
    move v3, p2

    #@21
    move v4, p3

    #@22
    move v5, p4

    #@23
    move v6, p5

    #@24
    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    #@27
    .line 1247
    add-int/lit8 v7, v7, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1241
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1233
    const-class v3, Landroid/text/SpanWatcher;

    #@2
    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, [Landroid/text/SpanWatcher;

    #@8
    .line 1234
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    #@9
    .line 1236
    .local v1, "n":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 1237
    aget-object v3, v2, v0

    #@e
    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    #@11
    .line 1236
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1232
    :cond_0
    return-void
.end method

.method private sendTextChanged([Landroid/text/TextWatcher;III)V
    .locals 3
    .param p1, "watchers"    # [Landroid/text/TextWatcher;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    #@0
    .prologue
    .line 1204
    array-length v1, p1

    #@1
    .line 1206
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@7
    .line 1207
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 1208
    aget-object v2, p1, v0

    #@c
    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    #@f
    .line 1207
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1210
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@18
    .line 1203
    return-void
.end method

.method private sendToSpanWatchers(III)V
    .locals 12
    .param p1, "replaceStart"    # I
    .param p2, "replaceEnd"    # I
    .param p3, "nbNewChars"    # I

    #@0
    .prologue
    const v11, 0x8000

    #@3
    .line 602
    const/4 v6, 0x0

    #@4
    .local v6, "i":I
    :goto_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@6
    if-ge v6, v0, :cond_c

    #@8
    .line 603
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@a
    aget v9, v0, v6

    #@c
    .line 606
    .local v9, "spanFlags":I
    and-int/lit16 v0, v9, 0x800

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 602
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@12
    goto :goto_0

    #@13
    .line 607
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@15
    aget v4, v0, v6

    #@17
    .line 608
    .local v4, "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@19
    aget v5, v0, v6

    #@1b
    .line 609
    .local v5, "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1d
    if-le v4, v0, :cond_1

    #@1f
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@21
    sub-int/2addr v4, v0

    #@22
    .line 610
    :cond_1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@24
    if-le v5, v0, :cond_2

    #@26
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@28
    sub-int/2addr v5, v0

    #@29
    .line 612
    :cond_2
    add-int v7, p2, p3

    #@2b
    .line 613
    .local v7, "newReplaceEnd":I
    const/4 v8, 0x0

    #@2c
    .line 615
    .local v8, "spanChanged":Z
    move v2, v4

    #@2d
    .line 616
    .local v2, "previousSpanStart":I
    if-le v4, v7, :cond_6

    #@2f
    .line 617
    if-eqz p3, :cond_3

    #@31
    .line 618
    sub-int/2addr v2, p3

    #@32
    .line 619
    const/4 v8, 0x1

    #@33
    .line 634
    :cond_3
    :goto_2
    move v3, v5

    #@34
    .line 635
    .local v3, "previousSpanEnd":I
    if-le v5, v7, :cond_9

    #@36
    .line 636
    if-eqz p3, :cond_4

    #@38
    .line 637
    sub-int/2addr v3, p3

    #@39
    .line 638
    const/4 v8, 0x1

    #@3a
    .line 651
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    #@3c
    .line 652
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@3e
    aget-object v1, v0, v6

    #@40
    move-object v0, p0

    #@41
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    #@44
    .line 654
    :cond_5
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@46
    aget v1, v0, v6

    #@48
    const v10, -0xf001

    #@4b
    and-int/2addr v1, v10

    #@4c
    aput v1, v0, v6

    #@4e
    goto :goto_1

    #@4f
    .line 621
    .end local v3    # "previousSpanEnd":I
    :cond_6
    if-lt v4, p1, :cond_3

    #@51
    .line 623
    if-ne v4, p1, :cond_7

    #@53
    .line 624
    and-int/lit16 v0, v9, 0x1000

    #@55
    const/16 v1, 0x1000

    #@57
    if-eq v0, v1, :cond_3

    #@59
    .line 625
    :cond_7
    if-ne v4, v7, :cond_8

    #@5b
    .line 626
    and-int/lit16 v0, v9, 0x2000

    #@5d
    const/16 v1, 0x2000

    #@5f
    if-eq v0, v1, :cond_3

    #@61
    .line 630
    :cond_8
    const/4 v8, 0x1

    #@62
    goto :goto_2

    #@63
    .line 640
    .restart local v3    # "previousSpanEnd":I
    :cond_9
    if-lt v5, p1, :cond_4

    #@65
    .line 642
    if-ne v5, p1, :cond_a

    #@67
    .line 643
    and-int/lit16 v0, v9, 0x4000

    #@69
    const/16 v1, 0x4000

    #@6b
    if-eq v0, v1, :cond_4

    #@6d
    .line 644
    :cond_a
    if-ne v5, v7, :cond_b

    #@6f
    .line 645
    and-int v0, v9, v11

    #@71
    if-eq v0, v11, :cond_4

    #@73
    .line 647
    :cond_b
    const/4 v8, 0x1

    #@74
    goto :goto_3

    #@75
    .line 658
    .end local v2    # "previousSpanStart":I
    .end local v3    # "previousSpanEnd":I
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    .end local v7    # "newReplaceEnd":I
    .end local v8    # "spanChanged":Z
    .end local v9    # "spanFlags":I
    :cond_c
    const/4 v6, 0x0

    #@76
    :goto_4
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@78
    if-ge v6, v0, :cond_10

    #@7a
    .line 659
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@7c
    aget v9, v0, v6

    #@7e
    .line 660
    .restart local v9    # "spanFlags":I
    and-int/lit16 v0, v9, 0x800

    #@80
    if-eqz v0, :cond_f

    #@82
    .line 661
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@84
    aget v1, v0, v6

    #@86
    and-int/lit16 v1, v1, -0x801

    #@88
    aput v1, v0, v6

    #@8a
    .line 662
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@8c
    aget v4, v0, v6

    #@8e
    .line 663
    .restart local v4    # "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@90
    aget v5, v0, v6

    #@92
    .line 664
    .restart local v5    # "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@94
    if-le v4, v0, :cond_d

    #@96
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@98
    sub-int/2addr v4, v0

    #@99
    .line 665
    :cond_d
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@9b
    if-le v5, v0, :cond_e

    #@9d
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@9f
    sub-int/2addr v5, v0

    #@a0
    .line 666
    :cond_e
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@a2
    aget-object v0, v0, v6

    #@a4
    invoke-direct {p0, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    #@a7
    .line 658
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    #@a9
    goto :goto_4

    #@aa
    .line 601
    .end local v9    # "spanFlags":I
    :cond_10
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .locals 14
    .param p1, "send"    # Z
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 684
    const-string/jumbo v2, "setSpan"

    #@3
    move/from16 v0, p3

    #@5
    move/from16 v1, p4

    #@7
    invoke-direct {p0, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@a
    .line 686
    move/from16 v0, p5

    #@c
    and-int/lit16 v2, v0, 0xf0

    #@e
    shr-int/lit8 v9, v2, 0x4

    #@10
    .line 687
    .local v9, "flagsStart":I
    move/from16 v0, p3

    #@12
    invoke-direct {p0, v0, v9}, Landroid/text/SpannableStringBuilder;->isInvalidParagraphStart(II)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 688
    new-instance v2, Ljava/lang/RuntimeException;

    #@1a
    const-string/jumbo v3, "PARAGRAPH span must start at paragraph boundary"

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 691
    :cond_0
    and-int/lit8 v8, p5, 0xf

    #@23
    .line 692
    .local v8, "flagsEnd":I
    move/from16 v0, p4

    #@25
    invoke-direct {p0, v0, v8}, Landroid/text/SpannableStringBuilder;->isInvalidParagraphEnd(II)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_1

    #@2b
    .line 693
    new-instance v2, Ljava/lang/RuntimeException;

    #@2d
    const-string/jumbo v3, "PARAGRAPH span must end at paragraph boundary"

    #@30
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v2

    #@34
    .line 697
    :cond_1
    const/4 v2, 0x2

    #@35
    if-ne v9, v2, :cond_3

    #@37
    const/4 v2, 0x1

    #@38
    if-ne v8, v2, :cond_3

    #@3a
    move/from16 v0, p3

    #@3c
    move/from16 v1, p4

    #@3e
    if-ne v0, v1, :cond_3

    #@40
    .line 698
    if-eqz p1, :cond_2

    #@42
    .line 699
    const-string/jumbo v2, "SpannableStringBuilder"

    #@45
    const-string/jumbo v3, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    #@48
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 704
    :cond_2
    return-void

    #@4c
    .line 707
    :cond_3
    move/from16 v6, p3

    #@4e
    .line 708
    .local v6, "nstart":I
    move/from16 v7, p4

    #@50
    .line 710
    .local v7, "nend":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@52
    move/from16 v0, p3

    #@54
    if-le v0, v2, :cond_9

    #@56
    .line 711
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@58
    add-int p3, p3, v2

    #@5a
    .line 717
    :cond_4
    :goto_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@5c
    move/from16 v0, p4

    #@5e
    if-le v0, v2, :cond_b

    #@60
    .line 718
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@62
    add-int p4, p4, v2

    #@64
    .line 724
    :cond_5
    :goto_1
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@66
    if-eqz v2, :cond_d

    #@68
    .line 725
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@6a
    move-object/from16 v0, p2

    #@6c
    invoke-virtual {v2, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6f
    move-result-object v11

    #@70
    check-cast v11, Ljava/lang/Integer;

    #@72
    .line 726
    .local v11, "index":Ljava/lang/Integer;
    if-eqz v11, :cond_d

    #@74
    .line 727
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    #@77
    move-result v10

    #@78
    .line 728
    .local v10, "i":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@7a
    aget v4, v2, v10

    #@7c
    .line 729
    .local v4, "ostart":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@7e
    aget v5, v2, v10

    #@80
    .line 731
    .local v5, "oend":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@82
    if-le v4, v2, :cond_6

    #@84
    .line 732
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@86
    sub-int/2addr v4, v2

    #@87
    .line 733
    :cond_6
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@89
    if-le v5, v2, :cond_7

    #@8b
    .line 734
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@8d
    sub-int/2addr v5, v2

    #@8e
    .line 736
    :cond_7
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@90
    aput p3, v2, v10

    #@92
    .line 737
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@94
    aput p4, v2, v10

    #@96
    .line 738
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@98
    aput p5, v2, v10

    #@9a
    .line 740
    if-eqz p1, :cond_8

    #@9c
    .line 741
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@9f
    move-object v2, p0

    #@a0
    move-object/from16 v3, p2

    #@a2
    .line 742
    invoke-direct/range {v2 .. v7}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    #@a5
    .line 745
    :cond_8
    return-void

    #@a6
    .line 712
    .end local v4    # "ostart":I
    .end local v5    # "oend":I
    .end local v10    # "i":I
    .end local v11    # "index":Ljava/lang/Integer;
    :cond_9
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@a8
    move/from16 v0, p3

    #@aa
    if-ne v0, v2, :cond_4

    #@ac
    .line 713
    const/4 v2, 0x2

    #@ad
    if-eq v9, v2, :cond_a

    #@af
    const/4 v2, 0x3

    #@b0
    if-ne v9, v2, :cond_4

    #@b2
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@b5
    move-result v2

    #@b6
    move/from16 v0, p3

    #@b8
    if-ne v0, v2, :cond_4

    #@ba
    .line 714
    :cond_a
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@bc
    add-int p3, p3, v2

    #@be
    goto :goto_0

    #@bf
    .line 719
    :cond_b
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@c1
    move/from16 v0, p4

    #@c3
    if-ne v0, v2, :cond_5

    #@c5
    .line 720
    const/4 v2, 0x2

    #@c6
    if-eq v8, v2, :cond_c

    #@c8
    const/4 v2, 0x3

    #@c9
    if-ne v8, v2, :cond_5

    #@cb
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@ce
    move-result v2

    #@cf
    move/from16 v0, p4

    #@d1
    if-ne v0, v2, :cond_5

    #@d3
    .line 721
    :cond_c
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@d5
    add-int p4, p4, v2

    #@d7
    goto :goto_1

    #@d8
    .line 749
    :cond_d
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@da
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@dc
    move-object/from16 v0, p2

    #@de
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@e1
    move-result-object v2

    #@e2
    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@e4
    .line 750
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@e6
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@e8
    move/from16 v0, p3

    #@ea
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@ed
    move-result-object v2

    #@ee
    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@f0
    .line 751
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@f2
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@f4
    move/from16 v0, p4

    #@f6
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@f9
    move-result-object v2

    #@fa
    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@fc
    .line 752
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@fe
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@100
    move/from16 v0, p5

    #@102
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@105
    move-result-object v2

    #@106
    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@108
    .line 753
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    #@10a
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@10c
    iget v13, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    #@10e
    invoke-static {v2, v3, v13}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@111
    move-result-object v2

    #@112
    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanOrder:[I

    #@114
    .line 754
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@116
    invoke-direct {p0, v2}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    #@119
    .line 755
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@11b
    add-int/lit8 v2, v2, 0x1

    #@11d
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@11f
    .line 756
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    #@121
    add-int/lit8 v2, v2, 0x1

    #@123
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    #@125
    .line 760
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@128
    move-result v2

    #@129
    mul-int/lit8 v2, v2, 0x2

    #@12b
    add-int/lit8 v12, v2, 0x1

    #@12d
    .line 761
    .local v12, "sizeOfMax":I
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@12f
    array-length v2, v2

    #@130
    if-ge v2, v12, :cond_e

    #@132
    .line 762
    new-array v2, v12, [I

    #@134
    iput-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@136
    .line 765
    :cond_e
    if-eqz p1, :cond_f

    #@138
    .line 766
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@13b
    .line 767
    move-object/from16 v0, p2

    #@13d
    invoke-direct {p0, v0, v6, v7}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    #@140
    .line 683
    :cond_f
    return-void
.end method

.method private final siftDown(I[Ljava/lang/Object;I[I[I)V
    .locals 5
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

    #@0
    .prologue
    .line 1053
    .local p2, "array":[Ljava/lang/Object;, "[TT;"
    aget-object v3, p2, p1

    #@2
    .line 1054
    .local v3, "v":Ljava/lang/Object;, "TT;"
    aget v2, p4, p1

    #@4
    .line 1055
    .local v2, "prio":I
    aget v0, p5, p1

    #@6
    .line 1057
    .local v0, "insertOrder":I
    mul-int/lit8 v4, p1, 0x2

    #@8
    add-int/lit8 v1, v4, 0x1

    #@a
    .line 1058
    .local v1, "left":I
    :goto_0
    if-ge v1, p3, :cond_1

    #@c
    .line 1059
    add-int/lit8 v4, p3, -0x1

    #@e
    if-ge v1, v4, :cond_0

    #@10
    add-int/lit8 v4, v1, 0x1

    #@12
    invoke-direct {p0, v1, v4, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    #@15
    move-result v4

    #@16
    if-gez v4, :cond_0

    #@18
    .line 1060
    add-int/lit8 v1, v1, 0x1

    #@1a
    .line 1062
    :cond_0
    invoke-direct {p0, p1, v1, p4, p5}, Landroid/text/SpannableStringBuilder;->compareSpans(II[I[I)I

    #@1d
    move-result v4

    #@1e
    if-ltz v4, :cond_2

    #@20
    .line 1071
    :cond_1
    aput-object v3, p2, p1

    #@22
    .line 1072
    aput v2, p4, p1

    #@24
    .line 1073
    aput v0, p5, p1

    #@26
    .line 1052
    return-void

    #@27
    .line 1065
    :cond_2
    aget-object v4, p2, v1

    #@29
    aput-object v4, p2, p1

    #@2b
    .line 1066
    aget v4, p4, v1

    #@2d
    aput v4, p4, p1

    #@2f
    .line 1067
    aget v4, p5, v1

    #@31
    aput v4, p5, p1

    #@33
    .line 1068
    move p1, v1

    #@34
    .line 1069
    mul-int/lit8 v4, v1, 0x2

    #@36
    add-int/lit8 v1, v4, 0x1

    #@38
    goto :goto_0
.end method

.method private final sort([Ljava/lang/Object;[I[I)V
    .locals 13
    .param p2, "priority"    # [I
    .param p3, "insertionOrder"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[I[I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1022
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v3, p1

    #@1
    .line 1023
    .local v3, "size":I
    div-int/lit8 v0, v3, 0x2

    #@3
    add-int/lit8 v1, v0, -0x1

    #@5
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    #@7
    move-object v0, p0

    #@8
    move-object v2, p1

    #@9
    move-object v4, p2

    #@a
    move-object/from16 v5, p3

    #@c
    .line 1024
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    #@f
    .line 1023
    add-int/lit8 v1, v1, -0x1

    #@11
    goto :goto_0

    #@12
    .line 1027
    :cond_0
    add-int/lit8 v1, v3, -0x1

    #@14
    :goto_1
    if-lez v1, :cond_1

    #@16
    .line 1028
    const/4 v0, 0x0

    #@17
    aget-object v12, p1, v0

    #@19
    .line 1029
    .local v12, "v":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    #@1a
    aget v11, p2, v0

    #@1c
    .line 1030
    .local v11, "prio":I
    const/4 v0, 0x0

    #@1d
    aget v10, p3, v0

    #@1f
    .line 1031
    .local v10, "insertOrder":I
    aget-object v0, p1, v1

    #@21
    const/4 v2, 0x0

    #@22
    aput-object v0, p1, v2

    #@24
    .line 1032
    aget v0, p2, v1

    #@26
    const/4 v2, 0x0

    #@27
    aput v0, p2, v2

    #@29
    .line 1033
    aget v0, p3, v1

    #@2b
    const/4 v2, 0x0

    #@2c
    aput v0, p3, v2

    #@2e
    .line 1034
    const/4 v5, 0x0

    #@2f
    move-object v4, p0

    #@30
    move-object v6, p1

    #@31
    move v7, v1

    #@32
    move-object v8, p2

    #@33
    move-object/from16 v9, p3

    #@35
    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->siftDown(I[Ljava/lang/Object;I[I[I)V

    #@38
    .line 1035
    aput-object v12, p1, v1

    #@3a
    .line 1036
    aput v11, p2, v1

    #@3c
    .line 1037
    aput v10, p3, v1

    #@3e
    .line 1027
    add-int/lit8 v1, v1, -0x1

    #@40
    goto :goto_1

    #@41
    .line 1021
    .end local v10    # "insertOrder":I
    .end local v11    # "prio":I
    .end local v12    # "v":Ljava/lang/Object;, "TT;"
    :cond_1
    return-void
.end method

.method private treeRoot()I
    .locals 1

    #@0
    .prologue
    .line 1615
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, -0x1

    #@8
    return v0
.end method

.method private updatedIntervalBound(IIIIZZ)I
    .locals 2
    .param p1, "offset"    # I
    .param p2, "start"    # I
    .param p3, "nbNewChars"    # I
    .param p4, "flag"    # I
    .param p5, "atEnd"    # Z
    .param p6, "textIsRemoved"    # Z

    #@0
    .prologue
    .line 449
    if-lt p1, p2, :cond_5

    #@2
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@4
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@6
    add-int/2addr v0, v1

    #@7
    if-ge p1, v0, :cond_5

    #@9
    .line 450
    const/4 v0, 0x2

    #@a
    if-ne p4, v0, :cond_1

    #@c
    .line 455
    if-nez p6, :cond_0

    #@e
    if-le p1, p2, :cond_5

    #@10
    .line 456
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@12
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@14
    add-int/2addr v0, v1

    #@15
    return v0

    #@16
    .line 459
    :cond_1
    const/4 v0, 0x3

    #@17
    if-ne p4, v0, :cond_2

    #@19
    .line 460
    if-eqz p5, :cond_5

    #@1b
    .line 461
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1d
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1f
    add-int/2addr v0, v1

    #@20
    return v0

    #@21
    .line 467
    :cond_2
    if-nez p6, :cond_3

    #@23
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@25
    sub-int/2addr v0, p3

    #@26
    if-ge p1, v0, :cond_4

    #@28
    .line 468
    :cond_3
    return p2

    #@29
    .line 471
    :cond_4
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@2b
    return v0

    #@2c
    .line 476
    :cond_5
    return p1
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 109
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 110
    check-cast p0, Landroid/text/SpannableStringBuilder;

    #@6
    .end local p0    # "source":Ljava/lang/CharSequence;
    return-object p0

    #@7
    .line 112
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@9
    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@c
    return-object v0
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .locals 1
    .param p1, "text"    # C

    #@0
    .prologue
    .line 295
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 268
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 289
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p1, "text"    # C

    #@0
    .prologue
    .line 296
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3
    move-result v1

    #@4
    .line 270
    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v5

    #@8
    const/4 v4, 0x0

    #@9
    move-object v0, p0

    #@a
    move v2, v1

    #@b
    move-object v3, p1

    #@c
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3
    move-result v1

    #@4
    .local v1, "length":I
    move-object v0, p0

    #@5
    move v2, v1

    #@6
    move-object v3, p1

    #@7
    move v4, p2

    #@8
    move v5, p3

    #@9
    .line 291
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 282
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3
    move-result v0

    #@4
    .line 283
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@7
    .line 284
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@e
    .line 285
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 295
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 289
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public charAt(I)C
    .locals 4
    .param p1, "where"    # I

    #@0
    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3
    move-result v0

    #@4
    .line 121
    .local v0, "len":I
    if-gez p1, :cond_0

    #@6
    .line 122
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "charAt: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, " < 0"

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 123
    :cond_0
    if-lt p1, v0, :cond_1

    #@29
    .line 124
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@2b
    new-instance v2, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v3, "charAt: "

    #@33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    const-string/jumbo v3, " >= length "

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v1

    #@4e
    .line 127
    :cond_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@50
    if-lt p1, v1, :cond_2

    #@52
    .line 128
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@54
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@56
    add-int/2addr v2, p1

    #@57
    aget-char v1, v1, v2

    #@59
    return v1

    #@5a
    .line 130
    :cond_2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@5c
    aget-char v1, v1, p1

    #@5e
    return v1
.end method

.method public clear()V
    .locals 6

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 240
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@4
    move-result v2

    #@5
    const-string/jumbo v3, ""

    #@8
    move-object v0, p0

    #@9
    move v4, v1

    #@a
    move v5, v1

    #@b
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@e
    .line 241
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    #@10
    .line 239
    return-void
.end method

.method public clearSpans()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 246
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@4
    add-int/lit8 v0, v4, -0x1

    #@6
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@8
    .line 247
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@a
    aget-object v3, v4, v0

    #@c
    .line 248
    .local v3, "what":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@e
    aget v2, v4, v0

    #@10
    .line 249
    .local v2, "ostart":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@12
    aget v1, v4, v0

    #@14
    .line 251
    .local v1, "oend":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@16
    if-le v2, v4, :cond_0

    #@18
    .line 252
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1a
    sub-int/2addr v2, v4

    #@1b
    .line 253
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1d
    if-le v1, v4, :cond_1

    #@1f
    .line 254
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@21
    sub-int/2addr v1, v4

    #@22
    .line 256
    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@24
    .line 257
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@26
    aput-object v6, v4, v0

    #@28
    .line 259
    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    #@2b
    .line 246
    add-int/lit8 v0, v0, -0x1

    #@2d
    goto :goto_0

    #@2e
    .line 261
    .end local v1    # "oend":I
    .end local v2    # "ostart":I
    .end local v3    # "what":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@30
    if-eqz v4, :cond_3

    #@32
    .line 262
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@34
    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->clear()V

    #@37
    .line 264
    :cond_3
    iput v5, p0, Landroid/text/SpannableStringBuilder;->mSpanInsertCount:I

    #@39
    .line 245
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 229
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 230
    const-string/jumbo v3, ""

    #@4
    move-object v0, p0

    #@5
    move v1, p1

    #@6
    move v2, p2

    #@7
    move v5, v4

    #@8
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@b
    move-result-object v6

    #@c
    .line 232
    .local v6, "ret":Landroid/text/SpannableStringBuilder;
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@e
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@11
    move-result v1

    #@12
    mul-int/lit8 v1, v1, 0x2

    #@14
    if-le v0, v1, :cond_0

    #@16
    .line 233
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@19
    move-result v0

    #@1a
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    #@1d
    .line 235
    :cond_0
    return-object v6
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1361
    const-string/jumbo v0, "drawText"

    #@4
    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@7
    .line 1363
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@9
    if-gt p3, v0, :cond_0

    #@b
    .line 1364
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@d
    sub-int v3, p3, p2

    #@f
    move-object v0, p1

    #@10
    move v2, p2

    #@11
    move v4, p4

    #@12
    move v5, p5

    #@13
    move-object v6, p6

    #@14
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    #@17
    .line 1360
    :goto_0
    return-void

    #@18
    .line 1365
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1a
    if-lt p2, v0, :cond_1

    #@1c
    .line 1366
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@1e
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@20
    add-int v2, p2, v0

    #@22
    sub-int v3, p3, p2

    #@24
    move-object v0, p1

    #@25
    move v4, p4

    #@26
    move v5, p5

    #@27
    move-object v6, p6

    #@28
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    #@2b
    goto :goto_0

    #@2c
    .line 1368
    :cond_1
    sub-int v0, p3, p2

    #@2e
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    #@31
    move-result-object v1

    #@32
    .line 1370
    .local v1, "buf":[C
    invoke-virtual {p0, p2, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@35
    .line 1371
    sub-int v3, p3, p2

    #@37
    move-object v0, p1

    #@38
    move v4, p4

    #@39
    move v5, p5

    #@3a
    move-object v6, p6

    #@3b
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    #@3e
    .line 1372
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    #@41
    goto :goto_0
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1383
    const-string/jumbo v0, "drawTextRun"

    #@3
    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@6
    .line 1385
    sub-int v5, p5, p4

    #@8
    .line 1386
    .local v5, "contextLen":I
    sub-int v3, p3, p2

    #@a
    .line 1387
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@c
    if-gt p5, v0, :cond_0

    #@e
    .line 1388
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@10
    move-object v0, p1

    #@11
    move v2, p2

    #@12
    move v4, p4

    #@13
    move/from16 v6, p6

    #@15
    move/from16 v7, p7

    #@17
    move/from16 v8, p8

    #@19
    move-object/from16 v9, p9

    #@1b
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    #@1e
    .line 1382
    :goto_0
    return-void

    #@1f
    .line 1389
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@21
    if-lt p4, v0, :cond_1

    #@23
    .line 1390
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@25
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@27
    add-int v2, p2, v0

    #@29
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@2b
    add-int v4, p4, v0

    #@2d
    move-object v0, p1

    #@2e
    move/from16 v6, p6

    #@30
    move/from16 v7, p7

    #@32
    move/from16 v8, p8

    #@34
    move-object/from16 v9, p9

    #@36
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    #@39
    goto :goto_0

    #@3a
    .line 1393
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    #@3d
    move-result-object v1

    #@3e
    .line 1394
    .local v1, "buf":[C
    const/4 v0, 0x0

    #@3f
    invoke-virtual {p0, p4, p5, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@42
    .line 1395
    sub-int v2, p2, p4

    #@44
    const/4 v4, 0x0

    #@45
    move-object v0, p1

    #@46
    move/from16 v6, p6

    #@48
    move/from16 v7, p7

    #@4a
    move/from16 v8, p8

    #@4c
    move-object/from16 v9, p9

    #@4e
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    #@51
    .line 1396
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    #@54
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1543
    instance-of v5, p1, Landroid/text/Spanned;

    #@3
    if-eqz v5, :cond_7

    #@5
    .line 1544
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@c
    move-result-object v6

    #@d
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v5

    #@11
    .line 1543
    if-eqz v5, :cond_7

    #@13
    move-object v1, p1

    #@14
    .line 1545
    check-cast v1, Landroid/text/Spanned;

    #@16
    .line 1547
    .local v1, "other":Landroid/text/Spanned;
    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    #@19
    move-result v5

    #@1a
    const-class v6, Ljava/lang/Object;

    #@1c
    invoke-interface {v1, v7, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1f
    move-result-object v3

    #@20
    .line 1548
    .local v3, "otherSpans":[Ljava/lang/Object;
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@22
    array-length v6, v3

    #@23
    if-ne v5, v6, :cond_7

    #@25
    .line 1549
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@28
    if-ge v0, v5, :cond_6

    #@2a
    .line 1550
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@2c
    aget-object v4, v5, v0

    #@2e
    .line 1551
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v2, v3, v0

    #@30
    .line 1552
    .local v2, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_3

    #@32
    .line 1553
    if-ne v1, v2, :cond_0

    #@34
    .line 1554
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@37
    move-result v5

    #@38
    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@3b
    move-result v6

    #@3c
    if-eq v5, v6, :cond_1

    #@3e
    .line 1557
    :cond_0
    return v7

    #@3f
    .line 1555
    :cond_1
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    #@42
    move-result v5

    #@43
    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@46
    move-result v6

    #@47
    if-ne v5, v6, :cond_0

    #@49
    .line 1556
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    #@4c
    move-result v5

    #@4d
    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@50
    move-result v6

    #@51
    if-ne v5, v6, :cond_0

    #@53
    .line 1549
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_0

    #@56
    .line 1559
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_4

    #@5c
    .line 1560
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@5f
    move-result v5

    #@60
    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@63
    move-result v6

    #@64
    if-eq v5, v6, :cond_5

    #@66
    .line 1563
    :cond_4
    :goto_1
    return v7

    #@67
    .line 1561
    :cond_5
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    #@6a
    move-result v5

    #@6b
    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@6e
    move-result v6

    #@6f
    if-ne v5, v6, :cond_4

    #@71
    .line 1562
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    #@74
    move-result v5

    #@75
    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@78
    move-result v6

    #@79
    if-eq v5, v6, :cond_2

    #@7b
    goto :goto_1

    #@7c
    .line 1566
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_6
    const/4 v5, 0x1

    #@7d
    return v5

    #@7e
    .line 1569
    .end local v0    # "i":I
    .end local v1    # "other":Landroid/text/Spanned;
    .end local v3    # "otherSpans":[Ljava/lang/Object;
    :cond_7
    return v7
.end method

.method public getChars(II[CI)V
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    #@0
    .prologue
    .line 1147
    const-string/jumbo v0, "getChars"

    #@3
    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@6
    .line 1149
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@8
    if-gt p2, v0, :cond_0

    #@a
    .line 1150
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@c
    sub-int v1, p2, p1

    #@e
    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@11
    .line 1146
    :goto_0
    return-void

    #@12
    .line 1151
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@14
    if-lt p1, v0, :cond_1

    #@16
    .line 1152
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@18
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1a
    add-int/2addr v1, p1

    #@1b
    sub-int v2, p2, p1

    #@1d
    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@20
    goto :goto_0

    #@21
    .line 1154
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@23
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@25
    sub-int/2addr v1, p1

    #@26
    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@29
    .line 1155
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@2b
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@2d
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@2f
    add-int/2addr v1, v2

    #@30
    .line 1156
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@32
    sub-int/2addr v2, p1

    #@33
    add-int/2addr v2, p4

    #@34
    .line 1157
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@36
    sub-int v3, p2, v3

    #@38
    .line 1155
    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@3b
    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    #@0
    .prologue
    .line 1537
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    #@2
    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 826
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    .line 827
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@8
    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    .line 828
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@10
    :goto_0
    return v1

    #@11
    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v2

    #@17
    aget v1, v1, v2

    #@19
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    #@1c
    move-result v1

    #@1d
    goto :goto_0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 836
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    .line 837
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@8
    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    .line 838
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@10
    :goto_0
    return v1

    #@11
    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v2

    #@17
    aget v1, v1, v2

    #@19
    goto :goto_0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 3
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 816
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    .line 817
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@8
    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    .line 818
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_1

    #@10
    :goto_0
    return v1

    #@11
    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@16
    move-result v2

    #@17
    aget v1, v1, v2

    #@19
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    #@1c
    move-result v1

    #@1d
    goto :goto_0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 848
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;
    .locals 11
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p4, "sort"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;Z)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    #@1
    .line 867
    if-nez p3, :cond_0

    #@3
    const-class v0, Ljava/lang/Object;

    #@5
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 868
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@c
    if-nez v0, :cond_1

    #@e
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 869
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@16
    move-result v0

    #@17
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    #@1a
    move-result v10

    #@1b
    .line 870
    .local v10, "count":I
    if-nez v10, :cond_2

    #@1d
    .line 871
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 875
    :cond_2
    invoke-static {p3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@25
    move-result-object v5

    #@26
    check-cast v5, [Ljava/lang/Object;

    #@28
    .line 876
    .local v5, "ret":[Ljava/lang/Object;, "[TT;"
    if-eqz p4, :cond_3

    #@2a
    .line 877
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mPrioSortBuffer:[I

    #@2c
    invoke-direct {p0, v0, v10}, Landroid/text/SpannableStringBuilder;->checkSortBuffer([II)[I

    #@2f
    move-result-object v0

    #@30
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mPrioSortBuffer:[I

    #@32
    .line 878
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mOrderSortBuffer:[I

    #@34
    invoke-direct {p0, v0, v10}, Landroid/text/SpannableStringBuilder;->checkSortBuffer([II)[I

    #@37
    move-result-object v0

    #@38
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mOrderSortBuffer:[I

    #@3a
    .line 880
    :cond_3
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@3d
    move-result v4

    #@3e
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mPrioSortBuffer:[I

    #@40
    .line 881
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mOrderSortBuffer:[I

    #@42
    move-object v0, p0

    #@43
    move v1, p1

    #@44
    move v2, p2

    #@45
    move-object v3, p3

    #@46
    move v9, p4

    #@47
    .line 880
    invoke-direct/range {v0 .. v9}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;[I[IIZ)I

    #@4a
    .line 882
    if-eqz p4, :cond_4

    #@4c
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mPrioSortBuffer:[I

    #@4e
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mOrderSortBuffer:[I

    #@50
    invoke-direct {p0, v5, v0, v1}, Landroid/text/SpannableStringBuilder;->sort([Ljava/lang/Object;[I[I)V

    #@53
    .line 883
    :cond_4
    return-object v5
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "contextStart"    # I
    .param p4, "contextEnd"    # I
    .param p5, "isRtl"    # Z
    .param p6, "advances"    # [F
    .param p7, "advancesPos"    # I
    .param p8, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    .line 1457
    sub-int v5, p4, p3

    #@2
    .line 1458
    .local v5, "contextLen":I
    sub-int v3, p2, p1

    #@4
    .line 1460
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@6
    if-gt p2, v0, :cond_0

    #@8
    .line 1461
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@a
    move-object/from16 v0, p8

    #@c
    move v2, p1

    #@d
    move v4, p3

    #@e
    move v6, p5

    #@f
    move-object/from16 v7, p6

    #@11
    move/from16 v8, p7

    #@13
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    #@16
    move-result v9

    #@17
    .line 1474
    .local v9, "ret":F
    :goto_0
    return v9

    #@18
    .line 1463
    .end local v9    # "ret":F
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1a
    if-lt p1, v0, :cond_1

    #@1c
    .line 1464
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@1e
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@20
    add-int v2, p1, v0

    #@22
    .line 1465
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@24
    add-int v4, p3, v0

    #@26
    move-object/from16 v0, p8

    #@28
    move v6, p5

    #@29
    move-object/from16 v7, p6

    #@2b
    move/from16 v8, p7

    #@2d
    .line 1464
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    #@30
    move-result v9

    #@31
    .restart local v9    # "ret":F
    goto :goto_0

    #@32
    .line 1467
    .end local v9    # "ret":F
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    #@35
    move-result-object v1

    #@36
    .line 1468
    .local v1, "buf":[C
    const/4 v0, 0x0

    #@37
    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@3a
    .line 1469
    sub-int v2, p1, p3

    #@3c
    .line 1470
    const/4 v4, 0x0

    #@3d
    move-object/from16 v0, p8

    #@3f
    move v6, p5

    #@40
    move-object/from16 v7, p6

    #@42
    move/from16 v8, p7

    #@44
    .line 1469
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    #@47
    move-result v9

    #@48
    .line 1471
    .restart local v9    # "ret":F
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    #@4b
    goto :goto_0
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 8
    .param p1, "contextStart"    # I
    .param p2, "contextEnd"    # I
    .param p3, "dir"    # I
    .param p4, "offset"    # I
    .param p5, "cursorOpt"    # I
    .param p6, "p"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1508
    sub-int v3, p2, p1

    #@3
    .line 1509
    .local v3, "contextLen":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@5
    if-gt p2, v0, :cond_0

    #@7
    .line 1510
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@9
    move-object v0, p6

    #@a
    move v2, p1

    #@b
    move v4, p3

    #@c
    move v5, p4

    #@d
    move v6, p5

    #@e
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    #@11
    move-result v7

    #@12
    .line 1523
    .local v7, "ret":I
    :goto_0
    return v7

    #@13
    .line 1512
    .end local v7    # "ret":I
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@15
    if-lt p1, v0, :cond_1

    #@17
    .line 1513
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@19
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1b
    add-int v2, p1, v0

    #@1d
    .line 1514
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1f
    add-int v5, p4, v0

    #@21
    move-object v0, p6

    #@22
    move v4, p3

    #@23
    move v6, p5

    #@24
    .line 1513
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    #@27
    move-result v0

    #@28
    .line 1514
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@2a
    .line 1513
    sub-int v7, v0, v2

    #@2c
    .restart local v7    # "ret":I
    goto :goto_0

    #@2d
    .line 1516
    .end local v7    # "ret":I
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    #@30
    move-result-object v1

    #@31
    .line 1517
    .local v1, "buf":[C
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@34
    .line 1519
    sub-int v5, p4, p1

    #@36
    move-object v0, p6

    #@37
    move v4, p3

    #@38
    move v6, p5

    #@39
    .line 1518
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    #@3c
    move-result v0

    #@3d
    add-int v7, v0, p1

    #@3f
    .line 1520
    .restart local v7    # "ret":I
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    #@42
    goto :goto_0
.end method

.method public getTextWatcherDepth()I
    .locals 1

    #@0
    .prologue
    .line 1190
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@2
    return v0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "widths"    # [F
    .param p4, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1429
    const-string/jumbo v2, "getTextWidths"

    #@4
    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@7
    .line 1433
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@9
    if-gt p2, v2, :cond_0

    #@b
    .line 1434
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@d
    sub-int v3, p2, p1

    #@f
    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    #@12
    move-result v1

    #@13
    .line 1445
    .local v1, "ret":I
    :goto_0
    return v1

    #@14
    .line 1435
    .end local v1    # "ret":I
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@16
    if-lt p1, v2, :cond_1

    #@18
    .line 1436
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@1a
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1c
    add-int/2addr v3, p1

    #@1d
    sub-int v4, p2, p1

    #@1f
    invoke-virtual {p4, v2, v3, v4, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    #@22
    move-result v1

    #@23
    .restart local v1    # "ret":I
    goto :goto_0

    #@24
    .line 1438
    .end local v1    # "ret":I
    :cond_1
    sub-int v2, p2, p1

    #@26
    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    #@29
    move-result-object v0

    #@2a
    .line 1440
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@2d
    .line 1441
    sub-int v2, p2, p1

    #@2f
    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    #@32
    move-result v1

    #@33
    .line 1442
    .restart local v1    # "ret":I
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    #@36
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 1575
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    .line 1576
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    #@a
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@c
    add-int v0, v3, v4

    #@e
    .line 1577
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@11
    if-ge v1, v3, :cond_1

    #@13
    .line 1578
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@15
    aget-object v2, v3, v1

    #@17
    .line 1579
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_0

    #@19
    .line 1580
    mul-int/lit8 v3, v0, 0x1f

    #@1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@1e
    move-result v4

    #@1f
    add-int v0, v3, v4

    #@21
    .line 1582
    :cond_0
    mul-int/lit8 v3, v0, 0x1f

    #@23
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@26
    move-result v4

    #@27
    add-int v0, v3, v4

    #@29
    .line 1583
    mul-int/lit8 v3, v0, 0x1f

    #@2b
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    #@2e
    move-result v4

    #@2f
    add-int v0, v3, v4

    #@31
    .line 1584
    mul-int/lit8 v3, v0, 0x1f

    #@33
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    #@36
    move-result v4

    #@37
    add-int v0, v3, v4

    #@39
    .line 1577
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1586
    .end local v2    # "span":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 224
    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    .line 219
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 225
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v5

    #@4
    const/4 v4, 0x0

    #@5
    move-object v0, p0

    #@6
    move v1, p1

    #@7
    move v2, p1

    #@8
    move-object v3, p2

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "where"    # I
    .param p2, "tb"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I

    #@0
    .prologue
    move-object v0, p0

    #@1
    move v1, p1

    #@2
    move v2, p1

    #@3
    move-object v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    .line 220
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public length()I
    .locals 2

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@2
    array-length v0, v0

    #@3
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@5
    sub-int/2addr v0, v1

    #@6
    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "p"    # Landroid/graphics/Paint;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1405
    const-string/jumbo v2, "measureText"

    #@4
    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@7
    .line 1409
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@9
    if-gt p2, v2, :cond_0

    #@b
    .line 1410
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@d
    sub-int v3, p2, p1

    #@f
    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    #@12
    move-result v1

    #@13
    .line 1421
    .local v1, "ret":F
    :goto_0
    return v1

    #@14
    .line 1411
    .end local v1    # "ret":F
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@16
    if-lt p1, v2, :cond_1

    #@18
    .line 1412
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@1a
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1c
    add-int/2addr v3, p1

    #@1d
    sub-int v4, p2, p1

    #@1f
    invoke-virtual {p3, v2, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    #@22
    move-result v1

    #@23
    .restart local v1    # "ret":F
    goto :goto_0

    #@24
    .line 1414
    .end local v1    # "ret":F
    :cond_1
    sub-int v2, p2, p1

    #@26
    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    #@29
    move-result-object v0

    #@2a
    .line 1416
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@2d
    .line 1417
    sub-int v2, p2, p1

    #@2f
    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    #@32
    move-result v1

    #@33
    .line 1418
    .restart local v1    # "ret":F
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    #@36
    goto :goto_0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1104
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@2
    if-nez v0, :cond_0

    #@4
    return p2

    #@5
    .line 1105
    :cond_0
    if-nez p3, :cond_1

    #@7
    .line 1106
    const-class p3, Ljava/lang/Object;

    #@9
    .line 1108
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@c
    move-result v0

    #@d
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 2
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 797
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 798
    :cond_0
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/Integer;

    #@d
    .line 799
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@f
    .line 800
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v1

    #@13
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    #@16
    .line 796
    :cond_1
    return-void
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 508
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    #@0
    .prologue
    .line 513
    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 509
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v5

    #@4
    const/4 v4, 0x0

    #@5
    move-object v0, p0

    #@6
    move v1, p1

    #@7
    move v2, p2

    #@8
    move-object v3, p3

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 27
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    #@0
    .prologue
    .line 515
    const-string/jumbo v6, "replace"

    #@3
    move-object/from16 v0, p0

    #@5
    move/from16 v1, p1

    #@7
    move/from16 v2, p2

    #@9
    invoke-direct {v0, v6, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@c
    .line 517
    move-object/from16 v0, p0

    #@e
    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    #@10
    array-length v0, v6

    #@11
    move/from16 v20, v0

    #@13
    .line 518
    .local v20, "filtercount":I
    const/16 v21, 0x0

    #@15
    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    #@17
    move/from16 v1, v20

    #@19
    if-ge v0, v1, :cond_1

    #@1b
    .line 519
    move-object/from16 v0, p0

    #@1d
    iget-object v6, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    #@1f
    aget-object v6, v6, v21

    #@21
    move-object/from16 v7, p3

    #@23
    move/from16 v8, p4

    #@25
    move/from16 v9, p5

    #@27
    move-object/from16 v10, p0

    #@29
    move/from16 v11, p1

    #@2b
    move/from16 v12, p2

    #@2d
    invoke-interface/range {v6 .. v12}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    #@30
    move-result-object v25

    #@31
    .line 521
    .local v25, "repl":Ljava/lang/CharSequence;
    if-eqz v25, :cond_0

    #@33
    .line 522
    move-object/from16 p3, v25

    #@35
    .line 523
    const/16 p4, 0x0

    #@37
    .line 524
    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    #@3a
    move-result p5

    #@3b
    .line 518
    :cond_0
    add-int/lit8 v21, v21, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 528
    .end local v25    # "repl":Ljava/lang/CharSequence;
    :cond_1
    sub-int v24, p2, p1

    #@40
    .line 529
    .local v24, "origLen":I
    sub-int v22, p5, p4

    #@42
    .line 531
    .local v22, "newLen":I
    if-nez v24, :cond_2

    #@44
    if-nez v22, :cond_2

    #@46
    invoke-static/range {p3 .. p4}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    #@49
    move-result v6

    #@4a
    if-eqz v6, :cond_7

    #@4c
    .line 537
    :cond_2
    add-int v6, p1, v24

    #@4e
    const-class v7, Landroid/text/TextWatcher;

    #@50
    move-object/from16 v0, p0

    #@52
    move/from16 v1, p1

    #@54
    invoke-virtual {v0, v1, v6, v7}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@57
    move-result-object v26

    #@58
    check-cast v26, [Landroid/text/TextWatcher;

    #@5a
    .line 538
    .local v26, "textWatchers":[Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    #@5c
    move-object/from16 v1, v26

    #@5e
    move/from16 v2, p1

    #@60
    move/from16 v3, v24

    #@62
    move/from16 v4, v22

    #@64
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    #@67
    .line 543
    if-eqz v24, :cond_8

    #@69
    if-eqz v22, :cond_8

    #@6b
    const/16 v16, 0x1

    #@6d
    .line 544
    .local v16, "adjustSelection":Z
    :goto_1
    const/4 v9, 0x0

    #@6e
    .line 545
    .local v9, "selectionStart":I
    const/4 v13, 0x0

    #@6f
    .line 546
    .local v13, "selectionEnd":I
    if-eqz v16, :cond_3

    #@71
    .line 547
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@74
    move-result v9

    #@75
    .line 548
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@78
    move-result v13

    #@79
    .line 551
    :cond_3
    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    #@7c
    .line 553
    if-eqz v16, :cond_6

    #@7e
    .line 554
    const/16 v17, 0x0

    #@80
    .line 555
    .local v17, "changed":Z
    move/from16 v0, p1

    #@82
    if-le v9, v0, :cond_4

    #@84
    move/from16 v0, p2

    #@86
    if-ge v9, v0, :cond_4

    #@88
    .line 556
    sub-int v6, v9, p1

    #@8a
    int-to-long v0, v6

    #@8b
    move-wide/from16 v18, v0

    #@8d
    .line 557
    .local v18, "diff":J
    move/from16 v0, v22

    #@8f
    int-to-long v6, v0

    #@90
    mul-long v6, v6, v18

    #@92
    move/from16 v0, v24

    #@94
    int-to-long v10, v0

    #@95
    div-long/2addr v6, v10

    #@96
    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    #@99
    move-result v23

    #@9a
    .line 558
    .local v23, "offset":I
    add-int v9, p1, v23

    #@9c
    .line 560
    const/16 v17, 0x1

    #@9e
    .line 561
    sget-object v8, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    #@a0
    const/4 v7, 0x0

    #@a1
    .line 562
    const/16 v11, 0x22

    #@a3
    move-object/from16 v6, p0

    #@a5
    move v10, v9

    #@a6
    .line 561
    invoke-direct/range {v6 .. v11}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    #@a9
    .line 564
    .end local v18    # "diff":J
    .end local v23    # "offset":I
    :cond_4
    move/from16 v0, p1

    #@ab
    if-le v13, v0, :cond_5

    #@ad
    move/from16 v0, p2

    #@af
    if-ge v13, v0, :cond_5

    #@b1
    .line 565
    sub-int v6, v13, p1

    #@b3
    int-to-long v0, v6

    #@b4
    move-wide/from16 v18, v0

    #@b6
    .line 566
    .restart local v18    # "diff":J
    move/from16 v0, v22

    #@b8
    int-to-long v6, v0

    #@b9
    mul-long v6, v6, v18

    #@bb
    move/from16 v0, v24

    #@bd
    int-to-long v10, v0

    #@be
    div-long/2addr v6, v10

    #@bf
    invoke-static {v6, v7}, Ljava/lang/Math;->toIntExact(J)I

    #@c2
    move-result v23

    #@c3
    .line 567
    .restart local v23    # "offset":I
    add-int v13, p1, v23

    #@c5
    .line 569
    const/16 v17, 0x1

    #@c7
    .line 570
    sget-object v12, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@c9
    const/4 v11, 0x0

    #@ca
    .line 571
    const/16 v15, 0x22

    #@cc
    move-object/from16 v10, p0

    #@ce
    move v14, v13

    #@cf
    .line 570
    invoke-direct/range {v10 .. v15}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    #@d2
    .line 573
    .end local v18    # "diff":J
    .end local v23    # "offset":I
    :cond_5
    if-eqz v17, :cond_6

    #@d4
    .line 574
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@d7
    .line 578
    .end local v17    # "changed":Z
    :cond_6
    move-object/from16 v0, p0

    #@d9
    move-object/from16 v1, v26

    #@db
    move/from16 v2, p1

    #@dd
    move/from16 v3, v24

    #@df
    move/from16 v4, v22

    #@e1
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    #@e4
    .line 579
    move-object/from16 v0, p0

    #@e6
    move-object/from16 v1, v26

    #@e8
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    #@eb
    .line 582
    sub-int v6, v22, v24

    #@ed
    move-object/from16 v0, p0

    #@ef
    move/from16 v1, p1

    #@f1
    move/from16 v2, p2

    #@f3
    invoke-direct {v0, v1, v2, v6}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    #@f6
    .line 584
    return-object p0

    #@f7
    .line 534
    .end local v9    # "selectionStart":I
    .end local v13    # "selectionEnd":I
    .end local v16    # "adjustSelection":Z
    .end local v26    # "textWatchers":[Landroid/text/TextWatcher;
    :cond_7
    return-object p0

    #@f8
    .line 543
    .restart local v26    # "textWatchers":[Landroid/text/TextWatcher;
    :cond_8
    const/16 v16, 0x0

    #@fa
    goto/16 :goto_1
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    #@0
    .prologue
    .line 1528
    if-nez p1, :cond_0

    #@2
    .line 1529
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1532
    :cond_0
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    #@a
    .line 1527
    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 677
    const/4 v1, 0x1

    #@1
    move-object v0, p0

    #@2
    move-object v2, p1

    #@3
    move v3, p2

    #@4
    move v4, p3

    #@5
    move v5, p4

    #@6
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    #@9
    .line 676
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1139
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    #@5
    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 1179
    sub-int v1, p2, p1

    #@2
    new-array v0, v1, [C

    #@4
    .line 1180
    .local v0, "buf":[C
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@8
    .line 1181
    new-instance v1, Ljava/lang/String;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@d
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1166
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@4
    move-result v1

    #@5
    .line 1167
    .local v1, "len":I
    new-array v0, v1, [C

    #@7
    .line 1169
    .local v0, "buf":[C
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@a
    .line 1170
    new-instance v2, Ljava/lang/String;

    #@c
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    #@f
    return-object v2
.end method
