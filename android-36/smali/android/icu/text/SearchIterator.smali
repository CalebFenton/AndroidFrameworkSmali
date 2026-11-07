.class public abstract Landroid/icu/text/SearchIterator;
.super Ljava/lang/Object;
.source "SearchIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SearchIterator$Search;,
        Landroid/icu/text/SearchIterator$ElementComparisonType;
    }
.end annotation


# static fields
.field public static final whitelist test-api DONE:I = -0x1


# instance fields
.field protected whitelist test-api breakIterator:Landroid/icu/text/BreakIterator;

.field protected whitelist test-api matchLength:I

.field greylist-max-o search_:Landroid/icu/text/SearchIterator$Search;

.field protected whitelist test-api targetText:Ljava/text/CharacterIterator;


# direct methods
.method protected constructor whitelist test-api <init>(Ljava/text/CharacterIterator;Landroid/icu/text/BreakIterator;)V
    .registers 6
    .param p1, "target"    # Ljava/text/CharacterIterator;
    .param p2, "breaker"    # Landroid/icu/text/BreakIterator;

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Landroid/icu/text/SearchIterator$Search;

    invoke-direct {v0, p0}, Landroid/icu/text/SearchIterator$Search;-><init>(Landroid/icu/text/SearchIterator;)V

    iput-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 610
    if-eqz p1, :cond_5b

    .line 611
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5b

    .line 617
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setTarget(Ljava/text/CharacterIterator;)V

    .line 618
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p2}, Landroid/icu/text/SearchIterator$Search;->setBreakIter(Landroid/icu/text/BreakIterator;)V

    .line 619
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 620
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 622
    :cond_38
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    .line 623
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    .line 624
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    sget-object v2, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iput-object v2, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 625
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 626
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    .line 627
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v2, -0x1

    iput v2, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 628
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 629
    return-void

    .line 612
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal argument target.  Argument can not be null or of length 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api first()I
    .registers 3

    .line 523
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    .line 524
    .local v0, "startIdx":I
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 525
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    move-result v1

    return v1
.end method

.method public final whitelist test-api following(I)I
    .registers 3
    .param p1, "position"    # I

    .line 544
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 545
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getBreakIterator()Landroid/icu/text/BreakIterator;
    .registers 2

    .line 329
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getElementComparisonType()Landroid/icu/text/SearchIterator$ElementComparisonType;
    .registers 2

    .line 765
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    return-object v0
.end method

.method public abstract whitelist test-api getIndex()I
.end method

.method public whitelist test-api getMatchLength()I
    .registers 2

    .line 314
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getMatchStart()I
    .registers 2

    .line 286
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    return v0
.end method

.method public whitelist test-api getMatchedText()Ljava/lang/String;
    .registers 5

    .line 355
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v0

    if-lez v0, :cond_48

    .line 356
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 357
    .local v0, "limit":I
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 358
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v2

    .line 359
    .local v2, "it":Ljava/text/CharacterIterator;
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v3, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-interface {v2, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 360
    :goto_2b
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    if-ge v3, v0, :cond_3c

    .line 361
    invoke-interface {v2}, Ljava/text/CharacterIterator;->current()C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    goto :goto_2b

    .line 364
    :cond_3c
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v3, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    invoke-interface {v2, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 365
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 367
    .end local v0    # "limit":I
    .end local v1    # "result":Ljava/lang/StringBuilder;
    .end local v2    # "it":Ljava/text/CharacterIterator;
    :cond_48
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getTarget()Ljava/text/CharacterIterator;
    .registers 2

    .line 337
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method protected abstract whitelist test-api handleNext(I)I
.end method

.method protected abstract whitelist test-api handlePrevious(I)I
.end method

.method public whitelist test-api isOverlapping()Z
    .registers 2

    .line 486
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    return v0
.end method

.method public final whitelist test-api last()I
    .registers 3

    .line 561
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    .line 562
    .local v0, "endIdx":I
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 563
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result v1

    return v1
.end method

.method public whitelist test-api next()I
    .registers 7

    .line 386
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->getIndex()I

    move-result v0

    .line 387
    .local v0, "index":I
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v1, v1, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 388
    .local v1, "matchindex":I
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v2

    .line 389
    .local v2, "matchlength":I
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    .line 390
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v3, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_30

    .line 391
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v3

    .line 392
    .local v3, "endIdx":I
    if-eq v0, v3, :cond_2c

    if-eq v1, v3, :cond_2c

    if-eq v1, v4, :cond_2b

    add-int v5, v1, v2

    if-lt v5, v3, :cond_2b

    goto :goto_2c

    .line 398
    .end local v3    # "endIdx":I
    :cond_2b
    goto :goto_3c

    .line 395
    .restart local v3    # "endIdx":I
    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    .line 396
    return v4

    .line 404
    .end local v3    # "endIdx":I
    :cond_30
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 405
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v3, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    if-eq v3, v4, :cond_3c

    .line 408
    return v1

    .line 412
    :cond_3c
    :goto_3c
    if-lez v2, :cond_48

    .line 414
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v3, v3, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    if-eqz v3, :cond_47

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 417
    :cond_47
    add-int/2addr v0, v2

    .line 421
    :cond_48
    :goto_48
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    move-result v3

    return v3
.end method

.method public final whitelist test-api preceding(I)I
    .registers 3
    .param p1, "position"    # I

    .line 588
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 589
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api previous()I
    .registers 6

    .line 438
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 439
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    .line 440
    .local v0, "index":I
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v2, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 441
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v2, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    .line 442
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    goto :goto_1d

    .line 444
    .end local v0    # "index":I
    :cond_19
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->getIndex()I

    move-result v0

    .line 447
    .restart local v0    # "index":I
    :goto_1d
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget v2, v2, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 448
    .local v2, "matchindex":I
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v3, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_2f

    .line 454
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 455
    if-eq v2, v4, :cond_3a

    .line 456
    return v2

    .line 459
    :cond_2f
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v1

    .line 460
    .local v1, "startIdx":I
    if-eq v0, v1, :cond_55

    if-ne v2, v1, :cond_3a

    goto :goto_55

    .line 467
    .end local v1    # "startIdx":I
    :cond_3a
    if-eq v2, v4, :cond_50

    .line 468
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-boolean v1, v1, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    if-eqz v1, :cond_4b

    .line 469
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v2, v1

    .line 472
    :cond_4b
    invoke-virtual {p0, v2}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result v1

    return v1

    .line 475
    :cond_50
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    move-result v1

    return v1

    .line 462
    .restart local v1    # "startIdx":I
    :cond_55
    :goto_55
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    .line 463
    return v4
.end method

.method public whitelist test-api reset()V
    .registers 3

    .line 500
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    .line 501
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    .line 502
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    .line 503
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    .line 504
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    iput-object v1, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 505
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 506
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    .line 507
    return-void
.end method

.method public whitelist test-api setBreakIterator(Landroid/icu/text/BreakIterator;)V
    .registers 4
    .param p1, "breakiter"    # Landroid/icu/text/BreakIterator;

    .line 222
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setBreakIter(Landroid/icu/text/BreakIterator;)V

    .line 223
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 226
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 227
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 230
    :cond_2a
    return-void
.end method

.method public whitelist test-api setElementComparisonType(Landroid/icu/text/SearchIterator$ElementComparisonType;)V
    .registers 3
    .param p1, "type"    # Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 755
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-object p1, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    .line 756
    return-void
.end method

.method public whitelist test-api setIndex(I)V
    .registers 5
    .param p1, "position"    # I

    .line 184
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v0

    if-lt p1, v0, :cond_20

    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 185
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v0

    if-gt p1, v0, :cond_20

    .line 190
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    .line 191
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 192
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 193
    return-void

    .line 186
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndex(int) expected position to be between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    .line 188
    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api setMatchLength(I)V
    .registers 3
    .param p1, "length"    # I

    .line 645
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 646
    return-void
.end method

.method protected greylist-max-o setMatchNotFound()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 694
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 695
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 696
    return-void
.end method

.method public whitelist test-api setOverlapping(Z)V
    .registers 3
    .param p1, "allowOverlap"    # Z

    .line 205
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean p1, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    .line 206
    return-void
.end method

.method public whitelist test-api setTarget(Ljava/text/CharacterIterator;)V
    .registers 4
    .param p1, "text"    # Ljava/text/CharacterIterator;

    .line 244
    if-eqz p1, :cond_57

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    if-eq v0, v1, :cond_57

    .line 248
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 249
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setTarget(Ljava/text/CharacterIterator;)V

    .line 250
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, -0x1

    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    .line 251
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    .line 252
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    .line 253
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    .line 254
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 257
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 259
    :cond_43
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    if-eqz v0, :cond_56

    .line 260
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 262
    :cond_56
    return-void

    .line 245
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null or empty text"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
