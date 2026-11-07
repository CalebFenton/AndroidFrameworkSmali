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
        "Ljava/util/Iterator<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o _ignoreCase:Z

.field private greylist-max-o _nextIdx:I

.field private greylist-max-o _remainingChar:Ljava/lang/Character;

.field private greylist-max-o _startIdx:I

.field private greylist-max-o _text:Ljava/lang/CharSequence;


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;IZ)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I
    .param p3, "ignoreCase"    # Z

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    .line 140
    iput p2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_startIdx:I

    iput p2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    .line 141
    iput-boolean p3, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_ignoreCase:Z

    .line 142
    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 149
    iget v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    iget-object v1, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-nez v0, :cond_10

    .line 150
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist next()Ljava/lang/Character;
    .registers 7

    .line 160
    iget v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    iget-object v1, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-nez v0, :cond_10

    .line 161
    return-object v2

    .line 164
    :cond_10
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-eqz v0, :cond_19

    .line 165
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    .line 166
    .local v0, "next":Ljava/lang/Character;
    iput-object v2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    goto :goto_5d

    .line 168
    .end local v0    # "next":Ljava/lang/Character;
    :cond_19
    iget-boolean v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_ignoreCase:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4c

    .line 169
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    invoke-static {v0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->foldCase(IZ)I

    move-result v0

    .line 170
    .local v0, "cp":I
    iget v2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    .line 172
    invoke-static {v0}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    .line 173
    .local v2, "chars":[C
    const/4 v3, 0x0

    aget-char v3, v2, v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 174
    .local v3, "next":Ljava/lang/Character;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4a

    .line 175
    aget-char v1, v2, v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    .line 177
    .end local v0    # "cp":I
    .end local v2    # "chars":[C
    :cond_4a
    move-object v0, v3

    goto :goto_5d

    .line 178
    .end local v3    # "next":Ljava/lang/Character;
    :cond_4c
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_text:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 179
    .local v0, "next":Ljava/lang/Character;
    iget v2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    .line 182
    :goto_5d
    return-object v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 130
    invoke-virtual {p0}, Landroid/icu/impl/TextTrieMap$CharIterator;->next()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public blacklist nextIndex()I
    .registers 2

    .line 194
    iget v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    return v0
.end method

.method public blacklist processedLength()I
    .registers 3

    .line 198
    iget-object v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_remainingChar:Ljava/lang/Character;

    if-nez v0, :cond_a

    .line 201
    iget v0, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_nextIdx:I

    iget v1, p0, Landroid/icu/impl/TextTrieMap$CharIterator;->_startIdx:I

    sub-int/2addr v0, v1

    return v0

    .line 199
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "In the middle of surrogate pair"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
