.class abstract Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;
.super Landroid/media/internal/guava_common/base/AbstractIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SplittingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/base/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist limit:I

.field blacklist offset:I

.field final blacklist omitEmptyStrings:Z

.field final blacklist toSplit:Ljava/lang/CharSequence;

.field final blacklist trimmer:Landroid/media/internal/guava_common/base/CharMatcher;


# direct methods
.method protected constructor blacklist <init>(Landroid/media/internal/guava_common/base/Splitter;Ljava/lang/CharSequence;)V
    .registers 4

    .line 541
    invoke-direct {p0}, Landroid/media/internal/guava_common/base/AbstractIterator;-><init>()V

    const/4 v0, 0x0

    .line 538
    iput v0, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->offset:I

    .line 542
    # getter for: Landroid/media/internal/guava_common/base/Splitter;->trimmer:Landroid/media/internal/guava_common/base/CharMatcher;
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Splitter;->access$200(Landroid/media/internal/guava_common/base/Splitter;)Landroid/media/internal/guava_common/base/CharMatcher;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->trimmer:Landroid/media/internal/guava_common/base/CharMatcher;

    .line 543
    # getter for: Landroid/media/internal/guava_common/base/Splitter;->omitEmptyStrings:Z
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Splitter;->access$300(Landroid/media/internal/guava_common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    .line 544
    # getter for: Landroid/media/internal/guava_common/base/Splitter;->limit:I
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Splitter;->access$400(Landroid/media/internal/guava_common/base/Splitter;)I

    move-result p1

    iput p1, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->limit:I

    .line 545
    iput-object p2, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected bridge synthetic blacklist computeNext()Ljava/lang/Object;
    .registers 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 521
    invoke-virtual {p0}, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->computeNext()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist computeNext()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 556
    iget v0, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->offset:I

    .line 557
    :cond_2
    :goto_2
    iget v1, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->offset:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_90

    .line 561
    invoke-virtual {p0, v1}, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->separatorStart(I)I

    move-result v1

    if-ne v1, v2, :cond_16

    .line 563
    iget-object v1, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 564
    iput v2, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_1c

    .line 567
    :cond_16
    invoke-virtual {p0, v1}, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->separatorEnd(I)I

    move-result v3

    iput v3, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->offset:I

    .line 569
    :goto_1c
    iget v3, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->offset:I

    if-ne v3, v0, :cond_2f

    add-int/lit8 v3, v3, 0x1

    .line 576
    iput v3, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->offset:I

    .line 577
    iget-object v1, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_2

    .line 578
    iput v2, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_2

    :cond_2f
    :goto_2f
    if-ge v0, v1, :cond_42

    .line 583
    iget-object v3, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->trimmer:Landroid/media/internal/guava_common/base/CharMatcher;

    iget-object v4, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/internal/guava_common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_42

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_42
    :goto_42
    if-le v1, v0, :cond_57

    .line 586
    iget-object v3, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->trimmer:Landroid/media/internal/guava_common/base/CharMatcher;

    iget-object v4, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/internal/guava_common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_57

    add-int/lit8 v1, v1, -0x1

    goto :goto_42

    .line 590
    :cond_57
    iget-boolean v3, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->omitEmptyStrings:Z

    if-eqz v3, :cond_60

    if-ne v0, v1, :cond_60

    .line 592
    iget v0, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->offset:I

    goto :goto_2

    .line 596
    :cond_60
    iget v3, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->limit:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_82

    .line 600
    iget-object v1, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 601
    iput v2, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->offset:I

    :goto_6d
    if-le v1, v0, :cond_85

    .line 603
    iget-object v2, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->trimmer:Landroid/media/internal/guava_common/base/CharMatcher;

    iget-object v3, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/internal/guava_common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_85

    add-int/lit8 v1, v1, -0x1

    goto :goto_6d

    :cond_82
    sub-int/2addr v3, v4

    .line 607
    iput v3, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->limit:I

    .line 610
    :cond_85
    iget-object p0, p0, Landroid/media/internal/guava_common/base/Splitter$SplittingIterator;->toSplit:Ljava/lang/CharSequence;

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 612
    :cond_90
    invoke-virtual {p0}, Landroid/media/internal/guava_common/base/AbstractIterator;->endOfData()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method abstract blacklist separatorEnd(I)I
.end method

.method abstract blacklist separatorStart(I)I
.end method
