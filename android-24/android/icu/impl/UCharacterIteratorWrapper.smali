.class public Landroid/icu/impl/UCharacterIteratorWrapper;
.super Ljava/lang/Object;
.source "UCharacterIteratorWrapper.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# instance fields
.field private iterator:Landroid/icu/text/UCharacterIterator;


# direct methods
.method public constructor <init>(Landroid/icu/text/UCharacterIterator;)V
    .locals 0
    .param p1, "iter"    # Landroid/icu/text/UCharacterIterator;

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    iput-object p1, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@5
    .line 23
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 134
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/impl/UCharacterIteratorWrapper;

    #@6
    .line 135
    .local v1, "result":Landroid/icu/impl/UCharacterIteratorWrapper;
    iget-object v2, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@8
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/icu/text/UCharacterIterator;

    #@e
    iput-object v2, v1, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 136
    return-object v1

    #@11
    .line 137
    .end local v1    # "result":Landroid/icu/impl/UCharacterIteratorWrapper;
    :catch_0
    move-exception v0

    #@12
    .line 138
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    #@13
    return-object v2
.end method

.method public current()C
    .locals 1

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    #@5
    move-result v0

    #@6
    int-to-char v0, v0

    #@7
    return v0
.end method

.method public first()C
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    #@5
    .line 39
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@7
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    #@a
    move-result v0

    #@b
    int-to-char v0, v0

    #@c
    return v0
.end method

.method public getBeginIndex()I
    .locals 1

    #@0
    .prologue
    .line 108
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getEndIndex()I
    .locals 1

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public last()C
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->setToLimit()V

    #@5
    .line 50
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@7
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@a
    move-result v0

    #@b
    int-to-char v0, v0

    #@c
    return v0
.end method

.method public next()C
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->next()I

    #@5
    .line 74
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@7
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    #@a
    move-result v0

    #@b
    int-to-char v0, v0

    #@c
    return v0
.end method

.method public previous()C
    .locals 1

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@5
    move-result v0

    #@6
    int-to-char v0, v0

    #@7
    return v0
.end method

.method public setIndex(I)C
    .locals 1
    .param p1, "position"    # I

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    #@5
    .line 99
    iget-object v0, p0, Landroid/icu/impl/UCharacterIteratorWrapper;->iterator:Landroid/icu/text/UCharacterIterator;

    #@7
    invoke-virtual {v0}, Landroid/icu/text/UCharacterIterator;->current()I

    #@a
    move-result v0

    #@b
    int-to-char v0, v0

    #@c
    return v0
.end method
