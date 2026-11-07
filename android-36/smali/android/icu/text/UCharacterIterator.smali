.class public abstract Landroid/icu/text/UCharacterIterator;
.super Ljava/lang/Object;
.source "UCharacterIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/text/UForwardCharacterIterator;


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static final whitelist test-api getInstance(Landroid/icu/text/Replaceable;)Landroid/icu/text/UCharacterIterator;
    .registers 2
    .param p0, "source"    # Landroid/icu/text/Replaceable;

    .line 50
    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Landroid/icu/text/Replaceable;)V

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;
    .registers 2
    .param p0, "source"    # Ljava/lang/String;

    .line 63
    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;
    .registers 2
    .param p0, "source"    # Ljava/lang/StringBuffer;

    .line 102
    new-instance v0, Landroid/icu/impl/ReplaceableUCharacterIterator;

    invoke-direct {v0, p0}, Landroid/icu/impl/ReplaceableUCharacterIterator;-><init>(Ljava/lang/StringBuffer;)V

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;
    .registers 2
    .param p0, "source"    # Ljava/text/CharacterIterator;

    .line 115
    new-instance v0, Landroid/icu/impl/CharacterIteratorWrapper;

    invoke-direct {v0, p0}, Landroid/icu/impl/CharacterIteratorWrapper;-><init>(Ljava/text/CharacterIterator;)V

    return-object v0
.end method

.method public static final whitelist test-api getInstance([C)Landroid/icu/text/UCharacterIterator;
    .registers 3
    .param p0, "source"    # [C

    .line 76
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/icu/text/UCharacterIterator;->getInstance([CII)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance([CII)Landroid/icu/text/UCharacterIterator;
    .registers 4
    .param p0, "source"    # [C
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 89
    new-instance v0, Landroid/icu/impl/UCharArrayIterator;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/UCharArrayIterator;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 378
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api current()I
.end method

.method public whitelist test-api currentCodePoint()I
    .registers 5

    .line 144
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v0

    .line 145
    .local v0, "ch":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 148
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    .line 152
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->current()I

    move-result v1

    .line 155
    .local v1, "ch2":I
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    .line 157
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 160
    int-to-char v2, v0

    int-to-char v3, v1

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 163
    .end local v1    # "ch2":I
    :cond_21
    return v0
.end method

.method public whitelist test-api getCharacterIterator()Ljava/text/CharacterIterator;
    .registers 2

    .line 126
    new-instance v0, Landroid/icu/impl/UCharacterIteratorWrapper;

    invoke-direct {v0, p0}, Landroid/icu/impl/UCharacterIteratorWrapper;-><init>(Landroid/icu/text/UCharacterIterator;)V

    return-object v0
.end method

.method public abstract whitelist test-api getIndex()I
.end method

.method public abstract whitelist test-api getLength()I
.end method

.method public final whitelist test-api getText([C)I
    .registers 3
    .param p1, "fillIn"    # [C

    .line 308
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/UCharacterIterator;->getText([CI)I

    move-result v0

    return v0
.end method

.method public abstract whitelist test-api getText([CI)I
.end method

.method public whitelist test-api getText()Ljava/lang/String;
    .registers 3

    .line 317
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    new-array v0, v0, [C

    .line 318
    .local v0, "text":[C
    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->getText([C)I

    .line 319
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public whitelist test-api moveCodePointIndex(I)I
    .registers 4
    .param p1, "delta"    # I

    .line 354
    const/4 v0, -0x1

    if-lez p1, :cond_e

    .line 355
    :goto_3
    if-lez p1, :cond_19

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v1

    if-eq v1, v0, :cond_19

    .line 356
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 359
    :cond_e
    :goto_e
    if-gez p1, :cond_19

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previousCodePoint()I

    move-result v1

    if-eq v1, v0, :cond_19

    .line 360
    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 363
    :cond_19
    if-nez p1, :cond_20

    .line 367
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    return v0

    .line 364
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist test-api moveIndex(I)I
    .registers 4
    .param p1, "delta"    # I

    .line 335
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 336
    .local v0, "x":I
    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 337
    return v0
.end method

.method public abstract whitelist test-api next()I
.end method

.method public whitelist test-api nextCodePoint()I
    .registers 5

    .line 198
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v0

    .line 199
    .local v0, "ch1":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 200
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v1

    .line 201
    .local v1, "ch2":I
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 202
    int-to-char v2, v0

    int-to-char v3, v1

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 203
    :cond_1b
    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    .line 205
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    .line 208
    .end local v1    # "ch2":I
    :cond_21
    return v0
.end method

.method public abstract whitelist test-api previous()I
.end method

.method public whitelist test-api previousCodePoint()I
    .registers 5

    .line 228
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v0

    .line 229
    .local v0, "ch1":I
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 230
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->previous()I

    move-result v1

    .line 231
    .local v1, "ch2":I
    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 232
    int-to-char v2, v1

    int-to-char v3, v0

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    .line 233
    :cond_1b
    const/4 v2, -0x1

    if-eq v1, v2, :cond_21

    .line 235
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    .line 238
    .end local v1    # "ch2":I
    :cond_21
    return v0
.end method

.method public abstract whitelist test-api setIndex(I)V
.end method

.method public whitelist test-api setToLimit()V
    .registers 2

    .line 255
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 256
    return-void
.end method

.method public whitelist test-api setToStart()V
    .registers 2

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    .line 263
    return-void
.end method
