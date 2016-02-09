.class public Landroid/text/method/WordIterator;
.super Ljava/lang/Object;
.source "WordIterator.java"

# interfaces
.implements Landroid/text/Selection$PositionIterator;


# static fields
.field private static final WINDOW_WIDTH:I = 0x32


# instance fields
.field private mIterator:Ljava/text/BreakIterator;

.field private mOffsetShift:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    #@7
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@9
    .line 54
    return-void
.end method

.method private checkOffsetIsValid(I)V
    .locals 4
    .param p1, "shiftedOffset"    # I

    #@0
    .prologue
    .line 379
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v0

    #@8
    if-le p1, v0, :cond_1

    #@a
    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Invalid offset: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@1a
    add-int/2addr v2, p1

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    .line 381
    const-string/jumbo v2, ". Valid range is ["

    #@22
    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 381
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@28
    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    .line 381
    const-string/jumbo v2, ", "

    #@2f
    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    .line 381
    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@35
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@38
    move-result v2

    #@39
    iget v3, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@3b
    add-int/2addr v2, v3

    #@3c
    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    .line 382
    const-string/jumbo v2, "]"

    #@43
    .line 380
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v0

    #@4f
    .line 378
    :cond_1
    return-void
.end method

.method private getBeginning(IZ)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "getPrevWordBeginningOnTwoWordsBoundary"    # Z

    #@0
    .prologue
    .line 227
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@2
    sub-int v0, p1, v1

    #@4
    .line 228
    .local v0, "shiftedOffset":I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    #@7
    .line 230
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 231
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@f
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 232
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 233
    if-eqz p2, :cond_1

    #@1d
    .line 236
    :cond_0
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@1f
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    #@22
    move-result v1

    #@23
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@25
    add-int/2addr v1, v2

    #@26
    return v1

    #@27
    .line 234
    :cond_1
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@29
    add-int/2addr v1, v0

    #@2a
    return v1

    #@2b
    .line 239
    :cond_2
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 240
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@33
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    #@36
    move-result v1

    #@37
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@39
    add-int/2addr v1, v2

    #@3a
    return v1

    #@3b
    .line 243
    :cond_3
    const/4 v1, -0x1

    #@3c
    return v1
.end method

.method private getEnd(IZ)I
    .locals 3
    .param p1, "offset"    # I
    .param p2, "getNextWordEndOnTwoWordBoundary"    # Z

    #@0
    .prologue
    .line 263
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@2
    sub-int v0, p1, v1

    #@4
    .line 264
    .local v0, "shiftedOffset":I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    #@7
    .line 266
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 267
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@f
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 268
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    if-eqz p2, :cond_1

    #@1d
    .line 271
    :cond_0
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@1f
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    #@22
    move-result v1

    #@23
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@25
    add-int/2addr v1, v2

    #@26
    return v1

    #@27
    .line 269
    :cond_1
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@29
    add-int/2addr v1, v0

    #@2a
    return v1

    #@2b
    .line 274
    :cond_2
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 275
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@33
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    #@36
    move-result v1

    #@37
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@39
    add-int/2addr v1, v2

    #@3a
    return v1

    #@3b
    .line 278
    :cond_3
    const/4 v1, -0x1

    #@3c
    return v1
.end method

.method private isAfterLetterOrDigit(I)Z
    .locals 3
    .param p1, "shiftedOffset"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 363
    if-lt p1, v2, :cond_0

    #@3
    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    if-gt p1, v1, :cond_0

    #@b
    .line 364
    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointBefore(I)I

    #@10
    move-result v0

    #@11
    .line 365
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    return v2

    #@18
    .line 367
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v1, 0x0

    #@19
    return v1
.end method

.method private isOnLetterOrDigit(I)Z
    .locals 3
    .param p1, "shiftedOffset"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 371
    if-ltz p1, :cond_0

    #@3
    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@8
    move-result v1

    #@9
    if-ge p1, v1, :cond_0

    #@b
    .line 372
    iget-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@d
    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    #@10
    move-result v0

    #@11
    .line 373
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    const/4 v1, 0x1

    #@18
    return v1

    #@19
    .line 375
    .end local v0    # "codePoint":I
    :cond_0
    return v2
.end method

.method private isPunctuation(I)Z
    .locals 3
    .param p1, "cp"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 352
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    #@4
    move-result v0

    #@5
    .line 353
    .local v0, "type":I
    const/16 v2, 0x17

    #@7
    if-eq v0, v2, :cond_0

    #@9
    .line 354
    const/16 v2, 0x14

    #@b
    if-ne v0, v2, :cond_1

    #@d
    .line 353
    :cond_0
    :goto_0
    return v1

    #@e
    .line 355
    :cond_1
    const/16 v2, 0x16

    #@10
    if-eq v0, v2, :cond_0

    #@12
    .line 356
    const/16 v2, 0x1e

    #@14
    if-eq v0, v2, :cond_0

    #@16
    .line 357
    const/16 v2, 0x1d

    #@18
    if-eq v0, v2, :cond_0

    #@1a
    .line 358
    const/16 v2, 0x18

    #@1c
    if-eq v0, v2, :cond_0

    #@1e
    .line 359
    const/16 v2, 0x15

    #@20
    if-eq v0, v2, :cond_0

    #@22
    const/4 v1, 0x0

    #@23
    goto :goto_0
.end method

.method private isPunctuationEndBoundary(I)Z
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 348
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private isPunctuationStartBoundary(I)Z
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 344
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_1

    #@d
    :cond_0
    :goto_0
    return v0

    #@e
    :cond_1
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method


# virtual methods
.method public following(I)I
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 86
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@3
    sub-int v0, p1, v1

    #@5
    .line 88
    .local v0, "shiftedOffset":I
    :cond_0
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@7
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    #@a
    move-result v0

    #@b
    .line 89
    if-ne v0, v2, :cond_1

    #@d
    .line 90
    return v2

    #@e
    .line 92
    :cond_1
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 93
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@16
    add-int/2addr v1, v0

    #@17
    return v1
.end method

.method public getBeginning(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 152
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getBeginning(IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getEnd(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 171
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getEnd(IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getNextWordEndOnTwoWordBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 207
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getEnd(IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getPrevWordBeginningOnTwoWordsBoundary(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 189
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getBeginning(IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getPunctuationBeginning(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 289
    :goto_0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isPunctuationStartBoundary(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 293
    :cond_0
    return p1

    #@a
    .line 290
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    #@d
    move-result p1

    #@e
    goto :goto_0
.end method

.method public getPunctuationEnd(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 304
    :goto_0
    const/4 v0, -0x1

    #@1
    if-eq p1, v0, :cond_0

    #@3
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isPunctuationEndBoundary(I)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 308
    :cond_0
    return p1

    #@a
    .line 305
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    #@d
    move-result p1

    #@e
    goto :goto_0
.end method

.method public isAfterPunctuation(I)Z
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 319
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@2
    sub-int v1, p1, v2

    #@4
    .line 320
    .local v1, "shiftedOffset":I
    const/4 v2, 0x1

    #@5
    if-lt v1, v2, :cond_0

    #@7
    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@c
    move-result v2

    #@d
    if-gt v1, v2, :cond_0

    #@f
    .line 321
    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointBefore(I)I

    #@14
    move-result v0

    #@15
    .line 322
    .local v0, "codePoint":I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isPunctuation(I)Z

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 324
    .end local v0    # "codePoint":I
    :cond_0
    const/4 v2, 0x0

    #@1b
    return v2
.end method

.method public isBoundary(I)Z
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 100
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@2
    sub-int v0, p1, v1

    #@4
    .line 101
    .local v0, "shiftedOffset":I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    #@7
    .line 102
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@9
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->isBoundary(I)Z

    #@c
    move-result v1

    #@d
    return v1
.end method

.method public isOnPunctuation(I)Z
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 335
    iget v2, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@3
    sub-int v1, p1, v2

    #@5
    .line 336
    .local v1, "shiftedOffset":I
    if-ltz v1, :cond_0

    #@7
    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@9
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@c
    move-result v2

    #@d
    if-ge v1, v2, :cond_0

    #@f
    .line 337
    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@11
    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    #@14
    move-result v0

    #@15
    .line 338
    .local v0, "codePoint":I
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isPunctuation(I)Z

    #@18
    move-result v2

    #@19
    return v2

    #@1a
    .line 340
    .end local v0    # "codePoint":I
    :cond_0
    return v3
.end method

.method public nextBoundary(I)I
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 113
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@3
    sub-int v0, p1, v1

    #@5
    .line 114
    .local v0, "shiftedOffset":I
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@7
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->following(I)I

    #@a
    move-result v0

    #@b
    .line 115
    if-ne v0, v2, :cond_0

    #@d
    .line 116
    return v2

    #@e
    .line 118
    :cond_0
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@10
    add-int/2addr v1, v0

    #@11
    return v1
.end method

.method public preceding(I)I
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 72
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@3
    sub-int v0, p1, v1

    #@5
    .line 74
    .local v0, "shiftedOffset":I
    :cond_0
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@7
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    #@a
    move-result v0

    #@b
    .line 75
    if-ne v0, v2, :cond_1

    #@d
    .line 76
    return v2

    #@e
    .line 78
    :cond_1
    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 79
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@16
    add-int/2addr v1, v0

    #@17
    return v1
.end method

.method public prevBoundary(I)I
    .locals 3
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 129
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@3
    sub-int v0, p1, v1

    #@5
    .line 130
    .local v0, "shiftedOffset":I
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@7
    invoke-virtual {v1, v0}, Ljava/text/BreakIterator;->preceding(I)I

    #@a
    move-result v0

    #@b
    .line 131
    if-ne v0, v2, :cond_0

    #@d
    .line 132
    return v2

    #@e
    .line 134
    :cond_0
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@10
    add-int/2addr v1, v0

    #@11
    return v1
.end method

.method public setCharSequence(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 59
    add-int/lit8 v1, p2, -0x32

    #@2
    const/4 v2, 0x0

    #@3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    #@6
    move-result v1

    #@7
    iput v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@9
    .line 60
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@c
    move-result v1

    #@d
    add-int/lit8 v2, p3, 0x32

    #@f
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@12
    move-result v0

    #@13
    .line 62
    .local v0, "windowEnd":I
    instance-of v1, p1, Landroid/text/SpannableStringBuilder;

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 63
    check-cast p1, Landroid/text/SpannableStringBuilder;

    #@19
    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@1b
    invoke-virtual {p1, v1, v0}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    iput-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@21
    .line 67
    :goto_0
    iget-object v1, p0, Landroid/text/method/WordIterator;->mIterator:Ljava/text/BreakIterator;

    #@23
    iget-object v2, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@25
    invoke-virtual {v1, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    #@28
    .line 58
    return-void

    #@29
    .line 65
    .restart local p1    # "charSequence":Ljava/lang/CharSequence;
    :cond_0
    iget v1, p0, Landroid/text/method/WordIterator;->mOffsetShift:I

    #@2b
    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@2e
    move-result-object v1

    #@2f
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Landroid/text/method/WordIterator;->mString:Ljava/lang/String;

    #@35
    goto :goto_0
.end method
