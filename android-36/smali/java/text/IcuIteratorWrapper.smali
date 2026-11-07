.class Ljava/text/IcuIteratorWrapper;
.super Ljava/text/BreakIterator;
.source "IcuIteratorWrapper.java"


# instance fields
.field private blacklist wrapped:Landroid/icu/text/BreakIterator;


# direct methods
.method constructor blacklist <init>(Landroid/icu/text/BreakIterator;)V
    .registers 2
    .param p1, "iterator"    # Landroid/icu/text/BreakIterator;

    .line 218
    invoke-direct {p0}, Ljava/text/BreakIterator;-><init>()V

    .line 219
    iput-object p1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    .line 220
    return-void
.end method

.method protected static final blacklist checkOffset(ILjava/text/CharacterIterator;)V
    .registers 4
    .param p0, "offset"    # I
    .param p1, "text"    # Ljava/text/CharacterIterator;

    .line 321
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-lt p0, v0, :cond_d

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-gt p0, v0, :cond_d

    .line 324
    return-void

    .line 322
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 229
    invoke-super {p0}, Ljava/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/IcuIteratorWrapper;

    .line 230
    .local v0, "result":Ljava/text/IcuIteratorWrapper;
    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/BreakIterator;

    iput-object v1, v0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    .line 231
    return-object v0
.end method

.method public whitelist test-api current()I
    .registers 2

    .line 375
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->current()I

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "that"    # Ljava/lang/Object;

    .line 239
    instance-of v0, p1, Ljava/text/IcuIteratorWrapper;

    if-nez v0, :cond_6

    .line 240
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_6
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    move-object v1, p1

    check-cast v1, Ljava/text/IcuIteratorWrapper;

    iget-object v1, v1, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api first()I
    .registers 2

    .line 272
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->first()I

    move-result v0

    return v0
.end method

.method public whitelist test-api following(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 334
    invoke-virtual {p0}, Ljava/text/IcuIteratorWrapper;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    .line 335
    .local v0, "text":Ljava/text/CharacterIterator;
    invoke-static {p1, v0}, Ljava/text/IcuIteratorWrapper;->checkOffset(ILjava/text/CharacterIterator;)V

    .line 336
    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v1

    return v1
.end method

.method public whitelist test-api getText()Ljava/text/CharacterIterator;
    .registers 2

    .line 387
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 262
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isBoundary(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 364
    invoke-virtual {p0}, Ljava/text/IcuIteratorWrapper;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    .line 365
    .local v0, "text":Ljava/text/CharacterIterator;
    invoke-static {p1, v0}, Ljava/text/IcuIteratorWrapper;->checkOffset(ILjava/text/CharacterIterator;)V

    .line 366
    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api last()I
    .registers 2

    .line 282
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->last()I

    move-result v0

    return v0
.end method

.method public whitelist test-api next()I
    .registers 2

    .line 305
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->next()I

    move-result v0

    return v0
.end method

.method public whitelist test-api next(I)I
    .registers 3
    .param p1, "n"    # I

    .line 296
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->next(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api preceding(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 350
    invoke-virtual {p0}, Ljava/text/IcuIteratorWrapper;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    .line 351
    .local v0, "text":Ljava/text/CharacterIterator;
    invoke-static {p1, v0}, Ljava/text/IcuIteratorWrapper;->checkOffset(ILjava/text/CharacterIterator;)V

    .line 352
    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v1

    return v1
.end method

.method public whitelist test-api previous()I
    .registers 2

    .line 314
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->previous()I

    move-result v0

    return v0
.end method

.method public whitelist test-api setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "newText"    # Ljava/lang/String;

    .line 391
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public whitelist test-api setText(Ljava/text/CharacterIterator;)V
    .registers 3
    .param p1, "newText"    # Ljava/text/CharacterIterator;

    .line 401
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    .line 402
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 403
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 253
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
