.class public final Landroid/icu/impl/breakiter/UnhandledBreakEngine;
.super Ljava/lang/Object;
.source "UnhandledBreakEngine.java"

# interfaces
.implements Landroid/icu/impl/breakiter/LanguageBreakEngine;


# instance fields
.field volatile blacklist fHandled:Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/breakiter/UnhandledBreakEngine;->fHandled:Landroid/icu/text/UnicodeSet;

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist findBreaks(Ljava/text/CharacterIterator;IILandroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;Z)I
    .registers 9
    .param p1, "text"    # Ljava/text/CharacterIterator;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "foundBreaks"    # Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;
    .param p5, "isPhraseBreaking"    # Z

    .line 53
    iget-object v0, p0, Landroid/icu/impl/breakiter/UnhandledBreakEngine;->fHandled:Landroid/icu/text/UnicodeSet;

    .line 54
    .local v0, "uniset":Landroid/icu/text/UnicodeSet;
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v1

    .line 55
    .local v1, "c":I
    :goto_6
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    if-ge v2, p3, :cond_1a

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 56
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 57
    invoke-static {p1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v1

    goto :goto_6

    .line 59
    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist handleChar(I)V
    .registers 6
    .param p1, "c"    # I

    .line 69
    iget-object v0, p0, Landroid/icu/impl/breakiter/UnhandledBreakEngine;->fHandled:Landroid/icu/text/UnicodeSet;

    .line 70
    .local v0, "originalSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 71
    const/16 v1, 0x100a

    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v2

    .line 72
    .local v2, "script":I
    new-instance v3, Landroid/icu/text/UnicodeSet;

    invoke-direct {v3}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 73
    .local v3, "newSet":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v3, v1, v2}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    .line 74
    invoke-virtual {v3, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    .line 75
    iput-object v3, p0, Landroid/icu/impl/breakiter/UnhandledBreakEngine;->fHandled:Landroid/icu/text/UnicodeSet;

    .line 77
    .end local v2    # "script":I
    .end local v3    # "newSet":Landroid/icu/text/UnicodeSet;
    :cond_1b
    return-void
.end method

.method public blacklist handles(I)Z
    .registers 3
    .param p1, "c"    # I

    .line 46
    iget-object v0, p0, Landroid/icu/impl/breakiter/UnhandledBreakEngine;->fHandled:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v0

    return v0
.end method
