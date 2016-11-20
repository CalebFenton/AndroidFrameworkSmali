.class public abstract Ljava/text/BreakIterator;
.super Ljava/lang/Object;
.source "BreakIterator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DONE:I = -0x1


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    const-class v0, Ljava/text/BreakIterator;

    #@2
    monitor-enter v0

    #@3
    .line 548
    :try_start_0
    invoke-static {}, Landroid/icu/text/BreakIterator;->getAvailableLocales()[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method public static getCharacterInstance()Ljava/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 492
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 505
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    #@2
    .line 506
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v1

    #@6
    .line 505
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    #@9
    return-object v0
.end method

.method public static getLineInstance()Ljava/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 467
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 480
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    #@2
    .line 481
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v1

    #@6
    .line 480
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    #@9
    return-object v0
.end method

.method public static getSentenceInstance()Ljava/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 517
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getSentenceInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 530
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    #@2
    .line 531
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v1

    #@6
    .line 530
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    #@9
    return-object v0
.end method

.method public static getWordInstance()Ljava/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 442
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 455
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    #@2
    .line 456
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v1

    #@6
    .line 455
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    #@9
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 241
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 242
    :catch_0
    move-exception v0

    #@6
    .line 243
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@8
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@b
    throw v1
.end method

.method public abstract current()I
.end method

.method public abstract first()I
.end method

.method public abstract following(I)I
.end method

.method public abstract getText()Ljava/text/CharacterIterator;
.end method

.method public isBoundary(I)Z
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 379
    if-nez p1, :cond_0

    #@4
    .line 380
    return v1

    #@5
    .line 382
    :cond_0
    add-int/lit8 v3, p1, -0x1

    #@7
    invoke-virtual {p0, v3}, Ljava/text/BreakIterator;->following(I)I

    #@a
    move-result v0

    #@b
    .line 383
    .local v0, "boundary":I
    const/4 v3, -0x1

    #@c
    if-ne v0, v3, :cond_1

    #@e
    .line 384
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v1

    #@14
    .line 386
    :cond_1
    if-ne v0, p1, :cond_2

    #@16
    :goto_0
    return v1

    #@17
    :cond_2
    move v1, v2

    #@18
    goto :goto_0
.end method

.method public abstract last()I
.end method

.method public abstract next()I
.end method

.method public abstract next(I)I
.end method

.method public preceding(I)I
    .locals 2
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 355
    invoke-virtual {p0, p1}, Ljava/text/BreakIterator;->following(I)I

    #@3
    move-result v0

    #@4
    .line 356
    .local v0, "pos":I
    :goto_0
    if-lt v0, p1, :cond_0

    #@6
    const/4 v1, -0x1

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 357
    invoke-virtual {p0}, Ljava/text/BreakIterator;->previous()I

    #@c
    move-result v0

    #@d
    goto :goto_0

    #@e
    .line 358
    :cond_0
    return v0
.end method

.method public abstract previous()I
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 423
    new-instance v0, Ljava/text/StringCharacterIterator;

    #@2
    invoke-direct {v0, p1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    #@5
    invoke-virtual {p0, v0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@8
    .line 422
    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
