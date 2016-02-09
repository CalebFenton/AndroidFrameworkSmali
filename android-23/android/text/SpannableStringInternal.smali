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
    .line 418
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
    .locals 9
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    if-nez p2, :cond_2

    #@5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v6

    #@9
    if-ne p3, v6, :cond_2

    #@b
    .line 31
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@e
    move-result-object v6

    #@f
    iput-object v6, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    #@11
    .line 35
    :goto_0
    sget-object v6, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    #@13
    iput-object v6, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@15
    .line 36
    sget-object v6, Llibcore/util/EmptyArray;->INT:[I

    #@17
    iput-object v6, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@19
    .line 38
    instance-of v6, p1, Landroid/text/Spanned;

    #@1b
    if-eqz v6, :cond_3

    #@1d
    move-object v3, p1

    #@1e
    .line 39
    check-cast v3, Landroid/text/Spanned;

    #@20
    .line 40
    .local v3, "sp":Landroid/text/Spanned;
    const-class v6, Ljava/lang/Object;

    #@22
    invoke-interface {v3, p2, p3, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    .line 42
    .local v4, "spans":[Ljava/lang/Object;
    const/4 v2, 0x0

    #@27
    .local v2, "i":I
    :goto_1
    array-length v6, v4

    #@28
    if-ge v2, v6, :cond_3

    #@2a
    .line 43
    aget-object v6, v4, v2

    #@2c
    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@2f
    move-result v5

    #@30
    .line 44
    .local v5, "st":I
    aget-object v6, v4, v2

    #@32
    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@35
    move-result v0

    #@36
    .line 45
    .local v0, "en":I
    aget-object v6, v4, v2

    #@38
    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    #@3b
    move-result v1

    #@3c
    .line 47
    .local v1, "fl":I
    if-ge v5, p2, :cond_0

    #@3e
    .line 48
    move v5, p2

    #@3f
    .line 49
    :cond_0
    if-le v0, p3, :cond_1

    #@41
    .line 50
    move v0, p3

    #@42
    .line 52
    :cond_1
    aget-object v6, v4, v2

    #@44
    sub-int v7, v5, p2

    #@46
    sub-int v8, v0, p2

    #@48
    invoke-virtual {p0, v6, v7, v8, v1}, Landroid/text/SpannableStringInternal;->setSpan(Ljava/lang/Object;III)V

    #@4b
    .line 42
    add-int/lit8 v2, v2, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 33
    .end local v0    # "en":I
    .end local v1    # "fl":I
    .end local v2    # "i":I
    .end local v3    # "sp":Landroid/text/Spanned;
    .end local v4    # "spans":[Ljava/lang/Object;
    .end local v5    # "st":I
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@55
    move-result-object v6

    #@56
    iput-object v6, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    #@58
    goto :goto_0

    #@59
    .line 29
    :cond_3
    return-void
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 343
    if-ge p3, p2, :cond_0

    #@2
    .line 344
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
    .line 345
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 344
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 346
    const-string/jumbo v3, " has end before start"

    #@1f
    .line 344
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
    .line 349
    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->length()I

    #@2e
    move-result v0

    #@2f
    .line 351
    .local v0, "len":I
    if-gt p2, v0, :cond_1

    #@31
    if-le p3, v0, :cond_2

    #@33
    .line 352
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
    .line 353
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    .line 352
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v2

    #@4d
    .line 354
    const-string/jumbo v3, " ends beyond length "

    #@50
    .line 352
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
    .line 357
    :cond_2
    if-ltz p2, :cond_3

    #@62
    if-gez p3, :cond_4

    #@64
    .line 358
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
    .line 359
    invoke-static {p2, p3}, Landroid/text/SpannableStringInternal;->region(II)Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    .line 358
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v2

    #@7e
    .line 360
    const-string/jumbo v3, " starts before 0"

    #@81
    .line 358
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
    .line 342
    :cond_4
    return-void
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2
    .param p0, "start"    # I
    .param p1, "end"    # I

    #@0
    .prologue
    .line 339
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
    .line 311
    const-class v3, Landroid/text/SpanWatcher;

    #@2
    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, [Landroid/text/SpanWatcher;

    #@8
    .line 312
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    #@9
    .line 314
    .local v1, "n":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 315
    aget-object v4, v2, v0

    #@e
    move-object v3, p0

    #@f
    check-cast v3, Landroid/text/Spannable;

    #@11
    invoke-interface {v4, v3, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    #@14
    .line 314
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 310
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
    .line 329
    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    #@3
    move-result v0

    #@4
    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    #@7
    move-result v1

    #@8
    .line 330
    const-class v2, Landroid/text/SpanWatcher;

    #@a
    .line 329
    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@d
    move-result-object v9

    #@e
    check-cast v9, [Landroid/text/SpanWatcher;

    #@10
    .line 331
    .local v9, "recip":[Landroid/text/SpanWatcher;
    array-length v8, v9

    #@11
    .line 333
    .local v8, "n":I
    const/4 v7, 0x0

    #@12
    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_0

    #@14
    .line 334
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
    .line 333
    add-int/lit8 v7, v7, 0x1

    #@23
    goto :goto_0

    #@24
    .line 328
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
    .line 320
    const-class v3, Landroid/text/SpanWatcher;

    #@2
    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringInternal;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, [Landroid/text/SpanWatcher;

    #@8
    .line 321
    .local v2, "recip":[Landroid/text/SpanWatcher;
    array-length v1, v2

    #@9
    .line 323
    .local v1, "n":I
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 324
    aget-object v4, v2, v0

    #@e
    move-object v3, p0

    #@f
    check-cast v3, Landroid/text/Spannable;

    #@11
    invoke-interface {v4, v3, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    #@14
    .line 323
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 319
    :cond_0
    return-void
.end method


# virtual methods
.method public final charAt(I)C
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 62
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
    .line 367
    instance-of v5, p1, Landroid/text/Spanned;

    #@3
    if-eqz v5, :cond_7

    #@5
    .line 368
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
    .line 367
    if-eqz v5, :cond_7

    #@13
    move-object v1, p1

    #@14
    .line 369
    check-cast v1, Landroid/text/Spanned;

    #@16
    .line 371
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
    .line 372
    .local v3, "otherSpans":[Ljava/lang/Object;
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@22
    array-length v6, v3

    #@23
    if-ne v5, v6, :cond_7

    #@25
    .line 373
    const/4 v0, 0x0

    #@26
    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@28
    if-ge v0, v5, :cond_6

    #@2a
    .line 374
    iget-object v5, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@2c
    aget-object v4, v5, v0

    #@2e
    .line 375
    .local v4, "thisSpan":Ljava/lang/Object;
    aget-object v2, v3, v0

    #@30
    .line 376
    .local v2, "otherSpan":Ljava/lang/Object;
    if-ne v4, p0, :cond_3

    #@32
    .line 377
    if-ne v1, v2, :cond_0

    #@34
    .line 378
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
    .line 381
    :cond_0
    return v7

    #@3f
    .line 379
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
    .line 380
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
    .line 373
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@55
    goto :goto_0

    #@56
    .line 383
    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v5

    #@5a
    if-eqz v5, :cond_4

    #@5c
    .line 384
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
    .line 387
    :cond_4
    :goto_1
    return v7

    #@67
    .line 385
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
    .line 386
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
    .line 390
    .end local v2    # "otherSpan":Ljava/lang/Object;
    .end local v4    # "thisSpan":Ljava/lang/Object;
    :cond_6
    const/4 v5, 0x1

    #@7d
    return v5

    #@7e
    .line 393
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
    .line 72
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    #@5
    .line 71
    return-void
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 180
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@2
    .line 181
    .local v0, "count":I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@4
    .line 182
    .local v3, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@6
    .line 184
    .local v1, "data":[I
    add-int/lit8 v2, v0, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@a
    .line 185
    aget-object v4, v3, v2

    #@c
    if-ne v4, p1, :cond_0

    #@e
    .line 186
    mul-int/lit8 v4, v2, 0x3

    #@10
    add-int/lit8 v4, v4, 0x1

    #@12
    aget v4, v1, v4

    #@14
    return v4

    #@15
    .line 184
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 190
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
    .line 194
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@3
    .line 195
    .local v0, "count":I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@5
    .line 196
    .local v3, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@7
    .line 198
    .local v1, "data":[I
    add-int/lit8 v2, v0, -0x1

    #@9
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@b
    .line 199
    aget-object v4, v3, v2

    #@d
    if-ne v4, p1, :cond_0

    #@f
    .line 200
    mul-int/lit8 v4, v2, 0x3

    #@11
    add-int/lit8 v4, v4, 0x2

    #@13
    aget v4, v1, v4

    #@15
    return v4

    #@16
    .line 198
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@18
    goto :goto_0

    #@19
    .line 204
    :cond_1
    return v5
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5
    .param p1, "what"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 166
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@2
    .line 167
    .local v0, "count":I
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@4
    .line 168
    .local v3, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@6
    .line 170
    .local v1, "data":[I
    add-int/lit8 v2, v0, -0x1

    #@8
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    #@a
    .line 171
    aget-object v4, v3, v2

    #@c
    if-ne v4, p1, :cond_0

    #@e
    .line 172
    mul-int/lit8 v4, v2, 0x3

    #@10
    add-int/lit8 v4, v4, 0x0

    #@12
    aget v4, v1, v4

    #@14
    return v4

    #@15
    .line 170
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@17
    goto :goto_0

    #@18
    .line 176
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
    .line 208
    .local p3, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 210
    .local v2, "count":I
    move-object/from16 v0, p0

    #@3
    iget v12, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@5
    .line 211
    .local v12, "spanCount":I
    move-object/from16 v0, p0

    #@7
    iget-object v15, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@9
    .line 212
    .local v15, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    #@b
    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@d
    .line 213
    .local v4, "data":[I
    const/4 v10, 0x0

    #@e
    .line 214
    .local v10, "ret":[Ljava/lang/Object;
    const/4 v11, 0x0

    #@f
    .line 216
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
    .line 217
    mul-int/lit8 v16, v5, 0x3

    #@15
    add-int/lit8 v16, v16, 0x0

    #@17
    aget v14, v4, v16

    #@19
    .line 218
    .local v14, "spanStart":I
    mul-int/lit8 v16, v5, 0x3

    #@1b
    add-int/lit8 v16, v16, 0x1

    #@1d
    aget v13, v4, v16

    #@1f
    .line 220
    .local v13, "spanEnd":I
    move/from16 v0, p2

    #@21
    if-le v14, v0, :cond_0

    #@23
    move v2, v3

    #@24
    .line 216
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
    .line 223
    :cond_0
    move/from16 v0, p1

    #@2a
    if-ge v13, v0, :cond_1

    #@2c
    move v2, v3

    #@2d
    .line 224
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    #@2e
    .line 227
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
    .line 228
    move/from16 v0, p2

    #@38
    if-ne v14, v0, :cond_2

    #@3a
    move v2, v3

    #@3b
    .line 229
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    #@3c
    .line 231
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_2
    move/from16 v0, p1

    #@3e
    if-ne v13, v0, :cond_3

    #@40
    move v2, v3

    #@41
    .line 232
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    #@42
    .line 237
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_3
    if-eqz p3, :cond_4

    #@44
    aget-object v16, v15, v5

    #@46
    move-object/from16 v0, p3

    #@48
    move-object/from16 v1, v16

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@4d
    move-result v16

    #@4e
    if-eqz v16, :cond_5

    #@50
    .line 241
    :cond_4
    if-nez v3, :cond_6

    #@52
    .line 242
    aget-object v11, v15, v5

    #@54
    .line 243
    .restart local v11    # "ret1":Ljava/lang/Object;
    add-int/lit8 v2, v3, 0x1

    #@56
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    #@57
    .end local v2    # "count":I
    .end local v11    # "ret1":Ljava/lang/Object;
    .restart local v3    # "count":I
    :cond_5
    move v2, v3

    #@58
    .line 238
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    #@59
    .line 245
    .end local v2    # "count":I
    .restart local v3    # "count":I
    :cond_6
    const/16 v16, 0x1

    #@5b
    move/from16 v0, v16

    #@5d
    if-ne v3, v0, :cond_7

    #@5f
    .line 246
    sub-int v16, v12, v5

    #@61
    add-int/lit8 v16, v16, 0x1

    #@63
    move-object/from16 v0, p3

    #@65
    move/from16 v1, v16

    #@67
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@6a
    move-result-object v10

    #@6b
    check-cast v10, [Ljava/lang/Object;

    #@6d
    .line 247
    .local v10, "ret":[Ljava/lang/Object;
    const/16 v16, 0x0

    #@6f
    aput-object v11, v10, v16

    #@71
    .line 250
    .end local v10    # "ret":[Ljava/lang/Object;
    :cond_7
    mul-int/lit8 v16, v5, 0x3

    #@73
    add-int/lit8 v16, v16, 0x2

    #@75
    aget v16, v4, v16

    #@77
    const/high16 v17, 0xff0000

    #@79
    and-int v9, v16, v17

    #@7b
    .line 251
    .local v9, "prio":I
    if-eqz v9, :cond_a

    #@7d
    .line 254
    const/4 v6, 0x0

    #@7e
    .local v6, "j":I
    :goto_2
    if-ge v6, v3, :cond_8

    #@80
    .line 255
    aget-object v16, v10, v6

    #@82
    move-object/from16 v0, p0

    #@84
    move-object/from16 v1, v16

    #@86
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    #@89
    move-result v16

    #@8a
    const/high16 v17, 0xff0000

    #@8c
    and-int v8, v16, v17

    #@8e
    .line 257
    .local v8, "p":I
    if-le v9, v8, :cond_9

    #@90
    .line 262
    .end local v8    # "p":I
    :cond_8
    add-int/lit8 v16, v6, 0x1

    #@92
    sub-int v17, v3, v6

    #@94
    move/from16 v0, v16

    #@96
    move/from16 v1, v17

    #@98
    invoke-static {v10, v6, v10, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@9b
    .line 263
    aget-object v16, v15, v5

    #@9d
    aput-object v16, v10, v6

    #@9f
    .line 264
    add-int/lit8 v2, v3, 0x1

    #@a1
    .end local v3    # "count":I
    .restart local v2    # "count":I
    goto :goto_1

    #@a2
    .line 254
    .end local v2    # "count":I
    .restart local v3    # "count":I
    .restart local v8    # "p":I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    #@a4
    goto :goto_2

    #@a5
    .line 266
    .end local v6    # "j":I
    .end local v8    # "p":I
    :cond_a
    add-int/lit8 v2, v3, 0x1

    #@a7
    .end local v3    # "count":I
    .restart local v2    # "count":I
    aget-object v16, v15, v5

    #@a9
    aput-object v16, v10, v3

    #@ab
    goto/16 :goto_1

    #@ad
    .line 271
    .end local v2    # "count":I
    .end local v9    # "prio":I
    .end local v13    # "spanEnd":I
    .end local v14    # "spanStart":I
    .restart local v3    # "count":I
    :cond_b
    if-nez v3, :cond_c

    #@af
    .line 272
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@b2
    move-result-object v16

    #@b3
    return-object v16

    #@b4
    .line 274
    :cond_c
    const/16 v16, 0x1

    #@b6
    move/from16 v0, v16

    #@b8
    if-ne v3, v0, :cond_d

    #@ba
    .line 275
    const/16 v16, 0x1

    #@bc
    move-object/from16 v0, p3

    #@be
    move/from16 v1, v16

    #@c0
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@c3
    move-result-object v10

    #@c4
    check-cast v10, [Ljava/lang/Object;

    #@c6
    .line 276
    .restart local v10    # "ret":[Ljava/lang/Object;
    const/16 v16, 0x0

    #@c8
    aput-object v11, v10, v16

    #@ca
    .line 277
    return-object v10

    #@cb
    .line 279
    .end local v10    # "ret":[Ljava/lang/Object;
    :cond_d
    array-length v0, v10

    #@cc
    move/from16 v16, v0

    #@ce
    move/from16 v0, v16

    #@d0
    if-ne v3, v0, :cond_e

    #@d2
    .line 280
    return-object v10

    #@d3
    .line 283
    :cond_e
    move-object/from16 v0, p3

    #@d5
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@d8
    move-result-object v7

    #@d9
    check-cast v7, [Ljava/lang/Object;

    #@db
    .line 284
    .local v7, "nret":[Ljava/lang/Object;
    const/16 v16, 0x0

    #@dd
    const/16 v17, 0x0

    #@df
    move/from16 v0, v16

    #@e1
    move/from16 v1, v17

    #@e3
    invoke-static {v10, v0, v7, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@e6
    .line 285
    return-object v7
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/text/SpannableStringInternal;->toString()Ljava/lang/String;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v0

    #@8
    .line 400
    .local v0, "hash":I
    mul-int/lit8 v3, v0, 0x1f

    #@a
    iget v4, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@c
    add-int v0, v3, v4

    #@e
    .line 401
    const/4 v1, 0x0

    #@f
    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@11
    if-ge v1, v3, :cond_1

    #@13
    .line 402
    iget-object v3, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@15
    aget-object v2, v3, v1

    #@17
    .line 403
    .local v2, "span":Ljava/lang/Object;
    if-eq v2, p0, :cond_0

    #@19
    .line 404
    mul-int/lit8 v3, v0, 0x1f

    #@1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@1e
    move-result v4

    #@1f
    add-int v0, v3, v4

    #@21
    .line 406
    :cond_0
    mul-int/lit8 v3, v0, 0x1f

    #@23
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanStart(Ljava/lang/Object;)I

    #@26
    move-result v4

    #@27
    add-int v0, v3, v4

    #@29
    .line 407
    mul-int/lit8 v3, v0, 0x1f

    #@2b
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanEnd(Ljava/lang/Object;)I

    #@2e
    move-result v4

    #@2f
    add-int v0, v3, v4

    #@31
    .line 408
    mul-int/lit8 v3, v0, 0x1f

    #@33
    invoke-virtual {p0, v2}, Landroid/text/SpannableStringInternal;->getSpanFlags(Ljava/lang/Object;)I

    #@36
    move-result v4

    #@37
    add-int v0, v3, v4

    #@39
    .line 401
    add-int/lit8 v1, v1, 0x1

    #@3b
    goto :goto_0

    #@3c
    .line 410
    .end local v2    # "span":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public final length()I
    .locals 1

    #@0
    .prologue
    .line 58
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
    .line 289
    iget v0, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@2
    .line 290
    .local v0, "count":I
    iget-object v4, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@4
    .line 291
    .local v4, "spans":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@6
    .line 293
    .local v1, "data":[I
    if-nez p3, :cond_0

    #@8
    .line 294
    const-class p3, Ljava/lang/Object;

    #@a
    .line 297
    :cond_0
    const/4 v3, 0x0

    #@b
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    #@d
    .line 298
    mul-int/lit8 v6, v3, 0x3

    #@f
    add-int/lit8 v6, v6, 0x0

    #@11
    aget v5, v1, v6

    #@13
    .line 299
    .local v5, "st":I
    mul-int/lit8 v6, v3, 0x3

    #@15
    add-int/lit8 v6, v6, 0x1

    #@17
    aget v2, v1, v6

    #@19
    .line 301
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
    .line 302
    move p2, v5

    #@26
    .line 303
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
    .line 304
    move p2, v2

    #@33
    .line 297
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@35
    goto :goto_0

    #@36
    .line 307
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
    .line 142
    iget v1, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@2
    .line 143
    .local v1, "count":I
    iget-object v6, p0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@4
    .line 144
    .local v6, "spans":[Ljava/lang/Object;
    iget-object v2, p0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@6
    .line 146
    .local v2, "data":[I
    add-int/lit8 v3, v1, -0x1

    #@8
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@a
    .line 147
    aget-object v7, v6, v3

    #@c
    if-ne v7, p1, :cond_0

    #@e
    .line 148
    mul-int/lit8 v7, v3, 0x3

    #@10
    add-int/lit8 v7, v7, 0x0

    #@12
    aget v5, v2, v7

    #@14
    .line 149
    .local v5, "ostart":I
    mul-int/lit8 v7, v3, 0x3

    #@16
    add-int/lit8 v7, v7, 0x1

    #@18
    aget v4, v2, v7

    #@1a
    .line 151
    .local v4, "oend":I
    add-int/lit8 v7, v3, 0x1

    #@1c
    sub-int v0, v1, v7

    #@1e
    .line 153
    .local v0, "c":I
    add-int/lit8 v7, v3, 0x1

    #@20
    invoke-static {v6, v7, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@23
    .line 154
    add-int/lit8 v7, v3, 0x1

    #@25
    mul-int/lit8 v7, v7, 0x3

    #@27
    .line 155
    mul-int/lit8 v8, v3, 0x3

    #@29
    mul-int/lit8 v9, v0, 0x3

    #@2b
    .line 154
    invoke-static {v2, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@2e
    .line 157
    iget v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@30
    add-int/lit8 v7, v7, -0x1

    #@32
    iput v7, p0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@34
    .line 159
    invoke-direct {p0, p1, v5, v4}, Landroid/text/SpannableStringInternal;->sendSpanRemoved(Ljava/lang/Object;II)V

    #@37
    .line 160
    return-void

    #@38
    .line 146
    .end local v0    # "c":I
    .end local v4    # "oend":I
    .end local v5    # "ostart":I
    :cond_0
    add-int/lit8 v3, v3, -0x1

    #@3a
    goto :goto_0

    #@3b
    .line 141
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
    .line 76
    move/from16 v7, p2

    #@2
    .line 77
    .local v7, "nstart":I
    move/from16 v8, p3

    #@4
    .line 79
    .local v8, "nend":I
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
    .line 81
    and-int/lit8 v3, p4, 0x33

    #@12
    const/16 v4, 0x33

    #@14
    if-ne v3, v4, :cond_1

    #@16
    .line 82
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
    .line 83
    add-int/lit8 v3, p2, -0x1

    #@22
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    #@27
    move-result v9

    #@28
    .line 85
    .local v9, "c":C
    const/16 v3, 0xa

    #@2a
    if-eq v9, v3, :cond_0

    #@2c
    .line 86
    new-instance v3, Ljava/lang/RuntimeException;

    #@2e
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v16, "PARAGRAPH span must start at paragraph boundary ("

    #@36
    move-object/from16 v0, v16

    #@38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    move/from16 v0, p2

    #@3e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 88
    const-string/jumbo v16, " follows "

    #@45
    .line 87
    move-object/from16 v0, v16

    #@47
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    .line 88
    const-string/jumbo v16, ")"

    #@52
    .line 87
    move-object/from16 v0, v16

    #@54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v4

    #@58
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v4

    #@5c
    .line 86
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v3

    #@60
    .line 91
    .end local v9    # "c":C
    :cond_0
    if-eqz p3, :cond_1

    #@62
    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringInternal;->length()I

    #@65
    move-result v3

    #@66
    move/from16 v0, p3

    #@68
    if-eq v0, v3, :cond_1

    #@6a
    .line 92
    add-int/lit8 v3, p3, -0x1

    #@6c
    move-object/from16 v0, p0

    #@6e
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringInternal;->charAt(I)C

    #@71
    move-result v9

    #@72
    .line 94
    .restart local v9    # "c":C
    const/16 v3, 0xa

    #@74
    if-eq v9, v3, :cond_1

    #@76
    .line 95
    new-instance v3, Ljava/lang/RuntimeException;

    #@78
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v16, "PARAGRAPH span must end at paragraph boundary ("

    #@80
    move-object/from16 v0, v16

    #@82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v4

    #@86
    move/from16 v0, p3

    #@88
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v4

    #@8c
    .line 97
    const-string/jumbo v16, " follows "

    #@8f
    .line 96
    move-object/from16 v0, v16

    #@91
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v4

    #@95
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    .line 97
    const-string/jumbo v16, ")"

    #@9c
    .line 96
    move-object/from16 v0, v16

    #@9e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v4

    #@a6
    .line 95
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v3

    #@aa
    .line 101
    .end local v9    # "c":C
    :cond_1
    move-object/from16 v0, p0

    #@ac
    iget v10, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@ae
    .line 102
    .local v10, "count":I
    move-object/from16 v0, p0

    #@b0
    iget-object v15, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@b2
    .line 103
    .local v15, "spans":[Ljava/lang/Object;
    move-object/from16 v0, p0

    #@b4
    iget-object v11, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@b6
    .line 105
    .local v11, "data":[I
    const/4 v12, 0x0

    #@b7
    .local v12, "i":I
    :goto_0
    if-ge v12, v10, :cond_3

    #@b9
    .line 106
    aget-object v3, v15, v12

    #@bb
    move-object/from16 v0, p1

    #@bd
    if-ne v3, v0, :cond_2

    #@bf
    .line 107
    mul-int/lit8 v3, v12, 0x3

    #@c1
    add-int/lit8 v3, v3, 0x0

    #@c3
    aget v5, v11, v3

    #@c5
    .line 108
    .local v5, "ostart":I
    mul-int/lit8 v3, v12, 0x3

    #@c7
    add-int/lit8 v3, v3, 0x1

    #@c9
    aget v6, v11, v3

    #@cb
    .line 110
    .local v6, "oend":I
    mul-int/lit8 v3, v12, 0x3

    #@cd
    add-int/lit8 v3, v3, 0x0

    #@cf
    aput p2, v11, v3

    #@d1
    .line 111
    mul-int/lit8 v3, v12, 0x3

    #@d3
    add-int/lit8 v3, v3, 0x1

    #@d5
    aput p3, v11, v3

    #@d7
    .line 112
    mul-int/lit8 v3, v12, 0x3

    #@d9
    add-int/lit8 v3, v3, 0x2

    #@db
    aput p4, v11, v3

    #@dd
    move-object/from16 v3, p0

    #@df
    move-object/from16 v4, p1

    #@e1
    .line 114
    invoke-direct/range {v3 .. v8}, Landroid/text/SpannableStringInternal;->sendSpanChanged(Ljava/lang/Object;IIII)V

    #@e4
    .line 115
    return-void

    #@e5
    .line 105
    .end local v5    # "ostart":I
    .end local v6    # "oend":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    #@e7
    goto :goto_0

    #@e8
    .line 119
    :cond_3
    move-object/from16 v0, p0

    #@ea
    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@ec
    add-int/lit8 v3, v3, 0x1

    #@ee
    move-object/from16 v0, p0

    #@f0
    iget-object v4, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@f2
    array-length v4, v4

    #@f3
    if-lt v3, v4, :cond_4

    #@f5
    .line 121
    move-object/from16 v0, p0

    #@f7
    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@f9
    invoke-static {v3}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    #@fc
    move-result v3

    #@fd
    .line 120
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedObjectArray(I)[Ljava/lang/Object;

    #@100
    move-result-object v14

    #@101
    .line 122
    .local v14, "newtags":[Ljava/lang/Object;
    array-length v3, v14

    #@102
    mul-int/lit8 v3, v3, 0x3

    #@104
    new-array v13, v3, [I

    #@106
    .line 124
    .local v13, "newdata":[I
    move-object/from16 v0, p0

    #@108
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@10a
    move-object/from16 v0, p0

    #@10c
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@10e
    const/16 v16, 0x0

    #@110
    const/16 v17, 0x0

    #@112
    move/from16 v0, v16

    #@114
    move/from16 v1, v17

    #@116
    invoke-static {v3, v0, v14, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@119
    .line 125
    move-object/from16 v0, p0

    #@11b
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@11d
    move-object/from16 v0, p0

    #@11f
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@121
    mul-int/lit8 v4, v4, 0x3

    #@123
    const/16 v16, 0x0

    #@125
    const/16 v17, 0x0

    #@127
    move/from16 v0, v16

    #@129
    move/from16 v1, v17

    #@12b
    invoke-static {v3, v0, v13, v1, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@12e
    .line 127
    move-object/from16 v0, p0

    #@130
    iput-object v14, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@132
    .line 128
    move-object/from16 v0, p0

    #@134
    iput-object v13, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@136
    .line 131
    .end local v13    # "newdata":[I
    .end local v14    # "newtags":[Ljava/lang/Object;
    :cond_4
    move-object/from16 v0, p0

    #@138
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpans:[Ljava/lang/Object;

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@13e
    aput-object p1, v3, v4

    #@140
    .line 132
    move-object/from16 v0, p0

    #@142
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@144
    move-object/from16 v0, p0

    #@146
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@148
    mul-int/lit8 v4, v4, 0x3

    #@14a
    add-int/lit8 v4, v4, 0x0

    #@14c
    aput p2, v3, v4

    #@14e
    .line 133
    move-object/from16 v0, p0

    #@150
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@152
    move-object/from16 v0, p0

    #@154
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@156
    mul-int/lit8 v4, v4, 0x3

    #@158
    add-int/lit8 v4, v4, 0x1

    #@15a
    aput p3, v3, v4

    #@15c
    .line 134
    move-object/from16 v0, p0

    #@15e
    iget-object v3, v0, Landroid/text/SpannableStringInternal;->mSpanData:[I

    #@160
    move-object/from16 v0, p0

    #@162
    iget v4, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@164
    mul-int/lit8 v4, v4, 0x3

    #@166
    add-int/lit8 v4, v4, 0x2

    #@168
    aput p4, v3, v4

    #@16a
    .line 135
    move-object/from16 v0, p0

    #@16c
    iget v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@16e
    add-int/lit8 v3, v3, 0x1

    #@170
    move-object/from16 v0, p0

    #@172
    iput v3, v0, Landroid/text/SpannableStringInternal;->mSpanCount:I

    #@174
    .line 137
    move-object/from16 v0, p0

    #@176
    instance-of v3, v0, Landroid/text/Spannable;

    #@178
    if-eqz v3, :cond_5

    #@17a
    .line 138
    move-object/from16 v0, p0

    #@17c
    move-object/from16 v1, p1

    #@17e
    invoke-direct {v0, v1, v7, v8}, Landroid/text/SpannableStringInternal;->sendSpanAdded(Ljava/lang/Object;II)V

    #@181
    .line 75
    :cond_5
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 66
    iget-object v0, p0, Landroid/text/SpannableStringInternal;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method
