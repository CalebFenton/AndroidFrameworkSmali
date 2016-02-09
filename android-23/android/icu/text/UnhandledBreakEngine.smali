.class final Landroid/icu/text/UnhandledBreakEngine;
.super Ljava/lang/Object;
.source "UnhandledBreakEngine.java"

# interfaces
.implements Landroid/icu/text/LanguageBreakEngine;


# instance fields
.field private final fHandled:[Landroid/icu/text/UnicodeSet;


# direct methods
.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19
    const/4 v1, 0x5

    #@4
    new-array v1, v1, [Landroid/icu/text/UnicodeSet;

    #@6
    iput-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    #@8
    .line 21
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    #@b
    array-length v1, v1

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 22
    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    #@10
    new-instance v2, Landroid/icu/text/UnicodeSet;

    #@12
    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@15
    aput-object v2, v1, v0

    #@17
    .line 21
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public findBreaks(Ljava/text/CharacterIterator;IIZILandroid/icu/text/DictionaryBreakEngine$DequeI;)I
    .locals 1
    .param p1, "text"    # Ljava/text/CharacterIterator;
    .param p2, "startPos"    # I
    .param p3, "endPos"    # I
    .param p4, "reverse"    # Z
    .param p5, "breakType"    # I
    .param p6, "foundBreaks"    # Landroid/icu/text/DictionaryBreakEngine$DequeI;

    #@0
    .prologue
    .line 33
    invoke-interface {p1, p3}, Ljava/text/CharacterIterator;->setIndex(I)C

    #@3
    .line 34
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public declared-synchronized handleChar(II)V
    .locals 3
    .param p1, "c"    # I
    .param p2, "breakType"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 38
    if-ltz p2, :cond_0

    #@3
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    #@5
    array-length v1, v1

    #@6
    if-ge p2, v1, :cond_0

    #@8
    const v1, 0x7fffffff

    #@b
    if-eq p1, v1, :cond_0

    #@d
    .line 39
    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    #@f
    aget-object v1, v1, p2

    #@11
    invoke-virtual {v1, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@14
    move-result v1

    #@15
    if-nez v1, :cond_0

    #@17
    .line 40
    const/16 v1, 0x100a

    #@19
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    #@1c
    move-result v0

    #@1d
    .line 41
    .local v0, "script":I
    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    #@1f
    aget-object v1, v1, p2

    #@21
    const/16 v2, 0x100a

    #@23
    invoke-virtual {v1, v2, v0}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .end local v0    # "script":I
    :cond_0
    monitor-exit p0

    #@27
    .line 37
    return-void

    #@28
    :catchall_0
    move-exception v1

    #@29
    monitor-exit p0

    #@2a
    throw v1
.end method

.method public handles(II)Z
    .locals 2
    .param p1, "c"    # I
    .param p2, "breakType"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 27
    if-ltz p2, :cond_0

    #@3
    iget-object v1, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    #@5
    array-length v1, v1

    #@6
    if-ge p2, v1, :cond_0

    #@8
    .line 28
    iget-object v0, p0, Landroid/icu/text/UnhandledBreakEngine;->fHandled:[Landroid/icu/text/UnicodeSet;

    #@a
    aget-object v0, v0, p2

    #@c
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@f
    move-result v0

    #@10
    .line 27
    :cond_0
    return v0
.end method
