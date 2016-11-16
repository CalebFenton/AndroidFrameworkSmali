.class Ljava/text/IcuIteratorWrapper;
.super Ljava/text/BreakIterator;
.source "IcuIteratorWrapper.java"


# instance fields
.field private wrapped:Landroid/icu/text/BreakIterator;


# direct methods
.method constructor <init>(Landroid/icu/text/BreakIterator;)V
    .locals 0
    .param p1, "iterator"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    .line 218
    invoke-direct {p0}, Ljava/text/BreakIterator;-><init>()V

    #@3
    .line 219
    iput-object p1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@5
    .line 218
    return-void
.end method

.method protected static final checkOffset(ILjava/text/CharacterIterator;)V
    .locals 2
    .param p0, "offset"    # I
    .param p1, "text"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 321
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@3
    move-result v0

    #@4
    if-lt p0, v0, :cond_0

    #@6
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@9
    move-result v0

    #@a
    if-le p0, v0, :cond_1

    #@c
    .line 322
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "offset out of bounds"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 320
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 229
    invoke-super {p0}, Ljava/text/BreakIterator;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/IcuIteratorWrapper;

    #@6
    .line 230
    .local v0, "result":Ljava/text/IcuIteratorWrapper;
    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@8
    invoke-virtual {v1}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/icu/text/BreakIterator;

    #@e
    iput-object v1, v0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@10
    .line 231
    return-object v0
.end method

.method public current()I
    .locals 1

    #@0
    .prologue
    .line 375
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->current()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 239
    instance-of v0, p1, Ljava/text/IcuIteratorWrapper;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 240
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 242
    :cond_0
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@8
    check-cast p1, Ljava/text/IcuIteratorWrapper;

    #@a
    .end local p1    # "that":Ljava/lang/Object;
    iget-object v1, p1, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@c
    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    return v0
.end method

.method public first()I
    .locals 1

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->first()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public following(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 334
    invoke-virtual {p0}, Ljava/text/IcuIteratorWrapper;->getText()Ljava/text/CharacterIterator;

    #@3
    move-result-object v0

    #@4
    .line 335
    .local v0, "text":Ljava/text/CharacterIterator;
    invoke-static {p1, v0}, Ljava/text/IcuIteratorWrapper;->checkOffset(ILjava/text/CharacterIterator;)V

    #@7
    .line 336
    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@9
    invoke-virtual {v1, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    #@0
    .prologue
    .line 387
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isBoundary(I)Z
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 364
    invoke-virtual {p0}, Ljava/text/IcuIteratorWrapper;->getText()Ljava/text/CharacterIterator;

    #@3
    move-result-object v0

    #@4
    .line 365
    .local v0, "text":Ljava/text/CharacterIterator;
    invoke-static {p1, v0}, Ljava/text/IcuIteratorWrapper;->checkOffset(ILjava/text/CharacterIterator;)V

    #@7
    .line 366
    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@9
    invoke-virtual {v1, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public last()I
    .locals 1

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->last()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next()I
    .locals 1

    #@0
    .prologue
    .line 305
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->next()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public next(I)I
    .locals 1
    .param p1, "n"    # I

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->next(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public preceding(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 350
    invoke-virtual {p0}, Ljava/text/IcuIteratorWrapper;->getText()Ljava/text/CharacterIterator;

    #@3
    move-result-object v0

    #@4
    .line 351
    .local v0, "text":Ljava/text/CharacterIterator;
    invoke-static {p1, v0}, Ljava/text/IcuIteratorWrapper;->checkOffset(ILjava/text/CharacterIterator;)V

    #@7
    .line 352
    iget-object v1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@9
    invoke-virtual {v1, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public previous()I
    .locals 1

    #@0
    .prologue
    .line 314
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->previous()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 391
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    #@5
    .line 390
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 1
    .param p1, "newText"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 401
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    #@3
    .line 402
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@8
    .line 400
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 253
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
