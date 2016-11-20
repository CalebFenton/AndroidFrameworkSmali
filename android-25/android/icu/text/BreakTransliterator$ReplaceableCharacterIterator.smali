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
.field private begin:I

.field private end:I

.field private pos:I

.field private text:Landroid/icu/text/Replaceable;


# direct methods
.method public constructor <init>(Landroid/icu/text/Replaceable;III)V
    .locals 2
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "begin"    # I
    .param p3, "end"    # I
    .param p4, "pos"    # I

    #@0
    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 192
    if-nez p1, :cond_0

    #@5
    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 195
    :cond_0
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    #@d
    .line 197
    if-ltz p2, :cond_1

    #@f
    if-le p2, p3, :cond_2

    #@11
    .line 198
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Invalid substring range"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 197
    :cond_2
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    #@1d
    move-result v0

    #@1e
    if-gt p3, v0, :cond_1

    #@20
    .line 201
    if-lt p4, p2, :cond_3

    #@22
    if-le p4, p3, :cond_4

    #@24
    .line 202
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v1, "Invalid position"

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 205
    :cond_4
    iput p2, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    #@2f
    .line 206
    iput p3, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@31
    .line 207
    iput p4, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@33
    .line 191
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 383
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 384
    .local v1, "other":Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    return-object v1

    #@7
    .line 386
    .end local v1    # "other":Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    :catch_0
    move-exception v0

    #@8
    .line 387
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@a
    invoke-direct {v2}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>()V

    #@d
    throw v2
.end method

.method public current()C
    .locals 2

    #@0
    .prologue
    .line 271
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@2
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@8
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 272
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    #@e
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@10
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 275
    :cond_0
    const v0, 0xffff

    #@18
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 345
    if-ne p0, p1, :cond_0

    #@4
    .line 346
    return v4

    #@5
    .line 348
    :cond_0
    instance-of v1, p1, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    #@7
    if-nez v1, :cond_1

    #@9
    .line 349
    return v3

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 352
    nop

    #@c
    nop

    #@d
    .line 354
    .local v0, "that":Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->hashCode()I

    #@10
    move-result v1

    #@11
    invoke-virtual {v0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->hashCode()I

    #@14
    move-result v2

    #@15
    if-eq v1, v2, :cond_2

    #@17
    .line 355
    return v3

    #@18
    .line 357
    :cond_2
    iget-object v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    #@1a
    iget-object v2, v0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_3

    #@22
    .line 358
    return v3

    #@23
    .line 360
    :cond_3
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@25
    iget v2, v0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@27
    if-ne v1, v2, :cond_4

    #@29
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    #@2b
    iget v2, v0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    #@2d
    if-eq v1, v2, :cond_5

    #@2f
    .line 361
    :cond_4
    return v3

    #@30
    .line 360
    :cond_5
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@32
    iget v2, v0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@34
    if-ne v1, v2, :cond_4

    #@36
    .line 363
    return v4
.end method

.method public first()C
    .locals 1

    #@0
    .prologue
    .line 234
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    #@2
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@4
    .line 235
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getBeginIndex()I
    .locals 1

    #@0
    .prologue
    .line 316
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    #@2
    return v0
.end method

.method public getEndIndex()I
    .locals 1

    #@0
    .prologue
    .line 325
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@2
    return v0
.end method

.method public getIndex()I
    .locals 1

    #@0
    .prologue
    .line 334
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@8
    xor-int/2addr v0, v1

    #@9
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    #@b
    xor-int/2addr v0, v1

    #@c
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@e
    xor-int/2addr v0, v1

    #@f
    return v0
.end method

.method public last()C
    .locals 2

    #@0
    .prologue
    .line 244
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@2
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    #@4
    if-eq v0, v1, :cond_0

    #@6
    .line 245
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@c
    .line 249
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    #@f
    move-result v0

    #@10
    return v0

    #@11
    .line 247
    :cond_0
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@13
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@15
    goto :goto_0
.end method

.method public next()C
    .locals 2

    #@0
    .prologue
    .line 285
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@2
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@4
    add-int/lit8 v1, v1, -0x1

    #@6
    if-ge v0, v1, :cond_0

    #@8
    .line 286
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@a
    add-int/lit8 v0, v0, 0x1

    #@c
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@e
    .line 287
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    #@10
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@12
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@15
    move-result v0

    #@16
    return v0

    #@17
    .line 290
    :cond_0
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@19
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@1b
    .line 291
    const v0, 0xffff

    #@1e
    return v0
.end method

.method public previous()C
    .locals 2

    #@0
    .prologue
    .line 301
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@2
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    #@4
    if-le v0, v1, :cond_0

    #@6
    .line 302
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@c
    .line 303
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    #@e
    iget v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@10
    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->charAt(I)C

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 306
    :cond_0
    const v0, 0xffff

    #@18
    return v0
.end method

.method public setIndex(I)C
    .locals 2
    .param p1, "p"    # I

    #@0
    .prologue
    .line 258
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    #@2
    if-lt p1, v0, :cond_0

    #@4
    iget v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 259
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Invalid index"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 261
    :cond_1
    iput p1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@13
    .line 262
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->current()C

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public setText(Landroid/icu/text/Replaceable;)V
    .locals 2
    .param p1, "text"    # Landroid/icu/text/Replaceable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 219
    if-nez p1, :cond_0

    #@3
    .line 220
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v0

    #@9
    .line 222
    :cond_0
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->text:Landroid/icu/text/Replaceable;

    #@b
    .line 223
    iput v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->begin:I

    #@d
    .line 224
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    #@10
    move-result v0

    #@11
    iput v0, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->end:I

    #@13
    .line 225
    iput v1, p0, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;->pos:I

    #@15
    .line 218
    return-void
.end method
