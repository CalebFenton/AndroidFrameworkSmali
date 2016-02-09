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
.field public static final DONE:I = -0x1


# instance fields
.field protected breakIterator:Landroid/icu/text/BreakIterator;

.field protected matchLength:I

.field search_:Landroid/icu/text/SearchIterator$Search;

.field protected targetText:Ljava/text/CharacterIterator;


# direct methods
.method protected constructor <init>(Ljava/text/CharacterIterator;Landroid/icu/text/BreakIterator;)V
    .locals 4
    .param p1, "target"    # Ljava/text/CharacterIterator;
    .param p2, "breaker"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 158
    new-instance v0, Landroid/icu/text/SearchIterator$Search;

    #@7
    invoke-direct {v0, p0}, Landroid/icu/text/SearchIterator$Search;-><init>(Landroid/icu/text/SearchIterator;)V

    #@a
    iput-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@c
    .line 632
    if-eqz p1, :cond_0

    #@e
    .line 633
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@11
    move-result v0

    #@12
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@15
    move-result v1

    #@16
    sub-int/2addr v0, v1

    #@17
    if-nez v0, :cond_1

    #@19
    .line 634
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1b
    .line 635
    const-string/jumbo v1, "Illegal argument target.  Argument can not be null or of length 0"

    #@1e
    .line 634
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 639
    :cond_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@24
    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setTarget(Ljava/text/CharacterIterator;)V

    #@27
    .line 640
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@29
    invoke-virtual {v0, p2}, Landroid/icu/text/SearchIterator$Search;->setBreakIter(Landroid/icu/text/BreakIterator;)V

    #@2c
    .line 641
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2e
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    #@31
    move-result-object v0

    #@32
    if-eqz v0, :cond_2

    #@34
    .line 642
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@36
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    #@39
    move-result-object v1

    #@3a
    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Ljava/text/CharacterIterator;

    #@40
    invoke-virtual {v1, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@43
    .line 644
    :cond_2
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@45
    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    #@47
    .line 645
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@49
    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    #@4b
    .line 646
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@4d
    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@4f
    iput-object v1, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@51
    .line 647
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@53
    iput-boolean v3, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@55
    .line 648
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@57
    iput-boolean v3, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    #@59
    .line 649
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@5b
    const/4 v1, -0x1

    #@5c
    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@5e
    .line 650
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@60
    invoke-virtual {v0, v2}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@63
    .line 630
    return-void
.end method


# virtual methods
.method public final first()I
    .locals 2

    #@0
    .prologue
    .line 541
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@5
    move-result v0

    #@6
    .line 542
    .local v0, "startIdx":I
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    #@9
    .line 543
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public final following(I)I
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 563
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    #@3
    .line 564
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getBreakIterator()Landroid/icu/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 339
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getElementComparisonType()Landroid/icu/text/SearchIterator$ElementComparisonType;
    .locals 1

    #@0
    .prologue
    .line 798
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@4
    return-object v0
.end method

.method public abstract getIndex()I
.end method

.method public getMatchLength()I
    .locals 1

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getMatchStart()I
    .locals 1

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    iget v0, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@4
    return v0
.end method

.method public getMatchedText()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 367
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    #@5
    move-result v3

    #@6
    if-lez v3, :cond_1

    #@8
    .line 368
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a
    iget v3, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@c
    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@e
    invoke-virtual {v4}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    #@11
    move-result v4

    #@12
    add-int v1, v3, v4

    #@14
    .line 369
    .local v1, "limit":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@18
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    #@1b
    move-result v3

    #@1c
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@1f
    .line 370
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@21
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    #@24
    move-result-object v0

    #@25
    .line 371
    .local v0, "it":Ljava/text/CharacterIterator;
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@27
    iget v3, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@29
    invoke-interface {v0, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@2c
    .line 372
    :goto_0
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    #@2f
    move-result v3

    #@30
    if-ge v3, v1, :cond_0

    #@32
    .line 373
    invoke-interface {v0}, Ljava/text/CharacterIterator;->current()C

    #@35
    move-result v3

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@39
    .line 374
    invoke-interface {v0}, Ljava/text/CharacterIterator;->next()C

    #@3c
    goto :goto_0

    #@3d
    .line 376
    :cond_0
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3f
    iget v3, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@41
    invoke-interface {v0, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@44
    .line 377
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    return-object v3

    #@49
    .line 379
    .end local v0    # "it":Ljava/text/CharacterIterator;
    .end local v1    # "limit":I
    .end local v2    # "result":Ljava/lang/StringBuilder;
    :cond_1
    const/4 v3, 0x0

    #@4a
    return-object v3
.end method

.method public getTarget()Ljava/text/CharacterIterator;
    .locals 1

    #@0
    .prologue
    .line 348
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected abstract handleNext(I)I
.end method

.method protected abstract handlePrevious(I)I
.end method

.method public isOverlapping()Z
    .locals 1

    #@0
    .prologue
    .line 501
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    iget-boolean v0, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    #@4
    return v0
.end method

.method public final last()I
    .locals 2

    #@0
    .prologue
    .line 581
    iget-object v1, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v1}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@5
    move-result v0

    #@6
    .line 582
    .local v0, "endIdx":I
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    #@9
    .line 583
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public next()I
    .locals 7

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 399
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->getIndex()I

    #@5
    move-result v1

    #@6
    .line 400
    .local v1, "index":I
    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@8
    iget v2, v4, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@a
    .line 401
    .local v2, "matchindex":I
    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@c
    invoke-virtual {v4}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    #@f
    move-result v3

    #@10
    .line 402
    .local v3, "matchlength":I
    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@12
    iput-boolean v5, v4, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    #@14
    .line 403
    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@16
    iget-boolean v4, v4, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@18
    if-eqz v4, :cond_4

    #@1a
    .line 404
    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1c
    invoke-virtual {v4}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@1f
    move-result v0

    #@20
    .line 405
    .local v0, "endIdx":I
    if-eq v1, v0, :cond_0

    #@22
    if-ne v2, v0, :cond_1

    #@24
    .line 408
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    #@27
    .line 409
    return v6

    #@28
    .line 406
    :cond_1
    if-eq v2, v6, :cond_2

    #@2a
    .line 407
    add-int v4, v2, v3

    #@2c
    if-ge v4, v0, :cond_0

    #@2e
    .line 425
    .end local v0    # "endIdx":I
    :cond_2
    if-lez v3, :cond_3

    #@30
    .line 427
    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@32
    iget-boolean v4, v4, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    #@34
    if-eqz v4, :cond_5

    #@36
    .line 428
    add-int/lit8 v1, v1, 0x1

    #@38
    .line 434
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroid/icu/text/SearchIterator;->handleNext(I)I

    #@3b
    move-result v4

    #@3c
    return v4

    #@3d
    .line 417
    :cond_4
    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3f
    const/4 v5, 0x1

    #@40
    iput-boolean v5, v4, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@42
    .line 418
    iget-object v4, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@44
    iget v4, v4, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@46
    if-eq v4, v6, :cond_2

    #@48
    .line 421
    return v2

    #@49
    .line 430
    :cond_5
    add-int/2addr v1, v3

    #@4a
    goto :goto_0
.end method

.method public final preceding(I)I
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 609
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    #@3
    .line 610
    invoke-virtual {p0, p1}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public previous()I
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 452
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@4
    iget-boolean v3, v3, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 453
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@a
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@d
    move-result v0

    #@e
    .line 454
    .local v0, "index":I
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@10
    iput-boolean v5, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@12
    .line 455
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@14
    iput-boolean v5, v3, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    #@16
    .line 456
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    #@19
    .line 461
    :goto_0
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1b
    iget v1, v3, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@1d
    .line 462
    .local v1, "matchindex":I
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1f
    iget-boolean v3, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 468
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@25
    iput-boolean v5, v3, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@27
    .line 469
    if-eq v1, v4, :cond_3

    #@29
    .line 470
    return v1

    #@2a
    .line 458
    .end local v0    # "index":I
    .end local v1    # "matchindex":I
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->getIndex()I

    #@2d
    move-result v0

    #@2e
    .restart local v0    # "index":I
    goto :goto_0

    #@2f
    .line 473
    .restart local v1    # "matchindex":I
    :cond_1
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@31
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@34
    move-result v2

    #@35
    .line 474
    .local v2, "startIdx":I
    if-eq v0, v2, :cond_2

    #@37
    if-ne v1, v2, :cond_3

    #@39
    .line 476
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    #@3c
    .line 477
    return v4

    #@3d
    .line 481
    .end local v2    # "startIdx":I
    :cond_3
    if-eq v1, v4, :cond_5

    #@3f
    .line 482
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@41
    iget-boolean v3, v3, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    #@43
    if-eqz v3, :cond_4

    #@45
    .line 483
    iget-object v3, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@47
    invoke-virtual {v3}, Landroid/icu/text/SearchIterator$Search;->matchedLength()I

    #@4a
    move-result v3

    #@4b
    add-int/lit8 v3, v3, -0x2

    #@4d
    add-int/2addr v1, v3

    #@4e
    .line 486
    :cond_4
    invoke-virtual {p0, v1}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    #@51
    move-result v3

    #@52
    return v3

    #@53
    .line 489
    :cond_5
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->handlePrevious(I)I

    #@56
    move-result v3

    #@57
    return v3
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 517
    invoke-virtual {p0}, Landroid/icu/text/SearchIterator;->setMatchNotFound()V

    #@5
    .line 518
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@7
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@a
    move-result v0

    #@b
    invoke-virtual {p0, v0}, Landroid/icu/text/SearchIterator;->setIndex(I)V

    #@e
    .line 519
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@10
    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    #@12
    .line 520
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@14
    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->isCanonicalMatch_:Z

    #@16
    .line 521
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@18
    sget-object v1, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@1a
    iput-object v1, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@1c
    .line 522
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1e
    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@20
    .line 523
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@22
    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    #@24
    .line 516
    return-void
.end method

.method public setBreakIterator(Landroid/icu/text/BreakIterator;)V
    .locals 2
    .param p1, "breakiter"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    .line 227
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setBreakIter(Landroid/icu/text/BreakIterator;)V

    #@5
    .line 228
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@7
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    #@a
    move-result-object v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 231
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@f
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    #@12
    move-result-object v0

    #@13
    if-eqz v0, :cond_0

    #@15
    .line 232
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@17
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    #@1a
    move-result-object v1

    #@1b
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1d
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->text()Ljava/text/CharacterIterator;

    #@20
    move-result-object v0

    #@21
    invoke-interface {v0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Ljava/text/CharacterIterator;

    #@27
    invoke-virtual {v1, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@2a
    .line 226
    :cond_0
    return-void
.end method

.method public setElementComparisonType(Landroid/icu/text/SearchIterator$ElementComparisonType;)V
    .locals 1
    .param p1, "type"    # Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@0
    .prologue
    .line 787
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    iput-object p1, v0, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    #@4
    .line 786
    return-void
.end method

.method public setIndex(I)V
    .locals 3
    .param p1, "position"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 187
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@6
    move-result v0

    #@7
    if-lt p1, v0, :cond_0

    #@9
    .line 188
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@b
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@e
    move-result v0

    #@f
    if-le p1, v0, :cond_1

    #@11
    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@13
    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "setIndex(int) expected position to be between "

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 191
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@21
    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->beginIndex()I

    #@24
    move-result v2

    #@25
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 191
    const-string/jumbo v2, " and "

    #@2c
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    .line 191
    iget-object v2, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@32
    invoke-virtual {v2}, Landroid/icu/text/SearchIterator$Search;->endIndex()I

    #@35
    move-result v2

    #@36
    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    .line 189
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0

    #@42
    .line 193
    :cond_1
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@44
    iput-boolean v1, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    #@46
    .line 194
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@48
    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@4b
    .line 195
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@4d
    const/4 v1, -0x1

    #@4e
    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@50
    .line 186
    return-void
.end method

.method protected setMatchLength(I)V
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 668
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@5
    .line 666
    return-void
.end method

.method protected setMatchNotFound()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 718
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    const/4 v1, -0x1

    #@3
    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@5
    .line 719
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@b
    .line 717
    return-void
.end method

.method public setOverlapping(Z)V
    .locals 1
    .param p1, "allowOverlap"    # Z

    #@0
    .prologue
    .line 209
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2
    iput-boolean p1, v0, Landroid/icu/text/SearchIterator$Search;->isOverlap_:Z

    #@4
    .line 208
    return-void
.end method

.method public setTarget(Ljava/text/CharacterIterator;)V
    .locals 3
    .param p1, "text"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 250
    if-eqz p1, :cond_0

    #@3
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@6
    move-result v0

    #@7
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@a
    move-result v1

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v1, "Illegal null or empty text"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 254
    :cond_1
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@19
    move-result v0

    #@1a
    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@1d
    .line 255
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@1f
    invoke-virtual {v0, p1}, Landroid/icu/text/SearchIterator$Search;->setTarget(Ljava/text/CharacterIterator;)V

    #@22
    .line 256
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@24
    const/4 v1, -0x1

    #@25
    iput v1, v0, Landroid/icu/text/SearchIterator$Search;->matchedIndex_:I

    #@27
    .line 257
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@29
    const/4 v1, 0x0

    #@2a
    invoke-virtual {v0, v1}, Landroid/icu/text/SearchIterator$Search;->setMatchedLength(I)V

    #@2d
    .line 258
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@2f
    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->reset_:Z

    #@31
    .line 259
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@33
    iput-boolean v2, v0, Landroid/icu/text/SearchIterator$Search;->isForwardSearching_:Z

    #@35
    .line 260
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@37
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    #@3a
    move-result-object v0

    #@3b
    if-eqz v0, :cond_2

    #@3d
    .line 263
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@3f
    invoke-virtual {v0}, Landroid/icu/text/SearchIterator$Search;->breakIter()Landroid/icu/text/BreakIterator;

    #@42
    move-result-object v1

    #@43
    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@46
    move-result-object v0

    #@47
    check-cast v0, Ljava/text/CharacterIterator;

    #@49
    invoke-virtual {v1, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@4c
    .line 265
    :cond_2
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@4e
    iget-object v0, v0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@50
    if-eqz v0, :cond_3

    #@52
    .line 266
    iget-object v0, p0, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    #@54
    iget-object v1, v0, Landroid/icu/text/SearchIterator$Search;->internalBreakIter_:Landroid/icu/text/BreakIterator;

    #@56
    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@59
    move-result-object v0

    #@5a
    check-cast v0, Ljava/text/CharacterIterator;

    #@5c
    invoke-virtual {v1, v0}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@5f
    .line 248
    :cond_3
    return-void
.end method
