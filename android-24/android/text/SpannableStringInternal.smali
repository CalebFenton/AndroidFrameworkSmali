.class abstract Landroid/text/SpannableStringInternal;
.super Ljava/lang/Object;
.source "SpannableStringInternal.java"


# static fields
.field private static final COLUMNS:I = 0x3

.field static final EMPTY:[Ljava/lang/Object;

.field private static final END:I = 0x1

.field private static final FLAGS:I = 0x2

.field private static final START:I


# instance fields
.field private mSpanCount:I

.field private mSpanData:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 494
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    sput-object v0, Landroid/text/SpannableStringInternal;->EMPTY:[Ljava/lang/Object;

    #@5
    .line 26
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    if-nez p2, :cond_1

    #@5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v0

    #@9
    if-ne p3, v0, :cond_1

    #@b
    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    #@11
    .line 35
    :goto_0
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@13
    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@15
    .line 37
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    #@17
    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@19
    .line 39
    instance-of v0, p1, Landroid/text/Spanned;

    #@1b
    if-eqz v0, :cond_0

    #@1d
    .line 40
    instance-of v0, p1, Landroid/text/SpannableStringInternal;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 41
    check-cast p1, Landroid/text/SpannableStringInternal;

    #@23
    .end local p1    # "source":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/SpannableStringInternal;II)V

    #@26
    .line 29
    :cond_0
    :goto_1
    return-void

    #@27
    .line 33
    .restart local p1    # "source":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    #@31
    goto :goto_0

    #@32
    .line 43
    :cond_2
    check-cast p1, Landroid/text/Spanned;

    #@34
    .end local p1    # "source":Ljava/lang/CharSequence;
    invoke-direct {p0, p1, p2, p3}, Landroid/text/SpannableStringInternal;->copySpans(Landroid/text/Spanned;II)V

    #@37
    goto :goto_1
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 419
    if-ge p3, p2, :cond_0

    #@2
    .line 420
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
    .line 421
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 420
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 422
    const-string/jumbo v3, " has end before start"

    #@1f
    .line 420
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
    .line 425
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    #@2e
    move-result v0

    #@2f
    .line 427
    .local v0, "len":I
    if-gt p2, v0, :cond_1

    #@31
    if-le p3, v0, :cond_2

    #@33
    .line 428
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
    .line 429
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 428
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 430
    const-string/jumbo v3, " ends beyond length "

    #@50
    .line 428
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
    .line 433
    :cond_2
    if-ltz p2, :cond_3

    #@62
    if-gez p3, :cond_4

    #@64
    .line 434
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
    .line 435
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    .line 434
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    .line 436
    const-string/jumbo v3, " starts before 0"

    #@81
    .line 434
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
    .line 418
    :cond_4
    return-void
.end method

.method private final copySpans(Landroid/text/SpannableStringInternal;II)V
    .locals 12
    .param p1, "src"    # Landroid/text/SpannableStringInternal;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 81
    if-nez p2, :cond_1

    #@3
    invoke-virtual {p1}, Landroid/text/SpannableStringInternal;->length()I

    #@6
    move-result v8

    #@7
    if-ne p3, v8, :cond_1

    #@9
    .line 82
    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@b
    array-length v8, v8

    #@c
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    #@f
    move-result-object v8

    #@10
    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@12
    .line 83
    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@14
    array-length v8, v8

    #@15
    new-array v8, v8, [I

    #@17
    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@19
    .line 84
    iget v8, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@1b
    iput v8, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@1d
    .line 85
    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@1f
    iget-object v9, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@21
    iget-object v10, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@23
    array-length v10, v10

    #@24
    invoke-static {v8, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@27
    .line 86
    iget-object v8, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@29
    iget-object v9, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@2b
    iget-object v10, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@2d
    array-length v10, v10

    #@2e
    invoke-static {v8, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy([II[III)V

    #@31
    .line 80
    :cond_0
    return-void

    #@32
    .line 88
    :cond_1
    const/4 v0, 0x0

    #@33
    .line 89
    .local v0, "count":I
    iget-object v6, p1, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@35
    .line 90
    .local v6, "srcData":[I
    iget v3, p1, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@37
    .line 91
    .local v3, "limit":I
    const/4 v1, 0x0

    #@38
    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    #@3a
    .line 92
    mul-int/lit8 v8, v1, 0x3

    #@3c
    add-int/lit8 v8, v8, 0x0

    #@3e
    aget v5, v6, v8

    #@40
    .line 93
    .local v5, "spanStart":I
    mul-int/lit8 v8, v1, 0x3

    #@42
    add-int/lit8 v8, v8, 0x1

    #@44
    aget v4, v6, v8

    #@46
    .line 94
    .local v4, "spanEnd":I
    invoke-direct {p0, p2, p3, v5, v4}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    #@49
    move-result v8

    #@4a
    if-eqz v8, :cond_2

    #@4c
    .line 91
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 95
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_1

    #@52
    .line 98
    .end local v4    # "spanEnd":I
    .end local v5    # "spanStart":I
    :cond_3
    if-nez v0, :cond_4

    #@54
    return-void

    #@55
    .line 100
    :cond_4
    iget-object v7, p1, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@57
    .line 101
    .local v7, "srcSpans":[Ljava/lang/Object;
    iput v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@59
    .line 102
    iget v8, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@5b
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    #@5e
    move-result-object v8

    #@5f
    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@61
    .line 103
    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@63
    array-length v8, v8

    #@64
    mul-int/lit8 v8, v8, 0x3

    #@66
    new-array v8, v8, [I

    #@68
    iput-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@6a
    .line 104
    const/4 v1, 0x0

    #@6b
    const/4 v2, 0x0

    #@6c
    .local v2, "j":I
    :goto_2
    if-ge v1, v3, :cond_0

    #@6e
    .line 105
    mul-int/lit8 v8, v1, 0x3

    #@70
    add-int/lit8 v8, v8, 0x0

    #@72
    aget v5, v6, v8

    #@74
    .line 106
    .restart local v5    # "spanStart":I
    mul-int/lit8 v8, v1, 0x3

    #@76
    add-int/lit8 v8, v8, 0x1

    #@78
    aget v4, v6, v8

    #@7a
    .line 107
    .restart local v4    # "spanEnd":I
    invoke-direct {p0, p2, p3, v5, v4}, Landroid/text/SpannableStringInternal;->isOutOfCopyRange(IIII)Z

    #@7d
    move-result v8

    #@7e
    if-eqz v8, :cond_5

    #@80
    .line 104
    :goto_3
    add-int/lit8 v1, v1, 0x1

    #@82
    goto :goto_2

    #@83
    .line 108
    :cond_5
    if-ge v5, p2, :cond_6

    #@85
    move v5, p2

    #@86
    .line 109
    :cond_6
    if-le v4, p3, :cond_7

    #@88
    move v4, p3

    #@89
    .line 111
    :cond_7
    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@8b
    aget-object v9, v7, v1

    #@8d
    aput-object v9, v8, v2

    #@8f
    .line 112
    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@91
    mul-int/lit8 v9, v2, 0x3

    #@93
    add-int/lit8 v9, v9, 0x0

    #@95
    sub-int v10, v5, p2

    #@97
    aput v10, v8, v9

    #@99
    .line 113
    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@9b
    mul-int/lit8 v9, v2, 0x3

    #@9d
    add-int/lit8 v9, v9, 0x1

    #@9f
    sub-int v10, v4, p2

    #@a1
    aput v10, v8, v9

    #@a3
    .line 114
    iget-object v8, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@a5
    mul-int/lit8 v9, v2, 0x3

    #@a7
    add-int/lit8 v9, v9, 0x2

    #@a9
    mul-int/lit8 v10, v1, 0x3

    #@ab
    add-int/lit8 v10, v10, 0x2

    #@ad
    aget v10, v6, v10

    #@af
    aput v10, v8, v9

    #@b1
    .line 115
    add-int/lit8 v2, v2, 0x1

    #@b3
    goto :goto_3
.end method

.method private final copySpans(Landroid/text/Spanned;II)V
    .locals 8
    .param p1, "src"    # Landroid/text/Spanned;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 56
    const-class v5, Ljava/lang/Object;

    #@2
    invoke-interface {p1, p2, p3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    .line 58
    .local v3, "spans":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@7
    .local v2, "i":I
    :goto_0
    array-length v5, v3

    #@8
    if-ge v2, v5, :cond_2

    #@a
    .line 59
    aget-object v5, v3, v2

    #@c
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@f
    move-result v4

    #@10
    .line 60
    .local v4, "st":I
    aget-object v5, v3, v2

    #@12
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@15
    move-result v0

    #@16
    .line 61
    .local v0, "en":I
    aget-object v5, v3, v2

    #@18
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@1b
    move-result v1

    #@1c
    .line 63
    .local v1, "fl":I
    if-ge v4, p2, :cond_0

    #@1e
    .line 64
    move v4, p2

    #@1f
    .line 65
    :cond_0
    if-le v0, p3, :cond_1

    #@21
    .line 66
    move v0, p3

    #@22
    .line 68
    :cond_1
    aget-object v5, v3, v2

    #@24
    sub-int v6, v4, p2

    #@26
    sub-int v7, v0, p2

    #@28
    invoke-virtual {p0, v5, v6, v7, v1}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;III)V

    #@2b
    .line 58
    add-int/lit8 v2, v2, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 55
    .end local v0    # "en":I
    .end local v1    # "fl":I
    .end local v4    # "st":I
    :cond_2
    return-void
.end method

.method private final isOutOfCopyRange(IIII)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "spanStart"    # I
    .param p4, "spanEnd"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 126
    if-gt p3, p2, :cond_0

    #@3
    if-ge p4, p1, :cond_1

    #@5
    :cond_0
    return v0

    #@6
    .line 127
    :cond_1
    if-eq p3, p4, :cond_3

    #@8
    if-eq p1, p2, :cond_3

    #@a
    .line 128
    if-eq p3, p2, :cond_2

    #@c
    if-ne p4, p1, :cond_3

    #@e
    :cond_2
    return v0

    #@f
    .line 130
    :cond_3
    const/4 v0, 0x0

    #@10
    return v0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    #@0
    .prologue
    .line 415
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

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 387
    const-class v3, Landroid/text/SpanWatcher;

    #@2
    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, [Landroid/text/SpanWatcher;

    #@8
    .line 388
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    #@9
    .line 390
    .local v1, "n":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 391
    aget-object v4, v2, v0

    #@e
    move-object v3, p0

    #@f
    check-cast v3, Landroid/text/Spannable;

    #@11
    invoke-interface {v4, v3, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    #@14
    .line 390
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 386
    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "s"    # I
    .param p3, "e"    # I
    .param p4, "st"    # I
    .param p5, "en"    # I

    #@0
    .prologue
    .line 405
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    #@7
    move-result v1

    #@8
    .line 406
    const-class v2, Landroid/text/SpanWatcher;

    #@a
    .line 405
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@d
    move-result-object v9

    #@e
    check-cast v9, [Landroid/text/SpanWatcher;

    #@10
    .line 407
    .local v9, "recip":[Landroid/text/SpanWatcher;
    array-length v8, v9

    #@11
    .line 409
    .local v8, "n":I
    const/4 v7, 0x0

    #@12
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    #@14
    .line 410
    aget-object v0, v9, v7

    #@16
    move-object v1, p0

    #@17
    check-cast v1, Landroid/text/Spannable;

    #@19
    move-object v2, p1

    #@1a
    move v3, p2

    #@1b
    move v4, p3

    #@1c
    move v5, p4

    #@1d
    move v6, p5

    #@1e
    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    #@21
    .line 409
    add-int/lit8 v7, v7, 0x1

    #@23
    goto :goto_0

    #@24
    .line 404
    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 396
    const-class v3, Landroid/text/SpanWatcher;

    #@2
    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, [Landroid/text/SpanWatcher;

    #@8
    .line 397
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    #@9
    .line 399
    .local v1, "n":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 400
    aget-object v4, v2, v0

    #@e
    move-object v3, p0

    #@f
    check-cast v3, Landroid/text/Spannable;

    #@11
    invoke-interface {v4, v3, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    #@14
    .line 399
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 395
    :cond_0
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 443
    instance-of v5, p1, Landroid/text/Spanned;

    #@3
    if-eqz v5, :cond_7

    #@5
    .line 444
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

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
    .line 443
    if-eqz v5, :cond_7

    #@13
    move-object v1, p1

    #@14
    .line 445
    check-cast v1, Landroid/text/Spanned;

    #@16
    .line 447
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
    .line 448
    .local v3, "otherSpans":[Ljava/lang/Object;
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@22
    array-length v6, v3

    #@23
    if-ne v5, v6, :cond_7

    #@25
    .line 449
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@28
    if-ge v0, v5, :cond_6

    #@2a
    .line 450
    iget-object v5, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@2c
    aget-object v4, v5, v0

    #@2e
    .line 451
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v2, v3, v0

    #@30
    .line 452
    .local v2, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_3

    #@32
    .line 453
    if-ne v1, v2, :cond_0

    #@34
    .line 454
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    #@37
    move-result v5

    #@38
    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@3b
    move-result v6

    #@3c
    if-eq v5, v6, :cond_1

    #@3e
    .line 457
    :cond_0
    return v7

    #@3f
    .line 455
    :cond_1
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    #@42
    move-result v5

    #@43
    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@46
    move-result v6

    #@47
    if-ne v5, v6, :cond_0

    #@49
    .line 456
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    #@4c
    move-result v5

    #@4d
    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@50
    move-result v6

    #@51
    if-ne v5, v6, :cond_0

    #@53
    .line 449
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_0

    #@56
    .line 459
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_4

    #@5c
    .line 460
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    #@5f
    move-result v5

    #@60
    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@63
    move-result v6

    #@64
    if-eq v5, v6, :cond_5

    #@66
    .line 463
    :cond_4
    :goto_1
    return v7

    #@67
    .line 461
    :cond_5
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    #@6a
    move-result v5

    #@6b
    invoke-interface {v1, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@6e
    move-result v6

    #@6f
    if-ne v5, v6, :cond_4

    #@71
    .line 462
    invoke-virtual {p0, v4}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

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
    .line 466
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_6
    const/4 v5, 0x1

    #@7d
    return v5

    #@7e
    .line 469
    .end local v0    # "i":I
    .end local v1    # "other":Landroid/text/Spanned;
    .end local v3    # "otherSpans":[Ljava/lang/Object;
    :cond_7
    return v7
.end method

.method public final getChars(II[CI)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "off"    # I

    #@0
    .prologue
    .line 148
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    #@5
    .line 147
    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 256
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@2
    .line 257
    .local v0, "count":I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@4
    .line 258
    .local v3, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@6
    .line 260
    .local v1, "data":[I
    add-int/lit8 v2, v0, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@a
    .line 261
    aget-object v4, v3, v2

    #@c
    if-ne v4, p1, :cond_0

    #@e
    .line 262
    mul-int/lit8 v4, v2, 0x3

    #@10
    add-int/lit8 v4, v4, 0x1

    #@12
    aget v4, v1, v4

    #@14
    return v4

    #@15
    .line 260
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 266
    :cond_1
    const/4 v4, -0x1

    #@19
    return v4
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 6
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 270
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@3
    .line 271
    .local v0, "count":I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@5
    .line 272
    .local v3, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@7
    .line 274
    .local v1, "data":[I
    add-int/lit8 v2, v0, -0x1

    #@9
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@b
    .line 275
    aget-object v4, v3, v2

    #@d
    if-ne v4, p1, :cond_0

    #@f
    .line 276
    mul-int/lit8 v4, v2, 0x3

    #@11
    add-int/lit8 v4, v4, 0x2

    #@13
    aget v4, v1, v4

    #@15
    return v4

    #@16
    .line 274
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@18
    goto :goto_0

    #@19
    .line 280
    :cond_1
    return v5
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 242
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@2
    .line 243
    .local v0, "count":I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@4
    .line 244
    .local v3, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@6
    .line 246
    .local v1, "data":[I
    add-int/lit8 v2, v0, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@a
    .line 247
    aget-object v4, v3, v2

    #@c
    if-ne v4, p1, :cond_0

    #@e
    .line 248
    mul-int/lit8 v4, v2, 0x3

    #@10
    add-int/lit8 v4, v4, 0x0

    #@12
    aget v4, v1, v4

    #@14
    return v4

    #@15
    .line 246
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 252
    :cond_1
    const/4 v4, -0x1

    #@19
    return v4
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 18
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
    .line 284
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 286
    .local v2, "count":I
    move-object/from16 v0, p0

    #@3
    iget v12, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@5
    .line 287
    .local v12, "spanCount":I
    move-object/from16 v0, p0

    #@7
    iget-object v15, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@9
    .line 288
    .local v15, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    #@b
    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@d
    .line 289
    .local v4, "data":[I
    const/4 v10, 0x0

    #@e
    .line 290
    .local v10, "ret":[Ljava/lang/Object;
    const/4 v11, 0x0

    #@f
    .line 292
    .local v11, "ret1":Ljava/lang/Object;
    const/4 v5, 0x0

    #@10
    .local v5, "i":I
    move v3, v2

    #@11
    .end local v2    # "count":I
    .end local v10    # "ret":[Ljava/lang/Object;
    .end local v11    # "ret1":Ljava/lang/Object;
    .local v3, "count":I
    :goto_0
    if-ge v5, v12, :cond_b

    #@13
    .line 293
    mul-int/lit8 v16, v5, 0x3

    #@15
    add-int/lit8 v16, v16, 0x0

    #@17
    aget v14, v4, v16

    #@19
    .line 294
    .local v14, "spanStart":I
    mul-int/lit8 v16, v5, 0x3

    #@1b
    add-int/lit8 v16, v16, 0x1

    #@1d
    aget v13, v4, v16

    #@1f
    .line 296
    .local v13, "spanEnd":I
    move/from16 v0, p2

    #@21
    if-le v14, v0, :cond_0

    #@23
    move v2, v3

    #@24
    .line 292
    .end local v3    # "count":I
    .restart local v2    # "count":I
    :goto_1
    add-int/lit8 v5, v5, 0x1

    #@26
    move v3, v2

    #@27
    .end local v2    # "count":I
    .restart local v3    # "count":I
    goto :goto_0

    #@28
    .line 299
    :cond_0
    move/from16 v0, p1

    #@2a
    if-ge v13, v0, :cond_1

    #@2c
    move v2, v3

    #@2d
    .line 300
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    #@2e
    .line 303
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_1
    if-eq v14, v13, :cond_3

    #@30
    move/from16 v0, p1

    #@32
    move/from16 v1, p2

    #@34
    if-eq v0, v1, :cond_3

    #@36
    .line 304
    move/from16 v0, p2

    #@38
    if-ne v14, v0, :cond_2

    #@3a
    move v2, v3

    #@3b
    .line 305
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    #@3c
    .line 307
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_2
    move/from16 v0, p1

    #@3e
    if-ne v13, v0, :cond_3

    #@40
    move v2, v3

    #@41
    .line 308
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    #@42
    .line 313
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_3
    if-eqz p3, :cond_4

    #@44
    const-class v16, Ljava/lang/Object;

    #@46
    move-object/from16 v0, p3

    #@48
    move-object/from16 v1, v16

    #@4a
    if-eq v0, v1, :cond_4

    #@4c
    aget-object v16, v15, v5

    #@4e
    move-object/from16 v0, p3

    #@50
    move-object/from16 v1, v16

    #@52
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@55
    move-result v16

    #@56
    if-eqz v16, :cond_5

    #@58
    .line 317
    :cond_4
    if-nez v3, :cond_6

    #@5a
    .line 318
    aget-object v11, v15, v5

    #@5c
    .line 319
    .restart local v11    # "ret1":Ljava/lang/Object;
    add-int/lit8 v2, v3, 0x1

    #@5e
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    #@5f
    .end local v2    # "count":I
    .end local v11    # "ret1":Ljava/lang/Object;
    .restart local v3    # "count":I
    :cond_5
    move v2, v3

    #@60
    .line 314
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    #@61
    .line 321
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_6
    const/16 v16, 0x1

    #@63
    move/from16 v0, v16

    #@65
    if-ne v3, v0, :cond_7

    #@67
    .line 322
    sub-int v16, v12, v5

    #@69
    add-int/lit8 v16, v16, 0x1

    #@6b
    move-object/from16 v0, p3

    #@6d
    move/from16 v1, v16

    #@6f
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@72
    move-result-object v10

    #@73
    check-cast v10, [Ljava/lang/Object;

    #@75
    .line 323
    .local v10, "ret":[Ljava/lang/Object;
    const/16 v16, 0x0

    #@77
    aput-object v11, v10, v16

    #@79
    .line 326
    .end local v10    # "ret":[Ljava/lang/Object;
    :cond_7
    mul-int/lit8 v16, v5, 0x3

    #@7b
    add-int/lit8 v16, v16, 0x2

    #@7d
    aget v16, v4, v16

    #@7f
    const/high16 v17, 0xff0000

    #@81
    and-int v9, v16, v17

    #@83
    .line 327
    .local v9, "prio":I
    if-eqz v9, :cond_a

    #@85
    .line 330
    const/4 v6, 0x0

    #@86
    .local v6, "j":I
    :goto_2
    if-ge v6, v3, :cond_8

    #@88
    .line 331
    aget-object v16, v10, v6

    #@8a
    move-object/from16 v0, p0

    #@8c
    move-object/from16 v1, v16

    #@8e
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    #@91
    move-result v16

    #@92
    const/high16 v17, 0xff0000

    #@94
    and-int v8, v16, v17

    #@96
    .line 333
    .local v8, "p":I
    if-le v9, v8, :cond_9

    #@98
    .line 338
    .end local v8    # "p":I
    :cond_8
    add-int/lit8 v16, v6, 0x1

    #@9a
    sub-int v17, v3, v6

    #@9c
    move/from16 v0, v16

    #@9e
    move/from16 v1, v17

    #@a0
    invoke-static {v10, v6, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@a3
    .line 339
    aget-object v16, v15, v5

    #@a5
    aput-object v16, v10, v6

    #@a7
    .line 340
    add-int/lit8 v2, v3, 0x1

    #@a9
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto/16 :goto_1

    #@ab
    .line 330
    .end local v2    # "count":I
    .restart local v3    # "count":I
    .restart local v8    # "p":I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    #@ad
    goto :goto_2

    #@ae
    .line 342
    .end local v6    # "j":I
    .end local v8    # "p":I
    :cond_a
    add-int/lit8 v2, v3, 0x1

    #@b0
    .end local v3    # "count":I
    .restart local v2    # "count":I
    aget-object v16, v15, v5

    #@b2
    aput-object v16, v10, v3

    #@b4
    goto/16 :goto_1

    #@b6
    .line 347
    .end local v2    # "count":I
    .end local v9    # "prio":I
    .end local v13    # "spanEnd":I
    .end local v14    # "spanStart":I
    .restart local v3    # "count":I
    :cond_b
    if-nez v3, :cond_c

    #@b8
    .line 348
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@bb
    move-result-object v16

    #@bc
    return-object v16

    #@bd
    .line 350
    :cond_c
    const/16 v16, 0x1

    #@bf
    move/from16 v0, v16

    #@c1
    if-ne v3, v0, :cond_d

    #@c3
    .line 351
    const/16 v16, 0x1

    #@c5
    move-object/from16 v0, p3

    #@c7
    move/from16 v1, v16

    #@c9
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@cc
    move-result-object v10

    #@cd
    check-cast v10, [Ljava/lang/Object;

    #@cf
    .line 352
    .restart local v10    # "ret":[Ljava/lang/Object;
    const/16 v16, 0x0

    #@d1
    aput-object v11, v10, v16

    #@d3
    .line 353
    return-object v10

    #@d4
    .line 355
    .end local v10    # "ret":[Ljava/lang/Object;
    :cond_d
    array-length v0, v10

    #@d5
    move/from16 v16, v0

    #@d7
    move/from16 v0, v16

    #@d9
    if-ne v3, v0, :cond_e

    #@db
    .line 356
    return-object v10

    #@dc
    .line 359
    :cond_e
    move-object/from16 v0, p3

    #@de
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@e1
    move-result-object v7

    #@e2
    check-cast v7, [Ljava/lang/Object;

    #@e4
    .line 360
    .local v7, "nret":[Ljava/lang/Object;
    const/16 v16, 0x0

    #@e6
    const/16 v17, 0x0

    #@e8
    move/from16 v0, v16

    #@ea
    move/from16 v1, v17

    #@ec
    invoke-static {v10, v0, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@ef
    .line 361
    return-object v7
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 475
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    .line 476
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    #@a
    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@c
    add-int v0, v3, v4

    #@e
    .line 477
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@11
    if-ge v1, v3, :cond_1

    #@13
    .line 478
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@15
    aget-object v2, v3, v1

    #@17
    .line 479
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_0

    #@19
    .line 480
    mul-int/lit8 v3, v0, 0x1f

    #@1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@1e
    move-result v4

    #@1f
    add-int v0, v3, v4

    #@21
    .line 482
    :cond_0
    mul-int/lit8 v3, v0, 0x1f

    #@23
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    #@26
    move-result v4

    #@27
    add-int v0, v3, v4

    #@29
    .line 483
    mul-int/lit8 v3, v0, 0x1f

    #@2b
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    #@2e
    move-result v4

    #@2f
    add-int v0, v3, v4

    #@31
    .line 484
    mul-int/lit8 v3, v0, 0x1f

    #@33
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    #@36
    move-result v4

    #@37
    add-int v0, v3, v4

    #@39
    .line 477
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 486
    .end local v2    # "span":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public final length()I
    .locals 1

    #@0
    .prologue
    .line 134
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 7
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "kind"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 365
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@2
    .line 366
    .local v0, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@4
    .line 367
    .local v4, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@6
    .line 369
    .local v1, "data":[I
    if-nez p3, :cond_0

    #@8
    .line 370
    const-class p3, Ljava/lang/Object;

    #@a
    .line 373
    :cond_0
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@d
    .line 374
    mul-int/lit8 v6, v3, 0x3

    #@f
    add-int/lit8 v6, v6, 0x0

    #@11
    aget v5, v1, v6

    #@13
    .line 375
    .local v5, "st":I
    mul-int/lit8 v6, v3, 0x3

    #@15
    add-int/lit8 v6, v6, 0x1

    #@17
    aget v2, v1, v6

    #@19
    .line 377
    .local v2, "en":I
    if-le v5, p1, :cond_1

    #@1b
    if-ge v5, p2, :cond_1

    #@1d
    aget-object v6, v4, v3

    #@1f
    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_1

    #@25
    .line 378
    move p2, v5

    #@26
    .line 379
    :cond_1
    if-le v2, p1, :cond_2

    #@28
    if-ge v2, p2, :cond_2

    #@2a
    aget-object v6, v4, v3

    #@2c
    invoke-virtual {p3, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@2f
    move-result v6

    #@30
    if-eqz v6, :cond_2

    #@32
    .line 380
    move p2, v2

    #@33
    .line 373
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_0

    #@36
    .line 383
    .end local v2    # "en":I
    .end local v5    # "st":I
    :cond_3
    return p2
.end method

.method removeSpan(Ljava/lang/Object;)V
    .locals 10
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 218
    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@2
    .line 219
    .local v1, "count":I
    iget-object v6, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@4
    .line 220
    .local v6, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@6
    .line 222
    .local v2, "data":[I
    add-int/lit8 v3, v1, -0x1

    #@8
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@a
    .line 223
    aget-object v7, v6, v3

    #@c
    if-ne v7, p1, :cond_0

    #@e
    .line 224
    mul-int/lit8 v7, v3, 0x3

    #@10
    add-int/lit8 v7, v7, 0x0

    #@12
    aget v5, v2, v7

    #@14
    .line 225
    .local v5, "ostart":I
    mul-int/lit8 v7, v3, 0x3

    #@16
    add-int/lit8 v7, v7, 0x1

    #@18
    aget v4, v2, v7

    #@1a
    .line 227
    .local v4, "oend":I
    add-int/lit8 v7, v3, 0x1

    #@1c
    sub-int v0, v1, v7

    #@1e
    .line 229
    .local v0, "c":I
    add-int/lit8 v7, v3, 0x1

    #@20
    invoke-static {v6, v7, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    .line 230
    add-int/lit8 v7, v3, 0x1

    #@25
    mul-int/lit8 v7, v7, 0x3

    #@27
    .line 231
    mul-int/lit8 v8, v3, 0x3

    #@29
    mul-int/lit8 v9, v0, 0x3

    #@2b
    .line 230
    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@2e
    .line 233
    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@30
    add-int/lit8 v7, v7, -0x1

    #@32
    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@34
    .line 235
    invoke-direct {p0, p1, v5, v4}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    #@37
    .line 236
    return-void

    #@38
    .line 222
    .end local v0    # "c":I
    .end local v4    # "oend":I
    .end local v5    # "ostart":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 217
    :cond_1
    return-void
.end method

.method setSpan(Ljava/lang/Object;III)V
    .locals 18
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 152
    move/from16 v16, p2

    #@2
    .line 153
    .local v16, "nstart":I
    move/from16 v13, p3

    #@4
    .line 155
    .local v13, "nend":I
    const-string/jumbo v3, "setSpan"

    #@7
    move-object/from16 v0, p0

    #@9
    move/from16 v1, p2

    #@b
    move/from16 v2, p3

    #@d
    invoke-direct {v0, v3, v1, v2}, Landroid/text/SpannableStringInternal;->checkRange(Ljava/lang/String;II)V

    #@10
    .line 157
    and-int/lit8 v3, p4, 0x33

    #@12
    const/16 v4, 0x33

    #@14
    if-ne v3, v4, :cond_1

    #@16
    .line 158
    if-eqz p2, :cond_0

    #@18
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    #@1b
    move-result v3

    #@1c
    move/from16 v0, p2

    #@1e
    if-eq v0, v3, :cond_0

    #@20
    .line 159
    add-int/lit8 v3, p2, -0x1

    #@22
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    #@27
    move-result v9

    #@28
    .line 161
    .local v9, "c":C
    const/16 v3, 0xa

    #@2a
    if-eq v9, v3, :cond_0

    #@2c
    .line 162
    new-instance v3, Ljava/lang/RuntimeException;

    #@2e
    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v7, "PARAGRAPH span must start at paragraph boundary ("

    #@36
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    move/from16 v0, p2

    #@3c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    .line 164
    const-string/jumbo v7, " follows "

    #@43
    .line 163
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    .line 164
    const-string/jumbo v7, ")"

    #@4e
    .line 163
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    .line 162
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@59
    throw v3

    #@5a
    .line 167
    .end local v9    # "c":C
    :cond_0
    if-eqz p3, :cond_1

    #@5c
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    #@5f
    move-result v3

    #@60
    move/from16 v0, p3

    #@62
    if-eq v0, v3, :cond_1

    #@64
    .line 168
    add-int/lit8 v3, p3, -0x1

    #@66
    move-object/from16 v0, p0

    #@68
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    #@6b
    move-result v9

    #@6c
    .line 170
    .restart local v9    # "c":C
    const/16 v3, 0xa

    #@6e
    if-eq v9, v3, :cond_1

    #@70
    .line 171
    new-instance v3, Ljava/lang/RuntimeException;

    #@72
    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v7, "PARAGRAPH span must end at paragraph boundary ("

    #@7a
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v4

    #@7e
    move/from16 v0, p3

    #@80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    .line 173
    const-string/jumbo v7, " follows "

    #@87
    .line 172
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v4

    #@8f
    .line 173
    const-string/jumbo v7, ")"

    #@92
    .line 172
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v4

    #@96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v4

    #@9a
    .line 171
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v3

    #@9e
    .line 177
    .end local v9    # "c":C
    :cond_1
    move-object/from16 v0, p0

    #@a0
    iget v10, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@a2
    .line 178
    .local v10, "count":I
    move-object/from16 v0, p0

    #@a4
    iget-object v0, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@a6
    move-object/from16 v17, v0

    #@a8
    .line 179
    .local v17, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    #@aa
    iget-object v11, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@ac
    .line 181
    .local v11, "data":[I
    const/4 v12, 0x0

    #@ad
    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_3

    #@af
    .line 182
    aget-object v3, v17, v12

    #@b1
    move-object/from16 v0, p1

    #@b3
    if-ne v3, v0, :cond_2

    #@b5
    .line 183
    mul-int/lit8 v3, v12, 0x3

    #@b7
    add-int/lit8 v3, v3, 0x0

    #@b9
    aget v5, v11, v3

    #@bb
    .line 184
    .local v5, "ostart":I
    mul-int/lit8 v3, v12, 0x3

    #@bd
    add-int/lit8 v3, v3, 0x1

    #@bf
    aget v6, v11, v3

    #@c1
    .line 186
    .local v6, "oend":I
    mul-int/lit8 v3, v12, 0x3

    #@c3
    add-int/lit8 v3, v3, 0x0

    #@c5
    aput p2, v11, v3

    #@c7
    .line 187
    mul-int/lit8 v3, v12, 0x3

    #@c9
    add-int/lit8 v3, v3, 0x1

    #@cb
    aput p3, v11, v3

    #@cd
    .line 188
    mul-int/lit8 v3, v12, 0x3

    #@cf
    add-int/lit8 v3, v3, 0x2

    #@d1
    aput p4, v11, v3

    #@d3
    move-object/from16 v3, p0

    #@d5
    move-object/from16 v4, p1

    #@d7
    move/from16 v7, p2

    #@d9
    move/from16 v8, p3

    #@db
    .line 190
    invoke-direct/range {v3 .. v8}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    #@de
    .line 191
    return-void

    #@df
    .line 181
    .end local v5    # "ostart":I
    .end local v6    # "oend":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    #@e1
    goto :goto_0

    #@e2
    .line 195
    :cond_3
    move-object/from16 v0, p0

    #@e4
    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@e6
    add-int/lit8 v3, v3, 0x1

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@ec
    array-length v4, v4

    #@ed
    if-lt v3, v4, :cond_4

    #@ef
    .line 197
    move-object/from16 v0, p0

    #@f1
    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@f3
    invoke-static {v3}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    #@f6
    move-result v3

    #@f7
    .line 196
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    #@fa
    move-result-object v15

    #@fb
    .line 198
    .local v15, "newtags":[Ljava/lang/Object;
    array-length v3, v15

    #@fc
    mul-int/lit8 v3, v3, 0x3

    #@fe
    new-array v14, v3, [I

    #@100
    .line 200
    .local v14, "newdata":[I
    move-object/from16 v0, p0

    #@102
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@104
    move-object/from16 v0, p0

    #@106
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@108
    const/4 v7, 0x0

    #@109
    const/4 v8, 0x0

    #@10a
    invoke-static {v3, v7, v15, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@10d
    .line 201
    move-object/from16 v0, p0

    #@10f
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@111
    move-object/from16 v0, p0

    #@113
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@115
    mul-int/lit8 v4, v4, 0x3

    #@117
    const/4 v7, 0x0

    #@118
    const/4 v8, 0x0

    #@119
    invoke-static {v3, v7, v14, v8, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@11c
    .line 203
    move-object/from16 v0, p0

    #@11e
    iput-object v15, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@120
    .line 204
    move-object/from16 v0, p0

    #@122
    iput-object v14, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@124
    .line 207
    .end local v14    # "newdata":[I
    .end local v15    # "newtags":[Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    #@126
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@128
    move-object/from16 v0, p0

    #@12a
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@12c
    aput-object p1, v3, v4

    #@12e
    .line 208
    move-object/from16 v0, p0

    #@130
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@132
    move-object/from16 v0, p0

    #@134
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@136
    mul-int/lit8 v4, v4, 0x3

    #@138
    add-int/lit8 v4, v4, 0x0

    #@13a
    aput p2, v3, v4

    #@13c
    .line 209
    move-object/from16 v0, p0

    #@13e
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@140
    move-object/from16 v0, p0

    #@142
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@144
    mul-int/lit8 v4, v4, 0x3

    #@146
    add-int/lit8 v4, v4, 0x1

    #@148
    aput p3, v3, v4

    #@14a
    .line 210
    move-object/from16 v0, p0

    #@14c
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@14e
    move-object/from16 v0, p0

    #@150
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@152
    mul-int/lit8 v4, v4, 0x3

    #@154
    add-int/lit8 v4, v4, 0x2

    #@156
    aput p4, v3, v4

    #@158
    .line 211
    move-object/from16 v0, p0

    #@15a
    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@15c
    add-int/lit8 v3, v3, 0x1

    #@15e
    move-object/from16 v0, p0

    #@160
    iput v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@162
    .line 213
    move-object/from16 v0, p0

    #@164
    instance-of v3, v0, Landroid/text/Spannable;

    #@166
    if-eqz v3, :cond_5

    #@168
    .line 214
    invoke-direct/range {p0 .. p3}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    #@16b
    .line 151
    :cond_5
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method
