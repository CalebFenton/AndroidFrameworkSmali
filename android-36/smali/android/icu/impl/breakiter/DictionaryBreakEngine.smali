.class public abstract Landroid/icu/impl/breakiter/DictionaryBreakEngine;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"

# interfaces
.implements Landroid/icu/impl/breakiter/LanguageBreakEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;,
        Landroid/icu/impl/breakiter/DictionaryBreakEngine$PossibleWord;
    }
.end annotation


# instance fields
.field blacklist fSet:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    .line 182
    return-void
.end method


# virtual methods
.method abstract blacklist divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;Z)I
.end method

.method public blacklist findBreaks(Ljava/text/CharacterIterator;IILandroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;Z)I
    .registers 17
    .param p1, "text"    # Ljava/text/CharacterIterator;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "foundBreaks"    # Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;
    .param p5, "isPhraseBreaking"    # Z

    .line 192
    const/4 v0, 0x0

    .line 198
    .local v0, "result":I
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    .line 202
    .local v1, "start":I
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v2

    .line 203
    .local v2, "c":I
    :goto_9
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v3

    move v4, v3

    .local v4, "current":I
    if-ge v3, p3, :cond_20

    iget-object v3, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v2}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 204
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 205
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v2

    goto :goto_9

    .line 207
    :cond_20
    move v7, v1

    .line 208
    .local v7, "rangeStart":I
    move v8, v4

    .line 210
    .local v8, "rangeEnd":I
    move-object v5, p0

    move-object v6, p1

    move-object v9, p4

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/icu/impl/breakiter/DictionaryBreakEngine;->divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;Z)I

    move-result v0

    .line 211
    invoke-interface {p1, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 213
    return v0
.end method

.method public blacklist handles(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 186
    iget-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    return v0
.end method

.method blacklist setCharacters(Landroid/icu/text/UnicodeSet;)V
    .registers 3
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    .line 217
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    iput-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    .line 218
    iget-object v0, p0, Landroid/icu/impl/breakiter/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    .line 219
    return-void
.end method
