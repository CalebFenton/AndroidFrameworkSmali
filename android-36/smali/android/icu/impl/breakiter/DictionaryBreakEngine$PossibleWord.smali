.class Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/breakiter/DictionaryBreakEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PossibleWord"
.end annotation


# static fields
.field private static final blacklist POSSIBLE_WORD_LIST_MAX:I = 0x14


# instance fields
.field private blacklist count:[I

.field private blacklist current:I

.field private blacklist lengths:[I

.field private blacklist mark:I

.field private blacklist offset:I

.field private blacklist prefix:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->lengths:[I

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->count:[I

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->offset:I

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist acceptMarked(Ljava/text/CharacterIterator;)I
    .registers 5
    .param p1, "fIter"    # Ljava/text/CharacterIterator;

    .line 65
    iget v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->offset:I

    iget-object v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget v2, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->mark:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 66
    iget-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->mark:I

    aget v0, v0, v1

    return v0
.end method

.method public blacklist backUp(Ljava/text/CharacterIterator;)Z
    .registers 6
    .param p1, "fIter"    # Ljava/text/CharacterIterator;

    .line 72
    iget v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->current:I

    if-lez v0, :cond_15

    .line 73
    iget v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->offset:I

    iget-object v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget v2, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->current:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->current:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 74
    return v3

    .line 76
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist candidates(Ljava/text/CharacterIterator;Landroid/icu/impl/breakiter/DictionaryMatcher;I)I
    .registers 13
    .param p1, "fIter"    # Ljava/text/CharacterIterator;
    .param p2, "dict"    # Landroid/icu/impl/breakiter/DictionaryMatcher;
    .param p3, "rangeEnd"    # I

    .line 46
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 47
    .local v0, "start":I
    iget v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->offset:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_26

    .line 48
    iput v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->offset:I

    .line 49
    sub-int v5, p3, v0

    iget-object v6, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget-object v7, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->count:[I

    iget-object v1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->lengths:[I

    array-length v8, v1

    move-object v4, p1

    move-object v3, p2

    .end local p1    # "fIter":Ljava/text/CharacterIterator;
    .end local p2    # "dict":Landroid/icu/impl/breakiter/DictionaryMatcher;
    .local v3, "dict":Landroid/icu/impl/breakiter/DictionaryMatcher;
    .local v4, "fIter":Ljava/text/CharacterIterator;
    invoke-virtual/range {v3 .. v8}, Landroid/icu/impl/breakiter/DictionaryMatcher;->matches(Ljava/text/CharacterIterator;I[I[II)I

    move-result p1

    iput p1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->prefix:I

    .line 51
    iget-object p1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->count:[I

    aget p1, p1, v2

    if-gtz p1, :cond_28

    .line 52
    invoke-interface {v4, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto :goto_28

    .line 47
    .end local v3    # "dict":Landroid/icu/impl/breakiter/DictionaryMatcher;
    .end local v4    # "fIter":Ljava/text/CharacterIterator;
    .restart local p1    # "fIter":Ljava/text/CharacterIterator;
    .restart local p2    # "dict":Landroid/icu/impl/breakiter/DictionaryMatcher;
    :cond_26
    move-object v4, p1

    move-object v3, p2

    .line 55
    .end local p1    # "fIter":Ljava/text/CharacterIterator;
    .end local p2    # "dict":Landroid/icu/impl/breakiter/DictionaryMatcher;
    .restart local v3    # "dict":Landroid/icu/impl/breakiter/DictionaryMatcher;
    .restart local v4    # "fIter":Ljava/text/CharacterIterator;
    :cond_28
    :goto_28
    iget-object p1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->count:[I

    aget p1, p1, v2

    if-lez p1, :cond_3c

    .line 56
    iget-object p1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->lengths:[I

    iget-object p2, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->count:[I

    aget p2, p2, v2

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    add-int/2addr p1, v0

    invoke-interface {v4, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 58
    :cond_3c
    iget-object p1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->count:[I

    aget p1, p1, v2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->current:I

    .line 59
    iget p1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->current:I

    iput p1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->mark:I

    .line 60
    iget-object p1, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->count:[I

    aget p1, p1, v2

    return p1
.end method

.method public blacklist longestPrefix()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->prefix:I

    return v0
.end method

.method public blacklist markCurrent()V
    .registers 2

    .line 86
    iget v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->current:I

    iput v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;->mark:I

    .line 87
    return-void
.end method
