.class abstract Landroid/icu/text/DictionaryBreakEngine;
.super Ljava/lang/Object;
.source "DictionaryBreakEngine.java"

# interfaces
.implements Landroid/icu/text/LanguageBreakEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DictionaryBreakEngine$PossibleWord;,
        Landroid/icu/text/DictionaryBreakEngine$DequeI;
    }
.end annotation


# instance fields
.field fSet:Landroid/icu/text/UnicodeSet;

.field private fTypes:Ljava/util/BitSet;


# direct methods
.method public varargs constructor <init>([Ljava/lang/Integer;)V
    .locals 5
    .param p1, "breakTypes"    # [Ljava/lang/Integer;

    #@0
    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 153
    new-instance v1, Landroid/icu/text/UnicodeSet;

    #@5
    invoke-direct {v1}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@8
    iput-object v1, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    #@a
    .line 154
    new-instance v1, Ljava/util/BitSet;

    #@c
    const/16 v2, 0x20

    #@e
    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    #@11
    iput-object v1, p0, Landroid/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    #@13
    .line 161
    const/4 v1, 0x0

    #@14
    array-length v2, p1

    #@15
    :goto_0
    if-ge v1, v2, :cond_0

    #@17
    aget-object v0, p1, v1

    #@19
    .line 162
    .local v0, "type":Ljava/lang/Integer;
    iget-object v3, p0, Landroid/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    #@1b
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@1e
    move-result v4

    #@1f
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    #@22
    .line 161
    add-int/lit8 v1, v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 160
    .end local v0    # "type":Ljava/lang/Integer;
    :cond_0
    return-void
.end method


# virtual methods
.method abstract divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
.end method

.method public findBreaks(Ljava/text/CharacterIterator;IIZILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 8
    .param p1, "text"    # Ljava/text/CharacterIterator;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "reverse"    # Z
    .param p5, "breakType"    # I
    .param p6, "foundBreaks"    # Landroid/icu/text/DictionaryBreakEngine$DequeI;

    #@0
    .prologue
    .line 173
    const/4 v5, 0x0

    #@1
    .line 179
    .local v5, "result":I
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@4
    move-result v6

    #@5
    .line 183
    .local v6, "start":I
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@8
    move-result v0

    #@9
    .line 184
    .local v0, "c":I
    if-eqz p4, :cond_3

    #@b
    .line 185
    iget-object v7, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    #@d
    invoke-virtual {v7, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@10
    move-result v2

    #@11
    .line 186
    .local v2, "isDict":Z
    :goto_0
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@14
    move-result v1

    #@15
    .local v1, "current":I
    if-le v1, p2, :cond_0

    #@17
    if-eqz v2, :cond_0

    #@19
    .line 187
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    #@1c
    move-result v0

    #@1d
    .line 188
    iget-object v7, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    #@1f
    invoke-virtual {v7, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@22
    move-result v2

    #@23
    goto :goto_0

    #@24
    .line 190
    :cond_0
    if-ge v1, p2, :cond_1

    #@26
    move v4, p2

    #@27
    .line 192
    .local v4, "rangeStart":I
    :goto_1
    add-int/lit8 v3, v6, 0x1

    #@29
    .line 202
    .end local v2    # "isDict":Z
    .local v3, "rangeEnd":I
    :goto_2
    invoke-virtual {p0, p1, v4, v3, p6}, Landroid/icu/text/DictionaryBreakEngine;->divideUpDictionaryRange(Ljava/text/CharacterIterator;IILandroid/icu/text/DictionaryBreakEngine$DequeI;)I

    #@2c
    move-result v5

    #@2d
    .line 203
    invoke-interface {p1, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@30
    .line 205
    return v5

    #@31
    .line 191
    .end local v3    # "rangeEnd":I
    .end local v4    # "rangeStart":I
    .restart local v2    # "isDict":Z
    :cond_1
    if-eqz v2, :cond_2

    #@33
    const/4 v7, 0x0

    #@34
    :goto_3
    add-int v4, v1, v7

    #@36
    .restart local v4    # "rangeStart":I
    goto :goto_1

    #@37
    .end local v4    # "rangeStart":I
    :cond_2
    const/4 v7, 0x1

    #@38
    goto :goto_3

    #@39
    .line 194
    .end local v1    # "current":I
    .end local v2    # "isDict":Z
    :cond_3
    :goto_4
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    #@3c
    move-result v1

    #@3d
    .restart local v1    # "current":I
    if-ge v1, p3, :cond_4

    #@3f
    iget-object v7, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    #@41
    invoke-virtual {v7, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@44
    move-result v7

    #@45
    if-eqz v7, :cond_4

    #@47
    .line 195
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    #@4a
    .line 196
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    #@4d
    move-result v0

    #@4e
    goto :goto_4

    #@4f
    .line 198
    :cond_4
    move v4, v6

    #@50
    .line 199
    .restart local v4    # "rangeStart":I
    move v3, v1

    #@51
    .restart local v3    # "rangeEnd":I
    goto :goto_2
.end method

.method public handles(II)Z
    .locals 1
    .param p1, "c"    # I
    .param p2, "breakType"    # I

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fTypes:Ljava/util/BitSet;

    #@2
    invoke-virtual {v0, p2}, Ljava/util/BitSet;->get(I)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 168
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    #@a
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@d
    move-result v0

    #@e
    .line 167
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method setCharacters(Landroid/icu/text/UnicodeSet;)V
    .locals 1
    .param p1, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 209
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v0, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@5
    iput-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    #@7
    .line 210
    iget-object v0, p0, Landroid/icu/text/DictionaryBreakEngine;->fSet:Landroid/icu/text/UnicodeSet;

    #@9
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->compact()Landroid/icu/text/UnicodeSet;

    #@c
    .line 208
    return-void
.end method
