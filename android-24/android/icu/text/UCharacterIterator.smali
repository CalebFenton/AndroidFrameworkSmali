.class public abstract Landroid/icu/text/UCharacterIterator;
.super Ljava/lang/Object;
.source "UCharacterIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/text/UForwardCharacterIterator;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getInstance(Landroid/icu/text/Replaceable;)Landroid/icu/text/UCharacterIterator;
    .locals 1
    .param p0, "source"    # Landroid/icu/text/Replaceable;

    #@0
    .prologue
    .line 51
    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Landroid/icu/text/Replaceable;)V

    #@5
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 62
    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;
    .locals 1
    .param p0, "source"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 94
    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/StringBuffer;)V

    #@5
    return-object v0
.end method

.method public static final getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;
    .locals 1
    .param p0, "source"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 105
    new-instance v0, Landroid/icu/impl/CharacterIteratorWrapper;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    #@5
    return-object v0
.end method

.method public static final getInstance([C)Landroid/icu/text/UCharacterIterator;
    .locals 2
    .param p0, "source"    # [C

    #@0
    .prologue
    .line 73
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Landroid/icu/text/UCharacterIterator;->getInstance([CII)Landroid/icu/text/UCharacterIterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static final getInstance([CII)Landroid/icu/text/UCharacterIterator;
    .locals 1
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    #@0
    .prologue
    .line 84
    new-instance v0, Landroid/icu/impl/UCharArrayIterator;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/UCharArrayIterator;-><init>([CII)V

    #@5
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 373
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract current()I
.end method

.method public currentCodePoint()I
    .locals 4

    #@0
    .prologue
    .line 135
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    #@3
    move-result v0

    #@4
    .line 136
    .local v0, "ch":I
    int-to-char v2, v0

    #@5
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 139
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    #@e
    .line 143
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    #@11
    move-result v1

    #@12
    .line 146
    .local v1, "ch2":I
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@15
    .line 148
    int-to-char v2, v1

    #@16
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 151
    int-to-char v2, v0

    #@1d
    int-to-char v3, v1

    #@1e
    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    #@21
    move-result v2

    #@22
    return v2

    #@23
    .line 154
    .end local v1    # "ch2":I
    :cond_0
    return v0
.end method

.method public getCharacterIterator()Ljava/text/CharacterIterator;
    .locals 1

    #@0
    .prologue
    .line 116
    new-instance v0, Landroid/icu/impl/UCharacterIteratorWrapper;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/UCharacterIteratorWrapper;-><init>(Landroid/icu/text/UCharacterIterator;)V

    #@5
    return-object v0
.end method

.method public abstract getIndex()I
.end method

.method public abstract getLength()I
.end method

.method public final getText([C)I
    .locals 1
    .param p1, "fillIn"    # [C

    #@0
    .prologue
    .line 306
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UCharacterIterator;->getText([CI)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public abstract getText([CI)I
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    #@3
    move-result v1

    #@4
    new-array v0, v1, [C

    #@6
    .line 315
    .local v0, "text":[C
    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->getText([C)I

    #@9
    .line 316
    new-instance v1, Ljava/lang/String;

    #@b
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    #@e
    return-object v1
.end method

.method public moveCodePointIndex(I)I
    .locals 2
    .param p1, "delta"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 355
    if-lez p1, :cond_0

    #@3
    .line 356
    :goto_0
    if-lez p1, :cond_1

    #@5
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    #@8
    move-result v0

    #@9
    if-eq v0, v1, :cond_1

    #@b
    add-int/lit8 p1, p1, -0x1

    #@d
    goto :goto_0

    #@e
    .line 358
    :cond_0
    :goto_1
    if-gez p1, :cond_1

    #@10
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    #@13
    move-result v0

    #@14
    if-eq v0, v1, :cond_1

    #@16
    add-int/lit8 p1, p1, 0x1

    #@18
    goto :goto_1

    #@19
    .line 360
    :cond_1
    if-eqz p1, :cond_2

    #@1b
    .line 361
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@1d
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@20
    throw v0

    #@21
    .line 364
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@24
    move-result v0

    #@25
    return v0
.end method

.method public moveIndex(I)I
    .locals 3
    .param p1, "delta"    # I

    #@0
    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    #@3
    move-result v1

    #@4
    add-int/2addr v1, p1

    #@5
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    #@8
    move-result v2

    #@9
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x0

    #@e
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@11
    move-result v0

    #@12
    .line 336
    .local v0, "x":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    #@15
    .line 337
    return v0
.end method

.method public abstract next()I
.end method

.method public nextCodePoint()I
    .locals 4

    #@0
    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    #@3
    move-result v0

    #@4
    .line 193
    .local v0, "ch1":I
    int-to-char v2, v0

    #@5
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 194
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    #@e
    move-result v1

    #@f
    .line 195
    .local v1, "ch2":I
    int-to-char v2, v1

    #@10
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 196
    int-to-char v2, v0

    #@17
    int-to-char v3, v1

    #@18
    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    #@1b
    move-result v2

    #@1c
    return v2

    #@1d
    .line 197
    :cond_0
    const/4 v2, -0x1

    #@1e
    if-eq v1, v2, :cond_1

    #@20
    .line 199
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@23
    .line 202
    .end local v1    # "ch2":I
    :cond_1
    return v0
.end method

.method public abstract previous()I
.end method

.method public previousCodePoint()I
    .locals 4

    #@0
    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@3
    move-result v0

    #@4
    .line 228
    .local v0, "ch1":I
    int-to-char v2, v0

    #@5
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 229
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    #@e
    move-result v1

    #@f
    .line 230
    .local v1, "ch2":I
    int-to-char v2, v1

    #@10
    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    #@13
    move-result v2

    #@14
    if-eqz v2, :cond_0

    #@16
    .line 231
    int-to-char v2, v1

    #@17
    int-to-char v3, v0

    #@18
    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    #@1b
    move-result v2

    #@1c
    return v2

    #@1d
    .line 232
    :cond_0
    const/4 v2, -0x1

    #@1e
    if-eq v1, v2, :cond_1

    #@20
    .line 234
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    #@23
    .line 237
    .end local v1    # "ch2":I
    :cond_1
    return v0
.end method

.method public abstract setIndex(I)V
.end method

.method public setToLimit()V
    .locals 1

    #@0
    .prologue
    .line 252
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    #@7
    .line 251
    return-void
.end method

.method public setToStart()V
    .locals 1

    #@0
    .prologue
    .line 259
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    #@4
    .line 258
    return-void
.end method
