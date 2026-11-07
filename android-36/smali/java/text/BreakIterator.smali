.class public abstract Ljava/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final whitelist test-api DONE:I = -0x1


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    return-void
.end method

.method public static declared-synchronized whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    const-class v0, Ljava/text/BreakIterator;

    monitor-enter v0

    .line 593
    :try_start_3
    invoke-static {}, Landroid/icu/text/BreakIterator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    .line 593
    :catchall_9
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static whitelist test-api getCharacterInstance()Ljava/text/BreakIterator;
    .registers 1

    .line 495
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 509
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    .line 510
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    .line 509
    return-object v0
.end method

.method public static whitelist test-api getLineInstance()Ljava/text/BreakIterator;
    .registers 1

    .line 469
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 483
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    .line 484
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    .line 483
    return-object v0
.end method

.method public static whitelist test-api getSentenceInstance()Ljava/text/BreakIterator;
    .registers 1

    .line 521
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 535
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    .line 536
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    .line 535
    return-object v0
.end method

.method public static whitelist test-api getWordInstance()Ljava/text/BreakIterator;
    .registers 1

    .line 443
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 457
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    .line 458
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    .line 457
    return-object v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 248
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 250
    :catch_5
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract whitelist test-api current()I
.end method

.method public abstract whitelist test-api first()I
.end method

.method public abstract whitelist test-api following(I)I
.end method

.method public abstract whitelist test-api getText()Ljava/text/CharacterIterator;
.end method

.method public whitelist test-api isBoundary(I)Z
    .registers 5
    .param p1, "offset"    # I

    .line 381
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 382
    return v0

    .line 384
    :cond_4
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    .line 385
    .local v1, "boundary":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    .line 388
    if-ne v1, p1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0

    .line 386
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api last()I
.end method

.method public abstract whitelist test-api next()I
.end method

.method public abstract whitelist test-api next(I)I
.end method

.method public whitelist test-api preceding(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 356
    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    .line 357
    .local v0, "pos":I
    :goto_4
    if-lt v0, p1, :cond_e

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 358
    invoke-virtual {p0}, Ljava/text/BreakIterator;->previous()I

    move-result v0

    goto :goto_4

    .line 360
    :cond_e
    return v0
.end method

.method public abstract whitelist test-api previous()I
.end method

.method public whitelist test-api setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "newText"    # Ljava/lang/String;

    .line 423
    new-instance v0, Ljava/text/StringCharacterIterator;

    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 424
    return-void
.end method

.method public abstract whitelist test-api setText(Ljava/text/CharacterIterator;)V
.end method
