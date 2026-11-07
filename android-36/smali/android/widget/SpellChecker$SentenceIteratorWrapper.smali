.class Landroid/widget/SpellChecker$SentenceIteratorWrapper;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SentenceIteratorWrapper"
.end annotation


# instance fields
.field private blacklist mEndOffset:I

.field private blacklist mSentenceIterator:Ljava/text/BreakIterator;

.field private blacklist mStartOffset:I


# direct methods
.method constructor blacklist <init>(Ljava/text/BreakIterator;)V
    .registers 2
    .param p1, "sentenceIterator"    # Ljava/text/BreakIterator;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    .line 604
    return-void
.end method


# virtual methods
.method public blacklist following(I)I
    .registers 5
    .param p1, "offset"    # I

    .line 630
    iget v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mEndOffset:I

    const/4 v1, -0x1

    if-le p1, v0, :cond_6

    .line 631
    return v1

    .line 633
    :cond_6
    iget-object v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    iget v2, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 634
    .local v0, "result":I
    if-ne v0, v1, :cond_13

    goto :goto_16

    :cond_13
    iget v1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    add-int/2addr v1, v0

    :goto_16
    return v1
.end method

.method public blacklist isBoundary(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 641
    iget v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    if-lt p1, v0, :cond_14

    iget v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mEndOffset:I

    if-le p1, v0, :cond_9

    goto :goto_14

    .line 644
    :cond_9
    iget-object v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    iget v1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    return v0

    .line 642
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist preceding(I)I
    .registers 5
    .param p1, "offset"    # I

    .line 619
    iget v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    const/4 v1, -0x1

    if-ge p1, v0, :cond_6

    .line 620
    return v1

    .line 622
    :cond_6
    iget-object v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    iget v2, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    .line 623
    .local v0, "result":I
    if-ne v0, v1, :cond_13

    goto :goto_16

    :cond_13
    iget v1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    add-int/2addr v1, v0

    :goto_16
    return v1
.end method

.method public blacklist setCharSequence(Ljava/lang/CharSequence;II)V
    .registers 7
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 610
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    .line 611
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mEndOffset:I

    .line 612
    iget-object v0, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mSentenceIterator:Ljava/text/BreakIterator;

    iget v1, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mStartOffset:I

    iget v2, p0, Landroid/widget/SpellChecker$SentenceIteratorWrapper;->mEndOffset:I

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 613
    return-void
.end method
