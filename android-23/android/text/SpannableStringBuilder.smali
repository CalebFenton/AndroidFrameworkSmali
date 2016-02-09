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

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanMax:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C

.field private mTextWatcherDepth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1526
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Landroid/text/InputFilter;

    #@3
    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    #@5
    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    #@6
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {p0, p1, v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    #@8
    .line 48
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
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1527
    sget-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    #@6
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    #@8
    .line 57
    sub-int v9, p3, p2

    #@a
    .line 59
    .local v9, "srclen":I
    if-gez v9, :cond_0

    #@c
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    #@e
    invoke-direct {v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    #@11
    throw v0

    #@12
    .line 61
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
    .line 62
    iput v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1e
    .line 63
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@20
    array-length v0, v0

    #@21
    sub-int/2addr v0, v9

    #@22
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@24
    .line 65
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@26
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@29
    .line 67
    iput v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@2b
    .line 68
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@2d
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@2f
    .line 69
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@31
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@33
    .line 70
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@35
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@37
    .line 71
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@39
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@3b
    .line 72
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@3d
    iput-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@3f
    .line 74
    instance-of v0, p1, Landroid/text/Spanned;

    #@41
    if-eqz v0, :cond_7

    #@43
    move-object v7, p1

    #@44
    .line 75
    check-cast v7, Landroid/text/Spanned;

    #@46
    .line 76
    .local v7, "sp":Landroid/text/Spanned;
    const-class v0, Ljava/lang/Object;

    #@48
    invoke-interface {v7, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@4b
    move-result-object v8

    #@4c
    .line 78
    .local v8, "spans":[Ljava/lang/Object;
    const/4 v6, 0x0

    #@4d
    .local v6, "i":I
    :goto_0
    array-length v0, v8

    #@4e
    if-ge v6, v0, :cond_6

    #@50
    .line 79
    aget-object v0, v8, v6

    #@52
    instance-of v0, v0, Landroid/text/NoCopySpan;

    #@54
    if-eqz v0, :cond_1

    #@56
    .line 78
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@58
    goto :goto_0

    #@59
    .line 83
    :cond_1
    aget-object v0, v8, v6

    #@5b
    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@5e
    move-result v0

    #@5f
    sub-int v3, v0, p2

    #@61
    .line 84
    .local v3, "st":I
    aget-object v0, v8, v6

    #@63
    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@66
    move-result v0

    #@67
    sub-int v4, v0, p2

    #@69
    .line 85
    .local v4, "en":I
    aget-object v0, v8, v6

    #@6b
    invoke-interface {v7, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@6e
    move-result v5

    #@6f
    .line 87
    .local v5, "fl":I
    if-gez v3, :cond_2

    #@71
    .line 88
    const/4 v3, 0x0

    #@72
    .line 89
    :cond_2
    sub-int v0, p3, p2

    #@74
    if-le v3, v0, :cond_3

    #@76
    .line 90
    sub-int v3, p3, p2

    #@78
    .line 92
    :cond_3
    if-gez v4, :cond_4

    #@7a
    .line 93
    const/4 v4, 0x0

    #@7b
    .line 94
    :cond_4
    sub-int v0, p3, p2

    #@7d
    if-le v4, v0, :cond_5

    #@7f
    .line 95
    sub-int v4, p3, p2

    #@81
    .line 97
    :cond_5
    aget-object v2, v8, v6

    #@83
    move-object v0, p0

    #@84
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    #@87
    goto :goto_1

    #@88
    .line 99
    .end local v3    # "st":I
    .end local v4    # "en":I
    .end local v5    # "fl":I
    :cond_6
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@8b
    .line 56
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
    .line 1461
    const/4 v0, 0x0

    #@1
    .line 1462
    .local v0, "max":I
    and-int/lit8 v1, p1, 0x1

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1464
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    #@8
    move-result v1

    #@9
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    #@c
    move-result v0

    #@d
    .line 1466
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@f
    if-ge p1, v1, :cond_1

    #@11
    .line 1467
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@13
    aget v1, v1, p1

    #@15
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@18
    move-result v0

    #@19
    .line 1468
    and-int/lit8 v1, p1, 0x1

    #@1b
    if-eqz v1, :cond_1

    #@1d
    .line 1469
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
    .line 1472
    :cond_1
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@2b
    aput v0, v1, p1

    #@2d
    .line 1473
    return v0
.end method

.method private change(IILjava/lang/CharSequence;II)V
    .locals 39
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "cs"    # Ljava/lang/CharSequence;
    .param p4, "csStart"    # I
    .param p5, "csEnd"    # I

    #@0
    .prologue
    .line 320
    sub-int v34, p2, p1

    #@2
    .line 321
    .local v34, "replacedLength":I
    sub-int v35, p5, p4

    #@4
    .line 322
    .local v35, "replacementLength":I
    sub-int v12, v35, v34

    #@6
    .line 324
    .local v12, "nbNewChars":I
    const/16 v27, 0x0

    #@8
    .line 325
    .local v27, "changed":Z
    move-object/from16 v0, p0

    #@a
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@c
    add-int/lit8 v31, v4, -0x1

    #@e
    .local v31, "i":I
    :goto_0
    if-ltz v31, :cond_c

    #@10
    .line 326
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@14
    aget v7, v4, v31

    #@16
    .line 327
    .local v7, "spanStart":I
    move-object/from16 v0, p0

    #@18
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1a
    if-le v7, v4, :cond_0

    #@1c
    .line 328
    move-object/from16 v0, p0

    #@1e
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@20
    sub-int/2addr v7, v4

    #@21
    .line 330
    :cond_0
    move-object/from16 v0, p0

    #@23
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@25
    aget v8, v4, v31

    #@27
    .line 331
    .local v8, "spanEnd":I
    move-object/from16 v0, p0

    #@29
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@2b
    if-le v8, v4, :cond_1

    #@2d
    .line 332
    move-object/from16 v0, p0

    #@2f
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@31
    sub-int/2addr v8, v4

    #@32
    .line 334
    :cond_1
    move-object/from16 v0, p0

    #@34
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@36
    aget v4, v4, v31

    #@38
    and-int/lit8 v4, v4, 0x33

    #@3a
    const/16 v5, 0x33

    #@3c
    if-ne v4, v5, :cond_5

    #@3e
    .line 335
    move/from16 v33, v7

    #@40
    .line 336
    .local v33, "ost":I
    move/from16 v32, v8

    #@42
    .line 337
    .local v32, "oen":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@45
    move-result v28

    #@46
    .line 339
    .local v28, "clen":I
    move/from16 v0, p1

    #@48
    if-le v7, v0, :cond_2

    #@4a
    move/from16 v0, p2

    #@4c
    if-gt v7, v0, :cond_2

    #@4e
    .line 340
    move/from16 v7, p2

    #@50
    :goto_1
    move/from16 v0, v28

    #@52
    if-ge v7, v0, :cond_2

    #@54
    .line 341
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
    .line 345
    :cond_2
    move/from16 v0, p1

    #@66
    if-le v8, v0, :cond_3

    #@68
    move/from16 v0, p2

    #@6a
    if-gt v8, v0, :cond_3

    #@6c
    .line 346
    move/from16 v8, p2

    #@6e
    :goto_2
    move/from16 v0, v28

    #@70
    if-ge v8, v0, :cond_3

    #@72
    .line 347
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
    .line 351
    :cond_3
    move/from16 v0, v33

    #@84
    if-ne v7, v0, :cond_4

    #@86
    move/from16 v0, v32

    #@88
    if-eq v8, v0, :cond_5

    #@8a
    .line 352
    :cond_4
    move-object/from16 v0, p0

    #@8c
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@8e
    aget-object v6, v4, v31

    #@90
    move-object/from16 v0, p0

    #@92
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@94
    aget v9, v4, v31

    #@96
    const/4 v5, 0x0

    #@97
    move-object/from16 v4, p0

    #@99
    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    #@9c
    .line 353
    const/16 v27, 0x1

    #@9e
    .line 357
    .end local v28    # "clen":I
    .end local v32    # "oen":I
    .end local v33    # "ost":I
    :cond_5
    const/16 v30, 0x0

    #@a0
    .line 358
    .local v30, "flags":I
    move/from16 v0, p1

    #@a2
    if-ne v7, v0, :cond_a

    #@a4
    const/16 v30, 0x1000

    #@a6
    .line 360
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
    .line 362
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    #@b2
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@b4
    aget v5, v4, v31

    #@b6
    or-int v5, v5, v30

    #@b8
    aput v5, v4, v31

    #@ba
    .line 325
    add-int/lit8 v31, v31, -0x1

    #@bc
    goto/16 :goto_0

    #@be
    .line 340
    .end local v30    # "flags":I
    .restart local v28    # "clen":I
    .restart local v32    # "oen":I
    .restart local v33    # "ost":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    #@c0
    goto :goto_1

    #@c1
    .line 346
    :cond_9
    add-int/lit8 v8, v8, 0x1

    #@c3
    goto :goto_2

    #@c4
    .line 359
    .end local v28    # "clen":I
    .end local v32    # "oen":I
    .end local v33    # "ost":I
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
    .line 361
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
    .line 364
    .end local v7    # "spanStart":I
    .end local v8    # "spanEnd":I
    .end local v30    # "flags":I
    :cond_c
    if-eqz v27, :cond_d

    #@d7
    .line 365
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@da
    .line 368
    :cond_d
    move-object/from16 v0, p0

    #@dc
    move/from16 v1, p2

    #@de
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    #@e1
    .line 370
    move-object/from16 v0, p0

    #@e3
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@e5
    if-lt v12, v4, :cond_e

    #@e7
    .line 371
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
    .line 374
    :cond_e
    if-nez v35, :cond_12

    #@f9
    const/4 v15, 0x1

    #@fa
    .line 377
    .local v15, "textIsRemoved":Z
    :goto_5
    if-lez v34, :cond_10

    #@fc
    .line 378
    :cond_f
    move-object/from16 v0, p0

    #@fe
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@100
    if-lez v4, :cond_10

    #@102
    .line 379
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
    .line 378
    if-nez v4, :cond_f

    #@112
    .line 385
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
    .line 386
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
    .line 388
    move-object/from16 v0, p0

    #@126
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@128
    const/4 v5, 0x1

    #@129
    if-ge v4, v5, :cond_11

    #@12b
    .line 389
    new-instance v4, Ljava/lang/Exception;

    #@12d
    const-string/jumbo v5, "mGapLength < 1"

    #@130
    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@133
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    #@136
    .line 391
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
    .line 393
    if-lez v34, :cond_15

    #@147
    .line 395
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
    .line 397
    .local v14, "atEnd":Z
    :goto_6
    const/16 v31, 0x0

    #@15a
    :goto_7
    move-object/from16 v0, p0

    #@15c
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@15e
    move/from16 v0, v31

    #@160
    if-ge v0, v4, :cond_14

    #@162
    .line 398
    move-object/from16 v0, p0

    #@164
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@166
    aget v4, v4, v31

    #@168
    and-int/lit16 v4, v4, 0xf0

    #@16a
    shr-int/lit8 v13, v4, 0x4

    #@16c
    .line 399
    .local v13, "startFlag":I
    move-object/from16 v0, p0

    #@16e
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@170
    move-object/from16 v0, p0

    #@172
    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@174
    aget v10, v5, v31

    #@176
    move-object/from16 v9, p0

    #@178
    move/from16 v11, p1

    #@17a
    invoke-direct/range {v9 .. v15}, Landroid/text/SpannableStringBuilder;->updatedIntervalBound(IIIIZZ)I

    #@17d
    move-result v5

    #@17e
    aput v5, v4, v31

    #@180
    .line 402
    move-object/from16 v0, p0

    #@182
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@184
    aget v4, v4, v31

    #@186
    and-int/lit8 v20, v4, 0xf

    #@188
    .line 403
    .local v20, "endFlag":I
    move-object/from16 v0, p0

    #@18a
    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@18c
    move-object/from16 v0, p0

    #@18e
    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@190
    aget v17, v5, v31

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
    aput v5, v4, v31

    #@1a2
    .line 397
    add-int/lit8 v31, v31, 0x1

    #@1a4
    goto :goto_7

    #@1a5
    .line 374
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
    .line 395
    :cond_13
    const/4 v14, 0x0

    #@1a9
    .restart local v14    # "atEnd":Z
    goto :goto_6

    #@1aa
    .line 407
    :cond_14
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@1ad
    .line 410
    .end local v14    # "atEnd":Z
    :cond_15
    move-object/from16 v0, p3

    #@1af
    instance-of v4, v0, Landroid/text/Spanned;

    #@1b1
    if-eqz v4, :cond_1a

    #@1b3
    move-object/from16 v36, p3

    #@1b5
    .line 411
    check-cast v36, Landroid/text/Spanned;

    #@1b7
    .line 412
    .local v36, "sp":Landroid/text/Spanned;
    const-class v4, Ljava/lang/Object;

    #@1b9
    move-object/from16 v0, v36

    #@1bb
    move/from16 v1, p4

    #@1bd
    move/from16 v2, p5

    #@1bf
    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@1c2
    move-result-object v37

    #@1c3
    .line 414
    .local v37, "spans":[Ljava/lang/Object;
    const/16 v31, 0x0

    #@1c5
    :goto_8
    move-object/from16 v0, v37

    #@1c7
    array-length v4, v0

    #@1c8
    move/from16 v0, v31

    #@1ca
    if-ge v0, v4, :cond_19

    #@1cc
    .line 415
    aget-object v4, v37, v31

    #@1ce
    move-object/from16 v0, v36

    #@1d0
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@1d3
    move-result v38

    #@1d4
    .line 416
    .local v38, "st":I
    aget-object v4, v37, v31

    #@1d6
    move-object/from16 v0, v36

    #@1d8
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@1db
    move-result v29

    #@1dc
    .line 418
    .local v29, "en":I
    move/from16 v0, v38

    #@1de
    move/from16 v1, p4

    #@1e0
    if-ge v0, v1, :cond_16

    #@1e2
    move/from16 v38, p4

    #@1e4
    .line 419
    :cond_16
    move/from16 v0, v29

    #@1e6
    move/from16 v1, p5

    #@1e8
    if-le v0, v1, :cond_17

    #@1ea
    move/from16 v29, p5

    #@1ec
    .line 422
    :cond_17
    aget-object v4, v37, v31

    #@1ee
    move-object/from16 v0, p0

    #@1f0
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@1f3
    move-result v4

    #@1f4
    if-gez v4, :cond_18

    #@1f6
    .line 423
    aget-object v23, v37, v31

    #@1f8
    sub-int v4, v38, p4

    #@1fa
    add-int v24, v4, p1

    #@1fc
    sub-int v4, v29, p4

    #@1fe
    add-int v25, v4, p1

    #@200
    .line 424
    aget-object v4, v37, v31

    #@202
    move-object/from16 v0, v36

    #@204
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@207
    move-result v4

    #@208
    or-int/lit16 v0, v4, 0x800

    #@20a
    move/from16 v26, v0

    #@20c
    .line 423
    const/16 v22, 0x0

    #@20e
    move-object/from16 v21, p0

    #@210
    invoke-direct/range {v21 .. v26}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    #@213
    .line 414
    :cond_18
    add-int/lit8 v31, v31, 0x1

    #@215
    goto :goto_8

    #@216
    .line 427
    .end local v29    # "en":I
    .end local v38    # "st":I
    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@219
    .line 318
    .end local v36    # "sp":Landroid/text/Spanned;
    .end local v37    # "spans":[Ljava/lang/Object;
    :cond_1a
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1082
    if-ge p3, p2, :cond_0

    #@2
    .line 1083
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
    .line 1084
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 1083
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 1084
    const-string/jumbo v3, " has end before start"

    #@1f
    .line 1083
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
    .line 1087
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@2e
    move-result v0

    #@2f
    .line 1089
    .local v0, "len":I
    if-gt p2, v0, :cond_1

    #@31
    if-le p3, v0, :cond_2

    #@33
    .line 1090
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
    .line 1091
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 1090
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 1091
    const-string/jumbo v3, " ends beyond length "

    #@50
    .line 1090
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
    .line 1094
    :cond_2
    if-ltz p2, :cond_3

    #@62
    if-gez p3, :cond_4

    #@64
    .line 1095
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
    .line 1096
    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    .line 1095
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    .line 1096
    const-string/jumbo v3, " starts before 0"

    #@81
    .line 1095
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
    .line 1081
    :cond_4
    return-void
.end method

.method private countSpans(IILjava/lang/Class;I)I
    .locals 6
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "i"    # I

    #@0
    .prologue
    .line 831
    const/4 v0, 0x0

    #@1
    .line 832
    .local v0, "count":I
    and-int/lit8 v5, p4, 0x1

    #@3
    if-eqz v5, :cond_1

    #@5
    .line 834
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    #@8
    move-result v1

    #@9
    .line 835
    .local v1, "left":I
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@b
    aget v3, v5, v1

    #@d
    .line 836
    .local v3, "spanMax":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@f
    if-le v3, v5, :cond_0

    #@11
    .line 837
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@13
    sub-int/2addr v3, v5

    #@14
    .line 839
    :cond_0
    if-lt v3, p1, :cond_1

    #@16
    .line 840
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    #@19
    move-result v0

    #@1a
    .line 843
    .end local v1    # "left":I
    .end local v3    # "spanMax":I
    :cond_1
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@1c
    if-ge p4, v5, :cond_6

    #@1e
    .line 844
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@20
    aget v4, v5, p4

    #@22
    .line 845
    .local v4, "spanStart":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@24
    if-le v4, v5, :cond_2

    #@26
    .line 846
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@28
    sub-int/2addr v4, v5

    #@29
    .line 848
    :cond_2
    if-gt v4, p2, :cond_6

    #@2b
    .line 849
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@2d
    aget v2, v5, p4

    #@2f
    .line 850
    .local v2, "spanEnd":I
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@31
    if-le v2, v5, :cond_3

    #@33
    .line 851
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@35
    sub-int/2addr v2, v5

    #@36
    .line 853
    :cond_3
    if-lt v2, p1, :cond_5

    #@38
    .line 854
    if-eq v4, v2, :cond_4

    #@3a
    if-ne p1, p2, :cond_7

    #@3c
    .line 856
    :cond_4
    :goto_0
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@3e
    aget-object v5, v5, p4

    #@40
    invoke-virtual {p3, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@43
    move-result v5

    #@44
    .line 853
    if-eqz v5, :cond_5

    #@46
    .line 857
    add-int/lit8 v0, v0, 0x1

    #@48
    .line 859
    :cond_5
    and-int/lit8 v5, p4, 0x1

    #@4a
    if-eqz v5, :cond_6

    #@4c
    .line 860
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    #@4f
    move-result v5

    #@50
    invoke-direct {p0, p1, p2, p3, v5}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    #@53
    move-result v5

    #@54
    add-int/2addr v0, v5

    #@55
    .line 864
    .end local v2    # "spanEnd":I
    .end local v4    # "spanStart":I
    :cond_6
    return v0

    #@56
    .line 855
    .restart local v2    # "spanEnd":I
    .restart local v4    # "spanStart":I
    :cond_7
    if-eq v4, p2, :cond_5

    #@58
    if-eq v2, p1, :cond_5

    #@5a
    goto :goto_0
.end method

.method private getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I
    .locals 20
    .param p1, "queryStart"    # I
    .param p2, "queryEnd"    # I
    .param p4, "i"    # I
    .param p6, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;I[TT;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 870
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p5, "ret":[Ljava/lang/Object;, "[TT;"
    and-int/lit8 v2, p4, 0x1

    #@2
    if-eqz v2, :cond_1

    #@4
    .line 872
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    #@7
    move-result v6

    #@8
    .line 873
    .local v6, "left":I
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@c
    aget v18, v2, v6

    #@e
    .line 874
    .local v18, "spanMax":I
    move-object/from16 v0, p0

    #@10
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@12
    move/from16 v0, v18

    #@14
    if-le v0, v2, :cond_0

    #@16
    .line 875
    move-object/from16 v0, p0

    #@18
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1a
    sub-int v18, v18, v2

    #@1c
    .line 877
    :cond_0
    move/from16 v0, v18

    #@1e
    move/from16 v1, p1

    #@20
    if-lt v0, v1, :cond_1

    #@22
    move-object/from16 v2, p0

    #@24
    move/from16 v3, p1

    #@26
    move/from16 v4, p2

    #@28
    move-object/from16 v5, p3

    #@2a
    move-object/from16 v7, p5

    #@2c
    move/from16 v8, p6

    #@2e
    .line 878
    invoke-direct/range {v2 .. v8}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I

    #@31
    move-result p6

    #@32
    .line 881
    .end local v6    # "left":I
    .end local v18    # "spanMax":I
    :cond_1
    move-object/from16 v0, p0

    #@34
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@36
    move/from16 v0, p4

    #@38
    if-lt v0, v2, :cond_2

    #@3a
    return p6

    #@3b
    .line 882
    :cond_2
    move-object/from16 v0, p0

    #@3d
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@3f
    aget v19, v2, p4

    #@41
    .line 883
    .local v19, "spanStart":I
    move-object/from16 v0, p0

    #@43
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@45
    move/from16 v0, v19

    #@47
    if-le v0, v2, :cond_3

    #@49
    .line 884
    move-object/from16 v0, p0

    #@4b
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@4d
    sub-int v19, v19, v2

    #@4f
    .line 886
    :cond_3
    move/from16 v0, v19

    #@51
    move/from16 v1, p2

    #@53
    if-gt v0, v1, :cond_8

    #@55
    .line 887
    move-object/from16 v0, p0

    #@57
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@59
    aget v17, v2, p4

    #@5b
    .line 888
    .local v17, "spanEnd":I
    move-object/from16 v0, p0

    #@5d
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@5f
    move/from16 v0, v17

    #@61
    if-le v0, v2, :cond_4

    #@63
    .line 889
    move-object/from16 v0, p0

    #@65
    iget v2, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@67
    sub-int v17, v17, v2

    #@69
    .line 891
    :cond_4
    move/from16 v0, v17

    #@6b
    move/from16 v1, p1

    #@6d
    if-lt v0, v1, :cond_7

    #@6f
    .line 892
    move/from16 v0, v19

    #@71
    move/from16 v1, v17

    #@73
    if-eq v0, v1, :cond_5

    #@75
    move/from16 v0, p1

    #@77
    move/from16 v1, p2

    #@79
    if-ne v0, v1, :cond_9

    #@7b
    .line 894
    :cond_5
    :goto_0
    move-object/from16 v0, p0

    #@7d
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@7f
    aget-object v2, v2, p4

    #@81
    move-object/from16 v0, p3

    #@83
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@86
    move-result v2

    #@87
    .line 891
    if-eqz v2, :cond_7

    #@89
    .line 895
    move-object/from16 v0, p0

    #@8b
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@8d
    aget v2, v2, p4

    #@8f
    const/high16 v3, 0xff0000

    #@91
    and-int v16, v2, v3

    #@93
    .line 896
    .local v16, "prio":I
    if-eqz v16, :cond_b

    #@95
    .line 899
    const/4 v14, 0x0

    #@96
    .local v14, "j":I
    :goto_1
    move/from16 v0, p6

    #@98
    if-ge v14, v0, :cond_6

    #@9a
    .line 900
    aget-object v2, p5, v14

    #@9c
    move-object/from16 v0, p0

    #@9e
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    #@a1
    move-result v2

    #@a2
    const/high16 v3, 0xff0000

    #@a4
    and-int v15, v2, v3

    #@a6
    .line 902
    .local v15, "p":I
    move/from16 v0, v16

    #@a8
    if-le v0, v15, :cond_a

    #@aa
    .line 907
    .end local v15    # "p":I
    :cond_6
    add-int/lit8 v2, v14, 0x1

    #@ac
    sub-int v3, p6, v14

    #@ae
    move-object/from16 v0, p5

    #@b0
    move-object/from16 v1, p5

    #@b2
    invoke-static {v0, v14, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@b5
    .line 909
    move-object/from16 v0, p0

    #@b7
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@b9
    aget-object v2, v2, p4

    #@bb
    aput-object v2, p5, v14

    #@bd
    .line 914
    .end local v14    # "j":I
    :goto_2
    add-int/lit8 p6, p6, 0x1

    #@bf
    .line 916
    .end local v16    # "prio":I
    :cond_7
    move-object/from16 v0, p5

    #@c1
    array-length v2, v0

    #@c2
    move/from16 v0, p6

    #@c4
    if-ge v0, v2, :cond_8

    #@c6
    and-int/lit8 v2, p4, 0x1

    #@c8
    if-eqz v2, :cond_8

    #@ca
    .line 917
    invoke-static/range {p4 .. p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    #@cd
    move-result v11

    #@ce
    move-object/from16 v7, p0

    #@d0
    move/from16 v8, p1

    #@d2
    move/from16 v9, p2

    #@d4
    move-object/from16 v10, p3

    #@d6
    move-object/from16 v12, p5

    #@d8
    move/from16 v13, p6

    #@da
    invoke-direct/range {v7 .. v13}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I

    #@dd
    move-result p6

    #@de
    .line 920
    .end local v17    # "spanEnd":I
    :cond_8
    return p6

    #@df
    .line 893
    .restart local v17    # "spanEnd":I
    :cond_9
    move/from16 v0, v19

    #@e1
    move/from16 v1, p2

    #@e3
    if-eq v0, v1, :cond_7

    #@e5
    move/from16 v0, v17

    #@e7
    move/from16 v1, p1

    #@e9
    if-eq v0, v1, :cond_7

    #@eb
    goto :goto_0

    #@ec
    .line 899
    .restart local v14    # "j":I
    .restart local v15    # "p":I
    .restart local v16    # "prio":I
    :cond_a
    add-int/lit8 v14, v14, 0x1

    #@ee
    goto :goto_1

    #@ef
    .line 912
    .end local v14    # "j":I
    .end local v15    # "p":I
    :cond_b
    move-object/from16 v0, p0

    #@f1
    iget-object v2, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@f3
    aget-object v2, v2, p4

    #@f5
    aput-object v2, p5, p6

    #@f7
    goto :goto_2
.end method

.method private static hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 569
    instance-of v6, p0, Landroid/text/Spanned;

    #@2
    if-eqz v6, :cond_1

    #@4
    move-object v4, p0

    #@5
    .line 570
    check-cast v4, Landroid/text/Spanned;

    #@7
    .line 571
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v6, Ljava/lang/Object;

    #@9
    invoke-interface {v4, p1, p1, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@c
    move-result-object v5

    #@d
    .line 572
    .local v5, "spans":[Ljava/lang/Object;
    array-length v2, v5

    #@e
    .line 573
    .local v2, "length":I
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@11
    .line 574
    aget-object v3, v5, v1

    #@13
    .line 575
    .local v3, "span":Ljava/lang/Object;
    invoke-interface {v4, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@16
    move-result v0

    #@17
    .line 576
    .local v0, "flags":I
    const/16 v6, 0x21

    #@19
    if-eq v0, v6, :cond_0

    #@1b
    const/4 v6, 0x1

    #@1c
    return v6

    #@1d
    .line 573
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 579
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
    .line 1523
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    #@2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    #@8
    .line 1522
    return-void
.end method

.method private static leftChild(I)I
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1445
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
    .line 163
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@4
    if-ne p1, v6, :cond_0

    #@6
    .line 164
    return-void

    #@7
    .line 166
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@a
    move-result v6

    #@b
    if-ne p1, v6, :cond_5

    #@d
    const/4 v0, 0x1

    #@e
    .line 168
    .local v0, "atEnd":Z
    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@10
    if-ge p1, v6, :cond_6

    #@12
    .line 169
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@14
    sub-int v4, v6, p1

    #@16
    .line 170
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
    .line 177
    :goto_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@25
    if-eqz v6, :cond_c

    #@27
    .line 178
    const/4 v3, 0x0

    #@28
    .local v3, "i":I
    :goto_2
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@2a
    if-ge v3, v6, :cond_b

    #@2c
    .line 179
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@2e
    aget v5, v6, v3

    #@30
    .line 180
    .local v5, "start":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@32
    aget v1, v6, v3

    #@34
    .line 182
    .local v1, "end":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@36
    if-le v5, v6, :cond_1

    #@38
    .line 183
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@3a
    sub-int/2addr v5, v6

    #@3b
    .line 184
    :cond_1
    if-le v5, p1, :cond_7

    #@3d
    .line 185
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@3f
    add-int/2addr v5, v6

    #@40
    .line 193
    :cond_2
    :goto_3
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@42
    if-le v1, v6, :cond_3

    #@44
    .line 194
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@46
    sub-int/2addr v1, v6

    #@47
    .line 195
    :cond_3
    if-le v1, p1, :cond_9

    #@49
    .line 196
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@4b
    add-int/2addr v1, v6

    #@4c
    .line 204
    :cond_4
    :goto_4
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@4e
    aput v5, v6, v3

    #@50
    .line 205
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@52
    aput v1, v6, v3

    #@54
    .line 178
    add-int/lit8 v3, v3, 0x1

    #@56
    goto :goto_2

    #@57
    .line 166
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
    .line 172
    :cond_6
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@5b
    sub-int v4, p1, v6

    #@5d
    .line 173
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
    .line 186
    .restart local v1    # "end":I
    .restart local v3    # "i":I
    .restart local v5    # "start":I
    :cond_7
    if-ne v5, p1, :cond_2

    #@6d
    .line 187
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@6f
    aget v6, v6, v3

    #@71
    and-int/lit16 v6, v6, 0xf0

    #@73
    shr-int/lit8 v2, v6, 0x4

    #@75
    .line 189
    .local v2, "flag":I
    if-eq v2, v10, :cond_8

    #@77
    if-eqz v0, :cond_2

    #@79
    if-ne v2, v11, :cond_2

    #@7b
    .line 190
    :cond_8
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@7d
    add-int/2addr v5, v6

    #@7e
    goto :goto_3

    #@7f
    .line 197
    .end local v2    # "flag":I
    :cond_9
    if-ne v1, p1, :cond_4

    #@81
    .line 198
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@83
    aget v6, v6, v3

    #@85
    and-int/lit8 v2, v6, 0xf

    #@87
    .line 200
    .restart local v2    # "flag":I
    if-eq v2, v10, :cond_a

    #@89
    if-eqz v0, :cond_4

    #@8b
    if-ne v2, v11, :cond_4

    #@8d
    .line 201
    :cond_a
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@8f
    add-int/2addr v1, v6

    #@90
    goto :goto_4

    #@91
    .line 207
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
    .line 210
    .end local v3    # "i":I
    :cond_c
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@9a
    .line 162
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
    .line 937
    and-int/lit8 v3, p4, 0x1

    #@2
    if-eqz v3, :cond_0

    #@4
    .line 939
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    #@7
    move-result v1

    #@8
    .line 940
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
    .line 941
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    #@15
    move-result p2

    #@16
    .line 944
    .end local v1    # "left":I
    :cond_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@18
    if-ge p4, v3, :cond_3

    #@1a
    .line 945
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@1c
    aget v3, v3, p4

    #@1e
    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    #@21
    move-result v2

    #@22
    .line 946
    .local v2, "st":I
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@24
    aget v3, v3, p4

    #@26
    invoke-direct {p0, v3}, Landroid/text/SpannableStringBuilder;->resolveGap(I)I

    #@29
    move-result v0

    #@2a
    .line 947
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
    .line 948
    move p2, v2

    #@39
    .line 949
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
    .line 950
    move p2, v0

    #@48
    .line 951
    :cond_2
    if-ge v2, p2, :cond_3

    #@4a
    and-int/lit8 v3, p4, 0x1

    #@4c
    if-eqz v3, :cond_3

    #@4e
    .line 952
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    #@51
    move-result v3

    #@52
    invoke-direct {p0, p1, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->nextSpanTransitionRec(IILjava/lang/Class;I)I

    #@55
    move-result p2

    #@56
    .line 956
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
    .line 1078
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
    .line 465
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@2
    aget-object v2, v4, p1

    #@4
    .line 467
    .local v2, "object":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@6
    aget v3, v4, p1

    #@8
    .line 468
    .local v3, "start":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@a
    aget v1, v4, p1

    #@c
    .line 470
    .local v1, "end":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@e
    if-le v3, v4, :cond_0

    #@10
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@12
    sub-int/2addr v3, v4

    #@13
    .line 471
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@15
    if-le v1, v4, :cond_1

    #@17
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@19
    sub-int/2addr v1, v4

    #@1a
    .line 473
    :cond_1
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@1c
    add-int/lit8 v5, p1, 0x1

    #@1e
    sub-int v0, v4, v5

    #@20
    .line 474
    .local v0, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@22
    add-int/lit8 v5, p1, 0x1

    #@24
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@26
    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@29
    .line 475
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@2b
    add-int/lit8 v5, p1, 0x1

    #@2d
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@2f
    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@32
    .line 476
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@34
    add-int/lit8 v5, p1, 0x1

    #@36
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@38
    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@3b
    .line 477
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@3d
    add-int/lit8 v5, p1, 0x1

    #@3f
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@41
    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@44
    .line 479
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@46
    add-int/lit8 v4, v4, -0x1

    #@48
    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@4a
    .line 481
    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    #@4d
    .line 482
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@4f
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@51
    const/4 v6, 0x0

    #@52
    aput-object v6, v4, v5

    #@54
    .line 485
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@57
    .line 487
    invoke-direct {p0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    #@5a
    .line 464
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
    .line 294
    and-int/lit8 v1, p4, 0x1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 296
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
    .line 297
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->leftChild(I)I

    #@13
    move-result v1

    #@14
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    #@17
    move-result v1

    #@18
    .line 296
    if-eqz v1, :cond_0

    #@1a
    .line 298
    return v4

    #@1b
    .line 301
    :cond_0
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@1d
    if-ge p4, v1, :cond_5

    #@1f
    .line 302
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@21
    aget v1, v1, p4

    #@23
    and-int/lit8 v1, v1, 0x21

    #@25
    .line 303
    const/16 v2, 0x21

    #@27
    .line 302
    if-ne v1, v2, :cond_3

    #@29
    .line 304
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
    .line 305
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
    .line 307
    if-nez p3, :cond_1

    #@4d
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@4f
    aget v1, v1, p4

    #@51
    if-le v1, p1, :cond_2

    #@53
    .line 308
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@55
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@57
    aget-object v1, v1, p4

    #@59
    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@5c
    .line 309
    invoke-direct {p0, p4}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    #@5f
    .line 310
    return v4

    #@60
    .line 307
    :cond_2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@62
    aget v1, v1, p4

    #@64
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@66
    if-lt v1, v2, :cond_1

    #@68
    .line 312
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
    .line 313
    invoke-static {p4}, Landroid/text/SpannableStringBuilder;->rightChild(I)I

    #@79
    move-result v0

    #@7a
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->removeSpansForChange(IIZI)Z

    #@7d
    move-result v0

    #@7e
    .line 312
    :cond_4
    return v0

    #@7f
    .line 315
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
    .line 136
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@3
    array-length v5, v6

    #@4
    .line 137
    .local v5, "oldLength":I
    add-int/lit8 v6, p1, 0x1

    #@6
    if-gt v6, v5, :cond_0

    #@8
    .line 138
    return-void

    #@9
    .line 141
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    #@c
    move-result v6

    #@d
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    #@10
    move-result-object v4

    #@11
    .line 142
    .local v4, "newText":[C
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@13
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@15
    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@18
    .line 143
    array-length v3, v4

    #@19
    .line 144
    .local v3, "newLength":I
    sub-int v1, v3, v5

    #@1b
    .line 145
    .local v1, "delta":I
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1d
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1f
    add-int/2addr v6, v7

    #@20
    sub-int v0, v5, v6

    #@22
    .line 146
    .local v0, "after":I
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@24
    sub-int v7, v5, v0

    #@26
    sub-int v8, v3, v0

    #@28
    invoke-static {v6, v7, v4, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@2b
    .line 147
    iput-object v4, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@2d
    .line 149
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@2f
    add-int/2addr v6, v1

    #@30
    iput v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@32
    .line 150
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@34
    const/4 v7, 0x1

    #@35
    if-ge v6, v7, :cond_1

    #@37
    .line 151
    new-instance v6, Ljava/lang/Exception;

    #@39
    const-string/jumbo v7, "mGapLength < 1"

    #@3c
    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    #@3f
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    #@42
    .line 153
    :cond_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@44
    if-eqz v6, :cond_5

    #@46
    .line 154
    const/4 v2, 0x0

    #@47
    .local v2, "i":I
    :goto_0
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@49
    if-ge v2, v6, :cond_4

    #@4b
    .line 155
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
    .line 156
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
    .line 154
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@6b
    goto :goto_0

    #@6c
    .line 158
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@6f
    move-result v6

    #@70
    invoke-direct {p0, v6}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    #@73
    .line 135
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method private resolveGap(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 778
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
    .locals 10

    #@0
    .prologue
    .line 1478
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@2
    if-nez v7, :cond_0

    #@4
    return-void

    #@5
    .line 1483
    :cond_0
    const/4 v3, 0x1

    #@6
    .local v3, "i":I
    :goto_0
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@8
    if-ge v3, v7, :cond_4

    #@a
    .line 1484
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@c
    aget v7, v7, v3

    #@e
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@10
    add-int/lit8 v9, v3, -0x1

    #@12
    aget v8, v8, v9

    #@14
    if-ge v7, v8, :cond_3

    #@16
    .line 1485
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@18
    aget-object v5, v7, v3

    #@1a
    .line 1486
    .local v5, "span":Ljava/lang/Object;
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@1c
    aget v6, v7, v3

    #@1e
    .line 1487
    .local v6, "start":I
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@20
    aget v0, v7, v3

    #@22
    .line 1488
    .local v0, "end":I
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@24
    aget v2, v7, v3

    #@26
    .line 1489
    .local v2, "flags":I
    move v4, v3

    #@27
    .line 1491
    .local v4, "j":I
    :cond_1
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@29
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@2b
    add-int/lit8 v9, v4, -0x1

    #@2d
    aget-object v8, v8, v9

    #@2f
    aput-object v8, v7, v4

    #@31
    .line 1492
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@33
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@35
    add-int/lit8 v9, v4, -0x1

    #@37
    aget v8, v8, v9

    #@39
    aput v8, v7, v4

    #@3b
    .line 1493
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@3d
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@3f
    add-int/lit8 v9, v4, -0x1

    #@41
    aget v8, v8, v9

    #@43
    aput v8, v7, v4

    #@45
    .line 1494
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@47
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@49
    add-int/lit8 v9, v4, -0x1

    #@4b
    aget v8, v8, v9

    #@4d
    aput v8, v7, v4

    #@4f
    .line 1495
    add-int/lit8 v4, v4, -0x1

    #@51
    .line 1496
    if-lez v4, :cond_2

    #@53
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@55
    add-int/lit8 v8, v4, -0x1

    #@57
    aget v7, v7, v8

    #@59
    if-lt v6, v7, :cond_1

    #@5b
    .line 1497
    :cond_2
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@5d
    aput-object v5, v7, v4

    #@5f
    .line 1498
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@61
    aput v6, v7, v4

    #@63
    .line 1499
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@65
    aput v0, v7, v4

    #@67
    .line 1500
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@69
    aput v2, v7, v4

    #@6b
    .line 1501
    invoke-direct {p0, v4}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    #@6e
    .line 1483
    .end local v0    # "end":I
    .end local v2    # "flags":I
    .end local v4    # "j":I
    .end local v5    # "span":Ljava/lang/Object;
    .end local v6    # "start":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@70
    goto :goto_0

    #@71
    .line 1506
    :cond_4
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@74
    move-result v7

    #@75
    invoke-direct {p0, v7}, Landroid/text/SpannableStringBuilder;->calcMax(I)I

    #@78
    .line 1509
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@7a
    if-nez v7, :cond_5

    #@7c
    .line 1510
    new-instance v7, Ljava/util/IdentityHashMap;

    #@7e
    invoke-direct {v7}, Ljava/util/IdentityHashMap;-><init>()V

    #@81
    iput-object v7, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@83
    .line 1512
    :cond_5
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    #@85
    :goto_1
    iget v7, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@87
    if-ge v3, v7, :cond_8

    #@89
    .line 1513
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@8b
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@8d
    aget-object v8, v8, v3

    #@8f
    invoke-virtual {v7, v8}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@92
    move-result-object v1

    #@93
    check-cast v1, Ljava/lang/Integer;

    #@95
    .line 1514
    .local v1, "existing":Ljava/lang/Integer;
    if-eqz v1, :cond_6

    #@97
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@9a
    move-result v7

    #@9b
    if-eq v7, v3, :cond_7

    #@9d
    .line 1515
    :cond_6
    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@9f
    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@a1
    aget-object v8, v8, v3

    #@a3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a6
    move-result-object v9

    #@a7
    invoke-virtual {v7, v8, v9}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    .line 1512
    :cond_7
    add-int/lit8 v3, v3, 0x1

    #@ac
    goto :goto_1

    #@ad
    .line 1518
    .end local v1    # "existing":Ljava/lang/Integer;
    :cond_8
    const v7, 0x7fffffff

    #@b0
    iput v7, p0, Landroid/text/SpannableStringBuilder;->mLowWaterMark:I

    #@b2
    .line 1477
    return-void
.end method

.method private static rightChild(I)I
    .locals 2
    .param p0, "i"    # I

    #@0
    .prologue
    .line 1449
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
    .line 1039
    array-length v1, p1

    #@1
    .line 1041
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@7
    .line 1042
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 1043
    aget-object v2, p1, v0

    #@c
    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    #@f
    .line 1042
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1045
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@18
    .line 1038
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
    .line 1019
    array-length v1, p1

    #@1
    .line 1021
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@7
    .line 1022
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 1023
    aget-object v2, p1, v0

    #@c
    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    #@f
    .line 1022
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1025
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@18
    .line 1018
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1049
    const-class v3, Landroid/text/SpanWatcher;

    #@2
    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, [Landroid/text/SpanWatcher;

    #@8
    .line 1050
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    #@9
    .line 1052
    .local v1, "n":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 1053
    aget-object v3, v2, v0

    #@e
    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    #@11
    .line 1052
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1048
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
    .line 1069
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    .line 1070
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
    .line 1069
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@15
    move-result-object v9

    #@16
    check-cast v9, [Landroid/text/SpanWatcher;

    #@18
    .line 1071
    .local v9, "spanWatchers":[Landroid/text/SpanWatcher;
    array-length v8, v9

    #@19
    .line 1072
    .local v8, "n":I
    const/4 v7, 0x0

    #@1a
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    #@1c
    .line 1073
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
    .line 1072
    add-int/lit8 v7, v7, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 1066
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
    .line 1058
    const-class v3, Landroid/text/SpanWatcher;

    #@2
    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, [Landroid/text/SpanWatcher;

    #@8
    .line 1059
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    #@9
    .line 1061
    .local v1, "n":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 1062
    aget-object v3, v2, v0

    #@e
    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    #@11
    .line 1061
    add-int/lit8 v0, v0, 0x1

    #@13
    goto :goto_0

    #@14
    .line 1057
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
    .line 1029
    array-length v1, p1

    #@1
    .line 1031
    .local v1, "n":I
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@3
    add-int/lit8 v2, v2, 0x1

    #@5
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@7
    .line 1032
    const/4 v0, 0x0

    #@8
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@a
    .line 1033
    aget-object v2, p1, v0

    #@c
    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    #@f
    .line 1032
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1035
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    iput v2, p0, Landroid/text/SpannableStringBuilder;->mTextWatcherDepth:I

    #@18
    .line 1028
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
    .line 583
    const/4 v6, 0x0

    #@4
    .local v6, "i":I
    :goto_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@6
    if-ge v6, v0, :cond_c

    #@8
    .line 584
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@a
    aget v9, v0, v6

    #@c
    .line 587
    .local v9, "spanFlags":I
    and-int/lit16 v0, v9, 0x800

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 583
    :goto_1
    add-int/lit8 v6, v6, 0x1

    #@12
    goto :goto_0

    #@13
    .line 588
    :cond_0
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@15
    aget v4, v0, v6

    #@17
    .line 589
    .local v4, "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@19
    aget v5, v0, v6

    #@1b
    .line 590
    .local v5, "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1d
    if-le v4, v0, :cond_1

    #@1f
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@21
    sub-int/2addr v4, v0

    #@22
    .line 591
    :cond_1
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@24
    if-le v5, v0, :cond_2

    #@26
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@28
    sub-int/2addr v5, v0

    #@29
    .line 593
    :cond_2
    add-int v7, p2, p3

    #@2b
    .line 594
    .local v7, "newReplaceEnd":I
    const/4 v8, 0x0

    #@2c
    .line 596
    .local v8, "spanChanged":Z
    move v2, v4

    #@2d
    .line 597
    .local v2, "previousSpanStart":I
    if-le v4, v7, :cond_6

    #@2f
    .line 598
    if-eqz p3, :cond_3

    #@31
    .line 599
    sub-int/2addr v2, p3

    #@32
    .line 600
    const/4 v8, 0x1

    #@33
    .line 615
    :cond_3
    :goto_2
    move v3, v5

    #@34
    .line 616
    .local v3, "previousSpanEnd":I
    if-le v5, v7, :cond_9

    #@36
    .line 617
    if-eqz p3, :cond_4

    #@38
    .line 618
    sub-int/2addr v3, p3

    #@39
    .line 619
    const/4 v8, 0x1

    #@3a
    .line 632
    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    #@3c
    .line 633
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@3e
    aget-object v1, v0, v6

    #@40
    move-object v0, p0

    #@41
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    #@44
    .line 635
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
    .line 602
    .end local v3    # "previousSpanEnd":I
    :cond_6
    if-lt v4, p1, :cond_3

    #@51
    .line 604
    if-ne v4, p1, :cond_7

    #@53
    .line 605
    and-int/lit16 v0, v9, 0x1000

    #@55
    const/16 v1, 0x1000

    #@57
    if-eq v0, v1, :cond_3

    #@59
    .line 606
    :cond_7
    if-ne v4, v7, :cond_8

    #@5b
    .line 607
    and-int/lit16 v0, v9, 0x2000

    #@5d
    const/16 v1, 0x2000

    #@5f
    if-eq v0, v1, :cond_3

    #@61
    .line 611
    :cond_8
    const/4 v8, 0x1

    #@62
    goto :goto_2

    #@63
    .line 621
    .restart local v3    # "previousSpanEnd":I
    :cond_9
    if-lt v5, p1, :cond_4

    #@65
    .line 623
    if-ne v5, p1, :cond_a

    #@67
    .line 624
    and-int/lit16 v0, v9, 0x4000

    #@69
    const/16 v1, 0x4000

    #@6b
    if-eq v0, v1, :cond_4

    #@6d
    .line 625
    :cond_a
    if-ne v5, v7, :cond_b

    #@6f
    .line 626
    and-int v0, v9, v11

    #@71
    if-eq v0, v11, :cond_4

    #@73
    .line 628
    :cond_b
    const/4 v8, 0x1

    #@74
    goto :goto_3

    #@75
    .line 639
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
    .line 640
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@7c
    aget v9, v0, v6

    #@7e
    .line 641
    .restart local v9    # "spanFlags":I
    and-int/lit16 v0, v9, 0x800

    #@80
    if-eqz v0, :cond_f

    #@82
    .line 642
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@84
    aget v1, v0, v6

    #@86
    and-int/lit16 v1, v1, -0x801

    #@88
    aput v1, v0, v6

    #@8a
    .line 643
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@8c
    aget v4, v0, v6

    #@8e
    .line 644
    .restart local v4    # "spanStart":I
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@90
    aget v5, v0, v6

    #@92
    .line 645
    .restart local v5    # "spanEnd":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@94
    if-le v4, v0, :cond_d

    #@96
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@98
    sub-int/2addr v4, v0

    #@99
    .line 646
    :cond_d
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@9b
    if-le v5, v0, :cond_e

    #@9d
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@9f
    sub-int/2addr v5, v0

    #@a0
    .line 647
    :cond_e
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@a2
    aget-object v0, v0, v6

    #@a4
    invoke-direct {p0, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    #@a7
    .line 639
    .end local v4    # "spanStart":I
    .end local v5    # "spanEnd":I
    :cond_f
    add-int/lit8 v6, v6, 0x1

    #@a9
    goto :goto_4

    #@aa
    .line 582
    .end local v9    # "spanFlags":I
    :cond_10
    return-void
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .locals 17
    .param p1, "send"    # Z
    .param p2, "what"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 665
    const-string/jumbo v3, "setSpan"

    #@3
    move-object/from16 v0, p0

    #@5
    move/from16 v1, p3

    #@7
    move/from16 v2, p4

    #@9
    invoke-direct {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@c
    .line 667
    move/from16 v0, p5

    #@e
    and-int/lit16 v3, v0, 0xf0

    #@10
    shr-int/lit8 v12, v3, 0x4

    #@12
    .line 668
    .local v12, "flagsStart":I
    const/4 v3, 0x3

    #@13
    if-ne v12, v3, :cond_0

    #@15
    .line 669
    if-eqz p3, :cond_0

    #@17
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@1a
    move-result v3

    #@1b
    move/from16 v0, p3

    #@1d
    if-eq v0, v3, :cond_0

    #@1f
    .line 670
    add-int/lit8 v3, p3, -0x1

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@26
    move-result v9

    #@27
    .line 672
    .local v9, "c":C
    const/16 v3, 0xa

    #@29
    if-eq v9, v3, :cond_0

    #@2b
    .line 673
    new-instance v3, Ljava/lang/RuntimeException;

    #@2d
    const-string/jumbo v4, "PARAGRAPH span must start at paragraph boundary"

    #@30
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3

    #@34
    .line 677
    .end local v9    # "c":C
    :cond_0
    and-int/lit8 v11, p5, 0xf

    #@36
    .line 678
    .local v11, "flagsEnd":I
    const/4 v3, 0x3

    #@37
    if-ne v11, v3, :cond_1

    #@39
    .line 679
    if-eqz p4, :cond_1

    #@3b
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3e
    move-result v3

    #@3f
    move/from16 v0, p4

    #@41
    if-eq v0, v3, :cond_1

    #@43
    .line 680
    add-int/lit8 v3, p4, -0x1

    #@45
    move-object/from16 v0, p0

    #@47
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    #@4a
    move-result v9

    #@4b
    .line 682
    .restart local v9    # "c":C
    const/16 v3, 0xa

    #@4d
    if-eq v9, v3, :cond_1

    #@4f
    .line 683
    new-instance v3, Ljava/lang/RuntimeException;

    #@51
    const-string/jumbo v4, "PARAGRAPH span must end at paragraph boundary"

    #@54
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@57
    throw v3

    #@58
    .line 688
    .end local v9    # "c":C
    :cond_1
    const/4 v3, 0x2

    #@59
    if-ne v12, v3, :cond_3

    #@5b
    const/4 v3, 0x1

    #@5c
    if-ne v11, v3, :cond_3

    #@5e
    move/from16 v0, p3

    #@60
    move/from16 v1, p4

    #@62
    if-ne v0, v1, :cond_3

    #@64
    .line 689
    if-eqz p1, :cond_2

    #@66
    .line 690
    const-string/jumbo v3, "SpannableStringBuilder"

    #@69
    const-string/jumbo v4, "SPAN_EXCLUSIVE_EXCLUSIVE spans cannot have a zero length"

    #@6c
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6f
    .line 695
    :cond_2
    return-void

    #@70
    .line 698
    :cond_3
    move/from16 v7, p3

    #@72
    .line 699
    .local v7, "nstart":I
    move/from16 v8, p4

    #@74
    .line 701
    .local v8, "nend":I
    move-object/from16 v0, p0

    #@76
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@78
    move/from16 v0, p3

    #@7a
    if-le v0, v3, :cond_9

    #@7c
    .line 702
    move-object/from16 v0, p0

    #@7e
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@80
    add-int p3, p3, v3

    #@82
    .line 708
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    #@84
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@86
    move/from16 v0, p4

    #@88
    if-le v0, v3, :cond_b

    #@8a
    .line 709
    move-object/from16 v0, p0

    #@8c
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@8e
    add-int p4, p4, v3

    #@90
    .line 715
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    #@92
    iget v10, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@94
    .line 716
    .local v10, "count":I
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@98
    move-object/from16 v16, v0

    #@9a
    .line 718
    .local v16, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    #@9c
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@9e
    if-eqz v3, :cond_d

    #@a0
    .line 719
    move-object/from16 v0, p0

    #@a2
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@a4
    move-object/from16 v0, p2

    #@a6
    invoke-virtual {v3, v0}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    move-result-object v14

    #@aa
    check-cast v14, Ljava/lang/Integer;

    #@ac
    .line 720
    .local v14, "index":Ljava/lang/Integer;
    if-eqz v14, :cond_d

    #@ae
    .line 721
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    #@b1
    move-result v13

    #@b2
    .line 722
    .local v13, "i":I
    move-object/from16 v0, p0

    #@b4
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@b6
    aget v5, v3, v13

    #@b8
    .line 723
    .local v5, "ostart":I
    move-object/from16 v0, p0

    #@ba
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@bc
    aget v6, v3, v13

    #@be
    .line 725
    .local v6, "oend":I
    move-object/from16 v0, p0

    #@c0
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@c2
    if-le v5, v3, :cond_6

    #@c4
    .line 726
    move-object/from16 v0, p0

    #@c6
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@c8
    sub-int/2addr v5, v3

    #@c9
    .line 727
    :cond_6
    move-object/from16 v0, p0

    #@cb
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@cd
    if-le v6, v3, :cond_7

    #@cf
    .line 728
    move-object/from16 v0, p0

    #@d1
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@d3
    sub-int/2addr v6, v3

    #@d4
    .line 730
    :cond_7
    move-object/from16 v0, p0

    #@d6
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@d8
    aput p3, v3, v13

    #@da
    .line 731
    move-object/from16 v0, p0

    #@dc
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@de
    aput p4, v3, v13

    #@e0
    .line 732
    move-object/from16 v0, p0

    #@e2
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@e4
    aput p5, v3, v13

    #@e6
    .line 734
    if-eqz p1, :cond_8

    #@e8
    .line 735
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@eb
    move-object/from16 v3, p0

    #@ed
    move-object/from16 v4, p2

    #@ef
    .line 736
    invoke-direct/range {v3 .. v8}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    #@f2
    .line 739
    :cond_8
    return-void

    #@f3
    .line 703
    .end local v5    # "ostart":I
    .end local v6    # "oend":I
    .end local v10    # "count":I
    .end local v13    # "i":I
    .end local v14    # "index":Ljava/lang/Integer;
    .end local v16    # "spans":[Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    #@f5
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@f7
    move/from16 v0, p3

    #@f9
    if-ne v0, v3, :cond_4

    #@fb
    .line 704
    const/4 v3, 0x2

    #@fc
    if-eq v12, v3, :cond_a

    #@fe
    const/4 v3, 0x3

    #@ff
    if-ne v12, v3, :cond_4

    #@101
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@104
    move-result v3

    #@105
    move/from16 v0, p3

    #@107
    if-ne v0, v3, :cond_4

    #@109
    .line 705
    :cond_a
    move-object/from16 v0, p0

    #@10b
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@10d
    add-int p3, p3, v3

    #@10f
    goto/16 :goto_0

    #@111
    .line 710
    :cond_b
    move-object/from16 v0, p0

    #@113
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@115
    move/from16 v0, p4

    #@117
    if-ne v0, v3, :cond_5

    #@119
    .line 711
    const/4 v3, 0x2

    #@11a
    if-eq v11, v3, :cond_c

    #@11c
    const/4 v3, 0x3

    #@11d
    if-ne v11, v3, :cond_5

    #@11f
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@122
    move-result v3

    #@123
    move/from16 v0, p4

    #@125
    if-ne v0, v3, :cond_5

    #@127
    .line 712
    :cond_c
    move-object/from16 v0, p0

    #@129
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@12b
    add-int p4, p4, v3

    #@12d
    goto/16 :goto_1

    #@12f
    .line 743
    .restart local v10    # "count":I
    .restart local v16    # "spans":[Ljava/lang/Object;
    :cond_d
    move-object/from16 v0, p0

    #@131
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@133
    move-object/from16 v0, p0

    #@135
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@137
    move-object/from16 v0, p2

    #@139
    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@13c
    move-result-object v3

    #@13d
    move-object/from16 v0, p0

    #@13f
    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@141
    .line 744
    move-object/from16 v0, p0

    #@143
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@145
    move-object/from16 v0, p0

    #@147
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@149
    move/from16 v0, p3

    #@14b
    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@14e
    move-result-object v3

    #@14f
    move-object/from16 v0, p0

    #@151
    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@153
    .line 745
    move-object/from16 v0, p0

    #@155
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@157
    move-object/from16 v0, p0

    #@159
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@15b
    move/from16 v0, p4

    #@15d
    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@160
    move-result-object v3

    #@161
    move-object/from16 v0, p0

    #@163
    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@165
    .line 746
    move-object/from16 v0, p0

    #@167
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@169
    move-object/from16 v0, p0

    #@16b
    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@16d
    move/from16 v0, p5

    #@16f
    invoke-static {v3, v4, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    #@172
    move-result-object v3

    #@173
    move-object/from16 v0, p0

    #@175
    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    #@177
    .line 747
    move-object/from16 v0, p0

    #@179
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@17b
    move-object/from16 v0, p0

    #@17d
    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;->invalidateIndex(I)V

    #@180
    .line 748
    move-object/from16 v0, p0

    #@182
    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@184
    add-int/lit8 v3, v3, 0x1

    #@186
    move-object/from16 v0, p0

    #@188
    iput v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@18a
    .line 752
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@18d
    move-result v3

    #@18e
    mul-int/lit8 v3, v3, 0x2

    #@190
    add-int/lit8 v15, v3, 0x1

    #@192
    .line 753
    .local v15, "sizeOfMax":I
    move-object/from16 v0, p0

    #@194
    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@196
    array-length v3, v3

    #@197
    if-ge v3, v15, :cond_e

    #@199
    .line 754
    new-array v3, v15, [I

    #@19b
    move-object/from16 v0, p0

    #@19d
    iput-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanMax:[I

    #@19f
    .line 757
    :cond_e
    if-eqz p1, :cond_f

    #@1a1
    .line 758
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@1a4
    .line 759
    move-object/from16 v0, p0

    #@1a6
    move-object/from16 v1, p2

    #@1a8
    invoke-direct {v0, v1, v7, v8}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    #@1ab
    .line 664
    :cond_f
    return-void
.end method

.method private treeRoot()I
    .locals 1

    #@0
    .prologue
    .line 1440
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
    .line 433
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
    .line 434
    const/4 v0, 0x2

    #@a
    if-ne p4, v0, :cond_1

    #@c
    .line 439
    if-nez p6, :cond_0

    #@e
    if-le p1, p2, :cond_5

    #@10
    .line 440
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@12
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@14
    add-int/2addr v0, v1

    #@15
    return v0

    #@16
    .line 443
    :cond_1
    const/4 v0, 0x3

    #@17
    if-ne p4, v0, :cond_2

    #@19
    .line 444
    if-eqz p5, :cond_5

    #@1b
    .line 445
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1d
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1f
    add-int/2addr v0, v1

    #@20
    return v0

    #@21
    .line 451
    :cond_2
    if-nez p6, :cond_3

    #@23
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@25
    sub-int/2addr v0, p3

    #@26
    if-ge p1, v0, :cond_4

    #@28
    .line 452
    :cond_3
    return p2

    #@29
    .line 455
    :cond_4
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@2b
    return v0

    #@2c
    .line 460
    :cond_5
    return p1
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 104
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 105
    check-cast p0, Landroid/text/SpannableStringBuilder;

    #@6
    .end local p0    # "source":Ljava/lang/CharSequence;
    return-object p0

    #@7
    .line 107
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
    .line 288
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
    .line 261
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
    .line 282
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
    .line 289
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
    .line 262
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3
    move-result v1

    #@4
    .line 263
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
    .line 283
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
    .line 284
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
    .line 275
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3
    move-result v0

    #@4
    .line 276
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@7
    .line 277
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@a
    move-result v1

    #@b
    invoke-virtual {p0, p2, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    #@e
    .line 278
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
    .line 288
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
    .line 261
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
    .line 282
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
    .line 115
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@3
    move-result v0

    #@4
    .line 116
    .local v0, "len":I
    if-gez p1, :cond_0

    #@6
    .line 117
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
    .line 118
    :cond_0
    if-lt p1, v0, :cond_1

    #@29
    .line 119
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
    .line 122
    :cond_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@50
    if-lt p1, v1, :cond_2

    #@52
    .line 123
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
    .line 125
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
    .line 235
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
    .line 234
    return-void
.end method

.method public clearSpans()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 240
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@3
    add-int/lit8 v0, v4, -0x1

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@7
    .line 241
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@9
    aget-object v3, v4, v0

    #@b
    .line 242
    .local v3, "what":Ljava/lang/Object;
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    #@d
    aget v2, v4, v0

    #@f
    .line 243
    .local v2, "ostart":I
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    #@11
    aget v1, v4, v0

    #@13
    .line 245
    .local v1, "oend":I
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@15
    if-le v2, v4, :cond_0

    #@17
    .line 246
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@19
    sub-int/2addr v2, v4

    #@1a
    .line 247
    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1c
    if-le v1, v4, :cond_1

    #@1e
    .line 248
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@20
    sub-int/2addr v1, v4

    #@21
    .line 250
    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@23
    .line 251
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@25
    aput-object v5, v4, v0

    #@27
    .line 253
    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    #@2a
    .line 240
    add-int/lit8 v0, v0, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 255
    .end local v1    # "oend":I
    .end local v2    # "ostart":I
    .end local v3    # "what":Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@2f
    if-eqz v4, :cond_3

    #@31
    .line 256
    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@33
    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->clear()V

    #@36
    .line 239
    :cond_3
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 224
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
    .line 225
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
    .line 227
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
    .line 228
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@19
    move-result v0

    #@1a
    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    #@1d
    .line 230
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
    .line 1186
    const-string/jumbo v0, "drawText"

    #@4
    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@7
    .line 1188
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@9
    if-gt p3, v0, :cond_0

    #@b
    .line 1189
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
    .line 1185
    :goto_0
    return-void

    #@18
    .line 1190
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1a
    if-lt p2, v0, :cond_1

    #@1c
    .line 1191
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
    .line 1193
    :cond_1
    sub-int v0, p3, p2

    #@2e
    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    #@31
    move-result-object v1

    #@32
    .line 1195
    .local v1, "buf":[C
    invoke-virtual {p0, p2, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@35
    .line 1196
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
    .line 1197
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
    .line 1208
    const-string/jumbo v0, "drawTextRun"

    #@3
    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@6
    .line 1210
    sub-int v5, p5, p4

    #@8
    .line 1211
    .local v5, "contextLen":I
    sub-int v3, p3, p2

    #@a
    .line 1212
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@c
    if-gt p5, v0, :cond_0

    #@e
    .line 1213
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
    .line 1207
    :goto_0
    return-void

    #@1f
    .line 1214
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@21
    if-lt p4, v0, :cond_1

    #@23
    .line 1215
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
    .line 1218
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    #@3d
    move-result-object v1

    #@3e
    .line 1219
    .local v1, "buf":[C
    const/4 v0, 0x0

    #@3f
    invoke-virtual {p0, p4, p5, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@42
    .line 1220
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
    .line 1221
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
    .line 1368
    instance-of v5, p1, Landroid/text/Spanned;

    #@3
    if-eqz v5, :cond_7

    #@5
    .line 1369
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
    .line 1368
    if-eqz v5, :cond_7

    #@13
    move-object v1, p1

    #@14
    .line 1370
    check-cast v1, Landroid/text/Spanned;

    #@16
    .line 1372
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
    .line 1373
    .local v3, "otherSpans":[Ljava/lang/Object;
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@22
    array-length v6, v3

    #@23
    if-ne v5, v6, :cond_7

    #@25
    .line 1374
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@28
    if-ge v0, v5, :cond_6

    #@2a
    .line 1375
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@2c
    aget-object v4, v5, v0

    #@2e
    .line 1376
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v2, v3, v0

    #@30
    .line 1377
    .local v2, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_3

    #@32
    .line 1378
    if-ne v1, v2, :cond_0

    #@34
    .line 1379
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
    .line 1382
    :cond_0
    return v7

    #@3f
    .line 1380
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
    .line 1381
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
    .line 1374
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_0

    #@56
    .line 1384
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_4

    #@5c
    .line 1385
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
    .line 1388
    :cond_4
    :goto_1
    return v7

    #@67
    .line 1386
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
    .line 1387
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
    .line 1391
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_6
    const/4 v5, 0x1

    #@7d
    return v5

    #@7e
    .line 1394
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
    .line 972
    const-string/jumbo v0, "getChars"

    #@3
    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@6
    .line 974
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@8
    if-gt p2, v0, :cond_0

    #@a
    .line 975
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@c
    sub-int v1, p2, p1

    #@e
    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@11
    .line 971
    :goto_0
    return-void

    #@12
    .line 976
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@14
    if-lt p1, v0, :cond_1

    #@16
    .line 977
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
    .line 979
    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@23
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@25
    sub-int/2addr v1, p1

    #@26
    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@29
    .line 980
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@2b
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@2d
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@2f
    add-int/2addr v1, v2

    #@30
    .line 981
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@32
    sub-int/2addr v2, p1

    #@33
    add-int/2addr v2, p4

    #@34
    .line 982
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@36
    sub-int v3, p2, v3

    #@38
    .line 980
    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@3b
    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    #@0
    .prologue
    .line 1362
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
    .line 796
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    .line 797
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@8
    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    .line 798
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
    .line 806
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    .line 807
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@8
    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    .line 808
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
    .line 786
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    .line 787
    :cond_0
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@8
    invoke-virtual {v2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Integer;

    #@e
    .line 788
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
    .locals 8
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
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    #@1
    .line 818
    if-eqz p3, :cond_0

    #@3
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@5
    if-nez v0, :cond_1

    #@7
    :cond_0
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 819
    :cond_1
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@f
    move-result v0

    #@10
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringBuilder;->countSpans(IILjava/lang/Class;I)I

    #@13
    move-result v7

    #@14
    .line 820
    .local v7, "count":I
    if-nez v7, :cond_2

    #@16
    .line 821
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 825
    :cond_2
    invoke-static {p3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@1e
    move-result-object v5

    #@1f
    check-cast v5, [Ljava/lang/Object;

    #@21
    .line 826
    .local v5, "ret":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;->treeRoot()I

    #@24
    move-result v4

    #@25
    move-object v0, p0

    #@26
    move v1, p1

    #@27
    move v2, p2

    #@28
    move-object v3, p3

    #@29
    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->getSpansRec(IILjava/lang/Class;I[Ljava/lang/Object;I)I

    #@2c
    .line 827
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
    .line 1282
    sub-int v5, p4, p3

    #@2
    .line 1283
    .local v5, "contextLen":I
    sub-int v3, p2, p1

    #@4
    .line 1285
    .local v3, "len":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@6
    if-gt p2, v0, :cond_0

    #@8
    .line 1286
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
    .line 1299
    .local v9, "ret":F
    :goto_0
    return v9

    #@18
    .line 1288
    .end local v9    # "ret":F
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@1a
    if-lt p1, v0, :cond_1

    #@1c
    .line 1289
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@1e
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@20
    add-int v2, p1, v0

    #@22
    .line 1290
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
    .line 1289
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    #@30
    move-result v9

    #@31
    .restart local v9    # "ret":F
    goto :goto_0

    #@32
    .line 1292
    .end local v9    # "ret":F
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    #@35
    move-result-object v1

    #@36
    .line 1293
    .local v1, "buf":[C
    const/4 v0, 0x0

    #@37
    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@3a
    .line 1294
    sub-int v2, p1, p3

    #@3c
    .line 1295
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
    .line 1294
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    #@47
    move-result v9

    #@48
    .line 1296
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
    .line 1333
    sub-int v3, p2, p1

    #@3
    .line 1334
    .local v3, "contextLen":I
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@5
    if-gt p2, v0, :cond_0

    #@7
    .line 1335
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
    .line 1348
    .local v7, "ret":I
    :goto_0
    return v7

    #@13
    .line 1337
    .end local v7    # "ret":I
    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@15
    if-lt p1, v0, :cond_1

    #@17
    .line 1338
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@19
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@1b
    add-int v2, p1, v0

    #@1d
    .line 1339
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
    .line 1338
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    #@27
    move-result v0

    #@28
    .line 1339
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    #@2a
    .line 1338
    sub-int v7, v0, v2

    #@2c
    .restart local v7    # "ret":I
    goto :goto_0

    #@2d
    .line 1341
    .end local v7    # "ret":I
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    #@30
    move-result-object v1

    #@31
    .line 1342
    .local v1, "buf":[C
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@34
    .line 1344
    sub-int v5, p4, p1

    #@36
    move-object v0, p6

    #@37
    move v4, p3

    #@38
    move v6, p5

    #@39
    .line 1343
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    #@3c
    move-result v0

    #@3d
    add-int v7, v0, p1

    #@3f
    .line 1345
    .restart local v7    # "ret":I
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    #@42
    goto :goto_0
.end method

.method public getTextWatcherDepth()I
    .locals 1

    #@0
    .prologue
    .line 1015
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
    .line 1254
    const-string/jumbo v2, "getTextWidths"

    #@4
    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@7
    .line 1258
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@9
    if-gt p2, v2, :cond_0

    #@b
    .line 1259
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@d
    sub-int v3, p2, p1

    #@f
    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    #@12
    move-result v1

    #@13
    .line 1270
    .local v1, "ret":I
    :goto_0
    return v1

    #@14
    .line 1260
    .end local v1    # "ret":I
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@16
    if-lt p1, v2, :cond_1

    #@18
    .line 1261
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
    .line 1263
    .end local v1    # "ret":I
    :cond_1
    sub-int v2, p2, p1

    #@26
    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    #@29
    move-result-object v0

    #@2a
    .line 1265
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@2d
    .line 1266
    sub-int v2, p2, p1

    #@2f
    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    #@32
    move-result v1

    #@33
    .line 1267
    .restart local v1    # "ret":I
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    #@36
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 1400
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    .line 1401
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    #@a
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@c
    add-int v0, v3, v4

    #@e
    .line 1402
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@11
    if-ge v1, v3, :cond_1

    #@13
    .line 1403
    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    #@15
    aget-object v2, v3, v1

    #@17
    .line 1404
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_0

    #@19
    .line 1405
    mul-int/lit8 v3, v0, 0x1f

    #@1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@1e
    move-result v4

    #@1f
    add-int v0, v3, v4

    #@21
    .line 1407
    :cond_0
    mul-int/lit8 v3, v0, 0x1f

    #@23
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    #@26
    move-result v4

    #@27
    add-int v0, v3, v4

    #@29
    .line 1408
    mul-int/lit8 v3, v0, 0x1f

    #@2b
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    #@2e
    move-result v4

    #@2f
    add-int v0, v3, v4

    #@31
    .line 1409
    mul-int/lit8 v3, v0, 0x1f

    #@33
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    #@36
    move-result v4

    #@37
    add-int v0, v3, v4

    #@39
    .line 1402
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 1411
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
    .line 219
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
    .line 214
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
    .line 220
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
    .line 215
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
    .line 132
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
    .line 1230
    const-string/jumbo v2, "measureText"

    #@4
    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@7
    .line 1234
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@9
    if-gt p2, v2, :cond_0

    #@b
    .line 1235
    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    #@d
    sub-int v3, p2, p1

    #@f
    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    #@12
    move-result v1

    #@13
    .line 1246
    .local v1, "ret":F
    :goto_0
    return v1

    #@14
    .line 1236
    .end local v1    # "ret":F
    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    #@16
    if-lt p1, v2, :cond_1

    #@18
    .line 1237
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
    .line 1239
    .end local v1    # "ret":F
    :cond_1
    sub-int v2, p2, p1

    #@26
    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    #@29
    move-result-object v0

    #@2a
    .line 1241
    .local v0, "buf":[C
    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@2d
    .line 1242
    sub-int v2, p2, p1

    #@2f
    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    #@32
    move-result v1

    #@33
    .line 1243
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
    .line 929
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    #@2
    if-nez v0, :cond_0

    #@4
    return p2

    #@5
    .line 930
    :cond_0
    if-nez p3, :cond_1

    #@7
    .line 931
    const-class p3, Ljava/lang/Object;

    #@9
    .line 933
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
    .line 767
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@2
    if-nez v1, :cond_0

    #@4
    return-void

    #@5
    .line 768
    :cond_0
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mIndexOfSpan:Ljava/util/IdentityHashMap;

    #@7
    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/lang/Integer;

    #@d
    .line 769
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    #@f
    .line 770
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@12
    move-result v1

    #@13
    invoke-direct {p0, v1}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    #@16
    .line 766
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
    .line 491
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
    .line 496
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
    .line 492
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
    .locals 24
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "tb"    # Ljava/lang/CharSequence;
    .param p4, "tbstart"    # I
    .param p5, "tbend"    # I

    #@0
    .prologue
    .line 498
    const-string/jumbo v5, "replace"

    #@3
    move-object/from16 v0, p0

    #@5
    move/from16 v1, p1

    #@7
    move/from16 v2, p2

    #@9
    invoke-direct {v0, v5, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    #@c
    .line 500
    move-object/from16 v0, p0

    #@e
    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    #@10
    array-length v0, v5

    #@11
    move/from16 v17, v0

    #@13
    .line 501
    .local v17, "filtercount":I
    const/16 v18, 0x0

    #@15
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@17
    move/from16 v1, v17

    #@19
    if-ge v0, v1, :cond_1

    #@1b
    .line 502
    move-object/from16 v0, p0

    #@1d
    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    #@1f
    aget-object v5, v5, v18

    #@21
    move-object/from16 v6, p3

    #@23
    move/from16 v7, p4

    #@25
    move/from16 v8, p5

    #@27
    move-object/from16 v9, p0

    #@29
    move/from16 v10, p1

    #@2b
    move/from16 v11, p2

    #@2d
    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    #@30
    move-result-object v22

    #@31
    .line 504
    .local v22, "repl":Ljava/lang/CharSequence;
    if-eqz v22, :cond_0

    #@33
    .line 505
    move-object/from16 p3, v22

    #@35
    .line 506
    const/16 p4, 0x0

    #@37
    .line 507
    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    #@3a
    move-result p5

    #@3b
    .line 501
    :cond_0
    add-int/lit8 v18, v18, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 511
    .end local v22    # "repl":Ljava/lang/CharSequence;
    :cond_1
    sub-int v21, p2, p1

    #@40
    .line 512
    .local v21, "origLen":I
    sub-int v19, p5, p4

    #@42
    .line 514
    .local v19, "newLen":I
    if-nez v21, :cond_2

    #@44
    if-nez v19, :cond_2

    #@46
    invoke-static/range {p3 .. p4}, Landroid/text/SpannableStringBuilder;->hasNonExclusiveExclusiveSpanAt(Ljava/lang/CharSequence;I)Z

    #@49
    move-result v5

    #@4a
    if-eqz v5, :cond_7

    #@4c
    .line 520
    :cond_2
    add-int v5, p1, v21

    #@4e
    const-class v6, Landroid/text/TextWatcher;

    #@50
    move-object/from16 v0, p0

    #@52
    move/from16 v1, p1

    #@54
    invoke-virtual {v0, v1, v5, v6}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@57
    move-result-object v23

    #@58
    check-cast v23, [Landroid/text/TextWatcher;

    #@5a
    .line 521
    .local v23, "textWatchers":[Landroid/text/TextWatcher;
    move-object/from16 v0, p0

    #@5c
    move-object/from16 v1, v23

    #@5e
    move/from16 v2, p1

    #@60
    move/from16 v3, v21

    #@62
    move/from16 v4, v19

    #@64
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendBeforeTextChanged([Landroid/text/TextWatcher;III)V

    #@67
    .line 526
    if-eqz v21, :cond_8

    #@69
    if-eqz v19, :cond_8

    #@6b
    const/4 v15, 0x1

    #@6c
    .line 527
    .local v15, "adjustSelection":Z
    :goto_1
    const/4 v8, 0x0

    #@6d
    .line 528
    .local v8, "selectionStart":I
    const/4 v12, 0x0

    #@6e
    .line 529
    .local v12, "selectionEnd":I
    if-eqz v15, :cond_3

    #@70
    .line 530
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    #@73
    move-result v8

    #@74
    .line 531
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    #@77
    move-result v12

    #@78
    .line 534
    :cond_3
    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)V

    #@7b
    .line 536
    if-eqz v15, :cond_6

    #@7d
    .line 537
    const/16 v16, 0x0

    #@7f
    .line 538
    .local v16, "changed":Z
    move/from16 v0, p1

    #@81
    if-le v8, v0, :cond_4

    #@83
    move/from16 v0, p2

    #@85
    if-ge v8, v0, :cond_4

    #@87
    .line 539
    sub-int v5, v8, p1

    #@89
    mul-int v5, v5, v19

    #@8b
    div-int v20, v5, v21

    #@8d
    .line 540
    .local v20, "offset":I
    add-int v8, p1, v20

    #@8f
    .line 542
    const/16 v16, 0x1

    #@91
    .line 543
    sget-object v7, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    #@93
    const/4 v6, 0x0

    #@94
    .line 544
    const/16 v10, 0x22

    #@96
    move-object/from16 v5, p0

    #@98
    move v9, v8

    #@99
    .line 543
    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    #@9c
    .line 546
    .end local v20    # "offset":I
    :cond_4
    move/from16 v0, p1

    #@9e
    if-le v12, v0, :cond_5

    #@a0
    move/from16 v0, p2

    #@a2
    if-ge v12, v0, :cond_5

    #@a4
    .line 547
    sub-int v5, v12, p1

    #@a6
    mul-int v5, v5, v19

    #@a8
    div-int v20, v5, v21

    #@aa
    .line 548
    .restart local v20    # "offset":I
    add-int v12, p1, v20

    #@ac
    .line 550
    const/16 v16, 0x1

    #@ae
    .line 551
    sget-object v11, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    #@b0
    const/4 v10, 0x0

    #@b1
    .line 552
    const/16 v14, 0x22

    #@b3
    move-object/from16 v9, p0

    #@b5
    move v13, v12

    #@b6
    .line 551
    invoke-direct/range {v9 .. v14}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    #@b9
    .line 554
    .end local v20    # "offset":I
    :cond_5
    if-eqz v16, :cond_6

    #@bb
    .line 555
    invoke-direct/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->restoreInvariants()V

    #@be
    .line 559
    .end local v16    # "changed":Z
    :cond_6
    move-object/from16 v0, p0

    #@c0
    move-object/from16 v1, v23

    #@c2
    move/from16 v2, p1

    #@c4
    move/from16 v3, v21

    #@c6
    move/from16 v4, v19

    #@c8
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChanged([Landroid/text/TextWatcher;III)V

    #@cb
    .line 560
    move-object/from16 v0, p0

    #@cd
    move-object/from16 v1, v23

    #@cf
    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendAfterTextChanged([Landroid/text/TextWatcher;)V

    #@d2
    .line 563
    sub-int v5, v19, v21

    #@d4
    move-object/from16 v0, p0

    #@d6
    move/from16 v1, p1

    #@d8
    move/from16 v2, p2

    #@da
    invoke-direct {v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->sendToSpanWatchers(III)V

    #@dd
    .line 565
    return-object p0

    #@de
    .line 517
    .end local v8    # "selectionStart":I
    .end local v12    # "selectionEnd":I
    .end local v15    # "adjustSelection":Z
    .end local v23    # "textWatchers":[Landroid/text/TextWatcher;
    :cond_7
    return-object p0

    #@df
    .line 526
    .restart local v23    # "textWatchers":[Landroid/text/TextWatcher;
    :cond_8
    const/4 v15, 0x0

    #@e0
    .restart local v15    # "adjustSelection":Z
    goto :goto_1
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .param p1, "filters"    # [Landroid/text/InputFilter;

    #@0
    .prologue
    .line 1353
    if-nez p1, :cond_0

    #@2
    .line 1354
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1357
    :cond_0
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    #@a
    .line 1352
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
    .line 658
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
    .line 657
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 964
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
    .line 1004
    sub-int v1, p2, p1

    #@2
    new-array v0, v1, [C

    #@4
    .line 1005
    .local v0, "buf":[C
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@8
    .line 1006
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
    .line 991
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    #@4
    move-result v1

    #@5
    .line 992
    .local v1, "len":I
    new-array v0, v1, [C

    #@7
    .line 994
    .local v0, "buf":[C
    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    #@a
    .line 995
    new-instance v2, Ljava/lang/String;

    #@c
    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    #@f
    return-object v2
.end method
