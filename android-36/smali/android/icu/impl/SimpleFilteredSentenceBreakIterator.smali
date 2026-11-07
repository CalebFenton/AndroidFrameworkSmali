.class public Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;
.super Landroid/icu/text/BreakIterator;
.source "SimpleFilteredSentenceBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/SimpleFilteredSentenceBreakIterator$Builder;
    }
.end annotation


# instance fields
.field private blacklist backwardsTrie:Landroid/icu/util/CharsTrie;

.field private blacklist delegate:Landroid/icu/text/BreakIterator;

.field private blacklist forwardsPartialTrie:Landroid/icu/util/CharsTrie;

.field private blacklist text:Landroid/icu/text/UCharacterIterator;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/BreakIterator;Landroid/icu/util/CharsTrie;Landroid/icu/util/CharsTrie;)V
    .registers 4
    .param p1, "adoptBreakIterator"    # Landroid/icu/text/BreakIterator;
    .param p2, "forwardsPartialTrie"    # Landroid/icu/util/CharsTrie;
    .param p3, "backwardsTrie"    # Landroid/icu/util/CharsTrie;

    .line 47
    invoke-direct {p0}, Landroid/icu/text/BreakIterator;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    .line 49
    iput-object p2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    .line 50
    iput-object p3, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    .line 51
    return-void
.end method

.method private final blacklist breakExceptionAt(I)Z
    .registers 9
    .param p1, "n"    # I

    .line 70
    const/4 v0, -0x1

    .line 71
    .local v0, "bestPosn":I
    const/4 v1, -0x1

    .line 74
    .local v1, "bestValue":I
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2, p1}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 75
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    .line 79
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v2

    move v3, v2

    .local v3, "uch":I
    const/16 v4, 0x20

    if-ne v2, v4, :cond_18

    goto :goto_1e

    .line 82
    :cond_18
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v3

    .line 85
    :goto_1e
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v2

    move v3, v2

    if-ltz v2, :cond_47

    .line 86
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v2, v3}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v2

    .line 87
    .local v2, "r":Landroid/icu/util/BytesTrie$Result;
    invoke-virtual {v2}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 88
    iget-object v4, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v4}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    .line 89
    iget-object v4, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v4}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v1

    .line 91
    :cond_3f
    invoke-virtual {v2}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v4

    if-nez v4, :cond_46

    .line 92
    goto :goto_47

    .line 94
    .end local v2    # "r":Landroid/icu/util/BytesTrie$Result;
    :cond_46
    goto :goto_1e

    .line 95
    :cond_47
    :goto_47
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    .line 97
    if-ltz v0, :cond_89

    .line 98
    const/4 v2, 0x2

    const/4 v4, 0x1

    if-ne v1, v2, :cond_53

    .line 99
    return v4

    .line 100
    :cond_53
    if-ne v1, v4, :cond_89

    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    if-eqz v2, :cond_89

    .line 104
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v2}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    .line 106
    sget-object v2, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 107
    .local v2, "rfwd":Landroid/icu/util/BytesTrie$Result;
    iget-object v5, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v5, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 108
    :goto_65
    iget-object v5, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v5}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v5

    move v3, v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_7d

    iget-object v5, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    .line 109
    invoke-virtual {v5, v3}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v5

    move-object v2, v5

    invoke-virtual {v5}, Landroid/icu/util/BytesTrie$Result;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    goto :goto_65

    .line 111
    :cond_7d
    iget-object v5, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v5}, Landroid/icu/util/CharsTrie;->reset()Landroid/icu/util/CharsTrie;

    .line 112
    invoke-virtual {v2}, Landroid/icu/util/BytesTrie$Result;->matches()Z

    move-result v5

    if-eqz v5, :cond_89

    .line 114
    return v4

    .line 118
    .end local v2    # "rfwd":Landroid/icu/util/BytesTrie$Result;
    :cond_89
    const/4 v2, 0x0

    return v2
.end method

.method private final blacklist internalNext(I)I
    .registers 5
    .param p1, "n"    # I

    .line 128
    const/4 v0, -0x1

    if-eq p1, v0, :cond_24

    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    if-nez v1, :cond_8

    goto :goto_24

    .line 132
    :cond_8
    invoke-direct {p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->resetState()V

    .line 134
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v1

    .line 136
    .local v1, "textLen":I
    :goto_11
    if-eq p1, v0, :cond_23

    if-eq p1, v1, :cond_23

    .line 140
    invoke-direct {p0, p1}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->breakExceptionAt(I)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 142
    iget-object v2, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v2}, Landroid/icu/text/BreakIterator;->next()I

    move-result p1

    goto :goto_11

    .line 145
    :cond_22
    return p1

    .line 148
    :cond_23
    return p1

    .line 130
    .end local v1    # "textLen":I
    :cond_24
    :goto_24
    return p1
.end method

.method private final blacklist internalPrev(I)I
    .registers 4
    .param p1, "n"    # I

    .line 158
    if-eqz p1, :cond_20

    const/4 v0, -0x1

    if-eq p1, v0, :cond_20

    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    if-nez v1, :cond_a

    goto :goto_20

    .line 162
    :cond_a
    invoke-direct {p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->resetState()V

    .line 164
    :goto_d
    if-eq p1, v0, :cond_1f

    if-eqz p1, :cond_1f

    .line 168
    invoke-direct {p0, p1}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->breakExceptionAt(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 170
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1}, Landroid/icu/text/BreakIterator;->previous()I

    move-result p1

    goto :goto_d

    .line 173
    :cond_1e
    return p1

    .line 176
    :cond_1f
    return p1

    .line 160
    :cond_20
    :goto_20
    return p1
.end method

.method private final blacklist resetState()V
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    invoke-static {v0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    .line 59
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 204
    invoke-super {p0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;

    .line 206
    .local v0, "other":Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;
    :try_start_6
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    if-eqz v1, :cond_14

    .line 207
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v1}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/BreakIterator;

    iput-object v1, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    .line 209
    :cond_14
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    if-eqz v1, :cond_22

    .line 210
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v1}, Landroid/icu/text/UCharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/UCharacterIterator;

    iput-object v1, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    .line 212
    :cond_22
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    if-eqz v1, :cond_2e

    .line 213
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v1}, Landroid/icu/util/CharsTrie;->clone()Landroid/icu/util/CharsTrie;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    .line 215
    :cond_2e
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    if-eqz v1, :cond_3a

    .line 216
    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v1}, Landroid/icu/util/CharsTrie;->clone()Landroid/icu/util/CharsTrie;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;
    :try_end_3a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_6 .. :try_end_3a} :catch_3c

    .line 220
    :cond_3a
    nop

    .line 221
    return-object v0

    .line 218
    :catch_3c
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v2, v1}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist test-api current()I
    .registers 2

    .line 243
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->current()I

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 181
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 182
    return v0

    .line 183
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 184
    return v1

    .line 185
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 186
    return v0

    .line 187
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;

    .line 190
    .local v2, "other":Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;
    iget-object v3, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    iget-object v4, v2, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    iget-object v4, v2, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->text:Landroid/icu/text/UCharacterIterator;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    iget-object v4, v2, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    iget-object v4, v2, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    .line 192
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    move v0, v1

    goto :goto_41

    :cond_40
    nop

    .line 190
    :goto_41
    return v0
.end method

.method public whitelist test-api first()I
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->first()I

    move-result v0

    return v0
.end method

.method public whitelist test-api following(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 273
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->internalNext(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getText()Ljava/text/CharacterIterator;
    .registers 2

    .line 284
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->getText()Ljava/text/CharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 198
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->forwardsPartialTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x27

    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0xb

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    .line 199
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 198
    return v0
.end method

.method public whitelist test-api isBoundary(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 248
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 249
    const/4 v0, 0x0

    return v0

    .line 253
    :cond_a
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->backwardsTrie:Landroid/icu/util/CharsTrie;

    const/4 v1, 0x1

    if-nez v0, :cond_10

    .line 254
    return v1

    .line 257
    :cond_10
    invoke-direct {p0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->resetState()V

    .line 258
    invoke-direct {p0, p1}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->breakExceptionAt(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api last()I
    .registers 2

    .line 279
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->last()I

    move-result v0

    return v0
.end method

.method public whitelist test-api next()I
    .registers 2

    .line 263
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->next()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->internalNext(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api next(I)I
    .registers 3
    .param p1, "n"    # I

    .line 268
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->next(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->internalNext(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api preceding(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 233
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->internalPrev(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api previous()I
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->previous()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->internalPrev(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api setText(Ljava/text/CharacterIterator;)V
    .registers 3
    .param p1, "newText"    # Ljava/text/CharacterIterator;

    .line 289
    iget-object v0, p0, Landroid/icu/impl/SimpleFilteredSentenceBreakIterator;->delegate:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 290
    return-void
.end method
