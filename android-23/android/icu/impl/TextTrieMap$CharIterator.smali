.class public Landroid/icu/impl/TextTrieMap$CharIterator;
.super Ljava/lang/Object;
.source "TextTrieMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TextTrieMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private _ignoreCase:Z

.field private _nextIdx:I

.field private _remainingChar:Ljava/lang/Character;

.field private _startIdx:I

.field private _text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;IZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p3, "ignoreCase"    # Z

    #@0
    .prologue
    .line 114
    .local p0, "this":Landroid/icu/impl/TextTrieMap$CharIterator;, "Landroid/icu/impl/TextTrieMap<TV;>.CharIterator;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 115
    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    #@5
    .line 116
    iput p2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_startIdx:I

    #@7
    iput p2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    #@9
    .line 117
    iput-boolean p3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_ignoreCase:Z

    #@b
    .line 114
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    .line 124
    .local p0, "this":Landroid/icu/impl/TextTrieMap$CharIterator;, "Landroid/icu/impl/TextTrieMap<TV;>.CharIterator;"
    iget v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    #@2
    iget-object v1, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    #@4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v1

    #@8
    if-ne v0, v1, :cond_0

    #@a
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 125
    const/4 v0, 0x0

    #@f
    return v0

    #@10
    .line 127
    :cond_0
    const/4 v0, 0x1

    #@11
    return v0
.end method

.method public next()Ljava/lang/Character;
    .locals 7

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/TextTrieMap$CharIterator;, "Landroid/icu/impl/TextTrieMap<TV;>.CharIterator;"
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 134
    iget v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    #@4
    iget-object v4, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    #@6
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    #@9
    move-result v4

    #@a
    if-ne v3, v4, :cond_0

    #@c
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    #@e
    if-nez v3, :cond_0

    #@10
    .line 135
    return-object v5

    #@11
    .line 138
    :cond_0
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 139
    iget-object v2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    #@17
    .line 140
    .local v2, "next":Ljava/lang/Character;
    iput-object v5, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    #@19
    .line 156
    :cond_1
    :goto_0
    return-object v2

    #@1a
    .line 142
    .end local v2    # "next":Ljava/lang/Character;
    :cond_2
    iget-boolean v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_ignoreCase:Z

    #@1c
    if-eqz v3, :cond_3

    #@1e
    .line 143
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    #@20
    iget v4, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    #@22
    invoke-static {v3, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@25
    move-result v3

    #@26
    invoke-static {v3, v6}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    #@29
    move-result v1

    #@2a
    .line 144
    .local v1, "cp":I
    iget v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    #@2c
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@2f
    move-result v4

    #@30
    add-int/2addr v3, v4

    #@31
    iput v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    #@33
    .line 146
    invoke-static {v1}, Ljava/lang/Character;->toChars(I)[C

    #@36
    move-result-object v0

    #@37
    .line 147
    .local v0, "chars":[C
    const/4 v3, 0x0

    #@38
    aget-char v3, v0, v3

    #@3a
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@3d
    move-result-object v2

    #@3e
    .line 148
    .restart local v2    # "next":Ljava/lang/Character;
    array-length v3, v0

    #@3f
    const/4 v4, 0x2

    #@40
    if-ne v3, v4, :cond_1

    #@42
    .line 149
    aget-char v3, v0, v6

    #@44
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@47
    move-result-object v3

    #@48
    iput-object v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    #@4a
    goto :goto_0

    #@4b
    .line 152
    .end local v0    # "chars":[C
    .end local v1    # "cp":I
    .end local v2    # "next":Ljava/lang/Character;
    :cond_3
    iget-object v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    #@4d
    iget v4, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    #@4f
    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@52
    move-result v3

    #@53
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@56
    move-result-object v2

    #@57
    .line 153
    .restart local v2    # "next":Ljava/lang/Character;
    iget v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    #@59
    add-int/lit8 v3, v3, 0x1

    #@5b
    iput v3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    #@5d
    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 133
    .local p0, "this":Landroid/icu/impl/TextTrieMap$CharIterator;, "Landroid/icu/impl/TextTrieMap<TV;>.CharIterator;"
    invoke-virtual {p0}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    #@0
    .prologue
    .line 167
    .local p0, "this":Landroid/icu/impl/TextTrieMap$CharIterator;, "Landroid/icu/impl/TextTrieMap<TV;>.CharIterator;"
    iget v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    #@2
    return v0
.end method

.method public processedLength()I
    .locals 2

    #@0
    .prologue
    .line 171
    .local p0, "this":Landroid/icu/impl/TextTrieMap$CharIterator;, "Landroid/icu/impl/TextTrieMap<TV;>.CharIterator;"
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 172
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "In the middle of surrogate pair"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 174
    :cond_0
    iget v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    #@f
    iget v1, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_startIdx:I

    #@11
    sub-int/2addr v0, v1

    #@12
    return v0
.end method

.method public remove()V
    .locals 2

    #@0
    .prologue
    .line 163
    .local p0, "this":Landroid/icu/impl/TextTrieMap$CharIterator;, "Landroid/icu/impl/TextTrieMap<TV;>.CharIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "remove() not supproted"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
