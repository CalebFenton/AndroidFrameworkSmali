.class public Landroid/text/WordSegmentFinder;
.super Landroid/text/SegmentFinder;
.source "WordSegmentFinder.java"


# instance fields
.field private final blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/icu/util/ULocale;)V
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 49
    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    .line 51
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p2}, Landroid/text/method/WordIterator;-><init>(Landroid/icu/util/ULocale;)V

    iput-object v0, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    .line 52
    iget-object v0, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 53
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/method/WordIterator;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "wordIterator"    # Landroid/text/method/WordIterator;

    .line 63
    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    .line 65
    iput-object p2, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist nextEndBoundary(I)I
    .registers 5
    .param p1, "offset"    # I

    .line 106
    move v0, p1

    .line 108
    .local v0, "boundary":I
    :cond_1
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 109
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 110
    return v1

    .line 112
    :cond_b
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    return v0
.end method

.method public whitelist nextStartBoundary(I)I
    .registers 5
    .param p1, "offset"    # I

    .line 94
    move v0, p1

    .line 96
    .local v0, "boundary":I
    :cond_1
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result v0

    .line 97
    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    iget-object v2, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_13

    goto :goto_20

    .line 100
    :cond_13
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    return v0

    .line 98
    :cond_20
    :goto_20
    return v1
.end method

.method public whitelist previousEndBoundary(I)I
    .registers 5
    .param p1, "offset"    # I

    .line 82
    move v0, p1

    .line 84
    .local v0, "boundary":I
    :cond_1
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 85
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    if-nez v0, :cond_d

    goto :goto_1c

    .line 88
    :cond_d
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    return v0

    .line 86
    :cond_1c
    :goto_1c
    return v1
.end method

.method public whitelist previousStartBoundary(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 70
    move v0, p1

    .line 72
    .local v0, "boundary":I
    :cond_1
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result v0

    .line 73
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 74
    return v1

    .line 76
    :cond_b
    iget-object v1, p0, Landroid/text/WordSegmentFinder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    return v0
.end method
