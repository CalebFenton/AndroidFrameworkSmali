.class public Landroid/text/method/WordIterator;
.super Ljava/lang/Object;
.source "WordIterator.java"

# interfaces
.implements Landroid/text/Selection$PositionIterator;


# static fields
.field private static final greylist-max-o WINDOW_WIDTH:I = 0x32


# instance fields
.field private greylist-max-o mCharSeq:Ljava/lang/CharSequence;

.field private greylist-max-o mEnd:I

.field private final greylist-max-o mIterator:Landroid/icu/text/BreakIterator;

.field private greylist-max-o mStart:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 53
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    .line 71
    return-void
.end method

.method public constructor greylist <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    .line 63
    return-void
.end method

.method private greylist-max-o checkOffsetIsValid(I)V
    .registers 5
    .param p1, "offset"    # I

    .line 400
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-gt v0, p1, :cond_9

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-gt p1, v0, :cond_9

    .line 404
    return-void

    .line 401
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Valid range is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/method/WordIterator;->mStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/method/WordIterator;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getBeginning(IZ)I
    .registers 4
    .param p1, "offset"    # I
    .param p2, "getPrevWordBeginningOnTwoWordsBoundary"    # Z

    .line 236
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 238
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 239
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 240
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p2, :cond_1a

    .line 242
    :cond_19
    return p1

    .line 244
    :cond_1a
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v0

    return v0

    .line 247
    :cond_21
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 248
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v0

    return v0

    .line 251
    :cond_2e
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o getEnd(IZ)I
    .registers 4
    .param p1, "offset"    # I
    .param p2, "getNextWordEndOnTwoWordBoundary"    # Z

    .line 271
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 273
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 274
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 275
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_19

    if-nez p2, :cond_1a

    .line 276
    :cond_19
    return p1

    .line 278
    :cond_1a
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    return v0

    .line 281
    :cond_21
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 282
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    return v0

    .line 285
    :cond_2e
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o isAfterLetterOrDigit(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 384
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-ge v0, p1, :cond_16

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-gt p1, v0, :cond_16

    .line 385
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 386
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    return v1

    .line 388
    .end local v0    # "codePoint":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o isMidWordPunctuation(Ljava/util/Locale;I)Z
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "codePoint"    # I

    .line 369
    const/16 v0, 0x1014

    invoke-static {p1, v0}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v0

    .line 370
    .local v0, "wb":I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_14

    const/16 v1, 0xb

    if-eq v0, v1, :cond_14

    const/16 v1, 0xf

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    return v1
.end method

.method private greylist-max-o isOnLetterOrDigit(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 392
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-gt v0, p1, :cond_16

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-ge p1, v0, :cond_16

    .line 393
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 394
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    return v1

    .line 396
    .end local v0    # "codePoint":I
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o isPunctuationEndBoundary(I)Z
    .registers 3
    .param p1, "offset"    # I

    .line 380
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private greylist-max-o isPunctuationStartBoundary(I)Z
    .registers 3
    .param p1, "offset"    # I

    .line 376
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isOnPunctuation(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->isAfterPunctuation(I)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public greylist-max-r following(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 100
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 102
    :cond_3
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result p1

    .line 103
    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isAfterLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    :cond_12
    return p1
.end method

.method public greylist getBeginning(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getBeginning(IZ)I

    move-result v0

    return v0
.end method

.method public greylist getEnd(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getEnd(IZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getNextWordEndOnTwoWordBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getEnd(IZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getPrevWordBeginningOnTwoWordsBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/method/WordIterator;->getBeginning(IZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-r getPunctuationBeginning(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 297
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 298
    :goto_3
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isPunctuationStartBoundary(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 299
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->prevBoundary(I)I

    move-result p1

    goto :goto_3

    .line 302
    :cond_11
    return p1
.end method

.method public greylist-max-r getPunctuationEnd(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 314
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 315
    :goto_3
    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isPunctuationEndBoundary(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 316
    invoke-virtual {p0, p1}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    move-result p1

    goto :goto_3

    .line 319
    :cond_11
    return p1
.end method

.method public greylist-max-r isAfterPunctuation(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 331
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-ge v0, p1, :cond_13

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-gt p1, v0, :cond_13

    .line 332
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 333
    .local v0, "codePoint":I
    invoke-static {v0}, Landroid/text/TextUtils;->isPunctuation(I)Z

    move-result v1

    return v1

    .line 335
    .end local v0    # "codePoint":I
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r isBoundary(I)Z
    .registers 3
    .param p1, "offset"    # I

    .line 112
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 113
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->isBoundary(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-r isOnPunctuation(I)Z
    .registers 4
    .param p1, "offset"    # I

    .line 347
    iget v0, p0, Landroid/text/method/WordIterator;->mStart:I

    if-gt v0, p1, :cond_13

    iget v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    if-ge p1, v0, :cond_13

    .line 348
    iget-object v0, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 349
    .local v0, "codePoint":I
    invoke-static {v0}, Landroid/text/TextUtils;->isPunctuation(I)Z

    move-result v1

    return v1

    .line 351
    .end local v0    # "codePoint":I
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r nextBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 125
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 126
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->following(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-r preceding(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 88
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 90
    :cond_3
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result p1

    .line 91
    const/4 v0, -0x1

    if-eq p1, v0, :cond_12

    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->isOnLetterOrDigit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 92
    :cond_12
    return p1
.end method

.method public greylist-max-r prevBoundary(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 138
    invoke-direct {p0, p1}, Landroid/text/method/WordIterator;->checkOffsetIsValid(I)V

    .line 139
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->preceding(I)I

    move-result v0

    return v0
.end method

.method public greylist setCharSequence(Ljava/lang/CharSequence;II)V
    .registers 8
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 75
    if-ltz p2, :cond_2e

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_2e

    .line 76
    iput-object p1, p0, Landroid/text/method/WordIterator;->mCharSeq:Ljava/lang/CharSequence;

    .line 77
    add-int/lit8 v0, p2, -0x32

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/text/method/WordIterator;->mStart:I

    .line 78
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p3, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/text/method/WordIterator;->mEnd:I

    .line 79
    iget-object v0, p0, Landroid/text/method/WordIterator;->mIterator:Landroid/icu/text/BreakIterator;

    new-instance v1, Landroid/text/CharSequenceCharacterIterator;

    iget v2, p0, Landroid/text/method/WordIterator;->mStart:I

    iget v3, p0, Landroid/text/method/WordIterator;->mEnd:I

    invoke-direct {v1, p1, v2, v3}, Landroid/text/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 83
    return-void

    .line 81
    :cond_2e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "input indexes are outside the CharSequence"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
