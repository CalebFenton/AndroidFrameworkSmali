.class Landroid/icu/text/DictionaryBreakEngine$PossibleWord;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DictionaryBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PossibleWord"
.end annotation


# static fields
.field private static final POSSIBLE_WORD_LIST_MAX:I = 0x14


# instance fields
.field private count:[I

.field private current:I

.field private lengths:[I

.field private mark:I

.field private offset:I

.field private prefix:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    const/16 v0, 0x14

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    #@9
    .line 35
    const/4 v0, 0x1

    #@a
    new-array v0, v0, [I

    #@c
    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    #@e
    .line 36
    const/4 v0, -0x1

    #@f
    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    #@11
    .line 33
    return-void
.end method


# virtual methods
.method public acceptMarked(Ljava/text/CharacterIterator;)I
    .locals 3
    .param p1, "fIter"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 60
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    #@2
    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    #@4
    iget v2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    #@6
    aget v1, v1, v2

    #@8
    add-int/2addr v0, v1

    #@9
    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@c
    .line 61
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    #@e
    iget v1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    #@10
    aget v0, v0, v1

    #@12
    return v0
.end method

.method public backUp(Ljava/text/CharacterIterator;)Z
    .locals 3
    .param p1, "fIter"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 67
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    #@3
    if-lez v0, :cond_0

    #@5
    .line 68
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    #@7
    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    #@9
    iget v2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    #@b
    add-int/lit8 v2, v2, -0x1

    #@d
    iput v2, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    #@f
    aget v1, v1, v2

    #@11
    add-int/2addr v0, v1

    #@12
    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@15
    .line 69
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 71
    :cond_0
    return v1
.end method

.method public candidates(Ljava/text/CharacterIterator;Landroid/icu/text/DictionaryMatcher;I)I
    .locals 8
    .param p1, "fIter"    # Ljava/text/CharacterIterator;
    .param p2, "dict"    # Landroid/icu/text/DictionaryMatcher;
    .param p3, "rangeEnd"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 41
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@4
    move-result v6

    #@5
    .line 42
    .local v6, "start":I
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    #@7
    if-eq v6, v0, :cond_0

    #@9
    .line 43
    iput v6, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->offset:I

    #@b
    .line 44
    sub-int v2, p3, v6

    #@d
    iget-object v3, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    #@f
    iget-object v4, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    #@11
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    #@13
    array-length v5, v0

    #@14
    move-object v0, p2

    #@15
    move-object v1, p1

    #@16
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II)I

    #@19
    move-result v0

    #@1a
    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->prefix:I

    #@1c
    .line 46
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    #@1e
    aget v0, v0, v7

    #@20
    if-gtz v0, :cond_0

    #@22
    .line 47
    invoke-interface {p1, v6}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@25
    .line 50
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    #@27
    aget v0, v0, v7

    #@29
    if-lez v0, :cond_1

    #@2b
    .line 51
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->lengths:[I

    #@2d
    iget-object v1, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    #@2f
    aget v1, v1, v7

    #@31
    add-int/lit8 v1, v1, -0x1

    #@33
    aget v0, v0, v1

    #@35
    add-int/2addr v0, v6

    #@36
    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@39
    .line 53
    :cond_1
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    #@3b
    aget v0, v0, v7

    #@3d
    add-int/lit8 v0, v0, -0x1

    #@3f
    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    #@41
    .line 54
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    #@43
    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    #@45
    .line 55
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->count:[I

    #@47
    aget v0, v0, v7

    #@49
    return v0
.end method

.method public longestPrefix()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->prefix:I

    #@2
    return v0
.end method

.method public markCurrent()V
    .locals 1

    #@0
    .prologue
    .line 81
    iget v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->current:I

    #@2
    iput v0, p0, Landroid/icu/text/DictionaryBreakEngine$PossibleWord;->mark:I

    #@4
    .line 80
    return-void
.end method
