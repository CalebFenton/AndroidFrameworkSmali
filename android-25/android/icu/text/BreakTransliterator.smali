.class final Landroid/icu/text/BreakTransliterator;
.super Landroid/icu/text/Transliterator;
.source "BreakTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;
    }
.end annotation


# static fields
.field static final LETTER_OR_MARK_MASK:I = 0x1fe


# instance fields
.field private bi:Landroid/icu/text/BreakIterator;

.field private boundaries:[I

.field private boundaryCount:I

.field private insertion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V
    .locals 2
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/icu/text/UnicodeFilter;

    #@0
    .prologue
    .line 34
    const-string/jumbo v0, " "

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/icu/text/BreakTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Landroid/icu/text/BreakIterator;Ljava/lang/String;)V

    #@7
    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Landroid/icu/text/BreakIterator;Ljava/lang/String;)V
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;
    .param p2, "filter"    # Landroid/icu/text/UnicodeFilter;
    .param p3, "bi"    # Landroid/icu/text/BreakIterator;
    .param p4, "insertion"    # Ljava/lang/String;

    #@0
    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@3
    .line 24
    const/16 v0, 0x32

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    #@9
    .line 25
    const/4 v0, 0x0

    #@a
    iput v0, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    #@c
    .line 29
    iput-object p3, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    #@e
    .line 30
    iput-object p4, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    #@10
    .line 27
    return-void
.end method

.method static register()V
    .locals 3

    #@0
    .prologue
    .line 143
    new-instance v0, Landroid/icu/text/BreakTransliterator;

    #@2
    const-string/jumbo v1, "Any-BreakInternal"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v0, v1, v2}, Landroid/icu/text/BreakTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    #@9
    .line 144
    .local v0, "trans":Landroid/icu/text/Transliterator;
    const/4 v1, 0x0

    #@a
    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->registerInstance(Landroid/icu/text/Transliterator;Z)V

    #@d
    .line 141
    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 2
    .param p1, "inputFilter"    # Landroid/icu/text/UnicodeSet;
    .param p2, "sourceSet"    # Landroid/icu/text/UnicodeSet;
    .param p3, "targetSet"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    .line 397
    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@3
    move-result-object v0

    #@4
    .line 400
    .local v0, "myFilter":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 401
    iget-object v1, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    #@c
    invoke-virtual {p3, v1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    #@f
    .line 396
    :cond_0
    return-void
.end method

.method public getBreakIterator()Landroid/icu/text/BreakIterator;
    .locals 2

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Landroid/icu/util/ULocale;

    #@6
    const-string/jumbo v1, "th_TH"

    #@9
    invoke-direct {v0, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@c
    invoke-static {v0}, Landroid/icu/text/BreakIterator;->getWordInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    #@12
    .line 55
    :cond_0
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    #@14
    return-object v0
.end method

.method public getInsertion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method protected declared-synchronized handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 12
    .param p1, "text"    # Landroid/icu/text/Replaceable;
    .param p2, "pos"    # Landroid/icu/text/Transliterator$Position;
    .param p3, "incremental"    # Z

    #@0
    .prologue
    const/4 v11, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 76
    const/4 v6, 0x0

    #@3
    :try_start_0
    iput v6, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    #@5
    .line 77
    const/4 v0, 0x0

    #@6
    .line 78
    .local v0, "boundary":I
    invoke-virtual {p0}, Landroid/icu/text/BreakTransliterator;->getBreakIterator()Landroid/icu/text/BreakIterator;

    #@9
    .line 79
    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    #@b
    new-instance v7, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;

    #@d
    iget v8, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@f
    iget v9, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@11
    iget v10, p2, Landroid/icu/text/Transliterator$Position;->start:I

    #@13
    invoke-direct {v7, p1, v8, v9, v10}, Landroid/icu/text/BreakTransliterator$ReplaceableCharacterIterator;-><init>(Landroid/icu/text/Replaceable;III)V

    #@16
    invoke-virtual {v6, v7}, Landroid/icu/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    #@19
    .line 91
    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    #@1b
    invoke-virtual {v6}, Landroid/icu/text/BreakIterator;->first()I

    #@1e
    move-result v0

    #@1f
    :goto_0
    const/4 v6, -0x1

    #@20
    if-eq v0, v6, :cond_3

    #@22
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@24
    if-ge v0, v6, :cond_3

    #@26
    .line 92
    if-nez v0, :cond_1

    #@28
    .line 91
    :cond_0
    :goto_1
    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    #@2a
    invoke-virtual {v6}, Landroid/icu/text/BreakIterator;->next()I

    #@2d
    move-result v0

    #@2e
    goto :goto_0

    #@2f
    .line 95
    :cond_1
    add-int/lit8 v6, v0, -0x1

    #@31
    invoke-static {p1, v6}, Landroid/icu/text/UTF16;->charAt(Landroid/icu/text/Replaceable;I)I

    #@34
    move-result v1

    #@35
    .line 96
    .local v1, "cp":I
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@38
    move-result v5

    #@39
    .line 98
    .local v5, "type":I
    shl-int v6, v11, v5

    #@3b
    and-int/lit16 v6, v6, 0x1fe

    #@3d
    if-eqz v6, :cond_0

    #@3f
    .line 100
    invoke-static {p1, v0}, Landroid/icu/text/UTF16;->charAt(Landroid/icu/text/Replaceable;I)I

    #@42
    move-result v1

    #@43
    .line 101
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@46
    move-result v5

    #@47
    .line 103
    shl-int v6, v11, v5

    #@49
    and-int/lit16 v6, v6, 0x1fe

    #@4b
    if-eqz v6, :cond_0

    #@4d
    .line 105
    iget v6, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    #@4f
    iget-object v7, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    #@51
    array-length v7, v7

    #@52
    if-lt v6, v7, :cond_2

    #@54
    .line 106
    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    #@56
    array-length v6, v6

    #@57
    mul-int/lit8 v6, v6, 0x2

    #@59
    new-array v4, v6, [I

    #@5b
    .line 107
    .local v4, "temp":[I
    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    #@5d
    iget-object v7, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    #@5f
    array-length v7, v7

    #@60
    const/4 v8, 0x0

    #@61
    const/4 v9, 0x0

    #@62
    invoke-static {v6, v8, v4, v9, v7}, Ljava/lang/System;->arraycopy([II[III)V

    #@65
    .line 108
    iput-object v4, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    #@67
    .line 111
    .end local v4    # "temp":[I
    :cond_2
    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    #@69
    iget v7, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    #@6b
    add-int/lit8 v8, v7, 0x1

    #@6d
    iput v8, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    #@6f
    aput v0, v6, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@71
    goto :goto_1

    #@72
    .end local v0    # "boundary":I
    .end local v1    # "cp":I
    .end local v5    # "type":I
    :catchall_0
    move-exception v6

    #@73
    monitor-exit p0

    #@74
    throw v6

    #@75
    .line 115
    .restart local v0    # "boundary":I
    :cond_3
    const/4 v2, 0x0

    #@76
    .line 116
    .local v2, "delta":I
    const/4 v3, 0x0

    #@77
    .line 118
    .local v3, "lastBoundary":I
    :try_start_1
    iget v6, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    #@79
    if-eqz v6, :cond_4

    #@7b
    .line 119
    iget v6, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    #@7d
    iget-object v7, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    #@7f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@82
    move-result v7

    #@83
    mul-int v2, v6, v7

    #@85
    .line 120
    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    #@87
    iget v7, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    #@89
    add-int/lit8 v7, v7, -0x1

    #@8b
    aget v3, v6, v7

    #@8d
    .line 124
    :goto_2
    iget v6, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    #@8f
    if-lez v6, :cond_4

    #@91
    .line 125
    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->boundaries:[I

    #@93
    iget v7, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    #@95
    add-int/lit8 v7, v7, -0x1

    #@97
    iput v7, p0, Landroid/icu/text/BreakTransliterator;->boundaryCount:I

    #@99
    aget v0, v6, v7

    #@9b
    .line 126
    iget-object v6, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    #@9d
    invoke-interface {p1, v0, v0, v6}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    #@a0
    goto :goto_2

    #@a1
    .line 131
    :cond_4
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@a3
    add-int/2addr v6, v2

    #@a4
    iput v6, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    #@a6
    .line 132
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@a8
    add-int/2addr v6, v2

    #@a9
    iput v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    #@ab
    .line 133
    if-eqz p3, :cond_5

    #@ad
    add-int v6, v3, v2

    #@af
    :goto_3
    iput v6, p2, Landroid/icu/text/Transliterator$Position;->start:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b1
    monitor-exit p0

    #@b2
    .line 75
    return-void

    #@b3
    .line 133
    :cond_5
    :try_start_2
    iget v6, p2, Landroid/icu/text/Transliterator$Position;->limit:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b5
    goto :goto_3
.end method

.method public setBreakIterator(Landroid/icu/text/BreakIterator;)V
    .locals 0
    .param p1, "bi"    # Landroid/icu/text/BreakIterator;

    #@0
    .prologue
    .line 61
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator;->bi:Landroid/icu/text/BreakIterator;

    #@2
    .line 60
    return-void
.end method

.method public setInsertion(Ljava/lang/String;)V
    .locals 0
    .param p1, "insertion"    # Ljava/lang/String;

    #@0
    .prologue
    .line 47
    iput-object p1, p0, Landroid/icu/text/BreakTransliterator;->insertion:Ljava/lang/String;

    #@2
    .line 46
    return-void
.end method
