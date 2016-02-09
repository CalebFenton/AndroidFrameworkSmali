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
    .line 32
    invoke-direct {p0}, Ljava/text/BreakIterator;-><init>()V

    #@3
    .line 33
    iput-object p1, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@5
    .line 32
    return-void
.end method

.method private checkOffset(I)V
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 104
    iget-object v2, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v2}, Landroid/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    #@5
    move-result-object v0

    #@6
    .line 105
    .local v0, "it":Ljava/text/CharacterIterator;
    if-nez v0, :cond_0

    #@8
    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v3, "BreakIterator has no text"

    #@d
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v2

    #@11
    .line 108
    :cond_0
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@14
    move-result v2

    #@15
    if-lt p1, v2, :cond_1

    #@17
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@1a
    move-result v2

    #@1b
    if-le p1, v2, :cond_2

    #@1d
    .line 109
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "Valid range is ["

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    #@2c
    move-result v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, " "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    #@3b
    move-result v3

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    const-string/jumbo v3, "]"

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    .line 110
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4d
    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@50
    throw v2

    #@51
    .line 103
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 115
    invoke-super {p0}, Ljava/text/BreakIterator;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/text/IcuIteratorWrapper;

    #@6
    .line 116
    .local v0, "cloned":Ljava/text/IcuIteratorWrapper;
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
    .line 117
    return-object v0
.end method

.method public current()I
    .locals 1

    #@0
    .prologue
    .line 37
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
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 89
    instance-of v0, p1, Ljava/text/IcuIteratorWrapper;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 90
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 92
    :cond_0
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@8
    check-cast p1, Ljava/text/IcuIteratorWrapper;

    #@a
    .end local p1    # "o":Ljava/lang/Object;
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
    .line 41
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->first()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public following(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/text/IcuIteratorWrapper;->checkOffset(I)V

    #@3
    .line 46
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public getText()Ljava/text/CharacterIterator;
    .locals 1

    #@0
    .prologue
    .line 50
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
    .line 100
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isBoundary(I)Z
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 79
    invoke-direct {p0, p1}, Ljava/text/IcuIteratorWrapper;->checkOffset(I)V

    #@3
    .line 80
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public last()I
    .locals 1

    #@0
    .prologue
    .line 54
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
    .line 58
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
    .line 62
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->next(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public preceding(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 84
    invoke-direct {p0, p1}, Ljava/text/IcuIteratorWrapper;->checkOffset(I)V

    #@3
    .line 85
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public previous()I
    .locals 1

    #@0
    .prologue
    .line 66
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
    .line 70
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    #@5
    .line 69
    return-void
.end method

.method public setText(Ljava/text/CharacterIterator;)V
    .locals 1
    .param p1, "newText"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 74
    invoke-interface {p1}, Ljava/text/CharacterIterator;->current()C

    #@3
    .line 75
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@5
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@8
    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 96
    iget-object v0, p0, Ljava/text/IcuIteratorWrapper;->wrapped:Landroid/icu/text/BreakIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
