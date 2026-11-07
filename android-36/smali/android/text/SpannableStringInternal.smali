.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final greylist-max-r COLUMNS:I = 0x3

.field static final greylist-max-r EMPTY:[Ljava/lang/Object;

.field private static final greylist-max-r END:I = 0x1

.field private static final greylist-max-r FLAGS:I = 0x2

.field private static final greylist-max-r START:I


# instance fields
.field private greylist mSpanCount:I

.field private greylist mSpanData:[I

.field private greylist mSpans:[Ljava/lang/Object;

.field private greylist mText:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 582
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    return-void
.end method

.method constructor greylist <init>(Ljava/lang/CharSequence;II)V
    .registers 5
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;-><init>(Ljava/lang/CharSequence;IIZ)V

    .line 62
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;IIZ)V
    .registers 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ignoreNoCopySpan"    # Z

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p2, :cond_12

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_12

    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    goto :goto_1c

    .line 38
    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    .line 40
    :goto_1c
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 42
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 44
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_39

    .line 45
    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    if-eqz v0, :cond_33

    .line 46
    move-object v0, p1

    check-cast v0, Landroid/text/SpannableStringInternal;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V

    goto :goto_39

    .line 49
    :cond_33
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/text/SpannableStringInternal;->copySpansFromSpanned(Landroid/text/Spanned;IIZ)V

    .line 52
    :cond_39
    :goto_39
    return-void
.end method

.method private greylist checkRange(Ljava/lang/String;II)V
    .registers 8
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 484
    const-string v0, " "

    if-lt p3, p2, :cond_5f

    .line 490
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v1

    .line 492
    .local v1, "len":I
    if-gt p2, v1, :cond_36

    if-gt p3, v1, :cond_36

    .line 498
    if-ltz p2, :cond_11

    if-ltz p3, :cond_11

    .line 503
    return-void

    .line 499
    :cond_11
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 500
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

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

    .line 493
    :cond_36
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 494
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

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

    .line 485
    .end local v1    # "len":I
    :cond_5f
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 486
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

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

.method private greylist-max-r copySpans(Landroid/text/SpannableStringInternal;II)V
    .registers 5
    .param p1, "src"    # Landroid/text/SpannableStringInternal;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 567
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V

    .line 568
    return-void
.end method

.method private greylist-max-r copySpans(Landroid/text/Spanned;II)V
    .registers 5
    .param p1, "src"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 562
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/text/SpannableStringInternal;->copySpansFromSpanned(Landroid/text/Spanned;IIZ)V

    .line 563
    return-void
.end method

.method private blacklist copySpansFromInternal(Landroid/text/SpannableStringInternal;IIZ)V
    .registers 22
    .param p1, "src"    # Landroid/text/SpannableStringInternal;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ignoreNoCopySpan"    # Z

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    .line 104
    .local v4, "count":I
    iget-object v5, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 105
    .local v5, "srcData":[I
    iget-object v6, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 106
    .local v6, "srcSpans":[Ljava/lang/Object;
    iget v7, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 107
    .local v7, "limit":I
    const/4 v8, 0x0

    .line 109
    .local v8, "hasNoCopySpan":Z
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_11
    const/4 v10, 0x0

    if-ge v9, v7, :cond_35

    .line 110
    mul-int/lit8 v11, v9, 0x3

    add-int/2addr v11, v10

    aget v10, v5, v11

    .line 111
    .local v10, "spanStart":I
    mul-int/lit8 v11, v9, 0x3

    add-int/lit8 v11, v11, 0x1

    aget v11, v5, v11

    .line 112
    .local v11, "spanEnd":I
    invoke-direct {v0, v2, v3, v10, v11}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v12

    if-eqz v12, :cond_26

    goto :goto_32

    .line 113
    :cond_26
    aget-object v12, v6, v9

    instance-of v12, v12, Landroid/text/NoCopySpan;

    if-eqz v12, :cond_30

    .line 114
    const/4 v8, 0x1

    .line 115
    if-eqz p4, :cond_30

    .line 116
    goto :goto_32

    .line 119
    :cond_30
    add-int/lit8 v4, v4, 0x1

    .line 109
    .end local v10    # "spanStart":I
    .end local v11    # "spanEnd":I
    :goto_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_11

    .line 122
    .end local v9    # "i":I
    :cond_35
    if-nez v4, :cond_38

    return-void

    .line 124
    :cond_38
    if-nez v8, :cond_6b

    if-nez v2, :cond_6b

    invoke-virtual {v1}, Landroid/text/SpannableStringInternal;->length()I

    move-result v9

    if-ne v3, v9, :cond_6b

    .line 125
    iget-object v9, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v9, v9

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 126
    iget-object v9, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v9, v9

    new-array v9, v9, [I

    iput-object v9, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 127
    iget v9, v1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    iput v9, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 128
    iget-object v9, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v11, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget-object v12, v1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v12, v12

    invoke-static {v9, v10, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object v9, v1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v11, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget-object v12, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    array-length v12, v12

    invoke-static {v9, v10, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_d0

    .line 131
    :cond_6b
    iput v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 132
    iget v9, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 133
    iget-object v9, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v9, v9

    mul-int/lit8 v9, v9, 0x3

    new-array v9, v9, [I

    iput-object v9, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 134
    const/4 v9, 0x0

    .restart local v9    # "i":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_80
    if-ge v9, v7, :cond_d0

    .line 135
    mul-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v10

    aget v12, v5, v12

    .line 136
    .local v12, "spanStart":I
    mul-int/lit8 v13, v9, 0x3

    add-int/lit8 v13, v13, 0x1

    aget v13, v5, v13

    .line 137
    .local v13, "spanEnd":I
    invoke-direct {v0, v2, v3, v12, v13}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    move-result v14

    if-nez v14, :cond_cd

    if-eqz p4, :cond_9c

    aget-object v14, v6, v9

    instance-of v14, v14, Landroid/text/NoCopySpan;

    if-eqz v14, :cond_9c

    .line 139
    goto :goto_cd

    .line 141
    :cond_9c
    if-ge v12, v2, :cond_a0

    move/from16 v12, p2

    .line 142
    :cond_a0
    if-le v13, v3, :cond_a4

    move/from16 v13, p3

    .line 144
    :cond_a4
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v15, v6, v9

    aput-object v15, v14, v11

    .line 145
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v15, v11, 0x3

    add-int/2addr v15, v10

    sub-int v16, v12, v2

    aput v16, v14, v15

    .line 146
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v15, v11, 0x3

    add-int/lit8 v15, v15, 0x1

    sub-int v16, v13, v2

    aput v16, v14, v15

    .line 147
    iget-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    mul-int/lit8 v15, v11, 0x3

    add-int/lit8 v15, v15, 0x2

    mul-int/lit8 v16, v9, 0x3

    add-int/lit8 v16, v16, 0x2

    aget v16, v5, v16

    aput v16, v14, v15

    .line 148
    add-int/lit8 v11, v11, 0x1

    .line 134
    .end local v12    # "spanStart":I
    .end local v13    # "spanEnd":I
    :cond_cd
    :goto_cd
    add-int/lit8 v9, v9, 0x1

    goto :goto_80

    .line 151
    .end local v9    # "i":I
    .end local v11    # "j":I
    :cond_d0
    :goto_d0
    return-void
.end method

.method private blacklist copySpansFromSpanned(Landroid/text/Spanned;IIZ)V
    .registers 16
    .param p1, "src"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ignoreNoCopySpan"    # Z

    .line 73
    const-class v0, Ljava/lang/Object;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "spans":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_39

    .line 76
    if-eqz p4, :cond_13

    aget-object v2, v0, v1

    instance-of v2, v2, Landroid/text/NoCopySpan;

    if-eqz v2, :cond_13

    .line 77
    goto :goto_36

    .line 79
    :cond_13
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 80
    .local v2, "st":I
    aget-object v3, v0, v1

    invoke-interface {p1, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 81
    .local v3, "en":I
    aget-object v4, v0, v1

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 83
    .local v9, "fl":I
    if-ge v2, p2, :cond_28

    .line 84
    move v2, p2

    .line 85
    :cond_28
    if-le v3, p3, :cond_2b

    .line 86
    move v3, p3

    .line 88
    :cond_2b
    aget-object v6, v0, v1

    sub-int v7, v2, p2

    sub-int v8, v3, p2

    const/4 v10, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    .line 75
    .end local v2    # "st":I
    .end local v3    # "en":I
    .end local v9    # "fl":I
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 90
    .end local v1    # "i":I
    :cond_39
    return-void
.end method

.method private greylist-max-r isIndexFollowsNextLine(I)Z
    .registers 4
    .param p1, "index"    # I

    .line 192
    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v0

    if-eq p1, v0, :cond_14

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private final greylist-max-r isOutOfCopyRange(IIII)Z
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "spanStart"    # I
    .param p4, "spanEnd"    # I

    .line 160
    const/4 v0, 0x1

    if-gt p3, p2, :cond_11

    if-ge p4, p1, :cond_6

    goto :goto_11

    .line 161
    :cond_6
    if-eq p3, p4, :cond_f

    if-eq p1, p2, :cond_f

    .line 162
    if-eq p3, p2, :cond_e

    if-ne p4, p1, :cond_f

    :cond_e
    return v0

    .line 164
    :cond_f
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_11
    :goto_11
    return v0
.end method

.method private static greylist region(II)Ljava/lang/String;
    .registers 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 479
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

.method private greylist sendSpanAdded(Ljava/lang/Object;II)V
    .registers 9
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 448
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 449
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 451
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_17

    .line 452
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 454
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method private greylist sendSpanChanged(Ljava/lang/Object;IIII)V
    .registers 16
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "s"    # I
    .param p3, "e"    # I
    .param p4, "st"    # I
    .param p5, "en"    # I

    .line 468
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 470
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 472
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_24

    .line 473
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    .end local p1    # "what":Ljava/lang/Object;
    .end local p2    # "s":I
    .end local p3    # "e":I
    .end local p4    # "st":I
    .end local p5    # "en":I
    .local v5, "what":Ljava/lang/Object;
    .local v6, "s":I
    .local v7, "e":I
    .local v8, "st":I
    .local v9, "en":I
    invoke-interface/range {v3 .. v9}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    .line 472
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 475
    .end local v2    # "i":I
    .end local v5    # "what":Ljava/lang/Object;
    .end local v6    # "s":I
    .end local v7    # "e":I
    .end local v8    # "st":I
    .end local v9    # "en":I
    .restart local p1    # "what":Ljava/lang/Object;
    .restart local p2    # "s":I
    .restart local p3    # "e":I
    .restart local p4    # "st":I
    .restart local p5    # "en":I
    :cond_24
    return-void
.end method

.method private greylist sendSpanRemoved(Ljava/lang/Object;II)V
    .registers 9
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 458
    const-class v0, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v0}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    .line 459
    .local v0, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v0

    .line 461
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_17

    .line 462
    aget-object v3, v0, v2

    move-object v4, p0

    check-cast v4, Landroid/text/Spannable;

    invoke-interface {v3, v4, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 464
    .end local v2    # "i":I
    :cond_17
    return-void
.end method

.method private greylist-max-r setSpan(Ljava/lang/Object;IIIZ)V
    .registers 20
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I
    .param p5, "enforceParagraph"    # Z

    .line 197
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v6, p2

    .line 198
    .local v6, "nstart":I
    move/from16 v7, p3

    .line 200
    .local v7, "nend":I
    const-string/jumbo v2, "setSpan"

    invoke-direct {p0, v2, v0, v1}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    .line 202
    and-int/lit8 v2, p4, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_80

    .line 203
    invoke-direct {p0, v0}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v2

    const-string v3, ")"

    const-string v4, " follows "

    if-eqz v2, :cond_4c

    .line 204
    if-nez p5, :cond_21

    .line 206
    return-void

    .line 208
    :cond_21
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PARAGRAPH span must start at paragraph boundary ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    .line 209
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_4c
    invoke-direct {p0, v1}, Landroid/text/SpannableStringInternal;->isIndexFollowsNextLine(I)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 213
    if-nez p5, :cond_55

    .line 215
    return-void

    .line 217
    :cond_55
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PARAGRAPH span must end at paragraph boundary ("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    .line 218
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 222
    :cond_80
    iget v8, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 223
    .local v8, "count":I
    iget-object v9, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 224
    .local v9, "spans":[Ljava/lang/Object;
    iget-object v10, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 226
    .local v10, "data":[I
    const/4 v2, 0x0

    move v11, v2

    .local v11, "i":I
    :goto_88
    const/4 v2, 0x0

    if-ge v11, v8, :cond_b7

    .line 227
    aget-object v3, v9, v11

    if-ne v3, p1, :cond_b3

    .line 228
    mul-int/lit8 v3, v11, 0x3

    add-int/2addr v3, v2

    aget v4, v10, v3

    .line 229
    .local v4, "ostart":I
    mul-int/lit8 v3, v11, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v5, v10, v3

    .line 231
    .local v5, "oend":I
    mul-int/lit8 v3, v11, 0x3

    add-int/2addr v3, v2

    aput v0, v10, v3

    .line 232
    mul-int/lit8 v2, v11, 0x3

    add-int/lit8 v2, v2, 0x1

    aput v1, v10, v2

    .line 233
    mul-int/lit8 v2, v11, 0x3

    add-int/lit8 v2, v2, 0x2

    aput p4, v10, v2

    .line 235
    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    .line 236
    move v2, v4

    move-object v4, v3

    .end local v4    # "ostart":I
    .local v2, "ostart":I
    return-void

    .line 226
    .end local v2    # "ostart":I
    .end local v5    # "oend":I
    :cond_b3
    move-object v4, p1

    add-int/lit8 v11, v11, 0x1

    goto :goto_88

    :cond_b7
    move-object v4, p1

    .line 240
    .end local v11    # "i":I
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v5, v5, 0x1

    iget-object v11, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    array-length v11, v11

    if-lt v5, v11, :cond_e4

    .line 241
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 242
    invoke-static {v5}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v5

    .line 241
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    move-result-object v5

    .line 243
    .local v5, "newtags":[Ljava/lang/Object;
    array-length v11, v5

    mul-int/lit8 v11, v11, 0x3

    new-array v11, v11, [I

    .line 245
    .local v11, "newdata":[I
    iget-object v12, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v13, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    invoke-static {v12, v2, v5, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    iget-object v12, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v13, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v13, v13, 0x3

    invoke-static {v12, v2, v11, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    iput-object v5, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 249
    iput-object v11, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 252
    .end local v5    # "newtags":[Ljava/lang/Object;
    .end local v11    # "newdata":[I
    :cond_e4
    iget-object v5, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    iget v11, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    aput-object v4, v5, v11

    .line 253
    iget-object v5, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v11, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v11, v11, 0x3

    add-int/2addr v11, v2

    aput v0, v5, v11

    .line 254
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x1

    aput v1, v2, v5

    .line 255
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x2

    aput p4, v2, v5

    .line 256
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 258
    instance-of v2, p0, Landroid/text/Spannable;

    if-eqz v2, :cond_114

    .line 259
    invoke-direct {p0, p1, v6, v7}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    .line 260
    :cond_114
    return-void
.end method


# virtual methods
.method public final whitelist test-api charAt(I)C
    .registers 3
    .param p1, "i"    # I

    .line 172
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .line 508
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_86

    .line 509
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 510
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 512
    .local v0, "other":Landroid/text/Spanned;
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 513
    .local v2, "otherSpans":[Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v4}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 514
    .local v3, "thisSpans":[Ljava/lang/Object;
    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    array-length v5, v2

    if-ne v4, v5, :cond_86

    .line 515
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_30
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v4, v5, :cond_84

    .line 516
    aget-object v5, v3, v4

    .line 517
    .local v5, "thisSpan":Ljava/lang/Object;
    aget-object v6, v2, v4

    .line 518
    .local v6, "otherSpan":Ljava/lang/Object;
    if-ne v5, p0, :cond_5b

    .line 519
    if-ne v0, v6, :cond_5a

    .line 520
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_5a

    .line 521
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_5a

    .line 522
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, v8, :cond_80

    .line 523
    :cond_5a
    return v1

    .line 525
    :cond_5b
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 526
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_83

    .line 527
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_83

    .line 528
    invoke-virtual {p0, v5}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, v8, :cond_80

    goto :goto_83

    .line 515
    .end local v5    # "thisSpan":Ljava/lang/Object;
    .end local v6    # "otherSpan":Ljava/lang/Object;
    :cond_80
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 529
    .restart local v5    # "thisSpan":Ljava/lang/Object;
    .restart local v6    # "otherSpan":Ljava/lang/Object;
    :cond_83
    :goto_83
    return v1

    .line 532
    .end local v4    # "i":I
    .end local v5    # "thisSpan":Ljava/lang/Object;
    .end local v6    # "otherSpan":Ljava/lang/Object;
    :cond_84
    const/4 v1, 0x1

    return v1

    .line 535
    .end local v0    # "other":Landroid/text/Spanned;
    .end local v2    # "otherSpans":[Ljava/lang/Object;
    .end local v3    # "thisSpans":[Ljava/lang/Object;
    :cond_86
    return v1
.end method

.method public final whitelist getChars(II[CI)V
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    .line 182
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 183
    return-void
.end method

.method public greylist getSpanEnd(Ljava/lang/Object;)I
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;

    .line 313
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 314
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 315
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 317
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_18

    .line 318
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_15

    .line 319
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    return v4

    .line 317
    :cond_15
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 323
    .end local v3    # "i":I
    :cond_18
    const/4 v3, -0x1

    return v3
.end method

.method public greylist getSpanFlags(Ljava/lang/Object;)I
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;

    .line 328
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 329
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 330
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 332
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_18

    .line 333
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_15

    .line 334
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x2

    aget v4, v2, v4

    return v4

    .line 332
    :cond_15
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 338
    .end local v3    # "i":I
    :cond_18
    const/4 v3, 0x0

    return v3
.end method

.method public greylist getSpanStart(Ljava/lang/Object;)I
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;

    .line 298
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 299
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 300
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 302
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_18

    .line 303
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_15

    .line 304
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    return v4

    .line 302
    :cond_15
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 308
    .end local v3    # "i":I
    :cond_18
    const/4 v3, -0x1

    return v3
.end method

.method public greylist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 21
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

    .line 343
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    .line 345
    .local v4, "count":I
    iget v5, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 346
    .local v5, "spanCount":I
    iget-object v6, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 347
    .local v6, "spans":[Ljava/lang/Object;
    iget-object v7, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 348
    .local v7, "data":[I
    const/4 v8, 0x0

    .line 349
    .local v8, "ret":[Ljava/lang/Object;
    const/4 v9, 0x0

    .line 351
    .local v9, "ret1":Ljava/lang/Object;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_12
    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v10, v5, :cond_91

    .line 352
    mul-int/lit8 v13, v10, 0x3

    add-int/2addr v13, v11

    aget v13, v7, v13

    .line 353
    .local v13, "spanStart":I
    mul-int/lit8 v14, v10, 0x3

    add-int/2addr v14, v12

    aget v14, v7, v14

    .line 355
    .local v14, "spanEnd":I
    if-le v13, v2, :cond_24

    .line 356
    goto/16 :goto_8c

    .line 358
    :cond_24
    if-ge v14, v1, :cond_28

    .line 359
    goto/16 :goto_8c

    .line 362
    :cond_28
    if-eq v13, v14, :cond_32

    if-eq v1, v2, :cond_32

    .line 363
    if-ne v13, v2, :cond_2f

    .line 364
    goto :goto_8c

    .line 366
    :cond_2f
    if-ne v14, v1, :cond_32

    .line 367
    goto :goto_8c

    .line 372
    :cond_32
    if-eqz v3, :cond_41

    const-class v15, Ljava/lang/Object;

    if-eq v3, v15, :cond_41

    aget-object v15, v6, v10

    invoke-virtual {v3, v15}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_41

    .line 373
    goto :goto_8c

    .line 376
    :cond_41
    if-nez v4, :cond_48

    .line 377
    aget-object v9, v6, v10

    .line 378
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 380
    :cond_48
    if-ne v4, v12, :cond_56

    .line 381
    sub-int v15, v5, v10

    add-int/2addr v15, v12

    invoke-static {v3, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, [Ljava/lang/Object;

    .line 382
    aput-object v9, v8, v11

    .line 385
    :cond_56
    mul-int/lit8 v11, v10, 0x3

    add-int/lit8 v11, v11, 0x2

    aget v11, v7, v11

    const/high16 v12, 0xff0000

    and-int/2addr v11, v12

    .line 386
    .local v11, "prio":I
    if-eqz v11, :cond_85

    .line 389
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_62
    if-ge v15, v4, :cond_76

    .line 390
    move/from16 v16, v12

    aget-object v12, v8, v15

    invoke-virtual {v0, v12}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    and-int v12, v12, v16

    .line 392
    .local v12, "p":I
    if-le v11, v12, :cond_71

    .line 393
    goto :goto_76

    .line 389
    .end local v12    # "p":I
    :cond_71
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v16

    goto :goto_62

    .line 397
    :cond_76
    :goto_76
    add-int/lit8 v12, v15, 0x1

    sub-int v0, v4, v15

    invoke-static {v8, v15, v8, v12, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    aget-object v0, v6, v10

    aput-object v0, v8, v15

    .line 399
    nop

    .end local v15    # "j":I
    add-int/lit8 v4, v4, 0x1

    .line 400
    goto :goto_8c

    .line 401
    :cond_85
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "count":I
    .local v0, "count":I
    aget-object v12, v6, v10

    aput-object v12, v8, v4

    move v4, v0

    .line 351
    .end local v0    # "count":I
    .end local v11    # "prio":I
    .end local v13    # "spanStart":I
    .end local v14    # "spanEnd":I
    .restart local v4    # "count":I
    :goto_8c
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    goto :goto_12

    .line 406
    .end local v10    # "i":I
    :cond_91
    if-nez v4, :cond_98

    .line 407
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 409
    :cond_98
    if-ne v4, v12, :cond_a3

    .line 410
    invoke-static {v3, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 411
    .end local v8    # "ret":[Ljava/lang/Object;
    .local v0, "ret":[Ljava/lang/Object;
    aput-object v9, v0, v11

    .line 412
    return-object v0

    .line 414
    .end local v0    # "ret":[Ljava/lang/Object;
    .restart local v8    # "ret":[Ljava/lang/Object;
    :cond_a3
    array-length v0, v8

    if-ne v4, v0, :cond_a7

    .line 415
    return-object v8

    .line 418
    :cond_a7
    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 419
    .local v0, "nret":[Ljava/lang/Object;
    invoke-static {v8, v11, v0, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 541
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 542
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/2addr v1, v2

    .line 543
    .end local v0    # "hash":I
    .local v1, "hash":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v2, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    if-ge v0, v2, :cond_39

    .line 544
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 545
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_20

    .line 546
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    .line 548
    :cond_20
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 549
    .end local v1    # "hash":I
    .local v3, "hash":I
    mul-int/lit8 v1, v3, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v1, v4

    .line 550
    .end local v3    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    add-int v1, v3, v4

    .line 543
    .end local v2    # "span":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 552
    .end local v0    # "i":I
    :cond_39
    return v1
.end method

.method public final whitelist test-api length()I
    .registers 2

    .line 168
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public greylist nextSpanTransition(IILjava/lang/Class;)I
    .registers 11
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    .line 425
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 426
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 427
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 429
    .local v2, "data":[I
    if-nez p3, :cond_a

    .line 430
    const-class p3, Ljava/lang/Object;

    .line 433
    :cond_a
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_36

    .line 434
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    .line 435
    .local v4, "st":I
    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    .line 437
    .local v5, "en":I
    if-le v4, p1, :cond_26

    if-ge v4, p2, :cond_26

    aget-object v6, v1, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 438
    move p2, v4

    .line 439
    :cond_26
    if-le v5, p1, :cond_33

    if-ge v5, p2, :cond_33

    aget-object v6, v1, v3

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 440
    move p2, v5

    .line 433
    .end local v4    # "st":I
    .end local v5    # "en":I
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 443
    .end local v3    # "i":I
    :cond_36
    return p2
.end method

.method greylist removeSpan(Ljava/lang/Object;)V
    .registers 3
    .param p1, "what"    # Ljava/lang/Object;

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/SpannableStringInternal;->removeSpan(Ljava/lang/Object;I)V

    .line 265
    return-void
.end method

.method public greylist-max-o removeSpan(Ljava/lang/Object;I)V
    .registers 13
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .line 271
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 272
    .local v0, "count":I
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    .line 273
    .local v1, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    .line 275
    .local v2, "data":[I
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_8
    if-ltz v3, :cond_3f

    .line 276
    aget-object v4, v1, v3

    if-ne v4, p1, :cond_3c

    .line 277
    mul-int/lit8 v4, v3, 0x3

    add-int/lit8 v4, v4, 0x0

    aget v4, v2, v4

    .line 278
    .local v4, "ostart":I
    mul-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x1

    aget v5, v2, v5

    .line 280
    .local v5, "oend":I
    add-int/lit8 v6, v3, 0x1

    sub-int v6, v0, v6

    .line 282
    .local v6, "c":I
    add-int/lit8 v7, v3, 0x1

    invoke-static {v1, v7, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 283
    add-int/lit8 v7, v3, 0x1

    mul-int/lit8 v7, v7, 0x3

    mul-int/lit8 v8, v3, 0x3

    mul-int/lit8 v9, v6, 0x3

    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    .line 288
    and-int/lit16 v7, p2, 0x200

    if-nez v7, :cond_3b

    .line 289
    invoke-direct {p0, p1, v4, v5}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    .line 291
    :cond_3b
    return-void

    .line 275
    .end local v4    # "ostart":I
    .end local v5    # "oend":I
    .end local v6    # "c":I
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 294
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method

.method greylist setSpan(Ljava/lang/Object;III)V
    .registers 11
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 187
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "what":Ljava/lang/Object;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .end local p4    # "flags":I
    .local v1, "what":Ljava/lang/Object;
    .local v2, "start":I
    .local v3, "end":I
    .local v4, "flags":I
    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;IIIZ)V

    .line 188
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    return-object v0
.end method
