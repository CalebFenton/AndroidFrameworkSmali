.class final Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
.super Ljava/lang/Object;
.source "BreakTransliterator.java"

# interfaces
.implements Ljava/text/CharacterIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/BreakTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReplaceableCharacterIterator"
.end annotation


# instance fields
.field private blacklist begin:I

.field private blacklist end:I

.field private blacklist pos:I

.field private blacklist text:Landroid/icu/text/Replaceable;


# direct methods
.method public constructor blacklist <init>(Landroid/icu/text/Replaceable;III)V
    .registers 7
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .param p4, "pos"    # I

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    if-eqz p1, :cond_2c

    .line 198
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    .line 200
    if-ltz p2, :cond_24

    if-gt p2, p3, :cond_24

    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    if-gt p3, v0, :cond_24

    .line 204
    if-lt p4, p2, :cond_1c

    if-gt p4, p3, :cond_1c

    .line 208
    iput p2, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    .line 209
    iput p3, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    .line 210
    iput p4, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 211
    return-void

    .line 205
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid substring range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 397
    nop

    .line 398
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_8

    .line 399
    .local v0, "other":Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    return-object v0

    .line 401
    .end local v0    # "other":Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    :catch_8
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>()V

    throw v1
.end method

.method public whitelist test-api current()C
    .registers 3

    .line 278
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-lt v0, v1, :cond_15

    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    if-ge v0, v1, :cond_15

    .line 279
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    .line 282
    :cond_15
    const v0, 0xffff

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 358
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 359
    return v0

    .line 361
    :cond_4
    instance-of v1, p1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 362
    return v2

    .line 365
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    .line 367
    .local v1, "that":Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_18

    .line 368
    return v2

    .line 370
    :cond_18
    iget-object v3, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    iget-object v4, v1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    invoke-interface {v3, v4}, Landroid/icu/text/Replaceable;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 371
    return v2

    .line 373
    :cond_23
    iget v3, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v4, v1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    if-ne v3, v4, :cond_37

    iget v3, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    iget v4, v1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-ne v3, v4, :cond_37

    iget v3, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    iget v4, v1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    if-eq v3, v4, :cond_36

    goto :goto_37

    .line 376
    :cond_36
    return v0

    .line 374
    :cond_37
    :goto_37
    return v2
.end method

.method public whitelist test-api first()C
    .registers 2

    .line 238
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 239
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public whitelist test-api getBeginIndex()I
    .registers 2

    .line 326
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    return v0
.end method

.method public whitelist test-api getEndIndex()I
    .registers 2

    .line 336
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    return v0
.end method

.method public whitelist test-api getIndex()I
    .registers 2

    .line 346
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 386
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    invoke-interface {v0}, Landroid/icu/text/Replaceable;->hashCode()I

    move-result v0

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api last()C
    .registers 3

    .line 249
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-eq v0, v1, :cond_d

    .line 250
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    goto :goto_11

    .line 252
    :cond_d
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 254
    :goto_11
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    move-result v0

    return v0
.end method

.method public whitelist test-api next()C
    .registers 3

    .line 293
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_17

    .line 294
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 295
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    .line 298
    :cond_17
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 299
    const v0, 0xffff

    return v0
.end method

.method public whitelist test-api previous()C
    .registers 3

    .line 310
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-le v0, v1, :cond_15

    .line 311
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 312
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    return v0

    .line 315
    :cond_15
    const v0, 0xffff

    return v0
.end method

.method public whitelist test-api setIndex(I)C
    .registers 4
    .param p1, "p"    # I

    .line 264
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    if-lt p1, v0, :cond_f

    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    if-gt p1, v0, :cond_f

    .line 267
    iput p1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 268
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    move-result v0

    return v0

    .line 265
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setText(Landroid/icu/text/Replaceable;)V
    .registers 4
    .param p1, "text"    # Landroid/icu/text/Replaceable;

    .line 222
    if-eqz p1, :cond_10

    .line 225
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    .line 227
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    iput v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    .line 228
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    .line 229
    return-void

    .line 223
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
