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
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 243
    invoke-static {}, Landroid/icu/text/BreakIterator;->getAvailableLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getCharacterInstance()Ljava/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 253
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
    .line 261
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    #@2
    .line 262
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v1

    #@6
    .line 261
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    #@9
    return-object v0
.end method

.method public static getLineInstance()Ljava/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 272
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
    .line 280
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    #@2
    .line 281
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v1

    #@6
    .line 280
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    #@9
    return-object v0
.end method

.method public static getSentenceInstance()Ljava/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 291
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
    .line 299
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    #@2
    .line 300
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v1

    #@6
    .line 299
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    #@9
    return-object v0
.end method

.method public static getWordInstance()Ljava/text/BreakIterator;
    .locals 1

    #@0
    .prologue
    .line 310
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
    .line 318
    new-instance v0, Ljava/text/IcuIteratorWrapper;

    #@2
    .line 319
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Landroid/icu/text/BreakIterator;

    #@5
    move-result-object v1

    #@6
    .line 318
    invoke-direct {v0, v1}, Ljava/text/IcuIteratorWrapper;-><init>(Landroid/icu/text/BreakIterator;)V

    #@9
    return-object v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 457
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Ljava/text/BreakIterator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 458
    :catch_0
    move-exception v0

    #@8
    .line 459
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    #@a
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@d
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
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 334
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract last()I
.end method

.method public abstract next()I
.end method

.method public abstract next(I)I
.end method

.method public preceding(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 349
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public abstract previous()I
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "newText"    # Ljava/lang/String;

    #@0
    .prologue
    .line 360
    return-void
.end method

.method public abstract setText(Ljava/text/CharacterIterator;)V
.end method
